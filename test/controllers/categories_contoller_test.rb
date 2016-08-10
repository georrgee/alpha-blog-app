require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
    
    def setup
        
        @category = Category.create(name: "sports")
    
    end
    
    test "should get categories index" do
       # get index and ensure that the response you get is success (getting index_)
       get :index
       assert_response :success 
    
    end
    
    test "should get new" do
        
        get :new
        assert_response :success
            
    end
    
    test "should get show" do
        
        get(:show, {'id' => @category.id}) #generate the route for showing this category
        assert_response :success
        
    end
    
end