# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#= require_self

# Creates new Angular module called 'Aludir'
window.Aludir = angular.module('Aludir', ['ngRoute'])

window.Aludir.config(['$routeProvider', ($routeProvider) ->
  $routeProvider
    .when '/user/:userId',
      templateUrl: '/assets/userView.html'
      controller: 'ViewUserCtrl'
    .when '/user/:userId/edit',
      templateUrl: '/assets/usersEdit.html'
      controller: 'EditUserCtrl'
    .otherwise
      templateUrl: '/assets/usersIndex.html'
      controller: 'IndexUsersCtrl'
])