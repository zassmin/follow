Follow::Application.routes.draw do
  match '/auth', to: 'github#authorize'
end
