# frozen_string_literal: true
class ABairrosController < ApplicationController
  before_action :set_a_bairro, only: %i[show edit update destroy]
  load_and_authorize_resource

  rescue_from ActiveRecord::RecordNotFound, with: :handle_not_found

  def index
    @q = ABairro.ransack(params[:q])
    @pagy, @a_bairros = pagy(@q.result)
  end

  def new
    @a_bairro = ABairro.new
  end

  def edit
  end

  def create
    @a_bairro = ABairro.new(a_bairro_params)

    if @a_bairro.save
      redirect_to a_bairros_path, notice: t('messages.created_successfully')
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @a_bairro.update(a_bairro_params)
      redirect_to a_bairros_path, notice: t('messages.updated_successfully'), status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @a_bairro.destroy
      redirect_to a_bairros_url, notice: t('messages.deleted_successfully')
    else
      redirect_to a_bairros_url, alert: t('messages.delete_failed_due_to_dependencies')
    end   
  end

  private

  def set_a_bairro
    @a_bairro = ABairro.find_by(id: params[:id])
    return redirect_to a_bairros_path, alert: t('messages.not_found') unless @a_bairro
  end

  def a_bairro_params
    permitted_attributes = ABairro.column_names.reject { |col| ['deleted_at', 'created_by', 'updated_by'].include?(col) }
    params.require(:a_bairro).permit(permitted_attributes.map(&:to_sym))
  end

  def handle_not_found
    redirect_to a_bairros_path, alert: t('messages.not_found')
  end
end
