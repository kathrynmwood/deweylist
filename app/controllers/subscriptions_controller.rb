class SubscriptionsController < ApplicationController
    def create
        @user = current_user
        @list = List.find_by_id(params[:id])
        Subscription.create(user_id: @user.id, list_id: @list.id)
        redirect_to lists_path
    end

    def index
        @user = current_user
        @subscription = @user.subscriptions.all
    end

    def destroy
        @user = current_user
        Subscription.find(params[:id]).destroy
        redirect_to subscriptions_path
    end
end
