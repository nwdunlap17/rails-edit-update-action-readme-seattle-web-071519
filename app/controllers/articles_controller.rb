class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new
    @article.title = params[:title]
    @article.description = params[:description]
    @article.save
    redirect_to article_path(@article)
  end

  # add edit and update methods here
  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    # byebug
    @article.title = params[:article][:title]
    @article.description = params[:article][:description]
    @article.save
    redirect_to article_path(@article.id)
  end
end
