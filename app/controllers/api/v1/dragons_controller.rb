module Api
  module V1
    class DragonsController < Api::V1::BaseController
      before_action :set_dragon, only: %i[show]

      def show
        dragon = Dragon.find_by(id: params[:id])
        render json: dragon
      end

      private

      def set_dragon
        @dragon = Dragon.find(params[:id])
      end
    end
  end
end
