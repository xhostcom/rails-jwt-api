Rails.application.routes.draw do
  get 'members/show'

 devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
 get '/member-data', to: 'members#show'
end
