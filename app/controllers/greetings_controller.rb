class GreetingsController < ApplicationController
  def index
    @greetings = Greeting.all
    respond_to do |format|
      format.json { render json: @greetings }
      format.json { render json: @greetings }
    end
  end

  def random_message
    random_num = rand(Greeting.count)
    @message = Greeting.all[random_num].text
    respond_to do |format|
      format.json { render json: @message }
      format.html { render json: @message }
    end
  end
end
