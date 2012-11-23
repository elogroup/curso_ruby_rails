Todo::Application.routes.draw do
  root to: 'tarefas#index'

  resources :tarefas

  # get "tarefas/new" => 'tarefas#new'
  # post "tarefas" => 'tarefas#create'
  # get "tarefas" => 'tarefas#index'
  # get "tarefas/:id/edit" => 'tarefas#edit', as: 'tarefas_edit'
  # put "tarefas/:id" => 'tarefas#update', as: 'tarefa'
  # delete "tarefas/:id" => 'tarefas#destroy'


end
