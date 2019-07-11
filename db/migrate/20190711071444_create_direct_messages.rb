class CreateDirectMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :direct_messages do |t|
      t.references :sender, foreign_key: { to_table: :users }
      t.references :reciever, foreign_key: { to_table: :users }
      t.text :body

      t.timestamps
    end
  end
end
