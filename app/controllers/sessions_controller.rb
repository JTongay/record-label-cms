class SessionsController < ApplicationController
    def new
    end
    
    def create
        member = Member.find_by_member_name(params[:session][:username])
        if member && member.authenticate(params[:session][:username])
            session[:member_id] = member.id
            redirect_to root_url
        else
            redirect_to sessions_route
        end        
    end 
    
    def destroy
        session[:member_id] = nil
        redirect_to root_url
    end    
end
