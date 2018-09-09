class Deputy < ApplicationRecord

  scope :by_name, -> (query) {
    query = query.upcase
    where('deputies.full_name LIKE ?', "%#{query}%")
  }
end
