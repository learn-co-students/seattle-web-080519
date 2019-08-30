class ApplicationController < ActionController::Base
  def custom
    render json: ["yeehaw"]
  end
end
