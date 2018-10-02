class StickynoteController < ApplicationController
    def index
        @sticky = Sticky.new
        @sticky.body = params["body"]
        @sticky.save
        @stickynotes= Sticky.all
    end
end
