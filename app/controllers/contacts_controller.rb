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
            return redirect_to complete_contacts_url
        end

        render :confirm
    end

    private

    def contact_params
        params.require(:contact).permit(:name, :email, :telephone, :content_inquiry)
    end

end