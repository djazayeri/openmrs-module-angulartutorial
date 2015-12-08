<%
    ui.decorateWith("appui", "standardEmrPage")

    ui.includeJavascript("uicommons", "angular.min.js");
    ui.includeJavascript("angulartutorial", "example2.js");
%>

<style type="text/css">
    .done {
        text-decoration: line-through;
        color: gray;
    }
</style>

<div ng-app="myapp" ng-controller="ExampleController">

    <fieldset>
        <legend>Example 2</legend>
        More sophisticated AngularJS example, including ng-repeat, a service, and dependency injection.
        <br/>
        Also, try out debugging via your javascript console, and angular.element(\$0).scope()
    </fieldset>
    <br/>

    <h3>To Dos</h3>

    <div ng-hide="list().length">
        None
    </div>

    <ul>
        <li ng-repeat="item in list()">
            <input type="checkbox" ng-model="item.done"/>
            <span ng-class="{ done: item.done }">
                {{ item.label }}
            </span>
        </li>
    </ul>

    <button ng-show="anyDone()" ng-click="removeDone()">
        Archive completed tasks
    </button>

    <h3>Add another</h3>
    <form ng-submit="add()">
        <input ng-model="label" placeholder="What to do?"/>
        <button type="submit">Add</button>
    </form>

</div>