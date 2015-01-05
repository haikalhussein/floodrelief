class RenameColumnGoods < ActiveRecord::Migration
  def change
    rename_column :goods, :relief_centre_id_id, :relief_centre_id
    rename_column :goods, :contact_person_id_id, :contact_person_id
  end
end