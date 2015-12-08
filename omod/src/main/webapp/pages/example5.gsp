<%
    ui.decorateWith("appui", "standardEmrPage")

    ui.includeJavascript("uicommons", "angular.min.js");
    ui.includeJavascript("uicommons", "angular-app.js");
    ui.includeJavascript("uicommons", "filters/display.js");
    ui.includeJavascript("angulartutorial", "example5.js");
%>

<div ng-app="myapp" ng-controller="ExampleController">

    <fieldset>
        <legend>Example 5</legend>
        Using raw \$http to access REST.
        Also, writing a custom filter.
    </fieldset>
    <br/>

    <p>
        Search for a concept:
        <input type="text" ng-model="query" ng-model-options="{debounce:200}"/>
    </p>

    <h3>Results</h3>
    <ul>
        <li ng-repeat="concept in concepts">
            {{ concept | ciel }} -
            {{ concept | omrs.display }}
        </li>
    </ul>

</div>