class DailyPost < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
  validates :img_main, presence: true

  has_one_attached :img_main
  has_many_attached :images_sub

end
