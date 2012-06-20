class AddTweakedAtToArticle < ActiveRecord::Migration
  def change
    add_column :articles, :tweaked_at, :datetime
  end
end
