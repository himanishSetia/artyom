/**
 * Shephertz Technologies
 * @author Jatin Chauhan
 * @date 12 Mar 2015
 * @version 1.0
 */

// AngularJs Module and Configurations
var artyomProject = angular.module('artyomProject', ['ngRoute','ngAnimate','angularUtils.directives.dirPagination','localytics.directives','ngClipboard','ngPrettyJson','720kb.tooltips']);

// Routes configurations
artyomProject.config(['$routeProvider','$httpProvider',
    function($routeProvider,$httpProvider) {
        $routeProvider
        .when('/artyomIndex', {
            templateUrl: '../artyom/artyomIndex',
            controller: 'artyomController'
        })
        
        .otherwise({
            redirectTo: '/artyomIndex'
        });
    }])
    