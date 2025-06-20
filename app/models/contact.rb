class Contact < ApplicationRecord
  enum status: {
    new: 0,
    cooperation: 1,
    ended: 2
  }
end
