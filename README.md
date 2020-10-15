# README

Data from https://www.kaggle.com/savvastj/nfl-combine-data

CSV data contains NFL combine stats of players from 2000-2018

NFL Players are evaluated on a number of physical categories such as:
40 yard dash, vertical jump, bench press reps, broad jump distance, cone drill time, shuttle drill time.

All of this information is provided to teams in order to form their evaluations for draft selections.

Tables:
Role i.e position on the team
Team i.e. Team that drafted the player
Player i.e. Player evaluated in the draft

Attributes:
Player - Name, position (FK to Role table), height, weight, forty time (seconds), vertical, bench reps, broad jump distance, cone drill (seconds), shuttle drill time (seconds), draft year, drafted by (FK to Team table, player can go undrafted), round drafted, draft pick number

Team - Name (string)

Role - Position (string)

Routes -
HomeController - Index
PlayersController - Index, Show
TeamsController - Index, show
RolesController - Index, show