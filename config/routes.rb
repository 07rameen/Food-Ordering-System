Rails.application.routes.draw do
  get 'management/managerdashboard'
  devise_for :employees
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'welcome#index'
  get 'employee_dashboard' , to: 'employee#dashboard'
  #get 'management_managerdashboard', to: 'management#managerdashboard'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
