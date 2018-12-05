Rails.application.routes.draw do
  resources :projects
  wash_out :wsprojects
  put 'projects/:id/version', to: 'projects#updateVersion'
end
