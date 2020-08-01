var app = angular.module('Team', [])
app.config(['$httpProvider', function($httpProvider) {
    $httpProvider.defaults.xsrfCookieName = 'csrftoken';
    $httpProvider.defaults.xsrfHeaderName = 'X-CSRFToken';
    $httpProvider.defaults.headers.post['Content-Type'] = 'application/json';
}]);

app.controller('TeamController', function($scope, $http) {

    $scope.teams = [];
    $scope.details = 0

    allTeams();
    function allTeams() {
        $http({
            method: 'GET',
            url: '/team/list'
        }).then(function mySuccess(response) {
            $scope.teams = response.data.data;
            if($scope.teams.length > 0) {
                $scope.getDetails($scope.teams[0].id)
            }
        }, function myError(response) {
            console.log("ERROR IN API ");
        });
    }

    $scope.getDetails = function(team_id) {
        var data = JSON.stringify({
            "team_id": team_id,
        });
        $http({
            method : "POST",
            url : '/team/details',
            data: data
        }).then(function mySuccess(response) {
            $scope.players = response.data.data
        }, function myError(response) {
            console.log("Some error")
        });
    }

    $scope.startMatch = function() {
        $http({
            method : "GET",
            url : '/team/start_match',
        }).then(function mySuccess(response) {
            $scope.result = response.data.data
        }, function myError(response) {
            console.log("Some error")
        });
    }
})