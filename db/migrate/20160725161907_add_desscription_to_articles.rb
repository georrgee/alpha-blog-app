class AddDesscriptionToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :description, :text #table name: "articles", name of attribute, text
    
    add_column :articles, :created_at, :datetime #table name,created_at(rails will detect this) ,type = date and time
    add_column :articles, :updated_at, :datetime #table name, updated_at (rails detect), type = date and time
  end
end
