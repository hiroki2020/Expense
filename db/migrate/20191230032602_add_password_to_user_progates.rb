class AddPasswordToUserProgates < ActiveRecord::Migration[5.0]
  def change
    add_column :user_progates, :password, :string
  end
end
