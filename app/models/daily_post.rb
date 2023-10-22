class DailyPost < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
 
  has_one_attached :img_main
  has_many_attached :images_sub

  paginates_per 5
end
