# encoding: UTF-8
class TarefasController < ApplicationController
  
  def new
    @tarefa = Tarefa.new
    render 'novo'
  end
  
  def create
    @tarefa = Tarefa.new params[:tarefa]
    if !@tarefa.save
      flash[:error] = "Existem erros que impedem a inclusão"
      render :action => :novo
    else
      flash[:notice] = "Tarefa #{params[:id]} criada com sucesso"
      redirect_to :action => :index
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
      flash[:notice] = "Tarefa #{params[:id]} atualizada com sucesso"
      redirect_to :action => :index
    else
      flash[:error] = "Existem erros que impedem a atualizacao"
      render :action => :edit
    end
  end
  
  def destroy
    Tarefa.destroy params[:id]
    flash[:notice] = "Tarefa #{params[:id]} removida com sucesso"
    redirect_to :action => :index
  end
  
end













