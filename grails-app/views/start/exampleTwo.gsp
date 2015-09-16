<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body ng-app="myApp">
<div ng-controller="BookController">
    <div style="padding-top:15px;">
        <table border="1" class="mytable">
            <tr>
                <td>ISBN</td>
                <td>Name</td>
                <td>Price</td>
                <td>Quantity</td>
                <td>Total Price</td>
                <td>Action</td>
            </tr>
            <tr ng-repeat="item in items">
                <td>{{item.ISBN}}</td>
                <td>
                    <span ng-hide="editMode">{{item.Name}}</span>
                    <input type="text" ng-show="editMode" ng-model="item.Name"/>
                </td>
                <td>
                    <span ng-hide="editMode">{{item.Price}}</span>
                    <input type="number" ng-show="editMode" ng-model="item.Price"/>
                </td>
                <td>
                    <span ng-hide="editMode">{{item.Quantity}}</span>
                    <input type="number" ng-show="editMode" ng-model="item.Quantity"/></td>
                <td>{{(item.Quantity) * (item.Price)}}</td>
                <td>
                    <span><button type="submit" ng-hide="editMode"
                                  ng-click="editMode = true; editItem(item)">Edit</button></span>
                    <span><button type="submit" ng-show="editMode" ng-click="editMode = false">Save</button></span>
                    <span><input type="button" value="Delete" ng-click="removeItem($index)"/></span>
                </td>
            </tr>

        </table></div>
    <br/>

    <div style="font-weight:bold">Grand Total: {{totalPrice()}}</div>
</div>
<g:javascript src="angular.min.js"/>
</body>
<script>
    var app = angular.module('myApp', []);

    app.controller("BookController", function ($scope) {
        $scope.items = [
            {
                ISBN: "5674789",
                Name: "Asp.Net MVC",
                Price: 560,
                Quantity: 20
            },
            {
                ISBN: "4352134",
                Name: "AngularJS",
                Price: 450,
                Quantity: 25
            },
            {
                ISBN: "2460932",
                Name: "Javascript",
                Price: 180,
                Quantity: 15
            }
        ];

        $scope.editing = false;

        $scope.totalPrice = function () {
            var total = 0;
            for (count = 0; count < $scope.items.length; count++) {
                total += $scope.items[count].Price * $scope.items[count].Quantity;
            }
            return total;
        };

        $scope.editItem = function (index) {
            $scope.editing = $scope.items.indexOf(index);

        };

        $scope.saveField = function (index) {
            if ($scope.editing !== false) {
                $scope.editing = false;
            }

        };

        $scope.removeItem = function (index) {
            $scope.items.splice(index, 1);
        }
    });
</script>
</html>