<%@ page contentType="text/html;charset=UTF-8" %>
<html ng-app="store">
<head>
    <title>Validation</title>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css"/>
    <link rel="stylesheet" href="${resource(dir: 'css',file: 'mine.css')}" type="text/css"/>
</head>

<body>
<div ng-controller="StoreController as store">
    <ul class="list-group">
        <li class="list-group-item" ng-repeat="product in store.products">
            <div ng-hide="product.soldOut">
                <h1>{{product.name}}</h1>

                <em class="pull-right">{{product.price | currency}}</em><br/>
                <img ng-src="{{product.images[1].thumb}}"/><br/>

                <button ng-show="product.canPurchase">Add To Cart</button><br/><br/>
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
                    <p>{{product.description}}</p>
                </div>

                <div class="panel" ng-show="panel.isSelected(2)">
                    Hello panel2
                </div>

                <div class="panel" ng-show="panel.isSelected(3)">
                    <blockquote ng-repeat="review in product.reviews">
                        <b>Stars:{{review.star}}</b>
                        {{review.body}}
                        <cite>by: {{review.author}}</cite>
                    </blockquote>

                    <form name="reviewForm" ng-controller="ReviewController as reviewCtrl"
                          ng-submit="reviewForm.$valid && reviewCtrl.addReview(product)"
                            novalidate>
                        <blockquote>
                            <b>Stars:{{reviewCtrl.review.star}}</b>
                            {{reviewCtrl.review.body}}
                            <cite>by: {{reviewCtrl.review.author}}</cite><br/>
                        </blockquote>
                        <select ng-model="reviewCtrl.review.star" required>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                        </select>
                        <textarea ng-model="reviewCtrl.review.body" required></textarea>
                        <label>by:</label>
                        <input ng-model="reviewCtrl.review.author" type="email" required/>
                        <input type="submit" value="Submit"/>
                    </form>
                </div>
            </section>
        </li>
    </ul>
</div>
<g:javascript src="angular.min.js"/>
%{--<g:javascript src="mine.js"/>--}%
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
                ],
                reviews: [
                    {
                        star: 5,
                        body: "Hello review 1",
                        author: "vijay@gmail.com"
                    },
                    {
                        star: 4,
                        body: "Hello review 2",
                        author: "vendetta@gmail.com"
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
                ],
                reviews: [
                    {
                        star: 5,
                        body: "Hello review 1",
                        author: "vijay@gmail.com"
                    },
                    {
                        star: 4,
                        body: "Hello review 2",
                        author: "vendetta@gmail.com"
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
                ],
                reviews: [
                    {
                        star: 5,
                        body: "Hello review 1",
                        author: "vijay@gmail.com"
                    },
                    {
                        star: 4,
                        body: "Hello review 2",
                        author: "vendetta@gmail.com"
                    }
                ]
            }
        ];
        app.controller('ReviewController',function(){
            this.review={};
            this.addReview=function(product){
                product.reviews.push(this.review);
                this.review={};
            };
        });
    })();
</script>
</html>