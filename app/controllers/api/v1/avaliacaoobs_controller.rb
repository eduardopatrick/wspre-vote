module Api
    module V1
      class AvaliacaoobsController < ApplicationController

        def index
            avaliacaoobs = Avaliacaoob.order('created_at DESC');
          render json: {status: 'SUCCESS', message:'Loaded avaliacoes obras', data:avaliacaoobs},status: :ok
        end


        def create
            avaliacaoob = Avaliacaoob.new(avaliacaoob_params)

          if avaliacaoob.save
            
            render json: {status: 'SUCCESS', message:'Saved avaliacao', data:avaliacaoob},status: :ok
          else
            render json: {status: 'ERROR', message:'avaliacao not saved', data:avaliacaoob.errors},status: :unprocessable_entity
          end
        end


        def show

          #@avaliacaoobs = Avaliacaoob.all

          #if @avaliacaoobs.blank?
            #@media = 0
          #else
            #@media = @avaliacaoobs.average(:nota).round(2)
            #render json: {status: 'SUCCESS', message:'Saved nota', data:@media},status: :ok
          #end
        #end
        end

        private

        def avaliacaoob_params
          params.permit(:comentario, :nota, :cpf, :nomeobra, :orgao, :nome, :cpf, :email, :image_base, :created_at)
        end
      end
    end
  end
