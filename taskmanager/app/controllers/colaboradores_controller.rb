class ColaboradoresController < ApplicationController
  def index
    @colaboradores = Colaborador.all
  end

  def show
    @colaborador = Colaborador.find(params[:id])
  end

  def new
    @colaborador = Colaborador.new
  end

  def create
    @colaborador = Colaborador.new(params[:colaborador])
    if @colaborador.save
      redirect_to @colaborador, :notice => "Successfully created colaborador."
    else
      render :action => 'new'
    end
  end

  def edit
    @colaborador = Colaborador.find(params[:id])
  end

  def update
    @colaborador = Colaborador.find(params[:id])
    if @colaborador.update_attributes(params[:colaborador])
      redirect_to @colaborador, :notice  => "Successfully updated colaborador."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @colaborador = Colaborador.find(params[:id])
    @colaborador.destroy
    redirect_to colaboradores_url, :notice => "Successfully destroyed colaborador."
  end
end
