<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>
<body>
<p><strong>Functions Of Scopes:</strong></p>
<p>1) Provides observers to watch for all the model changes.</p>
<p>2) Provides the ability to propagate model changes through the application as well as outside the system to other components associated.</p>
<p>3) Scopes can be nested in such a way that they can isolate functionality and model properties.</p>
<p>4) Provides an execution environment in which expressions are evaluated.</p>

<h2>Basic Data Binding/One-Way Data Binding</h2>
<p>One-way data binding is an approach where&nbsp;a value is taken from the data model and inserted into an HTML element. There is no way to update model from view.</p>
<p>AngularJS &nbsp;provides some predefined data binding directives which are as follows:</p>
<p><code><strong>ng-bind</strong></code>&nbsp;– Binds the inner Text property of an HTML element.</p>
<p><code><strong>ng-bind-template</strong></code>&nbsp;- Almost similar to the ng-bind directive but allows for multiple template.</p>
<p><code><strong>ng-non-bindable</strong></code>&nbsp;- Declares a region of content for which data binding will be skipped.</p>
<p><code><strong>ng-bind-html</strong></code>&nbsp;- Creates data bindings using the inner HTML property of an HTML element.</p>
<p><code><strong>ng-model</strong>&nbsp;</code>- Creates a two-way data binding.</p>
<div ng-app="myApp">
    <div ng-controller="BookController">
        <table class="mytable">
            <tr>
                <td>
                    <span style="color: red;background-color: yellow">Below output is produced from AngularJS's <strong>{{}}</strong> directive.</span>
                </td>
            </tr>
            <tr ng-repeat="item in items">
                <td>
                    <p> <b>{{item.Name}}</b> is in our stock.</p>
                </td>
            </tr>
        </table>
        <table class="mytable">
            <tr>
                <td>
                    <span style="color: darkblue;background-color: yellow">Below output is produced from AngularJS's <strong>ng-bind</strong> directive.</span>
                </td>
            </tr>
            <tr ng-repeat="item in items">
                <td>
                    <p> <b><span ng-bind="item.Name"></span></b> is in our stock.</p>
                </td>
            </tr>
        </table>
        <table class="mytable">
            <tr>
                <td>
                    <span style="color: black;background-color: yellow">Below output is produced from AngularJS's <strong>ng-non-bindable</strong> directive.</span>
                </td>
            </tr>
            <tr ng-repeat="item in items">
                <td>
                    <div ng-non-bindable>
                        <p> <b>{{item.Name}}</b> is in our stock.</p>
                    </div>
                </td>
            </tr>
        </table>
    </div>
</div>
<g:javascript src="angular.min.js"/>
</body>
<script>
    var app=angular.module('myApp',[]);

    app.controller("BookController",function($scope){
        $scope.items=[
            {
                ISBN:"5674789",
                Name: "Asp.Net MVC",
                Price: 560,
                Quantity: 20
            },
            {
                ISBN:"4352134",
                Name: "AngularJS",
                Price: 450,
                Quantity: 25
            },
            {
                ISBN:"2460932",
                Name: "Javascript",
                Price: 180,
                Quantity: 15
            }
        ];
    });
</script>
</html>