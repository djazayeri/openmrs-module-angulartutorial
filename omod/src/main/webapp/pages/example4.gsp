<%
    ui.decorateWith("appui", "standardEmrPage")

    ui.includeJavascript("uicommons", "angular.min.js");
    ui.includeJavascript("uicommons", "angular-app.js");
    ui.includeJavascript("uicommons", "filters/display.js");
    ui.includeJavascript("angulartutorial", "example4.js");
%>

${ ui.includeFragment("appui", "messages", [
        codes: ["angulartutorial.title", "uicommons.yes", "uicommons.no"] ]) }

<div ng-app="myapp" ng-controller="ExampleController">

    <fieldset>
        <legend>Example 4</legend>
        i18n using Showing how to mix Angular, JavaScript, and GSP
    </fieldset>
    <br/>

    <p>
        This is GSP: ${ ui.message("angulartutorial.title") }
    </p>
    <p>
        This is Angular: {{ "angulartutorial.title" | omrs.display }}
    </p>
    <p>
        Slightly more realistic example using Angular:
        <span ng-repeat="code in options">
            {{ code | omrs.display }}
            <span ng-hide="\$last">,</span>
        </span>
    </p>

</div>