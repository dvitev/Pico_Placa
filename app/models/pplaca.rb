class Pplaca < ApplicationRecord
	validates :placa, presence: true,
                    length: { minimum: 8 }
end
