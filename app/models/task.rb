class Task < ApplicationRecord
  validates :title, presence: true

  def completed?
    completed
  end

  def completed!
    self.completed = true
  end
end
