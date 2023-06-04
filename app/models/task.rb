class Task < ApplicationRecord
  belongs_to :category
  belongs_to :user
  belongs_to :requested_by, class_name: "User", foreign_key: "requested_by_id", optional: true

  validates :task_status, inclusion: { in: %w[available requested in_work done] }, allow_nil: true

  before_validation :set_default_task_status, on: :create

  private

  def set_default_task_status
    self.task_status ||= "available"
  end
end
