<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body ng-app="">
<div class="container" ng-init="names=['Vijay','Vendetta','Ankit','Sunil']">
    <h3>Looping with ng-repeat</h3>
    <input type="text" ng-model="name"/>
    <p><span ng-bind="name"/></p>
    <ul>
        <li ng-repeat="personName in names"><span ng-bind="personName"></span></li>
    </ul>
</div>
</body>
<g:javascript src="angular.min.js"/>
</html>
%{--<script>--}%
    %{--var app=angular.module('main',[]);--}%

    %{--app.controller('TestController',function(){--}%
        %{----}%
    %{--});--}%
%{--</script>--}%