require 'test_helper' # require to have this line of code

class CategoryTest < ActiveSupport::TestCase
    
   def setup
        # @category is an instance variable
        @category = Category.new(name: "sports") 
   end

    test "category should be valid" do
        
        #an assertion
        assert @category.valid?
        
    end
    
    test "name should be present" do
       
       @category.name = " "
       
       #if this is not valid then...
        assert_not @category.valid? #if this returns true then test will fail; expecting a fail
    end
    
    test "name should be unique" do
       
       @category.save
       category2 = Category.new(name: "sports")
       assert_not category2.valid? # category2 should not be valid because sports already existed
    end
    
    test "name should not be too long" do
        
        @category.name = "a" * 26
        assert_not @category.valid?
    end
    
    test "name should not be too short" do
        
        @category.name = "aa" 
        assert_not @category.valid?
    end
    
end