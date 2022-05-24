class CreateCaretakers < ActiveRecord::Migration[6.1]
  def change
    create_table :caretakers do |t|
      t.string :name

      t.timestamps
    end
  end
end
