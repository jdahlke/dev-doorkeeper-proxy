Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  match '/doorkeeper/service-token', to: 'doorkeeper_proxy#service_token', via: :all
end
