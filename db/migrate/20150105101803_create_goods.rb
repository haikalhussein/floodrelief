class CreateGoods < ActiveRecord::Migration
  def change
    create_table :goods do |t|
      t.string :item
      t.string :quantity
      t.date :received_date
      t.string :received_from
      t.belongs_to :relief_centre_id
      t.belongs_to :contact_person_id

      t.timestamps
    end
  end
end
