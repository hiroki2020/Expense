class AddImageNameToUserProgates < ActiveRecord::Migration[5.0]
  def change
    add_column :user_progates, :image_name, :string
  end
end
