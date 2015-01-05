class AddColumnInUsersTable < ActiveRecord::Migration
  def change
    add_column :users, :title, :string
    add_column :users, :contact_no, :string
    add_column :users, :district, :string
    add_column :users, :mukim, :string
  end
end