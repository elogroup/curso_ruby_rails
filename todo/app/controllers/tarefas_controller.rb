# encoding: UTF-8
class TarefasController < ApplicationController
  
  def new
    @tarefa = Tarefa.new
    render 'novo'
  end
  
  def create
    @tarefa = Tarefa.new params[:tarefa]
    respond_to do |format|
      if !@tarefa.save
        flash[:error] = "Existem erros que impedem a inclusão"
        render :action => :novo
      else
        format.html { redirect_to :action => :index, notice: "Tarefa #{params[:id]} criada com sucesso" }
        format.js
        format.json { render json: @tarefa}
      end      
    end
  end
  
  def index
    @projeto = Projeto.find params[:projeto_id]
    @tarefas = @projeto.tarefas
    respond_to do |format|
      format.html
      format.json { render json: @tarefas }
      format.xml { render xml: @tarefas }
    end
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













