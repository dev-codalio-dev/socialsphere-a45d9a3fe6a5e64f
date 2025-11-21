# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post
  belongs_to :organization

  validates :content, presence: true

  rhino_owner :organization
  rhino_references [ :user, :post, :organization ]
end
