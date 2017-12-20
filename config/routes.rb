Rails.application.routes.draw do
root "pages#landing"
  namespace 'api' do
    namespace 'v1' do
          post 'authenticate', to: 'authentication#authenticate'
          resources :articles
          resources :questions
          resources :counsellors
          resources :posts
    end
  end
end
