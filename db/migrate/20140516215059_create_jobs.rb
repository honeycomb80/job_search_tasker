class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :jobtitle
      t.string :company
      t.string :formatted_location
      t.string :snippet
      t.string :url
      t.decimal :lat
      t.decimal :long
      t.integer :jobkey

      t.timestamps
    end
  end
end
