module Api
    module V1
      class SeavaliacaosController < ApplicationController
        def index
            seavaliacaos = Seavaliacao.order('created_at DESC');
          render json: {status: 'SUCCESS', message:'Loaded avaliacoes obras', data:seavaliacaos},status: :ok
        end


        def create
            seavaliacao = Seavaliacao.new(seavaliacao_params)

          if seavaliacao.save
            render json: {status: 'SUCCESS', message:'Saved avaliacao', data:seavaliacao},status: :ok
          else
            render json: {status: 'ERROR', message:'avaliacao not saved', data:seavaliacao.errors},status: :unprocessable_entity
          end
        end


        def ranking
        end
        
        private

        def seavaliacaos_params
          params.permit(:comentario, :nota, :cpf, :nomeservico, :orgao, :nome, :cpf, :email)
        end
      end
    end
  end
