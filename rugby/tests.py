from django.test import TestCase
from .models import Team, Player

class TeamTestCase(TestCase):
    def setUp(self):
        Team.objects.create(name="Sunriser", logoUri="http://image.com")

    def test_get_team(self):
        sunriser = Team.objects.get(name="Sunriser")
        self.assertEqual(sunriser.name, 'Sunriser')

class PlayerTestCase(TestCase):
    def setUp(self):
        team = Team.objects.create(name="Sunriser", logoUri="http://image.com")
        Player.objects.create(team=team ,firstName="Sandeep", lastName="Rathore", imageUri="http://image.com")

    def test_get_tlayer(self):
        player = Player.objects.get(firstName="Sandeep")
        self.assertEqual(player.firstName, 'Sandeep')
