class CreatePackagings < ActiveRecord::Migration[5.2]
  def change
    create_table :packagings do |t|
      t.string :date
      t.string :name
      t.text :image

      t.timestamps
    end
  end
end
