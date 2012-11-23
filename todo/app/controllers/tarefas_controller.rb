class TarefasController < ApplicationController

  def new
    @tarefa = Tarefa.new
  end

  def create
    @tarefa = Tarefa.new params[:tarefa]
    unless @tarefa.save
      render :new
    end
    #aqui vou criar uma tarefa nova
  end

  def index
    @tarefas = Tarefa.all
  end

end
