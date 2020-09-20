class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :categories, comment: 'カテゴリー' do |t|
      t.string :name, null: false, comment: 'カテゴリー名'
      t.timestamps null: false
    end

    create_table :products, comment: '商品' do |t|
      t.string :name, null: false, comment: '商品名'
      t.integer :price, null: false, comment: '金額'
      t.integer :stock, null: false, default: 0, comment: '在庫'
      t.string :image, comment: '商品画像'
      t.belongs_to :category
      t.timestamps null: false
    end
  end
end
