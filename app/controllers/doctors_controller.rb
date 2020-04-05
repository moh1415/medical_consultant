class DoctorsController < ApplicationController
    def index
        @doctor = Doctor.all
    end
    def show
        @doctor = Doctor.find(params[:id])
      end
    def new
     @doctor = Doctor.new
    end
    def create
        @doctor = Doctor.create(doctor_params)
       
        if @doctor.save
            redirect_to @doctor
            else
                render 'new'
        end
        
      end
      def edit
        @doctor = Doctor.find(params[:id])
      end
      def update
        doctor = Doctor.find(params[:id])
        doctor.update(doctor_params)
          
        redirect_to doctor
      end
      def destroy
        Doctor.find(params[:id]).destroy
      
        redirect_to doctors_path
      end
      private 
      def doctor_params
          params.require(:doctor).permit(:full_name, :number, :specialization)
      end
      def find_doctor
        @doctor = Doctor.find(params[:id])
      end
end
