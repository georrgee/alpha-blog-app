class Article < ActiveRecord::Base
    
    belongs_to :user # 8/3/16 2:27PM
    
    #adding validations that enforce constraints
    
    #ensure that there is a title, otherwise it wont work
    validates :title, presence: true, length: {minimum: 3, maximum: 50}
    
    #ensure that there is a description
    validates :description, presence: true, length: {minimum: 10, maximum: 300}
    
    #length validation (code for top^^^)
    # validates :title, presence: true, length: {minimum:3, maximum: 50}
    # validates :description, presence: true, length: {minimum:10, maximum: 300}
    
    validates :user_id, presence: true #ensure that userID is present
end