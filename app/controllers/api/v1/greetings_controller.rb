module Api
  module V1
    class GreetingsController < ApplicationController
      def index
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
