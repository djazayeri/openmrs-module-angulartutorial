angular.module("myapp", [])
    .factory("ToDoService", function() {
        var toDoList = [];
        return {
            list: function() {
                return toDoList;
            },
            add: function(label) {
                toDoList.push({
                    label: label,
                    done: false
                });
            },
            removeDone: function() {
                toDoList = _.filter(toDoList, function(it) {
                    return !it.done;
                });
            }
        }
    })

    .controller("ExampleController", [ "$scope", "ToDoService", function($scope, ToDoService) {
        $scope.list = function() {
            return ToDoService.list();
        }

        $scope.add = function() {
            ToDoService.add($scope.label);
            $scope.label = "";
        }

        $scope.anyDone = function() {
            return _.findWhere(ToDoService.list(), { done: true });
        }

        $scope.removeDone = function() {
            ToDoService.removeDone();
        }
    }]);