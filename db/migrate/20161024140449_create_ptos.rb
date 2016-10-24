class CreatePtos < ActiveRecord::Migration
  def change
    create_table :ptos do |t|
      t.string :image
      t.string :caption
      t.integer :owner_id

      t.timestamps

    end
  end
end
