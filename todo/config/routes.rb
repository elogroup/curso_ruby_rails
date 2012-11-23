Todo::Application.routes.draw do
  root to: 'tarefas#index'

  get "tarefas/new" => 'tarefas#new'
  post "tarefas" => 'tarefas#create'
  get "tarefas" => 'tarefas#index'

end
