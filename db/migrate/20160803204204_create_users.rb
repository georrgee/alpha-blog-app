class CreateUsers < ActiveRecord::Migration
  
  # creating the username and email for the 'users' table 
  # two fields are username and email
  
  def change
    create_table :users do |t|
      t.string :username
      t.string :email 
      t.timestamps
    end
  end
end
