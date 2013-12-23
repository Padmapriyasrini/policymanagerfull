class CreateBusinessunits < ActiveRecord::Migration
  def change
    create_table :businessunits do |t|
      t.string :b_name
      t.string :b_site
      t.string :b_area
      t.string :b_city
      t.string :b_state
      t.string :b_country
      t.string :time_zone
      t.timestamps
    end
  end
end
