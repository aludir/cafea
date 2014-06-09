# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#= require_self

# Creates new Angular module called 'Aludir'
@Aludir = angular.module('Aludir', ['ngRoute', 'xeditable'])

@Aludir.config ($httpProvider) ->
  authToken = $("meta[name=\"csrf-token\"]").attr("content")
  $httpProvider.defaults.headers.common["X-CSRF-TOKEN"] = authToken

@Aludir.config(['$routeProvider', ($routeProvider) ->
  $routeProvider
    .when '/user/:userId',
      templateUrl: '/templates/userView.html'
      controller: 'ViewUserCtrl'
    .when '/user/:userId/edit',
      templateUrl: '/templates/userEdit.html'
      controller: 'ViewUserCtrl'
    .otherwise
      templateUrl: '/templates/usersIndex.html'
      controller: 'IndexUsersCtrl'
])