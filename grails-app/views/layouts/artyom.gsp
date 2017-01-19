
  To change this template, choose Tools | Templates
  and open the template in the editor.


<%@ page contentType="text/html;charset=UTF-8" %>

<html lang="en"  xmlns:ng="https://angularjs.org" id="artyomApp" ng-app="artyomProject" data-ng-controller="MainController" >
  <head>
    <link rel="shortcut icon" href="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <g:layoutHead />
</head>
<body>
<g:layoutBody />
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.16/angular.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.16/angular-sanitize.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.16/angular-animate.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.2.16/angular-route.min.js"></script>
<script src="${resource(dir:'js/artyom/routing',file:'artyomRouting.js')}"></script>
<script src="${resource(dir:'js/artyom/controller',file:'artyomController.js')}"></script>

<script src="${resource(dir:'js/ma/services/prediction',file:'prediction.js')}"></script>
<script src='${resource(dir:'js/artyom',file:'artyom.js')}'></script>
<script src='${resource(dir:'js/artyom',file:'artyom.min.js')}'></script>
<script src='${resource(dir:'js/artyom',file:'artyomCommands.js')}'></script>

<div ng-view></div>
</body>
</html>
