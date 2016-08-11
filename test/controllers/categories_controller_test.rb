require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
    
    def setup
        
        @category = Category.create(name: "sports")
        @user = User.create(username: "john", email: "john@example.com", password: "password", admin: "true")
    
    end
    
    test "should get categories index" do
       # get index and ensure that the response you get is success (getting index_)
       get :index
       assert_response :success 
    
    end
    
    test "should get new" do
        session[:user_id] = @user.id #setting the user id for the session @ id which is john (Simulating)
        get :new
        assert_response :success
            
    end
    
    test "should get show" do
        
        get(:show, {'id' => @category.id}) #generate the route for showing this category
        assert_response :success
        
    end
    
    test "should redirect create when admin not logged in" do # there is no logged in user
       
       assert_no_difference 'Category.count' do
           post :create, category: {name: "sports"}
       end
       assert_redirected_to categories_path
       
    end
    
end