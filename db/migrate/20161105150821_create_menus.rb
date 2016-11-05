class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :content
      t.string :media

      t.timestamps null: false
    end
  end
end
