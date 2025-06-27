# frozen_string_literal: true
class ATipoEventosController < ApplicationController
  before_action :set_a_tipo_evento, only: %i[show edit update destroy]

  rescue_from ActiveRecord::RecordNotFound, with: :handle_not_found

  def index
    @q = ATipoEvento.ransack(params[:q])
    @pagy, @a_tipo_eventos = pagy(@q.result)
  end

  def new
    @a_tipo_evento = ATipoEvento.new
  end

  def edit
  end

  def create
    @a_tipo_evento = ATipoEvento.new(a_tipo_evento_params)

    if @a_tipo_evento.save
      redirect_to a_tipo_eventos_path, notice: t('messages.created_successfully')
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @a_tipo_evento.update(a_tipo_evento_params)
      redirect_to a_tipo_eventos_path, notice: t('messages.updated_successfully'), status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @a_tipo_evento.destroy
      redirect_to a_tipo_eventos_url, notice: t('messages.deleted_successfully')
    else
      redirect_to a_tipo_eventos_url, alert: t('messages.delete_failed_due_to_dependencies')
    end   
  end

  private

  def set_a_tipo_evento
    @a_tipo_evento = ATipoEvento.find_by(id: params[:id])
    return redirect_to a_tipo_eventos_path, alert: t('messages.not_found') unless @a_tipo_evento
  end

  def a_tipo_evento_params
    permitted_attributes = ATipoEvento.column_names.reject { |col| ['deleted_at', 'created_by', 'updated_by'].include?(col) }
    params.require(:a_tipo_evento).permit(permitted_attributes.map(&:to_sym))
  end

  def handle_not_found
    redirect_to a_tipo_eventos_path, alert: t('messages.not_found')
  end
end
