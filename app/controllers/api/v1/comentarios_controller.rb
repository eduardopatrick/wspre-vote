module Api
    module V1
      class ComentariosController < ApplicationController
          def index
            @comentarios = Comentario.all
          end

          def create
            @avaliacaoob = Avaliacaoob.find(params[:avaliacaoob_id])
		       @comentario = @avaliacaoob.comentarios.create(params[:comentario].permit(:texto))
          end
      end
    end
  end
