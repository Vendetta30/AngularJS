<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body ng-app="main">
<h3>Adding Simple Controller</h3>
    <div class="container" ng-controller="FirstController">
        <input type="text" ng-model="name">
        <p>{{name}}</p>
        <ul>
            <li ng-repeat="person in persons | filter:name | orderBy:'city'">
                {{person.name+"-"+person.city}}
            </li>
        </ul>
    </div>
</body>
<g:javascript src="angular.min.js"/>
</html>
<script>
    var app=angular.module('main',[]);

    app.controller('FirstController',function($scope){
        $scope.persons=[
            {name:'Vijay', city:'Noida'},
            {name:'Vijay', city:'Varanasi'},
            {name:'Vijay', city:'Lucknow'}
        ];
    });
</script>