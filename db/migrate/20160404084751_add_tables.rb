class AddTables < ActiveRecord::Migration
  def change
  	create_table :users do |f|
  		f.string :username 
  		f.string :firstname
  		f.string :lastname
  		f.string :email
  		f.string :password
  		f.timestamps null: false
  	end

  	create_table :reservations do |f|
  		f.integer :user_id
  		f.integer :list_id
  		f.string :start
  		f.string :end
  		f.timestamps null: false
  	end

  	create_table :lists do |f|
  		f.integer :user_id
  		f.integer :rental
  		f.string :type
  		f.string :description
		f.timestamps null: false
  	end
  end
end
