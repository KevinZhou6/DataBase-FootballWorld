import MySQLdb
from django.shortcuts import render,HttpResponse,redirect
# Create your views here.

def connect():
    conn = MySQLdb.connect(host="localhost", user="root", passwd="021229", db="footballWorld", charset='utf8')
    return conn
def index(request):
    return render(request,"base/welcome.html")

def Qatar(request):
    return render(request,"2023Qatar/begin.html")

## 往届世界杯
def WorldCups(request): # 展示初始世界杯
    if request.method == 'GET':
        conn = MySQLdb.connect(host="localhost", user="root", passwd="021229", db="footballWorld", charset='utf8')
        with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor:
            sql = "SELECT * FROM worldcup "
            cursor.execute(sql)
            Cup = cursor.fetchall()
        return render(request,"WorldCup/index.html",{'CUPS':Cup})
    else:
        conn = MySQLdb.connect(host="localhost", user="root", passwd="021229", db="footballWorld", charset='utf8')
        time1 = request.POST.get("time")
        place1 = request.POST.get("place")
        country11 = request.POST.get("country")

        with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor:
            # 可以实现为空的搜索
            sql = "SELECT * FROM worldcup WHERE (time =%s OR %s ='') AND (place =%s OR %s ='') AND (country =%s OR %s='')"
            cursor.execute(sql,[time1,time1,place1,place1,country11,country11])
            Cup = cursor.fetchall()
        return render(request, "WorldCup/index.html", {'CUPS': Cup})


def WorldcupSearch(request):
    return render(request,"WorldCup/Search.html")

def WorldCupedit(request):
    if request.method == "GET":
        time = request.GET.get("time")
        conn = connect()
        with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor:
            sql = "SELECT * FROM worldcup WHERE time =%s"
            cursor.execute(sql,[time])
            Cup = cursor.fetchone()
        return render(request,"WorldCup/edit.html",{'Cup':Cup})
    else:
        conn = connect()
        time = request.POST.get("time")
        place = request.POST.get("place",'')
        country = request.POST.get("country",'')
        print(time,place,country)
        with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor:
            sql = "UPDATE worldcup set place = %s , country = %s  WHERE time =%s"
            cursor.execute(sql,[place,country,time])
            conn.commit()

        return redirect("../")

def WorldcupDelete(request):
    time = request.GET.get("time")

    conn = connect()
    with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor:
        sql = "DELETE FROM worldcup WHERE time =%s"
        cursor.execute(sql,[time])
        conn.commit()
    return redirect('../')

def WorldcupInsert(request):
    if request.method == "POST":
        conn = connect()
        time = request.POST.get("time")
        place = request.POST.get("place")
        country = request.POST.get("country")
        if int(time) > 2023 :
            return render(request,"WorldCup/add.html")

        with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor:
            sql = "INSERT INTO worldcup(time,place,country) values(%s,%s,%s)"
            cursor.execute(sql,[time,place,country])
            conn.commit()
        return redirect('../')
    else :
        return render(request,"WorldCup/add.html")



# 卡塔尔世界杯

## 比赛队汇总
def QatarAllTeams(request):
    path ="img/QatarGroups.png"
    if request.method == "GET":
        conn = connect()
        with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor :
            sql = "SELECT * from qatarteams "
            cursor.execute(sql)
            teams = cursor.fetchall()
            return render(request,"2023Qatar/Team.html",{"teams":teams,"path":path})
    else :
        conn= connect()
        team = request.POST.get("team")

        op = request.POST.get("op")

        type = request.POST.get("type")
        if op == '0':

            with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor:
                sql = "SELECT * from qatarteams where Teamname = %s"
                cursor.execute(sql,[team])
                teams = cursor.fetchall()
            return render(request, "2023Qatar/Team.html",{"teams":teams,"path":path})
        else :

            with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor:
                sql = ("SELECT *from qatarteams WHERE  CASE %s WHEN 'Final16' THEN Final16 WHEN 'Final8' THEN Final8 "
                       "WHEN 'HalfFinal' THEN HalfFinal ELSE Final END = 'YES'")
                cursor.execute(sql,[type])
                teams = cursor.fetchall()

                if type == "Final16":
                    path="img/QatarFinal16.png"
                elif type == "Final8" :
                    path="img/QatarFinal8-4.png"
                else :
                    path="img/QatarHalfFinal.png"
                return render(request, "2023Qatar/Team.html", {"teams": teams ,"path": path})

def QatarTeamsSearch(request):
    return render(request,"2023Qatar/Op_Team/search.html")

