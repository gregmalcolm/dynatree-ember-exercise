DynatreeEmberExercise::Application.routes.draw do
  resource :items do
    get "tree"
  end

  get "site/index"

  root 'site#index'
end
