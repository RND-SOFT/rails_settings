class CreateRailsSettings < ActiveRecord::Migration
  def change
    create_table :rails_settings do |t|
      t.timestamps
      
      t.string    :name
      t.text      :data
    end
  end
end
