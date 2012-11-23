Todo::Application.routes.draw do
  get "tarefas/new"

  get "tarefa/new"

  match 'nova_tarefa', :controller => :tarefas, :action => :new
end
