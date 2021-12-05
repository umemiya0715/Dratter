module Api
  module V1
    class DragonsController < ApplicationController
      before_action :set_dragon, only: %i[show]

      def show
        render json: @dragon
      end

      private

      def set_dragon
        @dragon = Dragon.find(params[:id])
      end
    end
  end
end