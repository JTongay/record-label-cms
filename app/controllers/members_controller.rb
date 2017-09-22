class MembersController < ApplicationController
    def index

    end

    def new
        @member = Member.new
    end

    def create
        if params[:password] == params[:password_confirmation]
           @member = Member.create(member_params)
           if @member.save
               session[:member_id] = @member.id
               redirect_to root_url, notice: "#{@member.member_name} was created" 
           end 
        else
            redirect_to new_member_path
        end
    end 

    def show

    end

    def destroy

    end     

    private
    def member_params
        params.require(:member).permit(:member_name, :password, :password_confirmation)
    end    
end
