from django.urls import path, re_path
from .views import *

urlpatterns = [
    path(r'', TeamView.as_view(), name="team_list"),
    path(r'team/<str:page>', TeamView.as_view(), name="team_list"),
]