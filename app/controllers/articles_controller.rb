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
    @article = Article.create(list_params)

    if @article.save
      redirect_to root_path, notice: 'Article was successfully created.'
    else
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end



  def update
    @article = Article.find(params[:id])
    @article.update(article_params)

    # no need for app/views/restaurants/update.html.erb
    redirect_to article_path(@article)
  end

  def destroy
    @article.destroy

    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def article_params
    params.require(@article).permit(:name)
  end

end
