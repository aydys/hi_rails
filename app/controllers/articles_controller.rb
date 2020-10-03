class ArticlesController < ApplicationController
  def new
      
  end

  def create
    @articles = Article.new(article_params)
    if @articles.valid?
      @articles.save
    else
      render action: 'new'
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :text)
  end
end
