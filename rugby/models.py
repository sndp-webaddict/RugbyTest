from django.db import models


class Team(models.Model):
    name = models.CharField(max_length=200, help_text="Enter Team Name")
    logoUri = models.URLField(help_text="Add Logo URL")
    club_state = models.CharField(max_length=100, blank=True, null=True, help_text="Add Club State")

    def __str__(self):
        return self.name

class Player(models.Model):
    team = models.ForeignKey(Team, on_delete=models.CASCADE)
    firstName = models.CharField(max_length=200)
    lastName = models.CharField(max_length=200)
    imageUri = models.URLField(help_text="Add Image URL")
    jersey_number = models.IntegerField(blank=True, null=True)
    country = models.CharField(max_length=150, blank=True, null=True)
    total_played_matched = models.IntegerField(default=0)
    total_run = models.IntegerField(default=0)
    highest_score = models.IntegerField(default=0)
    total_fifties = models.IntegerField(default=0)
    total_hundreds = models.IntegerField(default=0)

    def __str__(self):
        return self.firstName + " " + self.lastName

class Matches(models.Model):
    team_first = models.ForeignKey(Team, on_delete=models.CASCADE, related_name='team_first')
    team_second = models.ForeignKey(Team, on_delete=models.CASCADE, related_name="team_second")

    class Meta:
        verbose_name_plural = "Matches"
    
    def __str__(self):
        return str(self.team_first) + ' V/S ' + str(self.team_second)

class Point(models.Model):
    match_id = models.ForeignKey(Matches, on_delete=models.CASCADE)
    winner_team_id = models.IntegerField(default=0)
    losing_team_id = models.IntegerField(default=0)
    points = models.IntegerField(default=100)
