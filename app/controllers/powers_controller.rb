require "api"
class PowersController < ApplicationController
  TOKEN = 'JjfWKXb23JkJApd9jP3cGg'

  def index
    powers = Power.new(TOKEN)
    @powers = powers.index(35)
  end

  def show
    power = Power.new(TOKEN)
    @power = power.show(35, 51)
  end

  def new
    power = Power.new(TOKEN)
    new_power = { "ability": "jump" }
    @power = power.create(35, new_power)
    render "new"
  end

  def edit
    power = Power.new(TOKEN)
    edit_power = { "ability": "Animal Controlled Powers" }
    @power = power.update(35, 51, edit_power)
    render "edit"
  end

  def destroy
    power = Power.new(TOKEN)
    @power = power.delete(35, 72)
    render "delete"
  end
end
