module PropertiesHelper
  def submit_button label = :save
    button_tag(type: 'submit', class: "btn btn-primary") do
      content_tag(:i, class: "icon-ok icon-white")
        I18n.t 'save'
    end
  end        
end