Follow::Application.routes.draw do
  match '/auth', to 'githubs#authorize'
end
