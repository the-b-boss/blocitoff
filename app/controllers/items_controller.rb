class ItemsController < ApplicationController

  def new
    @user = current_user
    @item = Item.new 
#    authorize @item
  end

  def create
    @user = current_user
    @items = @user.items

    @item = current_user.items.build( items_params )
    @new_item = Item.new
    
#    authorize @item
    if @item.save
      flash[:notice] = "New to-do item created."
    else
      flash[:error] = "There was an error creating your to-do. Please try again."
    end

    respond_to do |format|
      format.html
      format.js
    end

  end

  private

  def items_params
    params.require(:item).permit(:name)
  end

end
