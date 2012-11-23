Todo::Application.routes.draw do

  get "tarefas/new" => 'tarefas#new'
  post "tarefas" => 'tarefas#create'

end
