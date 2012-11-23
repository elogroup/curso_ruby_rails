class TarefasController < ApplicationController

  def new
    @tarefa = Tarefa.new
  end

  def create
    @tarefa = Tarefa.new params[:tarefa]
    if @tarefa.save
      redirect_to action: :index
    else
      render :new
    end
  end

  def index
    @tarefas = Tarefa.all
  end

  def edit
    @tarefa = Tarefa.find params[:id]
  end

  def update
    @tarefa = Tarefa.find params[:id]
    @tarefa.update_attributes params[:tarefa]
    if @tarefa.save
      redirect_to action: :index
    else
      render :edit
    end
  end

  def destroy
    Tarefa.destroy params[:id]
    redirect_to action: :index
  end

end
