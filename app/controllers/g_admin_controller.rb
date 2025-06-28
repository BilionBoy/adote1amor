class GAdminController < ApplicationController
  def index
  end
  def usuarios
    @q = User.ransack(params[:q])
    @q.sorts = 'created_at desc' if @q.sorts.empty?
    @pagy, @users = pagy(@q.result.includes(:g_tipo_usuario))
  end
end