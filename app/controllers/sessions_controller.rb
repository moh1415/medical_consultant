class SessionsController < ApplicationController
        before_action :authenticate_user!, only: [:new,:index,:show,:edit,:edit_doc]
        def index
          # to handle the role when it login
          if current_user.is_role == "patient"
            @session = Session.where(:patient_id => current_user)
        
          elsif current_user.is_role == "doctor"
            @session = Session.where(:user_id => current_user)
           end
          
          
        end
        
        def show
            @session = Session.find(params[:id])
          end
        def new
         @session = Session.new
        end
        def create
          # to create new session for patient
          @session = Session.new(session_params)
          @session.patient_id = current_user.id
            if @session.save
                redirect_to @session
                else
                    render 'new'
            end
            
          end
          def edit
            @session = Session.find(params[:id])
          end
          def edit_doc
            @session = Session.find(params[:id])
            
          end
          def update
           
            session = Session.find(params[:id])
            session.update(session_params)
            # to get the patient phone number to use for send sms 
            if current_user.is_role == "doctor"
            @phone_number = Session.find(params[:id])
            @user_patient = User.find(@phone_number.id)
            phone_number1 = @user_patient.phone_number
            # api call to nexmo 
            require 'nexmo'
            
            msg = "You Have New Reply from your session #{session.title}"
            client = Nexmo::Client.new(
              api_key: "6872bf3f",
              api_secret: API_SECRET
            )
  
            client.sms.send(
              from: "Medical Consultant",
              to: "966#{phone_number1}",
              text: msg
            )
            end
            redirect_to session
          end
          def destroy
            Session.find(params[:id]).destroy
          
            redirect_to sessions_path
          end
          private 
          def session_params
              params.require(:session).permit(:title, :description, :Response ,:date,:user_id,:patient_id,:file)
          end
          def find_session
            @session = Session.find(params[:id])
          end
    end
    

