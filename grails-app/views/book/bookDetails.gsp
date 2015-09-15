<%--
  Created by IntelliJ IDEA.
  User: vijay
  Date: 8/6/15
  Time: 11:47 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html ng-app="store">
<head>
    <title></title>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css"/>
    <g:javascript src="jquery.min.js"/>
    <g:javascript src="bootstrap.min.js"/>
</head>

<body>
<div ng-controller="BookDetailController">
    {{title}}
</div>
</body>
<g:javascript src="angular.min.js"/>
<g:javascript src="book.js"/>
</html>