<%--
  Created by IntelliJ IDEA.
  User: vijay
  Date: 30/5/15
  Time: 3:06 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html ng-app="store">
<head>
    <title>Adding Review</title>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css"/>
</head>

<body>
<div ng-controller="StoreController as store">
    <ul>
        <li class="list-group-item" ng-repeat="product in store.products">
            <div ng-hide="product.soldOut">
                <h1>{{product.name}}</h1>

                <h2>&dollar;{{product.price}}</h2>

                <p>{{product.description}}</p>
                <button ng-show="product.canPurchase">Add To Cart</button>
            </div>
            <section ng-controller="PanelController as panel">
                <ul class="nav nav-pills">
                    <li ng-class="{active: panel.isSelected(1)}"><a href="#"
                                                                    ng-click="panel.selectTab(1)">Description</a></li>
                    <li ng-class="{active: panel.isSelected(2)}"><a href="#"
                                                                    ng-click="panel.selectTab(2)">Specification</a></li>
                    <li ng-class="{active: panel.isSelected(3)}"><a href="#" ng-click="panel.selectTab(3)">Reviews</a>
                    </li>
                </ul>

                <div class="panel" ng-show="panel.isSelected(1)">
                    Hello panel1
                </div>

                <div class="panel" ng-show="panel.isSelected(2)">
                    Hello panel2
                </div>

                <div class="panel" ng-show="panel.isSelected(3)">
                    <form name="reviewForm">
                        <blockquote ng-repeat="review in product.review">
                            <b>Stars:{{review.star}}</b>
                            {{review.body}}
                            <cite>by: {{review.author}}</cite>
                        </blockquote>
                        <blockquote>
                            <b>Stars:{{review.star}}</b>
                            {{review.body}}
                            <cite>by: {{review.author}}</cite><br/>
                        </blockquote>
                        <select ng-model="review.star">
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select>
                        <textarea ng-model="review.body"></textarea>
                        <label>by:</label>
                        <input ng-model="review.author" type="email"/>
                        <input type="submit" value="Submit"/>
                    </form>
                </div>
            </section>
        </li>
    </ul>
</div>
<g:javascript src="angular.min.js"/>
</body>
<script>
    (function () {
            var app = angular.module('store', []);

            app.controller('StoreController', function () {
                this.products = gems;
            });

            app.controller('PanelController', function () {

                this.tab = 1;

                this.selectTab = function (setTab) {
                    this.tab = setTab;
                };

                this.isSelected = function (checkTab) {
                    return this.tab === checkTab;
                };

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