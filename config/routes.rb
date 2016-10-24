Rails.application.routes.draw do
  resources :envelopes, except: [:new, :edit]
end
