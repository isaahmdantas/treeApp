class CreateArvores < ActiveRecord::Migration[5.2]
  def change
    create_table :arvores do |t|
      t.string :nome

      t.timestamps
    end
  end
end
