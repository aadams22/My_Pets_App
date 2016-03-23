class PetsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    # @pet = Pet.find(params[:id])
    if current_user
        puts "I'm logged in as #{current_user.email}"
    else
        puts "I'm not logged in"
    end
  end

  def show
    id = current_user.id
    user = User.find(id)

    p user
  end

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


def new
end

def show
  id = current_user.id.to_i
  @mypet = Pet.find_by user_id: id
  @user = current_user
end




end #Controller
