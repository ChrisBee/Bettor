class RankingController < ApplicationController

  hobo_controller

  before_filter :set_time_zone

  def set_time_zone
    user_tz = @current_user.try.time_zone
    Time.zone = user_tz if user_tz
  end
  # TODO: why does this not work in the application controller itself??


  def index
    @bettors = User.paid.sort {|x,y| y.total_points <=> x.total_points }
  end

  def graph

    require 'SVG/Graph/Line'

    x_axis = [] # games (short_desc) (example: fields)

    games = Game.find(:all, :conditions => "home_score is not null and away_score is not null", :order => "tingler_time, short_desc" )
    games.each do |game|
      x_axis << "#{game.short_desc}"
      puts "X_AXIS::::  #{game.short_desc}"
    end
    puts "***** X_AXIS.SIZE #{x_axis.size}"

    graph = SVG::Graph::Line.new({
            :height => 900,
            :width => 900,
      :fields => x_axis, #fields,
    })

    #graph.scale_integers = true
    graph.add_popups = true

    points = User.connection.select_all("
      select u.name, g.short_desc, b.points
      from   games g
        inner join bets b
                on g.id = b.game_id
        inner join users u
                on b.user_id = u.id
      where  g.home_score is not null
      and    g.away_score is not null
      and    u.paid = true
      order by u.name, g.tingler_time, g.short_desc
                              ")

    prev_bettor = ""
    sum_points = 0
    data_bets = []
    i = 0
    points.each do |p|
      break if i > 11
      puts "p is: #{p}"
      #x_axis << p[:short_desc]
      #data_bets
      this_bettor = p["name"]
      puts "this name #{ p[:name]}"
      if this_bettor != prev_bettor
        if prev_bettor != ""
          i += 1
          graph.add_data({
                  :data =>  data_bets,
                  :title => prev_bettor,
          })
        end
        data_bets = []
        sum_points = 0
      end
      #
      puts "sum_points: #{sum_points}"
      puts "this_bettor: #{this_bettor}"
      puts "prev_bettor: #{prev_bettor}"
      points = p["points"].to_i
      points = 0 if points.nil?
      puts "points: #{points}"
      sum_points = sum_points + points
      puts "sum_points: #{sum_points}"
      data_bets << sum_points
      puts "sum_points: #{sum_points}"
      prev_bettor   = this_bettor
    end
    
#    fields = %w(Jan Feb Mar);
    #x_axis = %w(Jan Feb Mar Jan Feb Mar Jan Feb Mar Jan Feb Mar);
    #x_axis = %w(1 2 3 4 5 6 7 8 9 10 11 12)
    data_sales_02 = [12, 45, 21,12, 45, 21,12, 45, 21,12, 45, 21]
    data_sales_03 = [15, 30, 40,15, 30, 40,15, 30, 40,15, 30, 40]

#    graph.add_data({
#            :data => data_sales_03,
#      :title => 'Sales 2003',
#    })

#    print "Content-type: image/svg+xml\r\n\r\n";
     respond_to do |format|
       format.svg {
         render :inline => graph.burn();
       }
     end
  end

  def show

    require 'SVG/Graph/Line'

    fields = %w(Jan Feb Mar Jan Feb Mar Jan Feb Mar Jan Feb Mar);
    data_sales_02 = [12, 45, 21,12, 45, 21,12, 45, 21,12, 45, 21]
    data_sales_03 = [15, 30, 40,15, 30, 40,15, 30, 40,15, 30, 40]

    graph = SVG::Graph::Line.new({
            :height => 500,
            :width => 300,
      :fields => fields,
    })

    graph.add_data({
            :data => data_sales_02,
      :title => 'Sales 2002',
    })

    graph.add_data({
            :data => data_sales_03,
      :title => 'Sales 2003',
    })

#    print "Content-type: image/svg+xml\r\n\r\n";
     respond_to do |format|
       format.svg {
         render :inline => graph.burn();
       }
     end
  end

  def show2
     respond_to do |format|
       format.svg {
         render :inline => "<svg xmlns=\"http://www.w3.org/2000/svg\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" height=\"100%\" version=\"1.1\" width=\"100%\"><rect height=\"100\" style=\"\" width=\"100\"></rect></svg>"
       }
       format.html {
         render :inline => "<html><body><h1>hello</h1></body></html>"
       }
     end
  end

end