def QatarTeamsEdit(request):

    conn = connect()
    if request.method == "POST":
        team = request.POST.get("team")
        Final16 = request.POST.get("16")
        Final8 = request.POST.get("8")
        Final4 = request.POST.get("4")
        Final = request.POST.get("2")
        with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor :
            sql = "UPDATE qatarteams SET Final16 = %s, Final8 = %s, HalfFinal = %s, Final =%s WHERE Teamname =%s"
            cursor.execute(sql,[Final16,Final8,Final4,Final,team])
            conn.commit()
        return redirect("../")
    else :
        teamname = request.GET.get("teamname")
        with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor :
            sql = "SELECT *from qatarteams WHERE TeamName = %s"
            cursor.execute(sql,[teamname])
            teams = cursor.fetchone()
            return render(request, "2023Qatar/OP_Team/edit.html", {"team":teams})
def QatarTeamsDelete(request):

    team = request.GET.get("teamname")
    conn = connect()
    with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor:
        sql = ("Delete FROM qatarteams WHERE teamname =%s")
        cursor.execute(sql,[team])
        conn.commit()
    return redirect("../")
def QatarTeamsAdd(request):
    if request.method == "GET":
        return render(request, "2023Qatar/Op_Team/add.html")
    else:
        teamname = request.POST.get("Team")
        Final16 = request.POST.get("16")
        Final8 = request.POST.get("8")
        Final4 = request.POST.get("4")
        Final = request.POST.get("2")
        conn = connect()
        with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor:
            sql = "INSERT INTO qatarteams(Teamname,Final16,Final8,HalfFinal,Final) VALUES (%s,%s,%s,%s,%s)"
            cursor.execute(sql,[teamname,Final16,Final8,Final4,Final])
            conn.commit()

        return redirect("../")




# Qatar比赛分组
def QatarGroups(request):
    conn = connect()
    if request.method == "GET":
        with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor:
            sql = "SELECT * FROM qatargroupscore where  GNumber='A' ORDER BY Score DESC; "
            cursor.execute(sql)
            team = cursor.fetchall()
            return render(request, "2023Qatar/group.html", {"teams": team})

    else:
        type = request.POST.get("type")
        with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor:
            sql = "SELECT * FROM qatargroupscore where GNumber=%s ORDER BY Score DESC"
            cursor.execute(sql,[type])
            team = cursor.fetchall()
        return render(request,"2023Qatar/group.html", {"teams": team})


# Qatar比赛日常
def QatarCompetitions(request):
    conn = connect()

    if request.method == "GET":
        with conn.cursor(cursorclass = MySQLdb.cursors.DictCursor) as cursor:
            sql = "SELECT * FROM qatarschedule order by Type"
            cursor.execute(sql)
            team = cursor.fetchall()
        return render(request,"2023Qatar/Competition.html",{"teams": team})
    else :
        type = request.POST.get("type")
        input = request.POST.get("input")
        if type == "队名":
            with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor:
                sql = "SELECT * FROM qatarschedule where (Name1 =%s OR %s ='') OR (Name2 =%s OR %s = '') ORDER BY Time"
                cursor.execute(sql,[input,input,input,input])
                team = cursor.fetchall()
            return render(request,"2023Qatar/Competition.html",{"teams": team})
        else:
            with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor:
                sql = "SELECT * FROM qatarschedule where (Type=%s OR %s ='')  ORDER BY Time"
                cursor.execute(sql, [input,input])
                team = cursor.fetchall()
            return render(request, "2023Qatar/Competition.html", {"teams": team})


# 球员基本信息
def PlayerInformation(request):
    conn =connect()
    if request.method == "GET":

        with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor:
            sql = "SELECT * FROM player "
            cursor.execute(sql)
            players = cursor.fetchall()
        return render(request, "Player/Information.html", {"players": players})
    else :
        l1 = request.POST.get("goal1")
        l2 = request.POST.get("game1")
        if l1 != "":

            with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor:
                sql = "SELECT * FROM player ORDER BY CareerGames DESC "
                cursor.execute(sql)
                players = cursor.fetchall()
            return render(request, "Player/Information.html", {"players": players})
        else :

            with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor:
                sql = "SELECT * FROM player ORDER BY CareerGoals DESC "
                cursor.execute(sql)
                players = cursor.fetchall()
            return render(request, "Player/Information.html", {"players": players})


def PlayerInformationAdd(request):
    if request.method == "POST":
        name = request.POST.get("name")
        Country = request.POST.get("country")
        goals  = request.POST.get("goal")
        games = request.POST.get("game")
        l1  = request.POST.get("goal1")
        l2 = request.POST.get("game1")

        conn = connect()
        with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor:
            sql = "INSERT into player(Name, Country, CareerGames, CareerGoals) VALUES (%s, %s, %s, %s)"
            cursor.execute(sql, [name,Country,games,goals])
            conn.commit()
        return redirect("../")
    else :
        return render(request, "Player/add.html")
