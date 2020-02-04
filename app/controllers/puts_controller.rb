class PutsController < ApplicationController
  before_action :move_to_top

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
    @puts_12 = Put.where(category: "12").order('created_at DESC')
    @puts_13 = Put.where(category: "13").order('created_at DESC')
    @puts_14 = Put.where(category: "14").order('created_at DESC')
    @puts_15 = Put.where(category: "15").order('created_at DESC')
    @puts_16 = Put.where(category: "16").order('created_at DESC')
    @puts_17 = Put.where(category: "17").order('created_at DESC')
    @puts_18 = Put.where(category: "18").order('created_at DESC')
    @puts_19 = Put.where(category: "19").order('created_at DESC')
    @puts_20 = Put.where(category: "20").order('created_at DESC')
    @puts_21 = Put.where(category: "21").order('created_at DESC')
    @puts_22 = Put.where(category: "22").order('created_at DESC')
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
    @put = Put.find(params[:id])
  end

  def edit
    @put = Put.find(params[:id])
  end

  def update
    @put = Put.find(params[:id])
    if Put.update(update_params)
      redirect_to(root_path)
    else
      render :edit
    end
  end

  def destroy
    @put = Put.find(params[:id])
    if @put.destroy
      redirect_to(root_path)
    else
      redirect_to :show
    end
  end

  def top
  end

  def search
    @puts = current_user.puts.search(params[:keyword])
    respond_to do |format|
      format.html
      format.json
    end
  end

  def refrigerator_meat
    @puts_1 = Put.where(category: "1").order('created_at DESC')
  end

  def refrigerator_vegetable
    @puts_2 = Put.where(category: "2").order('created_at DESC')
  end

  def refrigerator_fish
    @puts_3 = Put.where(category: "3").order('created_at DESC')
  end

  def refrigerator_fruit
    @puts_4 = Put.where(category: "4").order('created_at DESC')
  end

  def refrigerator_bread
    @puts_5 = Put.where(category: "5").order('created_at DESC')
  end

  def refrigerator_rice
    @puts_6 = Put.where(category: "6").order('created_at DESC')
  end

  def refrigerator_milk
    @puts_7 = Put.where(category: "7").order('created_at DESC')
  end

  def refrigerator_desert
    @puts_8 = Put.where(category: "8").order('created_at DESC')
  end

  def refrigerator_drink
    @puts_9 = Put.where(category: "9").order('created_at DESC')
  end

  def refrigerator_spice
    @puts_10 = Put.where(category: "10").order('created_at DESC')
  end

  def refrigerator_other
    @puts_11 = Put.where(category: "11").order('created_at DESC')
  end

  def freezer_meat
    @puts_12 = Put.where(category: "12").order('created_at DESC')
  end

  def freezer_vegetable
    @puts_13 = Put.where(category: "13").order('created_at DESC')
  end

  def freezer_fish
    @puts_14 = Put.where(category: "14").order('created_at DESC')
  end

  def freezer_fruit
    @puts_15 = Put.where(category: "15").order('created_at DESC')
  end

  def freezer_bread
    @puts_16 = Put.where(category: "16").order('created_at DESC')
  end

  def freezer_icefood
    @puts_17 = Put.where(category: "17").order('created_at DESC')
  end

  def freezer_milk
    @puts_18 = Put.where(category: "18").order('created_at DESC')
  end

  def freezer_desert
    @puts_19 = Put.where(category: "19").order('created_at DESC')
  end

  def freezer_drink
    @puts_20 = Put.where(category: "20").order('created_at DESC')
  end

  def freezer_icespice
    @puts_21 = Put.where(category: "21").order('created_at DESC')
  end

  def freezer_other
    @puts_22 = Put.where(category: "22").order('created_at DESC')
  end

  private
  def put_params
    params.require(:put).permit(:image,:name,:bestby_date_y,:bestby_date_m,:bestby_date_d,:expiration_date_y,:expiration_date_m,:expiration_date_d,:category,:type, :count, :memo)
  end

  def update_params
    params.require(:put).permit(:bestby_date_y,:bestby_date_m,:bestby_date_d,:expiration_date_y,:expiration_date_m,:expiration_date_d,:category,:type, :count, :memo)
  end

  def move_to_top
    render top_puts_path unless user_signed_in?
  end
end
