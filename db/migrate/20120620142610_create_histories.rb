class CreateHistories < ActiveRecord::Migration
  def change
    create_table :histories do |t|
      t.integer :article_id
      t.string :owner
      t.string :previous_state
      t.string :state

      t.timestamps
    end
  end
end
