class AddImagesToList < ActiveRecord::Migration
  def change
    add_column :lists, :images, :string
  end
end
