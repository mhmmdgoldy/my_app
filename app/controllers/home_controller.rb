class HomeController < ApplicationController
  def index
    @articles = Article.all
  end

  def read
    @article = Article.where(id: params[:article_id]).first
  end

  def save_comment
    @article = Article.where(id: params[:article_id]).first
    comment = @article.comments.new
    comment.comment = params[:comment]
    if comment.save
      redirect_to read_path(article_id: @article.id, notice: 'Success')
    else
      redirect_to read_path(article_id: @article.id, notice: 'Error')
    end
  end

  def About
  end

  def search
    kata_kunci = params[:keyword]
    @article = Article.where("title LIKE '%#{kata_kunci}%'")
  end
end
