# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

# Create game types

group_game = GameType.create(:name => 'Group')
final_game = GameType.create(:name => 'Finals')

# Create Groups

a = Group.create(:name => 'A')
b = Group.create(:name => 'B')
c = Group.create(:name => 'C')
d = Group.create(:name => 'D')
e = Group.create(:name => 'E')
f = Group.create(:name => 'F')
g = Group.create(:name => 'G')
h = Group.create(:name => 'H')

# Group Ranks

a1 = GroupRank.create(:group => a, :position => 1)
a2 = GroupRank.create(:group => a, :position => 2)
a3 = GroupRank.create(:group => a, :position => 3)
a4 = GroupRank.create(:group => a, :position => 4)
a5 = GroupRank.create(:group => a, :position => 5)
a6 = GroupRank.create(:group => a, :position => 6)

b1 = GroupRank.create(:group => b, :position => 1)
b2 = GroupRank.create(:group => b, :position => 2)
b3 = GroupRank.create(:group => b, :position => 3)
b4 = GroupRank.create(:group => b, :position => 4)
b5 = GroupRank.create(:group => b, :position => 5)
b6 = GroupRank.create(:group => b, :position => 6)

c1 = GroupRank.create(:group => c, :position => 1)
c2 = GroupRank.create(:group => c, :position => 2)
c3 = GroupRank.create(:group => c, :position => 3)
c4 = GroupRank.create(:group => c, :position => 4)
c5 = GroupRank.create(:group => c, :position => 5)
c6 = GroupRank.create(:group => c, :position => 6)

d1 = GroupRank.create(:group => d, :position => 1)
d2 = GroupRank.create(:group => d, :position => 2)
d3 = GroupRank.create(:group => d, :position => 3)
d4 = GroupRank.create(:group => d, :position => 4)
d5 = GroupRank.create(:group => d, :position => 5)
d6 = GroupRank.create(:group => d, :position => 6)

e1 = GroupRank.create(:group => e, :position => 1)
e2 = GroupRank.create(:group => e, :position => 2)
e3 = GroupRank.create(:group => e, :position => 3)
e4 = GroupRank.create(:group => e, :position => 4)
e5 = GroupRank.create(:group => e, :position => 5)
e6 = GroupRank.create(:group => e, :position => 6)

f1 = GroupRank.create(:group => f, :position => 1)
f2 = GroupRank.create(:group => f, :position => 2)
f3 = GroupRank.create(:group => f, :position => 3)
f4 = GroupRank.create(:group => f, :position => 4)
f5 = GroupRank.create(:group => f, :position => 5)
f6 = GroupRank.create(:group => f, :position => 6)

g1 = GroupRank.create(:group => g, :position => 1)
g2 = GroupRank.create(:group => g, :position => 2)
g3 = GroupRank.create(:group => g, :position => 3)
g4 = GroupRank.create(:group => g, :position => 4)
g5 = GroupRank.create(:group => g, :position => 5)
g6 = GroupRank.create(:group => g, :position => 6)

h1 = GroupRank.create(:group => h, :position => 1)
h2 = GroupRank.create(:group => h, :position => 2)
h3 = GroupRank.create(:group => h, :position => 3)
h4 = GroupRank.create(:group => h, :position => 4)
h5 = GroupRank.create(:group => h, :position => 5)
h6 = GroupRank.create(:group => h, :position => 6)

# Create Stadium

Stadium.create( :name => 'Johannesburg - JSC')
Stadium.create( :name => 'Kapstadt')
Stadium.create( :name => 'Tshwane / Pretoria')
Stadium.create( :name => 'Polokwane')
Stadium.create( :name => 'Rustenburg')
Stadium.create( :name => 'Mangaung / Bloemfontein')
Stadium.create( :name => 'Johannesburg - JEP')
Stadium.create( :name => 'Nelson Mandela Bay / Port Elizabeth')
Stadium.create( :name => 'Durban')
Stadium.create( :name => 'Nelspruit')


Team.create( :abbreviation => 'RSA', :name => 'Südafrika', :group => Group.find_by_name('A'))
Team.create( :abbreviation => 'URU', :name => 'Uruguay', :group => Group.find_by_name('A'))
Team.create( :abbreviation => 'FRA', :name => 'Frankreich', :group => Group.find_by_name('A'))
Team.create( :abbreviation => 'MEX', :name => 'Mexiko', :group => Group.find_by_name('A'))

