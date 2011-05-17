module ApplicationHelper
  def erros_para modelo
    html = ""
    unless modelo.errors.empty?
      html << "<div class='error'>"
      html << "<p>Os seguintes erros foram encontrados:</p>"
      modelo.errors.full_messages.each do |msg|
        html << "<p>#{msg}</p>"
      end
      html << "</div>"
    end  
    raw html
  end
  
  def menu_principal
    html = ""
    html << link_to("Projetos", :controller => :projeto)
    html << " | " + link_to("Tarefas", :controller => :tarefas)
    html << " | " + link_to("Tarefas", :controller => :colaboradores)
    raw html
  end
end
