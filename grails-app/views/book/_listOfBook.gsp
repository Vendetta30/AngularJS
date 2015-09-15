<div ng-controller="BookListController">
    <table class="table table-hover">
        <thead>
        <tr>
            <th>Book Title</th>
            <th>Price</th>
            <th>Purchase</th>
        </tr>
        </thead>
        <tbody>
        <tr ng-repeat="book in books">
            <td><a href="" ng-click="showDetails(book.title)">{{book.title}}</a></td>
            <td>{{book.price | currency}}</td>
            <td><button type="button" class="btn btn-success"><span class="glyphicon-shopping-cart"></span> </button> </td>

            <td>
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
                        {{book.description}}<br/>
                       <b>ISBN:</b> {{book.ISBN}}<br/>
                        <b>Release Date</b>{{book.releasedDate}}<br/>
                        <b>Author:</b>{{book.author.Author.name}}{{book.reviews}}
                    </div>

                    <div class="panel" ng-show="panel.isSelected(2)">
                        {{book.ISBN}}
                    </div>

                    <div class="panel" ng-show="panel.isSelected(3)">
                        {{book.reviews.message}}
                        <blockquote ng-repeat="rev in book.reviews">
                        {{book.reviews}}
                        <b>Stars:{{rev.rate}}</b>
                            {{rev.message}}
                            <cite>by: {{rev.user}}</cite>
                        </blockquote>

                        <form name="reviewForm" ng-controller="ReviewController as reviewCtrl" ng-submit="reviewCtrl.addReview(book)">
                            <blockquote>
                                <b>Stars:{{reviewCtrl.review.rate}}</b>
                                {{reviewCtrl.review.message}}
                                <cite>by: {{reviewCtrl.review.user}}</cite><br/>
                            </blockquote>
                            <select ng-model="reviewCtrl.review.rate">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                            </select>
                            <textarea ng-model="reviewCtrl.review.message"></textarea>
                            <label>by:</label>
                            <input ng-model="reviewCtrl.review.user" type="email"/>
                            <input type="submit" value="Submit"/>
                        </form>
                    </div>
                </section>
            </td>
        </tr>
        </tbody>
    </table>
</div>
