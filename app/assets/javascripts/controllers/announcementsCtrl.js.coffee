Aludir.controller 'IndexAnnouncementsCtrl',['$scope','$location','$routeParams', ($scope, $location, $routeParams) ->
  $scope.data = 
    announcements: [{id: '1', title: 'Looking for a flat', text: 'Hey guys! Anyone has a flat to spare in London?', tag: 'accommodation', user_id: '123asdf', created_at: '2014/06/13'},
    {id: '2', title: 'ABC 4ward is here! Apply now!', text: 'Did you hear the news? ABC 4ward, the 4th edition of ABC is being prepared! Apply now!', tag: 'event', user_id: '123', created_at: '2014/06/09'},
    {id: '3', title: 'Anyone in Bratislava?', text: 'Hello all! I will be in Budapest this weekend. Is anyone in for a beer and a chat? Please let me know! Just click on my name, to see my profile :) ', tag: 'meeting', user_id: '5a94cee634df', created_at: '2014/06/14'},
    {id: '4', title: 'What is going on in Ukraine?', text: 'Any updates anyone? Please keep us posted!', tag: 'politics', user_id: 'f5343bf64216', created_at: '2014/01/12'}]  
  $scope.viewAnnouncement = (announcementId) ->
    $location.url('announcements/'+announcementId)
  $scope.goBack = ->
    $location.url('/announcements')
  $scope.findId = ->
     $routeParams.announcementId
  ]