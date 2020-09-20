['本', 'ファッション', '家電', '食品'].each do |category_name|
  category = Category.create!(name: category_name)

  case category_name
  when '本' then
    puts '===== 本 ====='
    [
      {
        name: '技術書',
        price: 3000,
        image: Pathname.new(Rails.root.join('db/images/book1.jpg')).open,
      },
      {
        name: 'ビジネス書',
        price: 2000,
        image: Pathname.new(Rails.root.join('db/images/book2.jpg')).open,
      },
      {
        name: '小説',
        price: 1000,
        image: Pathname.new(Rails.root.join('db/images/book3.jpg')).open,
      },
    ].each do |data|
      product = Product.create!(
        name: data[:name],
        price: data[:price],
        stock: 10,
        category: category
      )
      product.image = data[:image]
      product.save!
    end
  when 'ファッション' then
    puts '===== ファッション ====='
    [
      {
        name: 'ジャケット',
        price: 3000,
        image: Pathname.new(Rails.root.join('db/images/fashion1.jpg')).open,
      },
      {
        name: 'シャツ',
        price: 2000,
        image: Pathname.new(Rails.root.join('db/images/fashion2.jpg')).open,
      },
      {
        name: 'Tシャツ',
        price: 1000,
        image: Pathname.new(Rails.root.join('db/images/fashion3.jpg')).open,
      },
    ].each do |data|
      product = Product.create!(
        name: data[:name],
        price: data[:price],
        stock: 10,
        category: category
      )
      product.image = data[:image]
      product.save!
    end
  when '家電' then
    puts '===== 家電 ====='
    [
      {
        name: 'ヘッドフォン',
        price: 3000,
        image: Pathname.new(Rails.root.join('db/images/appliances1.jpg')).open,
      },
      {
        name: 'イヤホン',
        price: 2000,
        image: Pathname.new(Rails.root.join('db/images/appliances2.jpg')).open,
      },
      {
        name: '充電ケーブル',
        price: 1000,
        image: Pathname.new(Rails.root.join('db/images/appliances3.jpg')).open,
      },
    ].each do |data|
      product = Product.create!(
        name: data[:name],
        price: data[:price],
        stock: 10,
        category: category
      )
      product.image = data[:image]
      product.save!
    end
  when '食品' then
    puts '===== 食品 ====='
    [
      {
        name: 'ステーキ',
        price: 3000,
        image: Pathname.new(Rails.root.join('db/images/food1.jpg')).open,
      },
      {
        name: 'エビ',
        price: 2000,
        image: Pathname.new(Rails.root.join('db/images/food2.jpg')).open,
      },
      {
        name: 'トマト',
        price: 1000,
        image: Pathname.new(Rails.root.join('db/images/food3.jpg')).open,
      },
    ].each do |data|
      product = Product.create!(
        name: data[:name],
        price: data[:price],
        stock: 10,
        category: category
      )
      product.image = data[:image]
      product.save!
    end
  end
end
