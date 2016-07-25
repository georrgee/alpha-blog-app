class Article < ActiveRecord::Base
    
    #adding validations that enforce constraints
    
    #ensure that there is a title, otherwise it wont work
    validates :title, presence: true, length: {minimum: 3, maximum: 50}
    
    #ensure that there is a description
    validates :description, presence: true, length: {minimum: 10, maximum: 300}
    
    #length validation (code for top^^^)
    # validates :title, presence: true, length: {minimum:3, maximum: 50}
    # validates :description, presence: true, length: {minimum:10, maximum: 300}
end