class PutsController < ApplicationController
  def index
    @puts_1 = Put.where(category: "1").order('created_at DESC')
    @puts_2 = Put.where(category: "2").order('created_at DESC')
    @puts_3 = Put.where(category: "3").order('created_at DESC')
    @puts_4 = Put.where(category: "4").order('created_at DESC')
    @puts_5 = Put.where(category: "5").order('created_at DESC')
    @puts_6 = Put.where(category: "6").order('created_at DESC')
    @puts_7 = Put.where(category: "7").order('created_at DESC')
    @puts_8 = Put.where(category: "8").order('created_at DESC')
    @puts_9 = Put.where(category: "9").order('created_at DESC')
    @puts_10 = Put.where(category: "10").order('created_at DESC')
    @puts_11 = Put.where(category: "11").order('created_at DESC')
  end

  def new
    @put = Put.new
  end

  def create
    @put = Put.new(put_params)
    @put.user_id = current_user.id
    if @put.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show
  end

  private
  def put_params
    params.require(:put).permit(:image,:name,:bestby_date_y,:bestby_date_m,:bestby_date_d,:expiration_date_y,:expiration_date_m,:expiration_date_d,:category,:type, :count, :memo)
  end

end
