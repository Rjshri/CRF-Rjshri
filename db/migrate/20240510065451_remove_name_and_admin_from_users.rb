class RemoveNameAndAdminFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :name, :string
    remove_column :users, :admin, :boolean
  end
end
