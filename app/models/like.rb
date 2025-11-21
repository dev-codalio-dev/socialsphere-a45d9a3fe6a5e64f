# frozen_string_literal: true

class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post
  belongs_to :organization

  validates :user_id, uniqueness: { scope: :post_id }

  rhino_owner :organization
  rhino_references [ :user, :post, :organization ]
end
