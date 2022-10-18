module Api
  module V1
    class GreetingsController < ApplicationController
      def index
        @greetings = Greeting.all
        respond_to do |format|
          format.json { render json: @greetings }
          format.html { render json: @greetings }
        end
        # render json: { greeting: Message.all.sample.greeting }, status: :ok
      end

      def random_greeting
        random_number = rand(Greeting.count)
        @greeting = Greeting.all[random_number].message
        respond_to do |format|
          format.html { render json: @greeting }
          format.json { render json: @greeting }
        end
      end
    end
  end
end
