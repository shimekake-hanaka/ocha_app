class ContactMailer < ApplicationMailer
    def mail_to_user(contact_id)
        @contact = Contact.find(contact_id)
        mail(to: @contact.email, subject: "お問い合わせありがとうございます。")
    end
    def mail_to_staff(contact_id)
        @contact = Contact.find(contact_id)
        mail(to: "sakura.club.info@gmail.com", subject: "お問い合わせがありました。")
    end

end
