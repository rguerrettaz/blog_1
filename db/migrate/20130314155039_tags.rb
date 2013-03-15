class Tags < ActiveRecord::Migration
  def change
    create_table(:tags) do |t|
      t.string :name, :null => false
      # t.references :post

      t.timestamps
    end
  end
end
