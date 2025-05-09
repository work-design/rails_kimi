Rails.application.routes.draw do

  namespace :kimi, defaults: { business: 'kimi' } do
    namespace :my, defaults: { namespace: 'my' } do
      resources :chats do
        resources :messages
      end
    end

    namespace :admin, defaults: { namespace: 'admin' } do
      resources :apps do
        resources :files
      end
    end
  end

end
