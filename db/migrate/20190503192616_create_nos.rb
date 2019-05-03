class CreateNos < ActiveRecord::Migration[5.2]
  def change
    create_table :nos do |t|
      t.string :nome
      t.references :no, foreign_key: true

      t.timestamps
    end
  end
end
