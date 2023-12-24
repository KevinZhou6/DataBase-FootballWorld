"""
URL configuration for DB_class project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from football import views
urlpatterns = [
    #path("admin/", admin.site.urls),
    path('welcome/',views.index),
    path('Qatar/',views.Qatar),
    path('football/CupWorldSearch/',views.WorldcupSearch),
    path('football/CupWorld/',views.WorldCups),
    path('football/CupWorld/edit/',views.WorldCupedit),
    path('football/CupWorld/delete/',views.WorldcupDelete),
    path('football/CupWorld/add/',views.WorldcupInsert),
    path('Qatar/Teams/',views.QatarAllTeams),
    path('Qatar/Groups/',views.QatarGroups),
    path('Qatar/Competitions/',views.QatarCompetitions),
    path('Qatar/Teams/Search/',views.QatarTeamsSearch),
    path('Qatar/Teams/edit/',views.QatarTeamsEdit),
    path('Qatar/Teams/add/',views.QatarTeamsAdd),
    path('Qatar/Teams/delete/',views.QatarTeamsDelete),
    path('Player/Information/', views.PlayerInformation),
    path('Player/Information/add/', views.PlayerInformationAdd),
    path('Player/Information/delete/', views.PlayerInformationDelete),
    path('Country/Information/', views.CountryInformation),
    path('Country/Players/', views.CountryPlayers),
    path('Continent/Information/', views.ContentinentBase),
    path('Continent/Ranking/',views.ContentinentRanking),
    path('League/',views.Leagueshow),
    path('League/Europe/',views.LeagueEurope),
    path('League/Europe/Lilaga/',views.LeagueEuropeLilaga),
    path('League/Europe/PremierLeague/',views.LeagueEuropePremierLeague),
    path('League/Europe/Bundesliga/',views.LeagueEuropePremierBundesliga),
    path('League/Europe/Ligue/',views.LeagueEuropePremierLigue),
    path('League/Europe/Serie/',views.LeagueEuropePremierSerie),
    path('League/Clubs/',views.LeagueClubs),
    path('League/Asia/',views.LeagueAsia),
    path('League/Asia/Japan/',views.LeagueJapan),
    path('League/Asia/Korea/',views.LeagueKorea),
    path('League/Asia/China/',views.LeagueChina),
    path('League/America/',views.LeagueAmerica),
    path('PlayerClubs/',views.PlayerClubs),









]
