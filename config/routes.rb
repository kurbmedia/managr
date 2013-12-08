Managr::Engine.routes.draw do
  devise_for :users, class_name: 'Managr::User', module: :devise
end
