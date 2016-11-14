class CreateDefinitions < ActiveRecord::Migration[5.0]
  def change
    create_table :definitions do |t|
      t.text :definition
      t.integer :word_id

      t.timestamps
    end
  end
end
