class ContactsController < ApplicationController
    def new
        @contact = Contact.new
    end

    def confirm
        @contact = Contact.new(contact_params)
        return render :new if @contact.invalid?
        @contact.valid?
    end

    def create
        @contact = Contact.new(contact_params)
        return render :new if params[:button] == "back"
        if @contact.save
            ContactMailer.mail_to_user(@contact.id).deliver_now
            ContactMailer.mail_to_staff(@contact.id).deliver_now
            return redirect_to complete_contacts_url
        end

        render :confirm
    end

    private

    def contact_params
        params.require(:contact).permit(:name, :email, :telephone, :content_inquiry)
    end

end