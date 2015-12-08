<%
    ui.decorateWith("appui", "standardEmrPage")

    ui.includeJavascript("uicommons", "angular.min.js");
    ui.includeJavascript("uicommons", "angular-resource.min.js");
    ui.includeJavascript("uicommons", "angular-app.js");
    ui.includeJavascript("uicommons", "filters/display.js");
    ui.includeJavascript("angulartutorial", "example7.js");
%>

<div ng-app="myapp" ng-controller="ExampleController" ng-init="init({patient:'${param.patient[0]}'})">

    <fieldset>
        <legend>Example 7</legend>
        Passing info from the GSP page to the angular app.
        Writing a custom directive.
    </fieldset>
    <br/>

    <div ng-show="error">{{ error }}</div>

    <div ng-show="loading && !error">
        <img src="${ui.resourceLink("uicommons", "images/spinner.gif")}">
    </div>
    <div ng-hide="loading">
        <patient-header patient="patient"/>
    </div>

</div>