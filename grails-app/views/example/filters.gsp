<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body ng-app="">
<div ng-init="customers=[
                         {name:'Vijay',city:'VARANASI'},
                         {name:'ABC', city:'LUCKNOW'},
                         {name: 'PQR',city: 'NOIDA'}
                         ]">
    <input type="text" ng-model="name"/>
    <p><span ng-bind="name"/></p>
    <ul>
        <li ng-repeat="customer in customers | filter:name | orderBy:'city'">
            {{customer.name+" - "+customer.city}}
        </li>
    </ul>
</div>

</body>
<g:javascript src="angular.min.js"/>
</html>