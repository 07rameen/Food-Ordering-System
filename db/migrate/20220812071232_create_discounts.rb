class CreateDiscounts < ActiveRecord::Migration[6.1]
  def change
    create_table :discounts do |t|
      t.integer :rate
      t.string :expirationDate
      t.references :discountable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
