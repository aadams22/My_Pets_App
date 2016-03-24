class PetsController < ApplicationController
  skip_before_action :verify_authenticity_token
  ForecastIO.api_key = '3a41824837a92c321904523b5e541134'

#============INDEX============
  def index
    # @pet = Pet.find(params[:id])
    ip = request.ip
    puts ip

    if current_user
        puts "I'm logged in as #{current_user.email}"
    else
        puts "I'm not logged in"
    end
  end


#============CREATEOLI============
  def createOli
    puts "Create Oli!"

    user = current_user
    p id = current_user.id.to_i

    new_friend = Pet.new({
      pet_name: 'Oli',
      kind: 'dog',
      color: 'blonde',
      hunger_level: 0,
      loved_level: 100,
      img_url: 'http://cliparts.co/cliparts/kc8/onE/kc8onE5qi.png',
      user_id: id
      })


    if new_friend.save
      redirect_to show_path(new_friend)
    else
      render :action => :new
    end

  end
#============CREATEOLIVE============
  def createOlive
    puts "createOlive!"
    id = current_user.id.to_i

    new_friend = Pet.new({
      pet_name: 'Olive',
      kind: 'cat',
      color: 'grey',
      hunger_level: 0,
      loved_level: 100,
      img_url: 'http://www.uticapubliclibrary.org/assets/Events/Photos/cute-cat-and-dog-clipart-png-wqugtbtb.png',
      user_id: id
    })


    if new_friend.save
      redirect_to show_path(new_friend)
    else
      render :action => :new
    end


  end

#============NEW============
  def new
  end

#============SHOW============
  def show
    require 'date'

    id = current_user.id
    user = User.find(id)
    id = current_user.id.to_i
    @mypet = Pet.find_by user_id: id

    lat_lng = cookies[:lat_lng].split("|")
    lat = lat_lng[0].to_f
    long = lat_lng[1].to_f
    puts @forecast = ForecastIO.forecast(lat, long, options = {})
    timestamp = @forecast.currently.time
    current_timestamp = Time.at(timestamp).to_datetime
    @current_time =  current_timestamp.strftime("%I:%M%p")
  end


end #Controller
