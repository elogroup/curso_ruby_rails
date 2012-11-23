class TarefasController < ApplicationController

  def new

  end

  def create
    t = Tarefa.new
    t.descricao = params[:descricao]
    t.responsavel = params[:responsavel]
    unless t.save
      render :new
    end
    #aqui vou criar uma tarefa nova
  end

end
