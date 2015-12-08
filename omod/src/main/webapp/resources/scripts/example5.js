angular.module("myapp", ["uicommons.filters"])
    .filter("ciel", [ function() {
        return function(concept) {
            var mapping = _.find(concept.mappings, function(it) {
                return it.conceptMapType.display == "SAME-AS" &&
                        it.conceptReferenceTerm.display.startsWith("CIEL:");
            });
            return mapping ? mapping.display.substring(6) : "No CIEL mapping";
        }
    }])
    .controller("ExampleController", [ "$scope", "$http", function($scope, $http) {

        $scope.concepts = [];

        $scope.$watch("query", function(query) {
            $http.get("/" + OPENMRS_CONTEXT_PATH + "/ws/rest/v1/concept", {
                params: { q: query, v: 'full' }
            }).then(function(response) {
                $scope.concepts = response.data.results;
            })
        })
    }]);