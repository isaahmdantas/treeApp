class AddArvoreToNos < ActiveRecord::Migration[5.2]
  def change
    add_reference :nos, :arvore, foreign_key: true
  end
end
