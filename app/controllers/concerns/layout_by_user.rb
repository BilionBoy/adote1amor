module LayoutByUser
  extend ActiveSupport::Concern

  included do
    layout :set_layout_by_user
  end

  private

  def set_layout_by_user
    return "devise_application" if devise_controller?

    if controller_path.start_with?("store/")
      return "home_application" # layout exclusivo da área de pets 
    end

    if current_user
      case current_user.g_tipo_usuario.descricao
      when 'ADMIN'
        "application"
      when 'TUTOR'
        "tutor_application"
      else
        "application"
      end
    end
  end
end