# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#= require_self

# Creates new Angular module called 'Aludir'
@Aludir = angular.module('Aludir', ['ngRoute', 'xeditable'])

# Reading the authenticity_tag and passing it in all requests
# https://shellycloud.com/blog/2013/10/how-to-integrate-angularjs-with-rails-4
@Aludir.config(['$httpProvider', ($httpProvider) ->
  authToken = $("meta[name=\"csrf-token\"]").attr("content")
  $httpProvider.defaults.headers.common["X-CSRF-TOKEN"] = authToken
])

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