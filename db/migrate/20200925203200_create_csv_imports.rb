class CreateCsvImports < ActiveRecord::Migration[6.0]
  def change
    create_table :csv_imports do |t|
      t.text :filename
      t.boolean :imported

      t.timestamps
    end
  end
end
