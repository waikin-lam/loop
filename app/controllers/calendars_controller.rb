class CalendarsController < ApplicationController
    
    def new
        render 'calendars/new', :layout => 'calendar'
    end
    
end