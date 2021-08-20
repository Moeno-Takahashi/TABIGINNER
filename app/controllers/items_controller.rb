class ItemsController < ApplicationController
  def user_items
    user_plan
    @item = Item.new
    @my_item = current_user.items.my_item.includes([:user_items]) 
    @must_item = Item.must_item.includes([:user_items])
    @electronics_item = Item.electronics_item.includes([:user_items])
    @daily_necessities_item = Item.daily_necessities_item.includes([:user_items])
    @clothing_cold_item = Item.clothing_cold_item.includes([:user_items])
    @medicine_item = Item.medicine_item.includes([:user_items])
    @clothing_hot_item = Item.clothing_hot_item.includes([:user_items])
    @others_item = Item.others_item.includes([:user_items])
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      flash[:success] = t('.success')
      redirect_to user_items_path
    else
      flash[:danger] = t('.fail')
      redirect_to user_items_path
    end
  end

  def destroy
    @item = current_user.items.find(params[:id])
    @item.destroy!
    flash[:success] = t('.success')
    redirect_to user_items_path
  end

  private

  def item_params
    params.require(:item).permit(:user_id, :title, :body, :category_id)
  end
end


