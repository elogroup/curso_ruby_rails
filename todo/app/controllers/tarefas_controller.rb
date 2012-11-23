class TarefasController < ApplicationController

  def new
    @tarefa = Tarefa.new
    @projetos = Projeto.by_name
  end

  def create
    @tarefa = Tarefa.new params[:tarefa]
    if @tarefa.save
      redirect_to action: :index
    else
      @projetos = Projeto.by_name
      render :new
    end
  end

  def index
    @projeto = Projeto.find params[:projeto_id]
    @tarefas = @projeto.tarefas
  end

  def edit
    @tarefa = Tarefa.find params[:id]
    @projetos = Projeto.by_name
  end

  def update
    @tarefa = Tarefa.find params[:id]
    @tarefa.update_attributes params[:tarefa]
    if @tarefa.save
      redirect_to action: :index
    else
      @projetos = Projeto.by_name
      render :edit
    end
  end

  def destroy
    Tarefa.destroy params[:id]
    redirect_to action: :index
  end

end
