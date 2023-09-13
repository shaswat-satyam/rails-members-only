class Post < ApplicationRecord
  belongs_to :user
  validates:heading, length: {minimum: 1}
end
