<%@ page contentType="text/html;charset=UTF-8" %>
<html ng-app="store">
<head>
    <title>Tabbing</title>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css"/>
</head>

<body ng-controller="PanelController">
<section ng-init="tab=1">
    <ul class="nav nav-pills">
        <li ng-class="{active:tab===1}"><a href="#" ng-click="tab=1">Description</a></li>
        <li ng-class="{active:tab===2}"><a href="#" ng-click="tab=2">Specification</a></li>
        <li ng-class="{active:tab===3}"><a href="#" ng-click="tab=3">Reviews</a></li>
    </ul>
</section>

<div class="panel" ng-show="tab==1">
    Hello panel1
</div>

<div class="panel" ng-show="tab==2">
    Hello panel2
</div>

<div class="panel" ng-show="tab==3">
    Hello panel 3
</div>
<g:javascript src="angular.min.js"/>
</body>
<script>
    (function () {
        var app = angular.module('store', []);
        app.controller('PanelController', function () {

            this.tab = 1;

            this.selectTab = function (setTab) {
                this.tab = setTab;
            };

            this.isSelected = function (checkTab) {
                return this.tab === checkTab;
            };

        });
    })();
</script>
</html>