class ListsController < ApplicationController

    load_and_authorize_resource

    def index
        @lists = List.all
    end

    def show
        @list = List.find_by_id(params[:id])
    end

end
