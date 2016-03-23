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
  mypet = Pet.new({
    pet_name: 'Oli',
    type: 'dog',
    color: 'blonde',
    hunger_level: '0',
    loved_level: '100'
    })


  mypet << current_user

  if mypet.save
    redirect_to show_path(mypet)
  else
    render :action => :new
  end

  redirect_to '/pets'

end

def createOlive
  puts "createOlive!"
  new_friend = {
    pet_name: 'Olive',
    type: 'cat',
    color: 'grey',
    hunger_level: '0',
    loved_level: '100'
  }

  mypet = Pet.new(new_friend)
  mypet << current_user

  if mypet.save
    redirect_to show_path(mypet)
  else
    render :action => :new
  end

  redirect_to '/pets'

end


def new
end



end
