class TarefasController < ApplicationController
  def index
    @tarefas = Tarefa.all
  end

  def show
    @tarefa = Tarefa.find(params[:id])
  end

  def new
    @tarefa = Tarefa.new
  end

  def create
    @tarefa = Tarefa.new(params[:tarefa])
    if @tarefa.save
      redirect_to @tarefa, :notice => "Successfully created tarefa."
    else
      render :action => 'new'
    end
  end

  def edit
    @tarefa = Tarefa.find(params[:id])
  end

  def update
    @tarefa = Tarefa.find(params[:id])
    if @tarefa.update_attributes(params[:tarefa])
      redirect_to @tarefa, :notice  => "Successfully updated tarefa."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @tarefa = Tarefa.find(params[:id])
    @tarefa.destroy
    redirect_to tarefas_url, :notice => "Successfully destroyed tarefa."
  end
end
