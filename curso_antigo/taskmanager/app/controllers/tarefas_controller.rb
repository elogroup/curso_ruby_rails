class TarefasController < ApplicationController
  respond_to :html, :xml
  before_filter :carrega_projeto
    
  def index
    @tarefas = @projeto.tarefas
    respond_with @tarefas
  end

  def show
    @tarefa = Tarefa.find(params[:id])
    respond_with @tarefa
  end

  def new
    @tarefa = Tarefa.new
    #pra utilizar o hidden field que há no form
    @tarefa.projeto = @projeto
  end

  def create
    @tarefa = Tarefa.new(params[:tarefa])
    if @tarefa.save
      redirect_to projeto_path(@projeto), :notice => "Tarefa Criada com Sucesso"
    else
      render :action => 'new', :projeto_id => @projeto
    end
  end

  def edit
    @tarefa = Tarefa.find(params[:id])
  end

  def update
    @tarefa = Tarefa.find(params[:id])
    if @tarefa.update_attributes(params[:tarefa])
      redirect_to projeto_path(@projeto), :notice  => "Tarefa Atualizada com Sucesso"
    else
      render :action => 'edit', :projeto_id => @projeto
    end
  end

  def destroy
    @tarefa = Tarefa.find(params[:id])
    @tarefa.destroy
    redirect_to projeto_path(@projeto), :notice => "Tarefa Deletada com Sucesso"
  end
  
  private
  def carrega_projeto
    @projeto = Projeto.find params[:projeto_id]
  end
end
