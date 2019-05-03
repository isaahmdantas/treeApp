class No < ApplicationRecord
  belongs_to :no, optional: true
  belongs_to :arvore, optional: true

  has_many :nos 
end
