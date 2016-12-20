require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :new
    end

    post '/teams' do
      @team = Team.new(params[:team])
      @team.heroes.each {|hero| SuperHero.new(hero)}
      @heroes = SuperHero.all
      # binding.pry
      erb :team
    end

end
