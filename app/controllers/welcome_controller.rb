class WelcomeController < ApplicationController
    def hello
        puts "#" * 60
        @first_name = params[:first_name]
        puts "#" * 60
    end
end
