class CreateTablePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :body
      t.references :user, foreign_key: true
    end
  end
end
