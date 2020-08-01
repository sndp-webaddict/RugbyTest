from django.shortcuts import render
from .models import *
from django.views.generic import TemplateView, ListView
from django.http import JsonResponse, HttpResponse
import json
import random

'''
Using AnguarJs for rendering so creating jsonResponse from Django.
It can be also done with Using DJango APIS. But i am using this only.
'''

class TeamView(ListView):
    model = Team
    template_name = 'teams.html'

    def get_context_data(self, *args, **kwargs):
        context = super(TeamView, self).get_context_data(*args, **kwargs)
        return context
    
    def dispatch(self, request, **kwargs):
        return super(TeamView, self).dispatch(request)
    
    def get(self, request, *args, **kwargs):
        try:
            page_type = self.kwargs['page']
        except:
            page_type = ''
        # Get list by Angular
        if page_type == 'list':
            all_teams = []
            get_teams = Team.objects.all()
            for team in get_teams:
                all_teams.append({
                    'id': str(team.pk),
                    'name': team.name,
                    'logo': team.logoUri
                })
            return JsonResponse({'data': all_teams})
        

        # Matches are fixed so just picking random teams
        # and saving data 
        elif page_type == 'start_match':
            playing_squad = {}
            get_list = Team.objects.all()
            random_team = random.sample(list(get_list), k=2)

            # Create Match Queryset
            match = Matches()
            match.team_first = random_team[0]
            match.team_second = random_team[1]
            match.save()
            
            # Auto Points. Shuffle, Using Index because we know we have only two teams
            random.shuffle(random_team)
            points = Point()
            points.match_id = match
            points.winner_team_id = random_team[0].id
            points.losing_team_id = random_team[1].id
            points.save()

            playing_squad = {
                'first_team': match.team_first.name,
                'second_team': match.team_second.name,
                'winning_team': match.team_first.name if points.winner_team_id == match.team_first.id else match.team_second.name,
                'losing_team': match.team_first.name if points.losing_team_id == match.team_first.id else match.team_second.name
            }

            return JsonResponse({'data': playing_squad})
        
        elif page_type == 'details':
            all_details = []
            data = json.loads(request.body)
            print(data)
        else:
            return render(request, self.template_name)
    
    def post(self, request, *args, **kwargs):
        page_type = self.kwargs['page']
        
        # Get details in Angular
        if page_type == 'details':
            team_details = []
            data = json.loads(request.body)
            team_id = data['team_id']
            get_players = Player.objects.select_related('team').filter(team=team_id)
            for player in get_players:
                team_details.append({
                    'name': str(player.firstName) + " " + str(player.lastName),
                    'image': str(player.imageUri),
                    'jersey_number': player.jersey_number,
                    'country': player.country,
                    'total_played_matched': player.total_played_matched,
                    'total_run': player.total_run,
                    'highest_score': player.highest_score,
                    'total_fifties': player.total_fifties,
                    'total_hundreds': player.total_hundreds
                })
            return JsonResponse({'data': team_details})

