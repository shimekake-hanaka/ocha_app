class Contact < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true
    validates :telephone, presence: true
    validates :content_inquiry, presence: true

    private
    def email_format
        return if /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
        errors.add(:email, "の形式が正しくありません")
    end


end
