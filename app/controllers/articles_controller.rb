# a new action (looking for a new articles route)
class ArticlesController < ApplicationController
    before_action :set_article, only: [:edit, :update, :show, :destroy]
    
    def index
        @articles = Article.all #gets all the articles in the database
    end
    
    def new
    @article = Article.new
    
    end
    
    def edit
        
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
    
    def update
        
        
        if @article.update(article_params)
            flash[:notice] = "Article was successfully updated!"
            redirect_to article_path(@article)
        else
            render 'edit'
        end
    end
    
    def show
        
    end
    
    def destroy
        
        @article.destroy
        flash[:notice] = "Article was successfully deleted"
        redirect_to articles_path
    end
    
    
    private
    
    #method
    def article_params
        params.require(:article).permit(:title, :description)
    end
    
    def set_article
       
       @article = Article.find(params[:id])
        
    end
    
end