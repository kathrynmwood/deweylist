class SubscriptionsController < ApplicationController
    def create
        @user = current_user
        @list = List.find_by_id(params[:id])
        Subscription.create(user_id: @user.id, list_id: @list.id)
    end
end
