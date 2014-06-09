# app/assets/javascripts/angular/controllers/usersCtrl.js.coffee


Aludir.controller 'IndexUsersCtrl',[ '$scope', '$location', '$http', ($scope, $location, $http) ->
  $scope.users = [{name: 'Loading users...', surname: ''}]
  loadUsers = ->
    $http.get('./users.json').success((data)->
      $scope.users = data
      console.log('Succesfully loaded users!')
      ).error( ->
        console.error('Failed to load users')
      )
  loadUsers()
  $scope.viewUser = (userId) ->
    $location.url('/user/'+userId)]
    
Aludir.controller 'ViewUserCtrl', [ '$scope', '$location','$routeParams','$http', ($scope, $location, $routeParams, $http) ->
  $scope.user = [{name: 'Loading user data...', surname: ''}]
  loadUser = (id)->
    $http.get('./users/'+id+'.json').success((data)->
      $scope.user = data
      console.log('Succesfully loaded user data!')
      ).error(->
        console.error('Failed to load user data')
      )
  loadUser($routeParams.userId)
  $scope.goBack = ->
    $location.url('/')]
    
Aludir.controller 'EditableFormCtrl', ['$scope', '$filter', '$http', ($scope, $filter, $http) ->
  $scope.genders = [
    {value: 1, text: 'male'},
    {value: 2, text: 'female'}
  ];
  $scope.updateUser = () ->
    $http.put('./users', $scope.user)]