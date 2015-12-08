angular.module("myapp", ["uicommons.filters", "ngResource"])
    .filter("ciel", [ function() {
        return function(concept) {
            var mapping = _.find(concept.mappings, function(it) {
                return it.conceptMapType.display == "SAME-AS" &&
                        it.conceptReferenceTerm.display.startsWith("CIEL:");
            });
            return mapping ? mapping.display.substring(6) : "No CIEL mapping";
        }
    }])
    .factory("conceptService", ["$resource", function($resource) {
        var resource = $resource("/" + OPENMRS_CONTEXT_PATH  + "/ws/rest/v1/concept/:uuid", {
            uuid: '@uuid'
        },{
            query: { method:'GET', isArray:false } // OpenMRS RESTWS returns { "results": [] }
        });

        return {
            // returns an object whose properties will be filled out when then response comes back
            search1: function(query) {
                return resource.query({q: query, v:"full"});
            },

            // returns a promise of an array
            search2: function(query) {
                return resource.query({q: query, v:"full"}).$promise.then(function(response) {
                    return response.results;
                })
            }
        }
    }])
    .controller("ExampleController", [ "$scope", "conceptService", function($scope, conceptService) {

        $scope.concepts1 = [];
        $scope.concepts2 = [];

        $scope.search = function(query) {
            $scope.concepts1 = conceptService.search1(query);

            conceptService.search2(query).then(function(results) {
                $scope.concepts2 = results;
            })
        }
    }]);