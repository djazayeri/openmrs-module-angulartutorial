<%
    ui.includeJavascript("uicommons", "underscore-min.js");
    ui.includeJavascript("uicommons", "angular.min.js");
    ui.includeJavascript("uicommons", "angular-resource.min.js");
    ui.includeJavascript("uicommons", "angular-ui/angular-ui-router.min.js")
    ui.includeJavascript("uicommons", "angular-app.js");

    ui.includeJavascript("uicommons", "filters/display.js");

    ui.includeJavascript("angulartutorial", "standalone/app.js");
    ui.includeJavascript("angulartutorial", "standalone/resources.js");
    ui.includeJavascript("angulartutorial", "standalone/find-patient.js");
    ui.includeJavascript("angulartutorial", "standalone/patient.js");
%>
<html>
    <head>
        ${ ui.resourceLinks() }
    </head>

    <script type="text/javascript">
        var OPENMRS_CONTEXT_PATH = '${ ui.contextPath() }';
    </script>

    <body ng-app="standalone">
        <div ui-view></div>
    </body>

</html>