class TarefasController < ApplicationController
  before_filter :find_projeto

  def new
    @tarefa = Tarefa.new
    render layout: nil
  end

  def create
    @tarefa = Tarefa.new params[:tarefa]    
    @tarefa.projeto = @projeto
    @saved_successfully = @tarefa.save
    @tarefas = @projeto.tarefas    
  end

  def index
    @tarefas = @projeto.tarefas
    
    respond_to do |format|
      format.html
      format.json do 
        render json: @tarefas.to_json
      end
    end
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

  def concluir
    @tarefa = Tarefa.find params[:id]
    @tarefa.concluir!
  end

  private
  def find_projeto
    @projeto = Projeto.find(params[:projeto_id])
  end
end
