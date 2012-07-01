module ApplicationHelper
  def flash_helper
      f_names = [:notice, :warning, :message, :error, :alert]
      fl = ''
      for name in f_names
        if flash[name].present?
          fl = fl + "<div class=\"#{name}\">#{h(flash[name])}</div>"
        end
        flash[name] = nil
      end
      fl.html_safe
  end
end
