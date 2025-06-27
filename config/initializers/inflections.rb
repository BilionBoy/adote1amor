# config/initializers/inflections.rb

ActiveSupport::Inflector.inflections(:en) do |inflect|
  inflect.irregular 'a_tipo_evento', 'a_tipo_eventos'
  inflect.irregular 'a_status', 'a_status'
  inflect.irregular 'a_cor', 'a_cor'
  inflect.irregular 'a_bairro', 'a_bairros'
  inflect.irregular 'a_porte', 'a_portes'
  inflect.irregular 'a_especie', 'a_especies'
  inflect.irregular 'a_evento_animal', 'a_eventos_animais'
  inflect.irregular 'a_animal', 'a_animais'
  inflect.irregular 'g_tipo_usuario', 'g_tipo_usuarios'
  inflect.irregular 'a_evento_animal', 'a_eventos_animais'
end
