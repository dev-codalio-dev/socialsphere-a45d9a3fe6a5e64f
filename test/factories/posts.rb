# frozen_string_literal: true

FactoryBot.define do
  factory :post do
    user { nil }
    content { "MyText" }
    organization { nil }
  end
end
