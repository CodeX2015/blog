class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :author
      t.string :title
      t.text :body
      t.string :pic

      t.timestamps
    end
  end
end
