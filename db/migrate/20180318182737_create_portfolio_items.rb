class CreatePortfolioItems < ActiveRecord::Migration[5.1]
  def change
    create_table :portfolio_items do |t|
      t.string :name
      t.string :demo
      t.string :github
      t.string :img_url
      t.text :description

      t.timestamps
    end
  end
end
