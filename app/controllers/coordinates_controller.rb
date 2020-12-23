class CoordinatesController < ApplicationController
    before_action :set_coordinate, only: [ :show ]
    
    def show
    end

    def create
        @coordinate = Coordinate.new(coordinate_params)
        @coordinate.user = current_user
        find_coordinate()
        if @coordinate.x >= 0 && @coordinate.y >= 0 && @coordinate.x < 5 && @coordinate.y < 5
            @coordinate.save
            coordinate_path(@coordinate)
        else
            render_error
        end
    end

    private

    def find_coordinate
        coord = @coordinate.movimentos
        face = "D"
        x = 0
        y = 0
        coord = coord.split(",")
        coord.each do |s|
            s = s.strip

            if s == "GD" && face == "D" 
                face = "B"
            elsif s == "GD" && face == "B" 
                face = "E"
            elsif s == "GD" && face == "E" 
                face = "C"
            elsif s == "GD" && face == "C" 
                face = "D"
            end
            
            if s == "GE" && face == "D" 
                face = "C"
            elsif s == "GE" && face == "B" 
                face = "D"
            elsif s == "GE" && face == "E" 
                face = "B"
            elsif s == "GE" && face == "C" 
                face = "E"
            end

            if face == "E" && s == "M"
                x = x - 1
            elsif face == "D" && s == "M"
                x += 1
            elsif face == "C" && s == "M"
                y += 1
            elsif face == "B" && s == "M"
                y = y - 1
            end

        end

        @coordinate.face = face
        @coordinate.x = x
        @coordinate.y = y
    end

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
