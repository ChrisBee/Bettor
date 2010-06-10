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

    pptt =

    fields = %w(Jan Feb Mar);
    data_sales_02 = [12, 45, 21]
    data_sales_03 = [15, 30, 40]

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

  def show

    require 'SVG/Graph/Line'

    fields = %w(Jan Feb Mar);
    data_sales_02 = [12, 45, 21]
    data_sales_03 = [15, 30, 40]

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
