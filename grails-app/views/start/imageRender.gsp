<%@ page contentType="text/html;charset=UTF-8" %>
<html ng-app="store">
<head>
    <title>Image Rendering</title>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css"/>
</head>

<body>
<div ng-controller="StoreController as store">
    <div ng-repeat="product in store.products">
        <div ng-hide="product.soldOut">
            <h1>{{product.name}}</h1>

            <h2>{{product.price | currency}}</h2>

            <p>{{product.description}}</p>
            <br/>{{product.images[0].full}}
            <img ng-src="{{product.images[1].thumb}}"/><br/>
            <button ng-show="product.canPurchase">Add To Cart</button>
        </div>
    </div>
</div>
<g:javascript src="angular.min.js"/>
</body>
<script>
    (function () {
        var app = angular.module('store', []);

        app.controller('StoreController', function () {
            this.products = gems;

        });
        var gems = [
            {
                name: 'Pencil',
                description: 'HB...',
                price: 2.90,
                canPurchase: true,
                soldOut: false,
                images: [
                    {
                        full: '../images/download.jpg'
                    },
                    {
                        thumb: '../images/pencil.jpg'
                    }
                ]
            },
            {
                name: 'Pen',
                description: 'Rotomacs...',
                price: 6.75,
                canPurchase: true,
                soldOut: false,
                images: [
                    {
                        full: '../images/download1.jpg'
                    },
                    {
                        thumb: '../images/pen.jpg'
                    }
                ]
            },
            {
                name: 'NoteBook',
                description: 'Classmates...',
                price: 26.75,
                canPurchase: true,
                soldOut: false,
                images: [
                    {
                        full: '../images/download2.jpg'
                    },
                    {
                        thumb: '../images/notebook.jpg'
                    }
                ]
            }
        ];
    })();
</script>
</html>