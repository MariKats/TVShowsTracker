class CreateSeasons < ActiveRecord::Migration[5.1]
  def change
    create_table :seasons do |t|
      t.integer :show_id
      t.integer :number

      t.timestamps
    end
  end
end