Team.create( :abbreviation => 'ARG', :name => 'Argentinien', :group => Group.find_by_name('B'))
Team.create( :abbreviation => 'KOR', :name => 'Korea Republik', :group => Group.find_by_name('B'))
Team.create( :abbreviation => 'GRE', :name => 'Griechenland', :group => Group.find_by_name('B'))
Team.create( :abbreviation => 'NGA', :name => 'Nigeria', :group => Group.find_by_name('B'))


Team.create( :abbreviation => 'ENG', :name => 'England', :group => Group.find_by_name('C'))
Team.create( :abbreviation => 'ALG', :name => 'Algerien', :group => Group.find_by_name('C'))
Team.create( :abbreviation => 'SVN', :name => 'Slowenien', :group => Group.find_by_name('C'))
Team.create( :abbreviation => 'USA', :name => 'USA', :group => Group.find_by_name('C'))

Team.create( :abbreviation => 'GER', :name => 'Deutschland', :group => Group.find_by_name('D'))
Team.create( :abbreviation => 'SRB', :name => 'Serbien', :group => Group.find_by_name('D'))
Team.create( :abbreviation => 'AUS', :name => 'Australien', :group => Group.find_by_name('D'))
Team.create( :abbreviation => 'GHA', :name => 'Ghana', :group => Group.find_by_name('D'))


Team.create( :abbreviation => 'NED', :name => 'Niederlande', :group => Group.find_by_name('E'))
Team.create( :abbreviation => 'JPN', :name => 'Japan', :group => Group.find_by_name('E'))
Team.create( :abbreviation => 'CMR', :name => 'Kamerun', :group => Group.find_by_name('E'))
Team.create( :abbreviation => 'DEN', :name => 'Dänemark', :group => Group.find_by_name('E'))


Team.create( :abbreviation => 'ITA', :name => 'Italien', :group => Group.find_by_name('F'))
Team.create( :abbreviation => 'NZL', :name => 'Neuseeland', :group => Group.find_by_name('F'))
Team.create( :abbreviation => 'SVK', :name => 'Slowakei', :group => Group.find_by_name('F'))
Team.create( :abbreviation => 'PAR', :name => 'Paraguay', :group => Group.find_by_name('F'))

Team.create( :abbreviation => 'CIV', :name => 'Elfenbeinküste', :group => Group.find_by_name('G'))
Team.create( :abbreviation => 'BRA', :name => 'Brasilien', :group => Group.find_by_name('G'))
Team.create( :abbreviation => 'POR', :name => 'Portugal', :group => Group.find_by_name('G'))
Team.create( :abbreviation => 'PRK', :name => 'Korea DVR', :group => Group.find_by_name('G'))

Team.create( :abbreviation => 'HON', :name => 'Honduras', :group => Group.find_by_name('H'))
Team.create( :abbreviation => 'ESP', :name => 'Spanien', :group => Group.find_by_name('H'))
Team.create( :abbreviation => 'CHI', :name => 'Chile', :group => Group.find_by_name('H'))
Team.create( :abbreviation => 'SUI', :name => 'Schweiz', :group => Group.find_by_name('H'))

# GAMES
# Note: Times are in UTC (time zone is configured in environment.rb)

