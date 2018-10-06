class ChangeTypeFieldNameToEventType < ActiveRecord::Migration[5.2]
  def change
    rename_column :match_events, :type, :event_type
    add_column :match_events, :event_author, :string
    add_column :match_events, :event_minute, :integer
  end
end
