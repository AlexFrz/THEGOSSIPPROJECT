class HomeController < ApplicationController
    def welcome
        puts Gossip.all
    end
end
