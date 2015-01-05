class CreateUserReliefs < ActiveRecord::Migration
  def change
    create_table :user_reliefs do |t|
      t.belongs_to :user, index: true
      t.belongs_to :relief_centre, index: true
      t.timestamps
    end
  end
end
