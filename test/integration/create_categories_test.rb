require 'test_helper'

#integration test 

class CreateCategoriesTest < ActionDispatch::IntegrationTest
   
   test "get new category form and create category" do
      
      get new_category_path
      assert_template 'categories/new'
      assert_difference 'Category.count', 1 do #there should be a difference of category 1
        post_via_redirect categories_path, category: {name: "sports"}
    end
       assert_template 'categories/index'
       assert_match "sports", response.body
   end
    
    test "invalid category submission results in failure" do
    
    get new_category_path
      assert_template 'categories/new'
      assert_no_difference 'Category.count'do # 
        post categories_path, category: {name: " "} # not redirecting
    end
       assert_template 'categories/new'
       assert_select 'h2.panel-title' # look for the h2 and div classes
       assert_select 'div.panel-body' # dot then the name of the class
    end
    
    
end