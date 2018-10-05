class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.datetime :date
      t.string :location
      t.string :home_team_name
      t.string :away_team_name

      t.timestamps
    end
  end
end
