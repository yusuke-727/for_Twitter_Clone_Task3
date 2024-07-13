class Tweet < ApplicationRecord
  belongs_to :user
  validates :content, presence: true, length: { in: 1..140,
             too_long: "最大140文字です",
             too_short: "最小1文字です",
             }
end
