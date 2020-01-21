class PutsController < ApplicationController
  def index
    @puts = Put.all
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

  private
  def put_params
    params.require(:put).permit(:image,:name,:bestby_date_y,:bestby_date_m,:bestby_date_d,:expiration_date_y,:expiration_date_m,:expiration_date_d,:category,:type, :count, :memo)
  end

end
