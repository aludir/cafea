# app/assets/javascripts/angular/controllers/main/mainIndexCtrl.js.coffee

@IndexCtrl = ($scope, $location, $http) ->
  $scope.data = 
    users: [{title: 'Loading users...', contents: ''}]
  loadUsers = ->
    $http.get('./users.json').success((data)->
      $scope.data.users = data
      console.log('Succesfully loaded users!')
      ).error( ->
        console.error('Failed to load users')
      )
  
  loadUsers()
  
  $scope.viewUser = (userId) ->
    $location.url('/user/'+userId)
    
@EditCtrl = ($scope, $routeParams) ->

  $scope.data = 
    user: {title: 'My first post', contents: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec laoreet lobortis vulputate. Ut tempus, orci eu tempor sagittis, mauris orci ultrices arcu, in volutpat elit elit semper turpis. Maecenas id lorem quis magna lacinia tincidunt. In libero magna, pharetra in hendrerit vitae, luctus ac sem. Nulla velit augue, vestibulum a egestas et, imperdiet a lacus. Nam mi est, vulputate eu sollicitudin sed, convallis vel turpis. Cras interdum egestas turpis, ut vestibulum est placerat a. Proin quam tellus, cursus et aliquet ut, adipiscing id lacus. Aenean iaculis nulla justo.'}
  $scope.data.userId = $routeParams.userId