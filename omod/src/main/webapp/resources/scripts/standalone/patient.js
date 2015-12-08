angular.module("standalone")
    .controller("PatientController", [ "$scope", "$state", "$stateParams", "Patient", function($scope, $state, $stateParams, Patient) {
        $scope.patient = Patient.get({uuid: $stateParams.patientUuid, v: "full"});
    }]);