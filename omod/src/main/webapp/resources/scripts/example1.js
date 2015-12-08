angular.module("myapp", [])
    .controller("ExampleController", function($scope) {
        $scope.location = "#OMRS15"

        $scope.fontSize = 16;

        $scope.smaller = function() {
            $scope.fontSize -= 4;
            if ($scope.fontSize < 4) {
                $scope.fontSize = 4;
            }
        }

        $scope.bigger = function() {
            $scope.fontSize += 4;
        }
    });