angular.module("standalone",
    ["uicommons.filters", "ngResource", "ui.router"])

    .config(function ($stateProvider, $urlRouterProvider) {

        $urlRouterProvider.otherwise("find-patient");

        $stateProvider
            .state("find-patient", {
                url: "/find-patient",
                templateUrl: "templates/findPatient.page",
                controller: "FindPatientController"
            })
            .state("patient", {
                url: "/patient",
                templateUrl: "templates/patient.page",
                controller: "PatientController",
                params: { patientUuid: null }
            });
    })