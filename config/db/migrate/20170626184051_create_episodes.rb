class CreateEpisodes < ActiveRecord::Migration[5.1]
  def change
    create_table :episodes do |t|
      t.integer :season_id
      t.integer :season_number
      t.integer :number
      t.string :name
      t.boolean :watched, default: false

      t.timestamps
    end
  end
end
