# DataBase-FootballWorld
Django &amp; MySQL 数据库系统 东南大学



  
## Introduction
1. 2023 卡塔尔：一个以2023年卡塔尔世界杯为中心的模块。它包含了有关比赛开始、竞赛信息、小组和球队的HTML页面。Op_Team子目录表明了与球队相关的操作，比如添加、编辑和搜索球队信息。

2. 基础：welcome.html 文件是用户访问网站时的首页或欢迎页面。

3. 大洲：这个模块提供特定大洲的足球信息。它包括baseinfo.html和Score.html，这些可能展示了关于大洲足球的基本信息和比分。

4. 国家：侧重于特定国家的信息，包含了一般国家信息和球员详细信息的页面。

5. 历史俱乐部：Clubs.html文件提供了有关各种足球俱乐部的历史信息。

6. 联赛：这是一个综合性模块，包括不同大洲（美洲、亚洲、欧洲）的子目录。每个子目录中包含了该大洲特定联赛或国家的HTML文件。例如，Europen包含了欧洲主要联赛的页面，如德甲、英超等。
7. 球员：专门用于与球员相关的操作，比如添加新球员和获取球员信息。
8. 世界杯：与2023 卡塔尔模块类似用于世界杯一般操作的，比如添加、编辑、索引和搜索世界杯相关信息。

### Web开发
1. 构架
   1. `Django + MySql`
2. 项目构成
    ```py
    ├─2023Qatar
    │  │  begin.html
    │  │  Competition.html
    │  │  group.html
    │  │  Team.html
    │  │
    │  └─Op_Team
    │          add.html
    │          edit.html
    │          search.html
    │
    ├─base
    │      welcome.html
    │
    ├─Continent
    │      baseinfo.html
    │      Score.html
    │
    ├─Country
    │      Information.html
    │      Players.html
    │
    ├─HistoryClubs
    │      Clubs.html
    │
    ├─League
    │  │  League.html
    │  │
    │  ├─American
    │  │      America.html
    │  │
    │  ├─Asian
    │  │      Asia.html
    │  │      China.html
    │  │      Japan.html
    │  │      Korea.html
    │  │
    │  ├─Clubs
    │  │      Players.html
    │  │
    │  └─Europen
    │          Bundesliga.html
    │          Europe.html
    │          Ligue.html
    │          Lilaga.html
    │          Premier League.html
    │          Serie.html
    │
    ├─Player
    │      add.html
    │      Information.html
    │
    └─WorldCup
            add.html
            edit.html
            index.html
            Search.html
    ```  
