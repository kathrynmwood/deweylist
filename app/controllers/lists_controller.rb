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
        @user = current_user
        @list = @user.lists.build(list_params)
    end

    private
    def list_params
        params.require(:list).permit(:title, :description, :price, :organization, :organization_description, :organization_url, :image_url)
    end

end
