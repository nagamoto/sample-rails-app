class CreateDirectMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :direct_messages do |t|
      t.references :sender, foreign_key: true
      t.references :reciever, foreign_key: true
      t.text :body

      t.timestamps
    end
  end
end