# group a
Game.create( :game_type => group_game, :short_desc => '1', :tingler_time =>DateTime.new(y=2010,m=06,d=11,h=14,min=00,sec=00),:stadium => Stadium.find_by_name('Johannesburg - JEP'), :home_team =>Team.find_by_name('Südafrika'), :away_team => Team.find_by_name('Mexiko'))
Game.create( :game_type => group_game, :short_desc => '2', :tingler_time =>DateTime.new(y=2010,m=06,d=11,h=18,min=30,sec=00),:stadium => Stadium.find_by_name('Kapstadt'), :home_team =>Team.find_by_name('Uruguay'), :away_team => Team.find_by_name('Frankreich'))
Game.create( :game_type => group_game, :short_desc => '17', :tingler_time =>DateTime.new(y=2010,m=06,d=16,h=18,min=30,sec=00),:stadium => Stadium.find_by_name('Tshwane / Pretoria'), :home_team =>Team.find_by_name('Südafrika'), :away_team => Team.find_by_name('Uruguay'))
Game.create( :game_type => group_game, :short_desc => '18', :tingler_time =>DateTime.new(y=2010,m=06,d=17,h=18,min=30,sec=00),:stadium => Stadium.find_by_name('Polokwane'), :home_team =>Team.find_by_name('Frankreich'), :away_team => Team.find_by_name('Mexiko'))
Game.create( :game_type => group_game, :short_desc => '33', :tingler_time =>DateTime.new(y=2010,m=06,d=22,h=14,min=00,sec=00),:stadium => Stadium.find_by_name('Rustenburg'), :home_team =>Team.find_by_name('Mexiko'), :away_team => Team.find_by_name('Uruguay'))
Game.create( :game_type => group_game, :short_desc => '34', :tingler_time =>DateTime.new(y=2010,m=06,d=22,h=14,min=00,sec=00),:stadium =>Stadium.find_by_name('Mangaung / Bloemfontein'),:home_team =>Team.find_by_name('Frankreich'),:away_team =>Team.find_by_name('Südafrika'))

# group b
Game.create( :game_type => group_game, :short_desc => '3', :tingler_time =>DateTime.new(y=2010,m=06,d=12,h=14,min=00,sec=00),:stadium =>Stadium.find_by_name('Johannesburg - JEP'),:home_team =>Team.find_by_name('Argentinien'),:away_team => Team.find_by_name('Nigeria'))
Game.create( :game_type => group_game, :short_desc => '4', :tingler_time =>DateTime.new(y=2010,m=06,d=12,h=11,min=30,sec=00),:stadium =>Stadium.find_by_name('Nelson Mandela Bay / Port Elizabeth'),:home_team=> Team.find_by_name('Korea Republik'),:away_team =>Team.find_by_name('Griechenland'))
Game.create( :game_type => group_game, :short_desc => '19', :tingler_time =>DateTime.new(y=2010,m=06,d=17,h=14,min=00,sec=00),:stadium =>Stadium.find_by_name('Mangaung / Bloemfontein'),:home_team =>Team.find_by_name('Griechenland'),:away_team =>Team.find_by_name('Nigeria'))
Game.create( :game_type => group_game, :short_desc => '20', :tingler_time =>DateTime.new(y=2010,m=06,d=17,h=11,min=30,sec=00),:stadium =>Stadium.find_by_name('Johannesburg - JSC'),:home_team =>Team.find_by_name('Argentinien'),:away_team => Team.find_by_name('Korea Republik'))
Game.create( :game_type => group_game, :short_desc => '35', :tingler_time =>DateTime.new(y=2010,m=06,d=22,h=18,min=30,sec=00),:stadium =>Stadium.find_by_name('Durban'),:home_team =>Team.find_by_name('Nigeria'),:away_team => Team.find_by_name('Korea Republik'))
Game.create( :game_type => group_game, :short_desc => '36', :tingler_time =>DateTime.new(y=2010,m=06,d=22,h=18,min=30,sec=00),:stadium =>Stadium.find_by_name('Polokwane'),:home_team =>Team.find_by_name('Griechenland'),:away_team =>Team.find_by_name('Argentinien'))

# group c
Game.create( :game_type => group_game, :short_desc => '5', :tingler_time =>DateTime.new(y=2010,m=06,d=12,h=18,min=30,sec=00),:stadium =>Stadium.find_by_name('Rustenburg'),:home_team =>Team.find_by_name('England'),:away_team => Team.find_by_name('USA'))
Game.create( :game_type => group_game, :short_desc => '6', :tingler_time =>DateTime.new(y=2010,m=06,d=13,h=11,min=30,sec=00),:stadium =>Stadium.find_by_name('Polokwane'),:home_team =>Team.find_by_name('Algerien'),:away_team => Team.find_by_name('Slowenien'))
Game.create( :game_type => group_game, :short_desc => '22', :tingler_time =>DateTime.new(y=2010,m=06,d=18,h=14,min=00,sec=00),:stadium =>Stadium.find_by_name('Johannesburg - JEP'),:home_team =>Team.find_by_name('Slowenien'),:away_team => Team.find_by_name('USA'))
Game.create( :game_type => group_game, :short_desc => '23', :tingler_time =>DateTime.new(y=2010,m=06,d=18,h=18,min=30,sec=00),:stadium =>Stadium.find_by_name('Kapstadt'),:home_team =>Team.find_by_name('England'),:away_team => Team.find_by_name('Algerien'))
Game.create( :game_type => group_game, :short_desc => '37', :tingler_time =>DateTime.new(y=2010,m=06,d=23,h=14,min=00,sec=00),:stadium =>Stadium.find_by_name('Nelson Mandela Bay / Port Elizabeth'),:home_team=> Team.find_by_name('Slowenien'),:away_team =>Team.find_by_name('England'))
Game.create( :game_type => group_game, :short_desc => '38', :tingler_time =>DateTime.new(y=2010,m=06,d=23,h=14,min=00,sec=00),:stadium =>Stadium.find_by_name('Tshwane / Pretoria'),:home_team =>Team.find_by_name('USA'),:away_team => Team.find_by_name('Algerien'))

