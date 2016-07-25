# a new action (looking for a new articles route)
class ArticlesController < ApplicationController
    
    def new
    @article = Article.new
    
    end
    
    def create
        #simply display what is submitted
        #render plain: params[:article].inspect
        
        @article = Article.new(article_params)
        @article.save
        redirect_to articles_show(@article)
    end
    
    private
    
    #method
    def article_params
        params.require(:article).permit(:title, :description)
    end
    
end