class StickynoteController < ApplicationController
    def index
        @sticky = Sticky.new
        @sticky.body = params["body"]
        @sticky.category_id= params["catid"]
        @sticky.save
        @todonotes= Sticky.where(category_id: "1")
        @doingnotes= Sticky.where(category_id: "2")
        @donenotes= Sticky.where(category_id: "3")
        
    end
end
