class Task < ApplicationRecord
  validates :status, presence: true, length: { maximum: 255 }
  validates :task, presence: true, length: { maximum: 255 }
end
