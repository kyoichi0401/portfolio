class AddConferenceRefToUsers < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :conference, null: true, foreign_key: true
  end
end
