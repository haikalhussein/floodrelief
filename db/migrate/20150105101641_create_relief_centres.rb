class CreateReliefCentres < ActiveRecord::Migration
  def change
    create_table :relief_centres do |t|
      t.string :name
      t.string :address
      t.string :gps_coordinate
      t.string :district
      t.string :mukim

      t.timestamps
    end
  end
end
