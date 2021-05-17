class CreateBanners < ActiveRecord::Migration[6.1]
  def change
    create_table :banners do |t|
      t.text :description

      t.timestamps
    end
  end
end
