# frozen_string_literal: true
class APortesController < ApplicationController
  before_action :set_a_porte, only: %i[show edit update destroy]

  rescue_from ActiveRecord::RecordNotFound, with: :handle_not_found

  def index
    @q = APorte.ransack(params[:q])
    @pagy, @a_portes = pagy(@q.result)
  end

  def new
    @a_porte = APorte.new
  end

  def edit
  end

  def create
    @a_porte = APorte.new(a_porte_params)

    if @a_porte.save
      redirect_to a_portes_path, notice: t('messages.created_successfully')
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @a_porte.update(a_porte_params)
      redirect_to a_portes_path, notice: t('messages.updated_successfully'), status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @a_porte.destroy
      redirect_to a_portes_url, notice: t('messages.deleted_successfully')
    else
      redirect_to a_portes_url, alert: t('messages.delete_failed_due_to_dependencies')
    end   
  end

  private

  def set_a_porte
    @a_porte = APorte.find_by(id: params[:id])
    return redirect_to a_portes_path, alert: t('messages.not_found') unless @a_porte
  end

  def a_porte_params
    permitted_attributes = APorte.column_names.reject { |col| ['deleted_at', 'created_by', 'updated_by'].include?(col) }
    params.require(:a_porte).permit(permitted_attributes.map(&:to_sym))
  end

  def handle_not_found
    redirect_to a_portes_path, alert: t('messages.not_found')
  end
end
