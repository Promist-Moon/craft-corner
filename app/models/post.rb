class Post < ApplicationRecord
  belongs_to :user
  belongs_to :topic
  has_many :comments, dependent: :destroy
  enum post_type: { challenge: "Challenge", tutorial: "Tutorial" }
end
