class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.string :title,null: false
      t.text :text,null: false
      t.datetime :start_time
      t.string :image
      t.timestamps
    end
  end
end
