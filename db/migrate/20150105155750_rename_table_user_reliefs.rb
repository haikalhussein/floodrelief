class RenameTableUserReliefs < ActiveRecord::Migration
  def change
    create_join_table :users, :relief_centres, column_options: {null: true} do |t|
          # t.index [:person_id, :community_id]
          # t.index [:community_id, :person_id]
    end
    drop_table :user_reliefs
  end
  
end