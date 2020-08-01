from django.contrib import admin
from .models import *

'''
Only showing these two models into backend so user can add team and players.
I am managing rest of things from View. You can add Matches and Points if you want
to see data.
'''

admin.site.register([Team, Player])