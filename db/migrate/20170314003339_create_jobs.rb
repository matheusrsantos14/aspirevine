class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :company_name
      t.string :location
      t.text :company_info
      t.integer :company_size
      t.string :industry

      t.timestamps
    end
  end
end
