class TesteController < ApplicationController
  def method_name
    
  end
  
  def index
    render :text => "Padrao"
  end
  
  def oimundo
    render :text => "Ola #{params[:nome]}"
  end
  
  def foi
    redirect_to :controller => :teste, :action => :oimundo
    #oimundo #forward
    #render :text => "Foi"
  end
end