# group d
Game.create( :game_type => group_game, :short_desc => '7', :tingler_time =>DateTime.new(y=2010,m=06,d=13,h=18,min=30,sec=00),:stadium =>Stadium.find_by_name('Durban'),:home_team =>Team.find_by_name('Deutschland'),:away_team =>Team.find_by_name('Australien'))
Game.create( :game_type => group_game, :short_desc => '8', :tingler_time =>DateTime.new(y=2010,m=06,d=13,h=14,min=00,sec=00),:stadium =>Stadium.find_by_name('Tshwane / Pretoria'),:home_team =>Team.find_by_name('Serbien'),:away_team => Team.find_by_name('Ghana'))
Game.create( :game_type => group_game, :short_desc => '21', :tingler_time =>DateTime.new(y=2010,m=06,d=18,h=11,min=30,sec=00),:stadium =>Stadium.find_by_name('Nelson Mandela Bay / Port Elizabeth'),:home_team=> Team.find_by_name('Deutschland'),:away_team =>Team.find_by_name('Serbien'))
Game.create( :game_type => group_game, :short_desc => '24', :tingler_time =>DateTime.new(y=2010,m=06,d=19,h=14,min=00,sec=00),:stadium =>Stadium.find_by_name('Rustenburg'),:home_team =>Team.find_by_name('Ghana'),:away_team => Team.find_by_name('Australien'))
Game.create( :game_type => group_game, :short_desc => '39', :tingler_time =>DateTime.new(y=2010,m=06,d=23,h=18,min=30,sec=00),:stadium =>Stadium.find_by_name('Johannesburg - JSC'),:home_team =>Team.find_by_name('Ghana'),:away_team => Team.find_by_name('Deutschland'))
Game.create( :game_type => group_game, :short_desc => '40', :tingler_time =>DateTime.new(y=2010,m=06,d=23,h=18,min=30,sec=00),:stadium =>Stadium.find_by_name('Nelspruit'),:home_team =>Team.find_by_name('Australien'),:away_team => Team.find_by_name('Serbien'))

# group e
Game.create( :game_type => group_game, :short_desc => '9', :tingler_time =>DateTime.new(y=2010,m=06,d=14,h=11,min=30,sec=00),:stadium =>Stadium.find_by_name('Johannesburg - JSC'),:home_team =>Team.find_by_name('Niederlande'),:away_team =>Team.find_by_name('Dänemark'))
Game.create( :game_type => group_game, :short_desc => '10', :tingler_time =>DateTime.new(y=2010,m=06,d=14,h=14,min=00,sec=00),:stadium =>Stadium.find_by_name('Mangaung / Bloemfontein'),:home_team =>Team.find_by_name('Japan'),:away_team => Team.find_by_name('Kamerun'))
Game.create( :game_type => group_game, :short_desc => '25', :tingler_time =>DateTime.new(y=2010,m=06,d=19,h=11,min=30,sec=00),:stadium =>Stadium.find_by_name('Durban'),:home_team =>Team.find_by_name('Niederlande'),:away_team => Team.find_by_name('Japan'))
Game.create( :game_type => group_game, :short_desc => '26', :tingler_time =>DateTime.new(y=2010,m=06,d=19,h=18,min=30,sec=00),:stadium =>Stadium.find_by_name('Tshwane / Pretoria'),:home_team =>Team.find_by_name('Kamerun'),:away_team => Team.find_by_name('Dänemark'))
Game.create( :game_type => group_game, :short_desc => '43', :tingler_time =>DateTime.new(y=2010,m=06,d=24,h=18,min=30,sec=00),:stadium =>Stadium.find_by_name('Rustenburg'),:home_team =>Team.find_by_name('Dänemark'),:away_team => Team.find_by_name('Japan'))
Game.create( :game_type => group_game, :short_desc => '44', :tingler_time =>DateTime.new(y=2010,m=06,d=24,h=18,min=30,sec=00),:stadium =>Stadium.find_by_name('Kapstadt'),:home_team =>Team.find_by_name('Kamerun'),:away_team => Team.find_by_name('Niederlande'))

