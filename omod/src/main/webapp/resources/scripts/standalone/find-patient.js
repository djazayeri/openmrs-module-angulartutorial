angular.module("standalone")
    .factory("Patient", ["$resource", function($resource) {
        return $resource("/" + OPENMRS_CONTEXT_PATH  + "/ws/rest/v1/patient/:uuid", {
            uuid: '@uuid'
        },{
            query: { method:'GET', isArray:false } // OpenMRS RESTWS returns { "results": [] }
        });
    }])
    .controller("FindPatientController", [ "$scope", "$state", "Patient", function($scope, $state, Patient) {
        $scope.results = [];

        $scope.search = function(query) {
            $scope.results = Patient.query({q: query});
        }
    }]);