def PlayerInformationDelete(request):
    id = request.GET.get("id")
    conn =connect()
    with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor:
        sql = "DELETE FROM player WHERE Id =%s"
        cursor.execute(sql,[id])
        conn.commit()
        return redirect("../")


def CountryInformation(request):
    conn = connect()
    with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor :
        sql = "SELECT *from nation"
        cursor.execute(sql)
        countries = cursor.fetchall()
    return render(request,"Country/Information.html",{"Countries":countries})

def CountryPlayers(request):
    country = request.GET.get("country")

    conn = connect()
    with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor :
        sql = "SELECT *from playerinnation WHERE Nation =%s"
        cursor.execute(sql,[country])
        players = cursor.fetchall()
    return render(request,"Country/Players.html",{"players":players})


##### 洲际杯

def ContentinentBase(request):
    conn = connect()
    if request.method == "POST":
        Cup = request.POST.get("type")
        with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor:
            sql = "SELECT * from intercontinentalcup where Cup =%s"
            cursor.execute(sql,[Cup])
            res = cursor.fetchall()
    else:
        with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor:
            sql = "SELECT * from intercontinentalcup WHERE Cup ='亚洲杯'"
            cursor.execute(sql)
            res = cursor.fetchall()

    return render(request,"Continent/baseinfo.html",{"teams":res})

def ContentinentRanking(request):
    conn = connect()
    country = request.GET.get("country")
    with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor:
        sql = "SELECT *from scoreboard WHERE Name =%s"
        cursor.execute(sql,[country])
        res = cursor.fetchall()
        return render(request,"Continent/Score.html",{"records":res,"name":country})



#### 超级联赛
def Leagueshow(request):
    return render(request,"League/League.html")

def LeagueEurope(request):
    return render(request, "League/Europen/Europe.html")


def LeagueEuropeLilaga(request):
    conn = connect()
    Cup = "西甲"
    time = "2023-24"
    if request.method == "GET":
        with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor:
            sql = "SELECT * from scoreboard WHERE Time =%s AND Cup =%s"
            cursor.execute(sql,[time,Cup])
            res = cursor.fetchall()

        return render(request,"League/Europen/Lilaga.html",{'teams':res})
    else :
        time = request.POST.get("time")
        with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor:
            sql = "SELECT * from scoreboard WHERE Time =%s AND Cup =%s"
            cursor.execute(sql,[time,Cup])
            res = cursor.fetchall()
            return render(request, "League/Europen/Lilaga.html", {'teams': res})


def LeagueEuropePremierLeague(request):
    conn = connect()
    Cup = "英超"
    time = "2023-24"
    if request.method == "GET":
        with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor:
            sql = "SELECT * from scoreboard WHERE Time =%s AND Cup =%s"
            cursor.execute(sql,[time,Cup])
            res = cursor.fetchall()

        return render(request,"League/Europen/Premier League.html",{'teams':res})
    else :
        time = request.POST.get("time")
        with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor:
            sql = "SELECT * from scoreboard WHERE Time =%s AND Cup =%s"
            cursor.execute(sql,[time,Cup])
            res = cursor.fetchall()
            return render(request, "League/Europen/Premier League.html", {'teams': res})

def LeagueEuropePremierBundesliga(request):
    conn = connect()
    Cup = "德甲"
    time = "2023-24"
    if request.method == "GET":
        with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor:
            sql = "SELECT * from scoreboard WHERE Time =%s AND Cup =%s"
            cursor.execute(sql, [time, Cup])
            res = cursor.fetchall()

        return render(request, "League/Europen/Bundesliga.html", {'teams': res})
    else:
        time = request.POST.get("time")
        with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor:
            sql = "SELECT * from scoreboard WHERE Time =%s AND Cup =%s"
            cursor.execute(sql, [time, Cup])
            res = cursor.fetchall()
            return render(request, "League/Europen/Bundesliga.html", {'teams': res})




def LeagueEuropePremierLigue(request):
    conn = connect()
    Cup = "法甲"
    time = "2023-24"
    if request.method == "GET":
        with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor:
            sql = "SELECT * from scoreboard WHERE Time =%s AND Cup =%s"
            cursor.execute(sql, [time, Cup])
            res = cursor.fetchall()

        return render(request, "League/Europen/Ligue.html", {'teams': res})
    else:
        time = request.POST.get("time")
        with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor:
            sql = "SELECT * from scoreboard WHERE Time =%s AND Cup =%s"
            cursor.execute(sql, [time, Cup])
            res = cursor.fetchall()
            return render(request, "League/Europen/Ligue.html", {'teams': res})