# group f
Game.create( :game_type => group_game, :short_desc => '11', :tingler_time =>DateTime.new(y=2010,m=06,d=14,h=18,min=30,sec=00),:stadium =>Stadium.find_by_name('Kapstadt'),:home_team =>Team.find_by_name('Italien'),:away_team => Team.find_by_name('Paraguay'))
Game.create( :game_type => group_game, :short_desc => '12', :tingler_time =>DateTime.new(y=2010,m=06,d=15,h=11,min=30,sec=00),:stadium =>Stadium.find_by_name('Rustenburg'),:home_team =>Team.find_by_name('Neuseeland'),:away_team => Team.find_by_name('Slowakei'))
Game.create( :game_type => group_game, :short_desc => '27', :tingler_time => DateTime.new(y=2010,m=06,d=20,h=11,min=30,sec=00),:stadium => Stadium.find_by_name('Mangaung / Bloemfontein'),:home_team => Team.find_by_name('Slowakei'),:away_team => Team.find_by_name('Paraguay'))
Game.create( :game_type => group_game, :short_desc => '28', :tingler_time => DateTime.new(y=2010,m=06,d=20,h=14,min=00,sec=00),:stadium => Stadium.find_by_name('Nelspruit'),:home_team => Team.find_by_name('Italien'),:away_team => Team.find_by_name('Neuseeland'))
Game.create( :game_type => group_game, :short_desc => '41', :tingler_time => DateTime.new(y=2010,m=06,d=24,h=14,min=00,sec=00),:stadium => Stadium.find_by_name('Johannesburg - JEP'),:home_team => Team.find_by_name('Slowakei'),:away_team => Team.find_by_name('Italien'))
Game.create( :game_type => group_game, :short_desc => '42', :tingler_time => DateTime.new(y=2010,m=06,d=24,h=14,min=00,sec=00),:stadium => Stadium.find_by_name('Polokwane'),:home_team => Team.find_by_name('Paraguay'),:away_team => Team.find_by_name('Neuseeland'))

# group g
Game.create( :game_type => group_game, :short_desc => '13', :tingler_time => DateTime.new(y=2010,m=06,d=15,h=14,min=00,sec=00),:stadium => Stadium.find_by_name('Nelson Mandela Bay / Port Elizabeth'),:home_team => Team.find_by_name('Elfenbeinküste'),:away_team => Team.find_by_name('Portugal'))
Game.create( :game_type => group_game, :short_desc => '14', :tingler_time => DateTime.new(y=2010,m=06,d=15,h=18,min=30,sec=00),:stadium => Stadium.find_by_name('Johannesburg - JEP'),:home_team => Team.find_by_name('Brasilien'),:away_team => Team.find_by_name('Korea DVR'))
Game.create( :game_type => group_game, :short_desc => '29', :tingler_time => DateTime.new(y=2010,m=06,d=20,h=18,min=30,sec=00),:stadium => Stadium.find_by_name('Johannesburg - JSC'),:home_team => Team.find_by_name('Brasilien'),:away_team => Team.find_by_name('Elfenbeinküste'))
Game.create( :game_type => group_game, :short_desc => '30', :tingler_time => DateTime.new(y=2010,m=06,d=21,h=11,min=30,sec=00),:stadium => Stadium.find_by_name('Kapstadt'),:home_team => Team.find_by_name('Portugal'),:away_team => Team.find_by_name('Korea DVR'))
Game.create( :game_type => group_game, :short_desc => '45', :tingler_time => DateTime.new(y=2010,m=06,d=25,h=14,min=00,sec=00),:stadium => Stadium.find_by_name('Durban'),:home_team => Team.find_by_name('Portugal'),:away_team => Team.find_by_name('Brasilien'))
Game.create( :game_type => group_game, :short_desc => '46', :tingler_time => DateTime.new(y=2010,m=06,d=25,h=14,min=00,sec=00),:stadium => Stadium.find_by_name('Nelspruit'),:home_team => Team.find_by_name('Korea DVR'),:away_team => Team.find_by_name('Elfenbeinküste'))

