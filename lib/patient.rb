class Patient


    attr_accessor :name, :appointment

    @@all = []

    def initialize(name)
        @name = name
        @appointment = appointment
        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select {|app|
        app.patient == self}
    end

    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end

    def doctors
        appointments.map {|app| 
        app.doctor}
    end
end