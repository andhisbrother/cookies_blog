class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author
      t.string :email
      t.text :comment_body
      t.integer :post_id

      t.timestamps
    end
  end
end
