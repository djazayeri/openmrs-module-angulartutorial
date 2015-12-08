<%
    ui.decorateWith("appui", "standardEmrPage")

    ui.includeJavascript("uicommons", "angular.min.js");
    ui.includeJavascript("uicommons", "angular-resource.min.js");
    ui.includeJavascript("uicommons", "angular-app.js");
    ui.includeJavascript("uicommons", "filters/display.js");
    ui.includeJavascript("angulartutorial", "example6.js");
%>

<div ng-app="myapp" ng-controller="ExampleController">

    <fieldset>
        <legend>Example 5</legend>
        Using ngResource to access REST.
    </fieldset>
    <br/>

    <p>
        Search for a concept:
        <input type="text" ng-model="query" ng-change="search(query)"/>
    </p>

    <h3>Results 1</h3>
    <ul>
        <li ng-repeat="concept in concepts1.results">
            {{ concept | ciel }} -
            {{ concept | omrs.display }}
        </li>
    </ul>

    <h3>Results 2</h3>
    <ul>
        <li ng-repeat="concept in concepts2">
            {{ concept | ciel }} -
            {{ concept | omrs.display }}
        </li>
    </ul>

</div>