class AddPostsTable < ActiveRecord::Migration[5.0]
  def change
    # migration 檔讓開發者可以不用寫 SQL 語言，
    # 直接用 ruby 語法即可在資料庫裡修改 schema
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.integer :user_id

      t.timestamps
  end
end
