# adding validations
class User < ActiveRecord::Base
    
    has_many :articles
    before_save { self.email = email.downcase } 
    #before the user hits the database, it will take the email value and turn it into lowercase
    # then save it to the database
    
    validates :username, presence: true, 
            uniqueness: {case_sensitive: false}, 
            length: {minimum: 3, maximum: 25} 
    # ensure the username is present, length
    
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    
    validates :email, presence: true, length: {maximum: 105},
            uniqueness: {case_sensitive: false},
            format: {with: VALID_EMAIL_REGEX}
    
end