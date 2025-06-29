# frozen_string_literal: true
class ASexoAnimalsController < ApplicationController
  before_action :set_a_sexo_animal, only: %i[show edit update destroy]
  load_and_authorize_resource
  rescue_from ActiveRecord::RecordNotFound, with: :handle_not_found

  def index
    @q = ASexoAnimal.ransack(params[:q])
    @pagy, @a_sexo_animals = pagy(@q.result)
  end

  def new
    @a_sexo_animal = ASexoAnimal.new
  end

  def edit
  end

  def create
    @a_sexo_animal = ASexoAnimal.new(a_sexo_animal_params)

    if @a_sexo_animal.save
      redirect_to a_sexo_animals_path, notice: t('messages.created_successfully')
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @a_sexo_animal.update(a_sexo_animal_params)
      redirect_to a_sexo_animals_path, notice: t('messages.updated_successfully'), status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @a_sexo_animal.destroy
      redirect_to a_sexo_animals_url, notice: t('messages.deleted_successfully')
    else
      redirect_to a_sexo_animals_url, alert: t('messages.delete_failed_due_to_dependencies')
    end   
  end

  private

  def set_a_sexo_animal
    @a_sexo_animal = ASexoAnimal.find_by(id: params[:id])
    return redirect_to a_sexo_animals_path, alert: t('messages.not_found') unless @a_sexo_animal
  end

  def a_sexo_animal_params
    permitted_attributes = ASexoAnimal.column_names.reject { |col| ['deleted_at', 'created_by', 'updated_by'].include?(col) }
    params.require(:a_sexo_animal).permit(permitted_attributes.map(&:to_sym))
  end

  def handle_not_found
    redirect_to a_sexo_animals_path, alert: t('messages.not_found')
  end
end
