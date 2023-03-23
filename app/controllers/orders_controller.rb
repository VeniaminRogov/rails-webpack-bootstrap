class OrdersController < ApplicationController
    def create
        @user = User.find(params[:user_id])
        @order = @user.orders.create(order_params)

        redirect_to user_path(@user)
    end

    def edit
        @order = Order.find(params[:id])
    end

    def update
         @order = Order.find(params[:id])
        if @order.update(order_params)
            redirect_to user_path(@order.user_id)
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @user = User.find(params[:user_id])
        @user.orders.destroy(params[:id])

        redirect_to user_path(params[:user_id])
    end

    private
        def order_params
            params.require(:order).permit(:theme, :text)
        end
end
