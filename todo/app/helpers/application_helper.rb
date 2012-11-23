module ApplicationHelper

  def error_messages_for(object, attribute)
    html = ''
    if object.errors.messages[attribute]
      html << '<ul>'
      object.errors.messages[attribute].each do |msg|
        html << "<li>#{msg}</li>"
      end
      html << '</ul>'
    end

    raw html
  end
end
