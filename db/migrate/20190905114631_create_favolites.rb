class CreateFavolites < ActiveRecord::Migration[5.2]
  def change
    create_table :favolites do |t|
      t.references :user, foreign_key: true
      t.references :favo, foreign_key: { to_table: :users }

      t.timestamps
      
      t.index [:user_id, :favo_id], unique: true
    end
  end
end
