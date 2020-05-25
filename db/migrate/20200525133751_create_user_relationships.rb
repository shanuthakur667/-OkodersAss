class CreateUserRelationships < ActiveRecord::Migration[6.0]
  def change
    create_table :user_relationships do |t|
      t.references :user
      t.string :relation_type
      t.string :relationable_id
      t.timestamps
    end
  end
end
