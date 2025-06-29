# frozen_string_literal: true
class AEspeciesController < ApplicationController
  before_action :set_a_especie, only: %i[show edit update destroy]
  load_and_authorize_resource
  rescue_from ActiveRecord::RecordNotFound, with: :handle_not_found

  def index
    @q = AEspecie.ransack(params[:q])
    @pagy, @a_especies = pagy(@q.result)
  end

  def new
    @a_especie = AEspecie.new
  end

  def edit
  end

  def create
    @a_especie = AEspecie.new(a_especie_params)

    if @a_especie.save
      redirect_to a_especies_path, notice: t('messages.created_successfully')
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @a_especie.update(a_especie_params)
      redirect_to a_especies_path, notice: t('messages.updated_successfully'), status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @a_especie.destroy
      redirect_to a_especies_url, notice: t('messages.deleted_successfully')
    else
      redirect_to a_especies_url, alert: t('messages.delete_failed_due_to_dependencies')
    end   
  end

  private

  def set_a_especie
    @a_especie = AEspecie.find_by(id: params[:id])
    return redirect_to a_especies_path, alert: t('messages.not_found') unless @a_especie
  end

  def a_especie_params
    permitted_attributes = AEspecie.column_names.reject { |col| ['deleted_at', 'created_by', 'updated_by'].include?(col) }
    params.require(:a_especie).permit(permitted_attributes.map(&:to_sym))
  end

  def handle_not_found
    redirect_to a_especies_path, alert: t('messages.not_found')
  end
end
