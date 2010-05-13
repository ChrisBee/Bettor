# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

# Create game types

GameType.create(:name => 'Group')
GameType.create(:name => 'Finals')

# Create Groups

Group.create(:name => 'A')
Group.create(:name => 'B')
Group.create(:name => 'C')
Group.create(:name => 'D')
Group.create(:name => 'E')
Group.create(:name => 'F')
Group.create(:name => 'G')
Group.create(:name => 'H')

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


Game.create( :tingler_time =>DateTime.new(y=2010,m=06,d=22,h=16,min=00,sec=00),:stadium => Stadium.find_by_name('Rustenburg'), :home_team =>Team.find_by_name('Mexiko'), :away_team => Team.find_by_name('Uruguay'))
Game.create( :tingler_time =>DateTime.new(y=2010,m=06,d=22,h=16,min=00,sec=00),:stadium =>Stadium.find_by_name('Mangaung / Bloemfontein'),:home_team =>Team.find_by_name('Frankreich'),:away_team =>Team.find_by_name('Südafrika'))
Game.create( :tingler_time =>DateTime.new(y=2010,m=06,d=12,h=16,min=00,sec=00),:stadium =>Stadium.find_by_name('Johannesburg - JEP'),:home_team =>Team.find_by_name('Argentinien'),:away_team => Team.find_by_name('Nigeria'))
Game.create( :tingler_time =>DateTime.new(y=2010,m=06,d=12,h=13,min=30,sec=00),:stadium =>Stadium.find_by_name('Nelson Mandela Bay / Port Elizabeth'),:home_team=> Team.find_by_name('Korea Republik'),:away_team =>Team.find_by_name('Griechenland'))
Game.create( :tingler_time =>DateTime.new(y=2010,m=06,d=17,h=16,min=00,sec=00),:stadium =>Stadium.find_by_name('Mangaung / Bloemfontein'),:home_team =>Team.find_by_name('Griechenland'),:away_team =>Team.find_by_name('Nigeria'))
Game.create( :tingler_time =>DateTime.new(y=2010,m=06,d=17,h=13,min=30,sec=00),:stadium =>Stadium.find_by_name('Johannesburg - JSC'),:home_team =>Team.find_by_name('Argentinien'),:away_team => Team.find_by_name('KoreaRepublik'))
Game.create( :tingler_time =>DateTime.new(y=2010,m=06,d=22,h=20,min=30,sec=00),:stadium =>Stadium.find_by_name('Durban'),:home_team =>Team.find_by_name('Nigeria'),:away_team => Team.find_by_name('KoreaRepublik'))
Game.create( :tingler_time =>DateTime.new(y=2010,m=06,d=22,h=20,min=30,sec=00),:stadium =>Stadium.find_by_name('Polokwane'),:home_team =>Team.find_by_name('Griechenland'),:away_team =>Team.find_by_name('Argentinien'))
Game.create( :tingler_time =>DateTime.new(y=2010,m=06,d=12,h=20,min=30,sec=00),:stadium =>Stadium.find_by_name('Rustenburg'),:home_team =>Team.find_by_name('England'),:away_team => Team.find_by_name('USA'))
Game.create( :tingler_time =>DateTime.new(y=2010,m=06,d=13,h=13,min=30,sec=00),:stadium =>Stadium.find_by_name('Polokwane'),:home_team =>Team.find_by_name('Algerien'),:away_team => Team.find_by_name('Slowenien'))
Game.create( :tingler_time =>DateTime.new(y=2010,m=06,d=18,h=16,min=00,sec=00),:stadium =>Stadium.find_by_name('Johannesburg - JEP'),:home_team =>Team.find_by_name('Slowenien'),:away_team => Team.find_by_name('USA'))
Game.create( :tingler_time =>DateTime.new(y=2010,m=06,d=18,h=20,min=30,sec=00),:stadium =>Stadium.find_by_name('Kapstadt'),:home_team =>Team.find_by_name('England'),:away_team => Team.find_by_name('Algerien'))
Game.create( :tingler_time =>DateTime.new(y=2010,m=06,d=23,h=16,min=00,sec=00),:stadium =>Stadium.find_by_name('Nelson Mandela Bay / Port Elizabeth'),:home_team=> Team.find_by_name('Slowenien'),:away_team =>Team.find_by_name('England'))
Game.create( :tingler_time =>DateTime.new(y=2010,m=06,d=23,h=16,min=00,sec=00),:stadium =>Stadium.find_by_name('Tshwane / Pretoria'),:home_team =>Team.find_by_name('USA'),:away_team => Team.find_by_name('Algerien'))
Game.create( :tingler_time =>DateTime.new(y=2010,m=06,d=13,h=20,min=30,sec=00),:stadium =>Stadium.find_by_name('Durban'),:home_team =>Team.find_by_name('Deutschland'),:away_team =>Team.find_by_name('Australien'))
Game.create( :tingler_time =>DateTime.new(y=2010,m=06,d=13,h=16,min=00,sec=00),:stadium =>Stadium.find_by_name('Tshwane / Pretoria'),:home_team =>Team.find_by_name('Serbien'),:away_team => Team.find_by_name('Ghana'))
Game.create( :tingler_time =>DateTime.new(y=2010,m=06,d=18,h=13,min=30,sec=00),:stadium =>Stadium.find_by_name('Nelson Mandela Bay / Port Elizabeth'),:home_team=> Team.find_by_name('Deutschland'),:away_team =>Team.find_by_name('Serbien'))
Game.create( :tingler_time =>DateTime.new(y=2010,m=06,d=19,h=16,min=00,sec=00),:stadium =>Stadium.find_by_name('Rustenburg'),:home_team =>Team.find_by_name('Ghana'),:away_team => Team.find_by_name('Australien'))
Game.create( :tingler_time =>DateTime.new(y=2010,m=06,d=23,h=20,min=30,sec=00),:stadium =>Stadium.find_by_name('Johannesburg - JSC'),:home_team =>Team.find_by_name('Ghana'),:away_team => Team.find_by_name('Deutschland'))
Game.create( :tingler_time =>DateTime.new(y=2010,m=06,d=23,h=20,min=30,sec=00),:stadium =>Stadium.find_by_name('Nelspruit'),:home_team =>Team.find_by_name('Australien'),:away_team => Team.find_by_name('Serbien'))
Game.create( :tingler_time =>DateTime.new(y=2010,m=06,d=14,h=13,min=30,sec=00),:stadium =>Stadium.find_by_name('Johannesburg - JSC'),:home_team =>Team.find_by_name('Niederlande'),:away_team =>Team.find_by_name('Dänemark'))
Game.create( :tingler_time =>DateTime.new(y=2010,m=06,d=14,h=16,min=00,sec=00),:stadium =>Stadium.find_by_name('Mangaung / Bloemfontein'),:home_team =>Team.find_by_name('Japan'),:away_team => Team.find_by_name('Kamerun'))
Game.create( :tingler_time =>DateTime.new(y=2010,m=06,d=19,h=13,min=30,sec=00),:stadium =>Stadium.find_by_name('Durban'),:home_team =>Team.find_by_name('Niederlande'),:away_team => Team.find_by_name('Japan'))
Game.create( :tingler_time =>DateTime.new(y=2010,m=06,d=19,h=20,min=30,sec=00),:stadium =>Stadium.find_by_name('Tshwane / Pretoria'),:home_team =>Team.find_by_name('Kamerun'),:away_team => Team.find_by_name('Dänemark'))
Game.create( :tingler_time =>DateTime.new(y=2010,m=06,d=24,h=20,min=30,sec=00),:stadium =>Stadium.find_by_name('Rustenburg'),:home_team =>Team.find_by_name('Dänemark'),:away_team => Team.find_by_name('Japan'))
Game.create( :tingler_time =>DateTime.new(y=2010,m=06,d=24,h=20,min=30,sec=00),:stadium =>Stadium.find_by_name('Kapstadt'),:home_team =>Team.find_by_name('Kamerun'),:away_team => Team.find_by_name('Niederlande'))
Game.create( :tingler_time =>DateTime.new(y=2010,m=06,d=14,h=20,min=30,sec=00),:stadium =>Stadium.find_by_name('Kapstadt'),:home_team =>Team.find_by_name('Italien'),:away_team => Team.find_by_name('Paraguay'))
Game.create( :tingler_time =>DateTime.new(y=2010,m=06,d=15,h=13,min=30,sec=00),:stadium =>Stadium.find_by_name('Rustenburg'),:home_team =>Team.find_by_name('Neuseeland'),:away_team => Team.find_by_name('Slowakei'))
Game.create( :tingler_time => DateTime.new(y=2010,m=06,d=20,h=13,min=30,sec=00),:stadium => Stadium.find_by_name('Mangaung / Bloemfontein'),:home_team => Team.find_by_name('Slowakei'),:away_team => Team.find_by_name('Paraguay'))
Game.create( :tingler_time => DateTime.new(y=2010,m=06,d=20,h=16,min=00,sec=00),:stadium => Stadium.find_by_name('Nelspruit'),:home_team => Team.find_by_name('Italien'),:away_team => Team.find_by_name('Neuseeland'))
Game.create( :tingler_time => DateTime.new(y=2010,m=06,d=24,h=16,min=00,sec=00),:stadium => Stadium.find_by_name('Johannesburg - JEP'),:home_team => Team.find_by_name('Slowakei'),:away_team => Team.find_by_name('Italien'))
Game.create( :tingler_time => DateTime.new(y=2010,m=06,d=24,h=16,min=00,sec=00),:stadium => Stadium.find_by_name('Polokwane'),:home_team => Team.find_by_name('Paraguay'),:away_team => Team.find_by_name('Neuseeland'))
Game.create( :tingler_time => DateTime.new(y=2010,m=06,d=15,h=16,min=00,sec=00),:stadium => Stadium.find_by_name('Nelson Mandela Bay / Port Elizabeth'),:home_team => Team.find_by_name('Elfenbeinküste'),:away_team => Team.find_by_name('Portugal'))
Game.create( :tingler_time => DateTime.new(y=2010,m=06,d=15,h=20,min=30,sec=00),:stadium => Stadium.find_by_name('Johannesburg - JEP'),:home_team => Team.find_by_name('Brasilien'),:away_team => Team.find_by_name('Korea DVR'))
Game.create( :tingler_time => DateTime.new(y=2010,m=06,d=20,h=20,min=30,sec=00),:stadium => Stadium.find_by_name('Johannesburg - JSC'),:home_team => Team.find_by_name('Brasilien'),:away_team => Team.find_by_name('Elfenbeinküste'))
Game.create( :tingler_time => DateTime.new(y=2010,m=06,d=21,h=13,min=30,sec=00),:stadium => Stadium.find_by_name('Kapstadt'),:home_team => Team.find_by_name('Portugal'),:away_team => Team.find_by_name('Korea DVR'))
Game.create( :tingler_time => DateTime.new(y=2010,m=06,d=25,h=16,min=00,sec=00),:stadium => Stadium.find_by_name('Durban'),:home_team => Team.find_by_name('Portugal'),:away_team => Team.find_by_name('Brasilien'))
Game.create( :tingler_time => DateTime.new(y=2010,m=06,d=25,h=16,min=00,sec=00),:stadium => Stadium.find_by_name('Nelspruit'),:home_team => Team.find_by_name('Korea DVR'),:away_team => Team.find_by_name('Elfenbeinküste'))
Game.create( :tingler_time => DateTime.new(y=2010,m=06,d=16,h=13,min=30,sec=00),:stadium => Stadium.find_by_name('Nelspruit'),:home_team => Team.find_by_name('Honduras'),:away_team => Team.find_by_name('Chile'))
Game.create( :tingler_time => DateTime.new(y=2010,m=06,d=16,h=16,min=00,sec=00),:stadium => Stadium.find_by_name('Durban'),:home_team => Team.find_by_name('Spanien'),:away_team => Team.find_by_name('Schweiz'))
Game.create( :tingler_time => DateTime.new(y=2010,m=06,d=21,h=16,min=00,sec=00),:stadium => Stadium.find_by_name('Nelson Mandela Bay / Port Elizabeth'),:home_team => Team.find_by_name('Chile'),:away_team => Team.find_by_name('Schweiz'))
Game.create( :tingler_time => DateTime.new(y=2010,m=06,d=21,h=20,min=30,sec=00),:stadium => Stadium.find_by_name('Johannesburg - JEP'),:home_team => Team.find_by_name('Spanien'),:away_team => Team.find_by_name('Honduras'))
Game.create( :tingler_time => DateTime.new(y=2010,m=06,d=25,h=20,min=30,sec=00),:stadium => Stadium.find_by_name('Tshwane / Pretoria'),:home_team => Team.find_by_name('Chile'),:away_team => Team.find_by_name('Spanien'))
Game.create( :tingler_time => DateTime.new(y=2010,m=06,d=25,h=20,min=30,sec=00),:stadium => Stadium.find_by_name('Mangaung / Bloemfontein'),:home_team => Team.find_by_name('Schweiz'),:away_team => Team.find_by_name('Honduras'))

