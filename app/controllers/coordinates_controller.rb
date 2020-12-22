class CoordinatesController < ApplicationController
    before_action :set_coordinate, only: [ :show ]
    
    def show
    end

    def create
        @coordinate = Coordinate.new(coordinate_params)
        @coordinate.user = current_user
        if @coordinate.save
            render :show, status: :created
        else
            render_error
        end
    end

    private

    def set_coordinate
        @coordinate = Coordinate.find(params[:id])
    end

    def coordinate_params
        params.require(:coordinate).permit(:movimentos)
    end

    def render_error
        render json: { errors: "Um movimento inválido foi detectado, infelizmente a sonda ainda não possui a habilidade de #vvv" },
        status: :unprocessable_entity
    end
end
