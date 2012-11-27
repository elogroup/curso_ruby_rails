class TarefasController < ApplicationController
  before_filter :find_projeto

  def new
    @tarefa = Tarefa.new
  end

  def create
    @tarefa = Tarefa.new params[:tarefa]    
    @tarefa.projeto = @projeto
    if @tarefa.save
      redirect_to action: :index
    else
      render :new
    end
  end

  def index
    @tarefas = @projeto.tarefas
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

  private
  def find_projeto
    @projeto = Projeto.find(params[:projeto_id])
  end
end
