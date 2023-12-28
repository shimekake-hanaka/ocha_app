class ReservesController < ApplicationController
    def new
        @reserve = Reserve.new
    end

    def confirm
        @reserve = Reserve.new(reserve_params)
        return render :new if @reserve.invalid?
        @reserve.valid?
    end

    def create
        @reserve = Reserve.new(reserve_params)
        return render :new if params[:button] == "back"
        if @reserve.save
            ReserveMailer.mail_to_user(@reserve.id).deliver_now
            ReserveMailer.mail_to_staff(@reserve.id).deliver_now
            return redirect_to complete_reserves_url
        end

        render :confirm
    end

    private

    def reserve_params
        params.require(:reserve).permit(:name, :email, :telephone, :content_inquiry, :reserve_date1, :reserve_date2, :reserve_date3)
    end

end