# group h
Game.create( :game_type => group_game, :short_desc => '15', :tingler_time => DateTime.new(y=2010,m=06,d=16,h=11,min=30,sec=00),:stadium => Stadium.find_by_name('Nelspruit'),:home_team => Team.find_by_name('Honduras'),:away_team => Team.find_by_name('Chile'))
Game.create( :game_type => group_game, :short_desc => '16', :tingler_time => DateTime.new(y=2010,m=06,d=16,h=14,min=00,sec=00),:stadium => Stadium.find_by_name('Durban'),:home_team => Team.find_by_name('Spanien'),:away_team => Team.find_by_name('Schweiz'))
Game.create( :game_type => group_game, :short_desc => '31', :tingler_time => DateTime.new(y=2010,m=06,d=21,h=14,min=00,sec=00),:stadium => Stadium.find_by_name('Nelson Mandela Bay / Port Elizabeth'),:home_team => Team.find_by_name('Chile'),:away_team => Team.find_by_name('Schweiz'))
Game.create( :game_type => group_game, :short_desc => '32', :tingler_time => DateTime.new(y=2010,m=06,d=21,h=18,min=30,sec=00),:stadium => Stadium.find_by_name('Johannesburg - JEP'),:home_team => Team.find_by_name('Spanien'),:away_team => Team.find_by_name('Honduras'))
Game.create( :game_type => group_game, :short_desc => '47', :tingler_time => DateTime.new(y=2010,m=06,d=25,h=18,min=30,sec=00),:stadium => Stadium.find_by_name('Tshwane / Pretoria'),:home_team => Team.find_by_name('Chile'),:away_team => Team.find_by_name('Spanien'))
Game.create( :game_type => group_game, :short_desc => '48', :tingler_time => DateTime.new(y=2010,m=06,d=25,h=18,min=30,sec=00),:stadium => Stadium.find_by_name('Mangaung / Bloemfontein'),:home_team => Team.find_by_name('Schweiz'),:away_team => Team.find_by_name('Honduras'))

# round of 16
Game.create( :game_type => final_game, :short_desc => '49',
             :tingler_time => DateTime.new(y=2010,m=06,d=26,h=14,min=00,sec=00),
             :stadium => Stadium.find_by_name('Nelson Mandela Bay / Port Elizabeth'),
             :home_group_rank => a1,
             :away_group_rank => b2 )

Game.create( :game_type => final_game, :short_desc => '50',
             :tingler_time => DateTime.new(y=2010,m=06,d=26,h=18,min=30,sec=00),
             :stadium => Stadium.find_by_name('Rustenburg'),
             :home_group_rank => c1,
             :away_group_rank => d2 )

Game.create( :game_type => final_game, :short_desc => '51',
             :tingler_time => DateTime.new(y=2010,m=06,d=27,h=14,min=00,sec=00),
             :stadium => Stadium.find_by_name('Mangaung / Bloemfontein'),
             :home_group_rank => d1,
             :away_group_rank => c2 )

Game.create( :game_type => final_game, :short_desc => '52',
             :tingler_time => DateTime.new(y=2010,m=06,d=27,h=18,min=30,sec=00),
             :stadium => Stadium.find_by_name('Johannesburg - JSC'),
             :home_group_rank => b1,
             :away_group_rank => a2 )

Game.create( :game_type => final_game, :short_desc => '53',
             :tingler_time => DateTime.new(y=2010,m=06,d=28,h=14,min=00,sec=00),
             :stadium => Stadium.find_by_name('Durban'),
             :home_group_rank => e1,
             :away_group_rank => f2 )

