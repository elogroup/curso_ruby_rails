class TarefasController < ApplicationController
  
  def novo
    @tarefa = Tarefa.new
  end
  
  def create
    @tarefa = Tarefa.new params[:tarefa]
    if !@tarefa.save
      render :action => :novo
    else
      redirect_to :action => :index
    end
  end
  
  def index
    @tarefas = Tarefa.order(:projeto)    
  end
  
  def edit
    @tarefa = Tarefa.find params[:id]
  end
  
  def update
    @tarefa = Tarefa.find params[:id]
    @tarefa.update_attributes params[:tarefa]
    if @tarefa.save
      redirect_to :action => :index
    else
      render :action => :edit
    end
  end
  
  def destroy
    Tarefa.destroy params[:id]
    redirect_to :action => :index
  end
  
end













