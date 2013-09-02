DynatreeEmberExercise::Application.routes.draw do
  resources :items do
    get "tree"
  end

  get "site/index"

  root 'site#index'
end
