module Api
    module V1
      class VotosController < ApplicationController
        def index
          @votos = Voto.all
        end

        def create
        end
      end
    end
  end
