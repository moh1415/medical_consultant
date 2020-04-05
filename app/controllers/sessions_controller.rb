class SessionsController < ApplicationController
    
        def index
            @session = Session.all
        end
        def show
            @session = Session.find(params[:id])
          end
        def new
         @session = Session.new
        end
        def create
            @session = Session.create(session_params)
            # @session.patient_id = Patient.find(params[:id])
            if @session.save
                redirect_to @session
                else
                    render 'new'
            end
            
          end
          def edit
            @session = Session.find(params[:id])
          end
          def update
            session = Session.find(params[:id])
            session.update(session_params)
              
            redirect_to session
          end
          def destroy
            Session.find(params[:id]).destroy
          
            redirect_to sessions_path
          end
          private 
          def session_params
              params.require(:session).permit(:title, :description, :Response ,:date,:doctor_id,:patient_id)
          end
          def find_session
            @session = Session.find(params[:id])
          end
    end
    

