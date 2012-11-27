Todo::Application.routes.draw do
  resources :projetos do
    resources :tarefas do
      member do
        post 'concluir'
      end
    end
  end

  root to: 'projetos#index'



  # get "tarefas/new" => 'tarefas#new'
  # post "tarefas" => 'tarefas#create'
  # get "tarefas" => 'tarefas#index'
  # get "tarefas/:id/edit" => 'tarefas#edit', as: 'tarefas_edit'
  # put "tarefas/:id" => 'tarefas#update', as: 'tarefa'
  # delete "tarefas/:id" => 'tarefas#destroy'
  
end
