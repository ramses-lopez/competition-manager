class RemoveTimestampFromMatchEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :match_events, :timestamp
  end
end
