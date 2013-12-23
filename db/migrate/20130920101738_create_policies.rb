class CreatePolicies < ActiveRecord::Migration
  def change
    create_table :policies do |t|
      t.string :p_name
      t.string :p_code
      t.string :p_scope
      t.string :p_objective
      t.string :p_description
      t.integer :businessunit_id
      t.references :document
      t.references :user
      t.timestamps
    end
  end
end
