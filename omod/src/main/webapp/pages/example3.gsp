<%
    ui.decorateWith("appui", "standardEmrPage")

    ui.includeJavascript("uicommons", "angular.min.js");
    ui.includeJavascript("angulartutorial", "example3.js");
%>

<div>
    <fieldset>
        <legend>Example 3</legend>
        Hints at the magic going on under the hood with AngularJS, and shows an example where it doesn't work.
        (This example uses timeout, but the exact same thing would happen if you do something like jQuery.getJSON.)
        <br/>
        Also, you can only get one Angular app on a page using ng-app, so here we see how to include multiple angular
        apps on a page.
    </fieldset>
    <br/>

    <div id="myapp1" ng-controller="CorrectController">
        (Angular magic)<br/>
        Counter: {{ counter }}
    </div>
    <br/>

    <div id="myapp2" ng-controller="WrongController">
        (No Angular magic)<br/>
        Counter: {{ counter }}
        <br/>
        <button ng-click="doNothing()">Any ng-action will trigger a digest() cycle</button>
    </div>
    <br/>

    <div id="myapp3" ng-controller="UglyController">
        (Manually replicate Angular magic)<br/>
        Counter: {{ counter }}
    </div>
    <br/>

    <div id="myapp4" ng-controller="DoNotDoThisController">
        (Uglier thing you should never do)<br/>
        Counter: {{ counter }}
    </div>

</div>

<script type="text/javascript">
    angular.bootstrap("#myapp1", ["myapp1"]);
    angular.bootstrap("#myapp2", ["myapp2"]);
    angular.bootstrap("#myapp3", ["myapp3"]);
    angular.bootstrap("#myapp4", ["myapp4"]);
</script>