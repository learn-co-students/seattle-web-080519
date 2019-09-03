class ArticlesController < ActionController::Base
  def helpers
    @article = Article.first
    render "helpers"
  end
end
