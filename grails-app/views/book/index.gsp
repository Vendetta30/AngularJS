<%--
  Created by IntelliJ IDEA.
  User: vijay
  Date: 31/5/15
  Time: 12:00 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html ng-app="store">
<head>
    <title>Book Shop</title>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css"/>
    <g:javascript src="jquery.min.js"/>
    <g:javascript src="bootstrap.min.js"/>
</head>

<body>
<g:render template="navbar"/>

<div class="container">
    <g:render template="listOfBook"/>
</div>
</body>
<g:javascript src="angular.min.js"/>
<g:javascript src="book.js"/>
</html>