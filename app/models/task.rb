class Task < ApplicationRecord
    validates :category, :body, :deadline, presence: true
end
