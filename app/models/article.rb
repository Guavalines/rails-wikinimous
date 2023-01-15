class Article < ApplicationRecord
  validates :title, uniqueness: true, presence: true
end
