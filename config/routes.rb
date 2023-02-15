Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users
  get 'home/index'
  get 'forms/equipmentQuestion'
  get 'forms/know'
  get 'forms/records'
  get 'admin_portal/admindashboard'
  
  devise_scope :user do
  root to: "devise/sessions#new"
end
devise_scope :user do
   get '/users/sign_out' => 'devise/sessions#destroy'
end

end
