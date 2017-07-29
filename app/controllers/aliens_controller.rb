require 'api'
class AliensController < ApplicationController
  TOKEN = 'JjfWKXb23JkJApd9jP3cGg'
  
  def index
    aliens = Alien.new(TOKEN)
    @aliens = aliens.index
  end

  def show
    alien = Alien.new(TOKEN)
    @alien = alien.show(params[:id])
  end

  def new
    alien = Alien.new(TOKEN)
    new_alien = { "name": "Spiderman",
	                "year": 2001,
	                "month": 2,
	                "origin": "earth" }
    @alien = alien.create(new_alien)
    render "new"
  end

  def edit
    alien = Alien.new(TOKEN)
    edit_alien = { "origin": "Mars" }
    @alien = alien.update(params[:id], edit_alien)
    render "edit"
  end

  def destroy
    alien = Alien.new(TOKEN)
    @alien = alien.delete(params[:id])
    render "delete"
  end
end
