class PublicController < ActionController::Base
  def index
    render plain: "welcome to the index"
  end

  def secret
    return head(:forbidden) unless session.include? :username
    render plain: "public secret"
  end
end
