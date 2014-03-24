class AddAdminToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean, default: false
    add_column :users, :coach, :boolean, default: false
    add_column :users, :athlete, :boolean, default: true
  end
end
