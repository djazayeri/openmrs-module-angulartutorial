<h1>Find patient</h1>

<form ng-submit="search(query)">
    <input type="text" ng-model="query"/>
    <button type="submit">Search</button>
</form>


<div ng-hide="results.length">
    No results
</div>

<ul>
    <li ng-repeat="r in results.results">
        <a ui-sref="patient({ patientUuid: r.uuid })">
            {{ r | omrs.display }}
        </a>
    </li>
</ul>