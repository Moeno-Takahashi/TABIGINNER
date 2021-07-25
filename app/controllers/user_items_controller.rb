class UserItemsController < ApplicationController
  def create
    @item = Item.find(params[:item_id])
    current_user.item_checked(@item)
  end

  def destroy
    @item = current_user.user_items.find(params[:id]).item
    current_user.item_unchecked(@item)
  end
end

