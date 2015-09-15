<%@ page contentType="text/html;charset=UTF-8" %>
<html ng-app="store">
<head>
    <title>Introducing the Controller</title>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css"/>
</head>

<body>
<div ng-controller="StoreController as store">
    <div ng-hide="store.product.soldOut">
        <h1>{{store.product.name}}</h1>

        <h2>&dollar;{{store.product.price}}</h2>

        <p>{{store.product.description}}</p>
        <button ng-show="store.product.canPurchase">Add To Cart</button>
    </div>
</div>
<g:javascript src="angular.min.js"/>
%{--<g:javascript src="mine.js"/>--}%
</body>
<script>
    (function () {
        var app = angular.module('store', []);
        app.controller('StoreController', function () {
            this.product = gem;
        });

        var gem = {
            name: 'Pencil',
            description: 'HB...',
            price: 2.90,
            canPurchase: true,
            soldOut: false
        }
    })();
</script>
</html>