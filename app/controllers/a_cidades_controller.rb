# frozen_string_literal: true
class ACidadesController < ApplicationController
  before_action :set_a_cidade, only: %i[show edit update destroy]

  rescue_from ActiveRecord::RecordNotFound, with: :handle_not_found

  def index
    @q = ACidade.ransack(params[:q])
    @pagy, @a_cidades = pagy(@q.result)
  end

  def new
    @a_cidade = ACidade.new
  end

  def edit
  end

  def create
    @a_cidade = ACidade.new(a_cidade_params)

    if @a_cidade.save
      redirect_to a_cidades_path, notice: t('messages.created_successfully')
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @a_cidade.update(a_cidade_params)
      redirect_to a_cidades_path, notice: t('messages.updated_successfully'), status: :see_other
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @a_cidade.destroy
      redirect_to a_cidades_url, notice: t('messages.deleted_successfully')
    else
      redirect_to a_cidades_url, alert: t('messages.delete_failed_due_to_dependencies')
    end   
  end

  private

  def set_a_cidade
    @a_cidade = ACidade.find_by(id: params[:id])
    return redirect_to a_cidades_path, alert: t('messages.not_found') unless @a_cidade
  end

  def a_cidade_params
    permitted_attributes = ACidade.column_names.reject { |col| ['deleted_at', 'created_by', 'updated_by'].include?(col) }
    params.require(:a_cidade).permit(permitted_attributes.map(&:to_sym))
  end

  def handle_not_found
    redirect_to a_cidades_path, alert: t('messages.not_found')
  end
end
