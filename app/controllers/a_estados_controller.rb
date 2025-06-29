# frozen_string_literal: true
class AEstadosController < ApplicationController
  before_action :set_a_estado, only: %i[show edit update destroy]
  load_and_authorize_resource
  rescue_from ActiveRecord::RecordNotFound, with: :handle_not_found

  def index
    @q = AEstado.ransack(params[:q])
    @pagy, @a_estados = pagy(@q.result)
  end

  def new
    @a_estado = AEstado.new
  end

  def edit
  end

  def create
    @a_estado = AEstado.new(a_estado_params)

    if @a_estado.save
      redirect_to a_estados_path, notice: t('messages.created_successfully')
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @a_estado.update(a_estado_params)
      redirect_to a_estados_path, notice: t('messages.updated_successfully'), status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @a_estado.destroy
      redirect_to a_estados_url, notice: t('messages.deleted_successfully')
    else
      redirect_to a_estados_url, alert: t('messages.delete_failed_due_to_dependencies')
    end   
  end

  private

  def set_a_estado
    @a_estado = AEstado.find_by(id: params[:id])
    return redirect_to a_estados_path, alert: t('messages.not_found') unless @a_estado
  end

  def a_estado_params
    permitted_attributes = AEstado.column_names.reject { |col| ['deleted_at', 'created_by', 'updated_by'].include?(col) }
    params.require(:a_estado).permit(permitted_attributes.map(&:to_sym))
  end

  def handle_not_found
    redirect_to a_estados_path, alert: t('messages.not_found')
  end
end
