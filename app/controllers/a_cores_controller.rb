# frozen_string_literal: true
class ACoresController < ApplicationController
  before_action :set_a_cor, only: %i[show edit update destroy]
  load_and_authorize_resource
  rescue_from ActiveRecord::RecordNotFound, with: :handle_not_found

  def index
    @q = ACor.ransack(params[:q])
    @pagy, @a_cor = pagy(@q.result)
  end

  def new
    @a_cor = ACor.new
  end

  def edit
  end

  def create
    @a_cor = ACor.new(a_cor_params)

    if @a_cor.save
      redirect_to a_cor_path, notice: t('messages.created_successfully')
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @a_cor.update(a_cor_params)
      redirect_to a_cor_path, notice: t('messages.updated_successfully'), status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @a_cor.destroy
      redirect_to a_cor_url, notice: t('messages.deleted_successfully')
    else
      redirect_to a_cor_url, alert: t('messages.delete_failed_due_to_dependencies')
    end   
  end

  private

  def set_a_cor
    @a_cor = ACor.find_by(id: params[:id])
    return redirect_to a_cor_path, alert: t('messages.not_found') unless @a_cor
  end

  def a_cor_params
    permitted_attributes = ACor.column_names.reject { |col| ['deleted_at', 'created_by', 'updated_by'].include?(col) }
    params.require(:a_cor).permit(permitted_attributes.map(&:to_sym))
  end

  def handle_not_found
    redirect_to a_cor_path, alert: t('messages.not_found')
  end
end
