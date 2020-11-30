class Evaluation < ApplicationRecord
    validates :score, presence: true, numericality: {greater_than_or_equal_to: 0, less_than_or_equal_to: 100}
end
