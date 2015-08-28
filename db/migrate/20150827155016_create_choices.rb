class CreateChoices < ActiveRecord::Migration
  def change
 create_table :choices do |t|
      t.references :question
      t.text :option

      t.timestamps null: false
    end
  end
end
