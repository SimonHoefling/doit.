class Task < ApplicationRecord
  belongs_to :category
  belongs_to :user
  belongs_to :requested_by, class_name: "User", foreign_key: "requested_by_id", optional: true

  validates :task_status, inclusion: { in: %w[available requested in_work done] }, allow_nil: true

  before_validation :set_default_task_status, on: :create

  def start_request(user)
    puts "start_request method called" # Add this line
    return false unless task_status == 'available'

    update(task_status: 'requested', requested_by: user)
  end

  def accept_request!
    return false unless task_status == 'requested'

    update(task_status: 'in_work')
  end

  def decline_request!
    return false unless task_status == 'requested'

    update(requested_by_id: nil, task_status: 'available')
    true
  end

  private

  def set_default_task_status
    self.task_status ||= "available"
  end
end
