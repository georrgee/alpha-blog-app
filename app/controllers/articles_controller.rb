# a new action (looking for a new articles route)
class ArticlesController < ApplicationController
    
    def new
    @article = Article.new
    
    end
    
    def create
        #simply display what is submitted
        #render plain: params[:article].inspect
        
        @article = Article.new(article_params)
        
        if @article.save
            
            flash[:notice] = "Article was successfully created!"
            redirect_to article_path(@article)
        else
            render 'new' #render the new template again
        end
    end
    
    def show
       @article = Article.find(params[:id]) 
    end
    
    private
    
    #method
    def article_params
        params.require(:article).permit(:title, :description)
    end
    
end