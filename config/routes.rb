Rails.application.routes.draw do

  devise_for :users
    namespace 'api' do
      namespace 'v1' do
        resources :seavaliacaos
      end
    end

    namespace 'api' do
      namespace 'v1' do
        resources :avaliacaoobs
      end
    end
end
