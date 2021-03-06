class Upvote < ActiveRecord::Base

  belongs_to :user
  belongs_to :track

  validates :user, presence: true
  validates :track, presence: true, uniqueness: { scope: :user, message: "only one vote per user" }

end