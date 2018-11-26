Rails.application.routes.draw do
  resources :projects

  put 'projects/:id/version', to: 'projects#updateVersion'
end
