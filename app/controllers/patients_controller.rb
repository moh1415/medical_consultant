class PatientsController < ApplicationController
    def index
        @patient = Patient.all
    end
    def show
        @patient = Patient.find(params[:id])
      end
    def new
     @patient = Patient.new
    end
    def create
        @patient =Patient.create(patient_params)
       
        if @patient.save
            redirect_to @patient
            else
                render 'new'
        end
        # redirect_to artists_path
      end
      def edit
        @patient = Patient.find(params[:id])
      end
      def update
        patient = Patient.find(params[:id])
        patient.update(patient_params)
          
        redirect_to patient
      end
      def destroy
        Patient.find(params[:id]).destroy
      
        redirect_to patients_path
      end
      private 
      def patient_params
          params.require(:patient).permit(:full_name, :phone_number, :age)
      end
      def find_patient
        @patient = Patient.find(params[:id])
      end
end
