class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.string :location
      t.date :date
      t.time :start_event
      t.time :end_event
      t.references :created_by, index: true, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
