class PagesController < ApplicationController
   
   def home
       redirect_to articles_path if logged_in? # if user is logged in, redirected to articles
   end
   
   def about
       
   end
   
   
    
end