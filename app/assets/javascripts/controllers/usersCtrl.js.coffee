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
  $scope.lbgs = ['Alabama', 'Alaska', 'Arizona', 'Arkansas', 'California', 'Colorado', 'Connecticut', 'Delaware', 'Florida', 'Georgia', 'Hawaii', 'Idaho', 'Illinois', 'Indiana', 'Iowa', 'Kansas', 'Kentucky', 'Louisiana', 'Maine', 'Maryland', 'Massachusetts', 'Michigan', 'Minnesota', 'Mississippi', 'Missouri', 'Montana', 'Nebraska', 'Nevada', 'New Hampshire', 'New Jersey', 'New Mexico', 'New York', 'North Dakota', 'North Carolina', 'Ohio', 'Oklahoma', 'Oregon', 'Pennsylvania', 'Rhode Island', 'South Carolina', 'South Dakota', 'Tennessee', 'Texas', 'Utah', 'Vermont', 'Virginia', 'Washington', 'West Virginia', 'Wisconsin', 'Wyoming'];
  $scope.saveUser = () -> 
    $http.put('/users', $scope.user)]