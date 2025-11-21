# frozen_string_literal: true

class Follow < ApplicationRecord
  belongs_to :follower, class_name: "User"
  belongs_to :followed_user, class_name: "User"
  belongs_to :organization

  validates :follower_id, uniqueness: { scope: :followed_user_id }
  validate :cannot_follow_self

  def cannot_follow_self
    if follower_id == followed_user_id
      errors.add(:base, "User cannot follow themselves")
    end
  end

  rhino_owner :organization
  rhino_references [ :follower, :followed_user, :organization ]
end
