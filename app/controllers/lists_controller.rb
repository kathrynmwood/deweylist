class ListsController < ApplicationController

    load_and_authorize_resource

    def index
        @lists = List.all
    end

    def show
        @list = List.find_by_id(params[:id])
    end

    def new
        @user = current_user
        @list = List.new
    end

    def create

    end

end
