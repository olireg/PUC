Rails.application.routes.draw do
  devise_for :users
  resources :jobs do
  resources :comments
  end

 
  root 'jobs#index2'
  get :notifica, to: 'jobs#notifica', as: :notifica
  get :notificaDocente, to: 'jobs#notificaDocente', as: :notificaDocente
  get :print, to: 'jobs#print', as: :print
  get :printEN, to: 'jobs#printEN', as: :printEN
  get :index2, to: 'jobs#index2', as: :index2
  get :puc_validados, to: 'jobs#puc_validados', as: :puc_validados
#root :to => 'linkedin#index' "controller#action
end
