angular.module("myapp", ["uicommons.filters", "ngResource"])
    .factory("Patient", ["$resource", function($resource) {
        return $resource("/" + OPENMRS_CONTEXT_PATH  + "/ws/rest/v1/patient/:uuid", {
            uuid: '@uuid'
        },{
            query: { method:'GET', isArray:false } // OpenMRS RESTWS returns { "results": [] }
        });
    }])
    .directive("patientHeader", [ function() {
        return {
            restrict: 'E', // HTML element (as opposed to attribute, or comment)
            templateUrl: "/" + OPENMRS_CONTEXT_PATH + "/ms/uiframework/resource/angulartutorial/scripts/patient-header.html",
            scope: {
                patient: "=patient" // two-way binding to "patient" in parent scope
            }
        }
    }])
    .controller("ExampleController", [ "$scope", "Patient", function($scope, Patient) {
        $scope.loading = true;
        $scope.init = function(config) {
            if (config.patient) {
                $scope.patientUuid = config.patient;
                $scope.patient = Patient.get({uuid: $scope.patientUuid, v:"full"});
                $scope.patient.$promise.then(function() {
                    $scope.loading = false;
                    console.log($scope.patient);
                });
            } else {
                $scope.error = "Need ?patient=uuid in url";
            }
        }

    }]);