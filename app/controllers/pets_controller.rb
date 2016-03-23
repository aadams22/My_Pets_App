class PetsController < ApplicationController
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
end
