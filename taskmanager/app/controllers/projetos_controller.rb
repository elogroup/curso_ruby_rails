class ProjetosController < ApplicationController
  #before_filter :log_antes
  #after_filter :log_depois
  #around_filter :log_total
  
  respond_to :html, :xml
  
  def new
    @projeto = Projeto.new
  end
  
  def create  
    @projeto = Projeto.new params[:projeto]
    #@projeto.save
    if @projeto.save
      flash[:notice] = "Projeto Cadastrado!"
      #render :action => :new
      redirect_to :action => :index
    else
      render :action => :new    
    end
  end
  
  #exibir lista de projetos
  def index
    @projetos = Projeto.all
    respond_with @projetos
  end
  
  def destroy
    Projeto.delete params[:id]
    redirect_to :action => :index
  end
  
  def show
    @projeto = Projeto.find params[:id]
    respond_with @projeto   
  end
  
  private
  def log_antes
    puts ">>>>>>>>>>>>>>>>>> Vou Executar a acao #{params[:action]} do controlador #{params[:controller]}"
  end
  def log_depois
    puts ">>>>>>>>>>>>>>>>>> Acabei de Executar a acao #{params[:action]} do controlador #{params[:controller]}"
  end
  def log_total
    log_antes
    yield
    log_depois
  end
end