def LeagueEuropePremierSerie(request):
    conn = connect()
    Cup = "意甲"
    time = "2023-24"
    if request.method == "GET":
        with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor:
            sql = "SELECT * from scoreboard WHERE Time =%s AND Cup =%s"
            cursor.execute(sql, [time, Cup])
            res = cursor.fetchall()

        return render(request, "League/Europen/Serie.html", {'teams': res})
    else:
        time = request.POST.get("time")
        with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor:
            sql = "SELECT * from scoreboard WHERE Time =%s AND Cup =%s"
            cursor.execute(sql, [time, Cup])
            res = cursor.fetchall()
            return render(request, "League/Europen/Serie.html", {'teams': res})



def LeagueClubs(resquest):
    conn = connect()
    name = resquest.GET.get("Name")
    Time   = resquest.GET.get("Time")
    print(name,Time)
    with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor:
        sql = "SELECT * from clubsplayers WHERE Club =%s AND Time =%s"
        cursor.execute(sql,[name, Time])
        players = cursor.fetchall()
        sql = "SELECT * from clubscoach WHERE Club =%s AND Time =%s"
        cursor.execute(sql, [name, Time])
        coaches = cursor.fetchone()
        coach = coaches.get("Coach")
        # print(coach)
        return render(resquest,"League/Clubs/Players.html", {'players': players, 'name':name,'coach':coach})



def LeagueAsia(request):
    return render(request,"League/Asian/Asia.html")

def LeagueJapan(request):
    conn = connect()
    Cup = "日本足球甲级联赛"
    time = "2023-24"
    if request.method == "GET":
        with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor:
            sql = "SELECT * from scoreboard WHERE Time =%s AND Cup =%s"
            cursor.execute(sql, [time, Cup])
            res = cursor.fetchall()

        return render(request, "League/Asian/Japan.html", {'teams': res})
    else:
        time = request.POST.get("time")
        with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor:
            sql = "SELECT * from scoreboard WHERE Time =%s AND Cup =%s"
            cursor.execute(sql, [time, Cup])
            res = cursor.fetchall()
            return render(request, "League/Asian/Japan.html", {'teams': res})


def LeagueKorea(request):
    conn = connect()
    Cup = "韩国足球甲级联赛"
    time = "2023-24"
    if request.method == "GET":
        with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor:
            sql = "SELECT * from scoreboard WHERE Time =%s AND Cup =%s"
            cursor.execute(sql, [time, Cup])
            res = cursor.fetchall()

        return render(request, "League/Asian/Korea.html", {'teams': res})
    else:
        time = request.POST.get("time")
        with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor:
            sql = "SELECT * from scoreboard WHERE Time =%s AND Cup =%s"
            cursor.execute(sql, [time, Cup])
            res = cursor.fetchall()
            return render(request, "League/Asian/Korea.html", {'teams': res})


def LeagueChina(request):
    conn = connect()
    Cup = "中超联赛"
    time = "2023-24"
    if request.method == "GET":
        with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor:
            sql = "SELECT * from scoreboard WHERE Time =%s AND Cup =%s"
            cursor.execute(sql, [time, Cup])
            res = cursor.fetchall()

        return render(request, "League/Asian/China.html", {'teams': res})
    else:
        time = request.POST.get("time")
        with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor:
            sql = "SELECT * from scoreboard WHERE Time =%s AND Cup =%s"
            cursor.execute(sql, [time, Cup])
            res = cursor.fetchall()
            return render(request, "League/Asian/China.html", {'teams': res})


def LeagueAmerica(request):
    conn = connect()
    Cup = "南美解放者杯"
    time = "2023-24"
    if request.method == "GET":
        with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor:
            sql = "SELECT * from scoreboard WHERE Time =%s AND Cup =%s"
            cursor.execute(sql, [time, Cup])
            res = cursor.fetchall()

        return render(request, "League/American/America.html", {'teams': res})
    else:
        time = request.POST.get("time")
        with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor:
            sql = "SELECT * from scoreboard WHERE Time =%s AND Cup =%s"
            cursor.execute(sql, [time, Cup])
            res = cursor.fetchall()
            return render(request, "League/American/America.html", {'teams': res})


def PlayerClubs(request):
    conn = connect()
    name = request.GET.get("Name")
    with conn.cursor(cursorclass=MySQLdb.cursors.DictCursor) as cursor:
        sql = "SELECT * from playerclub WHERE Name =%s"
        cursor.execute(sql,[name])
        res = cursor.fetchall()
    return(request,"HistoryClubs/Clubs.html", {'clubs': res})


