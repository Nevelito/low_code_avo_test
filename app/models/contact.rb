class Contact < ApplicationRecord
  enum :status, {
    new_contact: 0,
    cooperation: 1,
    ended: 2
  }
end
