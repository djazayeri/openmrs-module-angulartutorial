angular.module("myapp", ["uicommons.filters"])
    .controller("ExampleController", function($scope) {
        //emr.loadMessages(["angulartutorial.title", "uicommons.yes", "uicommons.no"],
        //    function() {
        //        $scope.$apply();
        //    });

        $scope.options = ["uicommons.yes", "uicommons.no"];

    });