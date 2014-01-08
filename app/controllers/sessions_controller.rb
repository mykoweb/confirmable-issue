class SessionsController < ApplicationController
  respond_to :json
  before_action :default_json

  def create
    if params[:email].nil?
      render json: {}, status: 400
    else
      render json: {}
    end
  end

  protected

    def default_json
      request.format = :json if params[:format].nil?
    end
end
