class TarefasController < ApplicationController

  def new
  end

  def create
    t = Tarefa.new params[:tarefa]
    unless t.save
      render :new
    end
    #aqui vou criar uma tarefa nova
  end

  def index
    @tarefas = Tarefa.all
  end

end
