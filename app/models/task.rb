class Task < ApplicationRecord
  belongs_to :customer

  enum :contact_type, {
    phone: 0,
    email: 1,
    meeting: 2,
    other: 3
  }

  enum :status, {
    scheduled: 0,
    done: 1,
    postponed: 2
  }
end
