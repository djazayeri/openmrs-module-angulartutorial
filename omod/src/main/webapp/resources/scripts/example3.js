angular.module("myapp1", [])
    .controller("CorrectController", [ "$scope", "$timeout", function($scope, $timeout) {
        $scope.counter = 0;

        // we are using Angular's special $timeout service, which wraps things to do Angular magic.
        function incrementAndWait() {
            $timeout(function() {
                $scope.counter += 1;
                incrementAndWait();
            }, 1000);
        }
        incrementAndWait();
    }]);

angular.module("myapp2", [])
    .controller("WrongController", [ "$scope", function($scope) {
        $scope.counter = 0;

        // Angular doesn't know about this, so the magic doesn't happen
        function incrementAndWait() {
            setTimeout(function() {
                $scope.counter += 1;
                incrementAndWait();
            }, 1000);
        }
        incrementAndWait();

        $scope.doNothing = function() { }
    }]);

angular.module("myapp3", [])
    .controller("UglyController", [ "$scope", function($scope) {
        $scope.counter = 0;

        // This is more or less what is happening under the hood in Angular's $timeout service.
        // If you are ever using callbacks from a non-Angular library (e.g. jQuery) you need to use $scope.$apply
        function incrementAndWait() {
            setTimeout(function() {
                $scope.$apply(function() {
                    $scope.counter += 1;
                    incrementAndWait();
                });
            }, 1000);
        }
        incrementAndWait();

        $scope.doNothing = function() { }
    }]);

angular.module("myapp4", [])
    .controller("DoNotDoThisController", [ "$scope", function($scope) {
        $scope.counter = 0;

        // This is the wrong way to trigger Angular's magic
        function incrementAndWait() {
            setTimeout(function() {
                $scope.counter += 1;
                incrementAndWait();
                $scope.$digest();
            }, 1000);
        }
        incrementAndWait();

        $scope.doNothing = function() { }
    }])