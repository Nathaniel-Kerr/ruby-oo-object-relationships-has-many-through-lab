class Doctor
    
    attr_accessor :name, :appointment
    attr_reader 

    @@all = []

    def initialize(name)
        @name = name
        @appointments = []
        @@all << self
    end
    
    def self.all
        @@all
    end

    def appointments
        Appointment.all.select {|app|
        app.doctor == self}
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self) 
    end
    
    def patients
        appointments.map {|app| 
        app.patient}
    end 
end