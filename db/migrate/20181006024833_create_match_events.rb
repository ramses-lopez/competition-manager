class CreateMatchEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :match_events do |t|
      t.references :match
      t.datetime :timestamp, default: -> { 'CURRENT_TIMESTAMP' }
      t.string :type

      t.timestamps
    end
  end
end
