<%
    ui.decorateWith("appui", "standardEmrPage")

    ui.includeJavascript("uicommons", "angular.min.js");
    ui.includeJavascript("angulartutorial", "example1.js");
%>

<div ng-app="myapp" ng-controller="ExampleController">

    <fieldset>
        <legend>Example 1</legend>
        Quick intro to the basics of AngularJS, including two-way binding with ng-model, as well as
        ng-click and ng-style.
    </fieldset>
    <br/>

    <p>
        Where are we?
        <input type="text" ng-model="location"/>
    </p>

    <p>
        <button ng-click="smaller()">Smaller</button>
        <button ng-click="bigger()">Bigger</button>
    </p>

    <p ng-style="{ 'font-size': fontSize }">
        Welcome to {{ location }}!
    </p>

</div>