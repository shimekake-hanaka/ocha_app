class Contact < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true
    validates :telephone, presence: true, length: { maximum: 11 }
    validates :content_inquiry, presence: true

    validate :email_format
    validate :telephone_format

    private

    # メールアドレスの形式チェックメソッド
    def email_format
        return if /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.match?(email)
        
        errors.add(:email, "の形式が正しくありません")
    end

    # 電話番号のフォーマット自動調整？？
    def telephone_format
        return if telephone.blank?

        self.telephone = telephone.tr('０-９', '0-9').delete('^0-9')
    end


end