Game.create( :game_type => final_game, :short_desc => '54',
             :tingler_time => DateTime.new(y=2010,m=06,d=28,h=18,min=30,sec=00),
             :stadium => Stadium.find_by_name('Johannesburg - JEP'),
             :home_group_rank => g1,
             :away_group_rank => h2 )

Game.create( :game_type => final_game, :short_desc => '55',
             :tingler_time => DateTime.new(y=2010,m=06,d=29,h=14,min=00,sec=00),
             :stadium => Stadium.find_by_name('Tshwane / Pretoria'),
             :home_group_rank => f1,
             :away_group_rank => e2 )

Game.create( :game_type => final_game, :short_desc => '56',
             :tingler_time => DateTime.new(y=2010,m=06,d=29,h=18,min=30,sec=00),
             :stadium => Stadium.find_by_name('Kapstadt'),
             :home_group_rank => h1,
             :away_group_rank => g2 )
           
# quarter finals

Game.create( :game_type => final_game, :short_desc => '57',
             :tingler_time => DateTime.new(y=2010,m=07,d=02,h=14,min=00,sec=00),
             :stadium => Stadium.find_by_name('Nelson Mandela Bay / Port Elizabeth'),
             :home_game => Game.find_by_short_desc('53'),
             :home_game_role => "W",
             :away_game => Game.find_by_short_desc('54'),
             :away_game_role => "W")

Game.create( :game_type => final_game, :short_desc => '58',
             :tingler_time => DateTime.new(y=2010,m=07,d=02,h=18,min=30,sec=00),
             :stadium => Stadium.find_by_name('Johannesburg - JSC'),
             :home_game => Game.find_by_short_desc('49'),
             :home_game_role => "W",
             :away_game => Game.find_by_short_desc('50'),
             :away_game_role => "W")

Game.create( :game_type => final_game, :short_desc => '59',
             :tingler_time => DateTime.new(y=2010,m=07,d=03,h=14,min=00,sec=00),
             :stadium => Stadium.find_by_name('Kapstadt'),
             :home_game => Game.find_by_short_desc('52'),
             :home_game_role => "W",
             :away_game => Game.find_by_short_desc('51'),
             :away_game_role => "W")

Game.create( :game_type => final_game, :short_desc => '60',
             :tingler_time => DateTime.new(y=2010,m=07,d=03,h=18,min=30,sec=00),
             :stadium => Stadium.find_by_name('Johannesburg - JEP'),
             :home_game => Game.find_by_short_desc('55'),
             :home_game_role => "W",
             :away_game => Game.find_by_short_desc('56'),
             :away_game_role => "W")

# semi finals

Game.create( :game_type => final_game, :short_desc => '61',
             :tingler_time => DateTime.new(y=2010,m=07,d=06,h=18,min=30,sec=00),
             :stadium => Stadium.find_by_name('Kapstadt'),
             :home_game => Game.find_by_short_desc('58'),
             :home_game_role => "W",
             :away_game => Game.find_by_short_desc('57'),
             :away_game_role => "W")

Game.create( :game_type => final_game, :short_desc => '62',
             :tingler_time => DateTime.new(y=2010,m=07,d=07,h=18,min=30,sec=00),
             :stadium => Stadium.find_by_name('Durban'),
             :home_game => Game.find_by_short_desc('59'),
             :home_game_role => "W",
             :away_game => Game.find_by_short_desc('60'),
             :away_game_role => "W")

# match for third plae

Game.create( :game_type => final_game, :short_desc => '63',
             :tingler_time => DateTime.new(y=2010,m=07,d=10,h=18,min=30,sec=00),
             :stadium => Stadium.find_by_name('Nelson Mandela Bay / Port Elizabeth'),
             :home_game => Game.find_by_short_desc('61'),
             :home_game_role => "L",
             :away_game => Game.find_by_short_desc('62'),
             :away_game_role => "L")

# final

Game.create( :game_type => final_game, :short_desc => '64',
             :tingler_time => DateTime.new(y=2010,m=07,d=11,h=18,min=30,sec=00),
             :stadium => Stadium.find_by_name('Johannesburg - JSC'),
             :home_game => Game.find_by_short_desc('61'),
             :home_game_role => "W",
             :away_game => Game.find_by_short_desc('62'),
             :away_game_role => "W")



