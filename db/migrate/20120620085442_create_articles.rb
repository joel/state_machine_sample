class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :state
      t.string :previous_state
      t.string :owner
      t.datetime :published_at

      t.timestamps
    end
  end
end
