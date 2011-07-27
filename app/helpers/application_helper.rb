module ApplicationHelper
  
  def generate_current_class(controller_name)
    css_class = ''
    if controller.controller_name.casecmp(controller_name) == 0
      css_class = 'class="current"'
    end
    css_class
  end
end
