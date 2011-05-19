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
    html << link_to("Projetos", projetos_path)
    #html << " | " + link_to("Tarefas", projeto_tarefas_path)
    html << " | " + link_to("Colaboradores", colaboradores_path)
    raw html
  end
end
