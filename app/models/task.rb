class Task < ApplicationRecord
  belongs_to :project

  validates :status, inclusion: { in: ['not-started', 'in-progress', 'completed']}

  STATUS_OPTIONS = [
    ['Not Started', 'not started'],
    ['In porgress', 'in-progress'],
    ['Complete', 'complete']
  ]
end
