# frozen_string_literal: true
class AEventosAnimaisController < ApplicationController
  before_action :set_a_evento_animal, only: %i[show edit update destroy]
  load_and_authorize_resource
  rescue_from ActiveRecord::RecordNotFound, with: :handle_not_found

  def index
    @q = AEventoAnimal.ransack(params[:q])
    @pagy, @a_eventos_animais = pagy(@q.result)
  end

  def new
    @a_evento_animal = AEventoAnimal.new
  end

  def edit
  end

  def create
    @a_evento_animal = AEventoAnimal.new(a_evento_animal_params)

    if @a_evento_animal.save
      redirect_to a_eventos_animais_path, notice: t('messages.created_successfully')
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @a_evento_animal.update(a_evento_animal_params)
      redirect_to a_eventos_animais_path, notice: t('messages.updated_successfully'), status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @a_evento_animal.destroy
      redirect_to a_eventos_animais_url, notice: t('messages.deleted_successfully')
    else
      redirect_to a_eventos_animais_url, alert: t('messages.delete_failed_due_to_dependencies')
    end   
  end

  private

  def set_a_evento_animal
    @a_evento_animal = AEventoAnimal.find_by(id: params[:id])
    return redirect_to a_eventos_animais_path, alert: t('messages.not_found') unless @a_evento_animal
  end

  def a_evento_animal_params
    permitted_attributes = AEventoAnimal.column_names.reject { |col| ['deleted_at', 'created_by', 'updated_by'].include?(col) }
    params.require(:a_evento_animal).permit(permitted_attributes.map(&:to_sym))
  end

  def handle_not_found
    redirect_to a_eventos_animais_path, alert: t('messages.not_found')
  end
end
