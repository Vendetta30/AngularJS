<%@ page contentType="text/html;charset=UTF-8" %>
<html ng-app="store">
<head>
    <title>Tabbing</title>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css"/>
</head>

<body>
<section ng-controller="PanelController as panel">
    <ul class="nav nav-pills">
        <li ng-class="{active: panel.isSelected(1)}"><a href="#" ng-click="panel.selectTab(1)">Description</a></li>
        <li ng-class="{active: panel.isSelected(2)}"><a href="#" ng-click="panel.selectTab(2)">Specification</a></li>
        <li ng-class="{active: panel.isSelected(3)}"><a href="#" ng-click="panel.selectTab(3)">Reviews</a></li>
    </ul>
    <div class="panel" ng-show="panel.isSelected(1)">
        Hello panel1
    </div>
    <div class="panel" ng-show="panel.isSelected(2)">
        Hello panel2
    </div>
    <div class="panel" ng-show="panel.isSelected(3)">
        Hello panel 3
    </div>
</section>
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