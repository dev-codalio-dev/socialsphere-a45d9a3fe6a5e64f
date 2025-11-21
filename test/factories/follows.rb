# frozen_string_literal: true

FactoryBot.define do
  factory :follow do
    follower { nil }
    followed_user { nil }
    organization { nil }
  end
end
