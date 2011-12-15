module ApplicationHelper
  
  def menu_principal
    opcoes = %w(tarefas projetos colaboradores)
    html = "<div id='menu'>"
    html << '<ul>'
    opcoes.each do |op|
      if respond_to?("#{op}_index_path")
        link = link_to op.capitalize, send("#{op}_index_path")
      else
        link = link_to op.capitalize, '#'
      end
      html << "<li style='display:inline'>#{link} | </li>"
    end
    html << '</ul>'
    html << '</div>'

    raw html
  end
end
