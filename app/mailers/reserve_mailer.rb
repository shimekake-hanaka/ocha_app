class ReserveMailer < ApplicationMailer
    def mail_to_user(reserve_id)
        @reserve = Reserve.find(reserve_id)
        mail(to: @reserve.email, subject: "【茶道教室SAKURAクラブ】体験教室のご予約")
    end
    def mail_to_staff(reserve_id)
        @reserve = Reserve.find(reserve_id)
        mail(to: "sakura.club.info@gmail.com", subject: "体験教室のご予約がありました。")
    end

end
