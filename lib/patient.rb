class Patient

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all 
        @@all
    end

    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select do |appt|
            appt.patient == self
        end
    end

    def doctors
        appointments.map do |appt|
            appt.doctor
        end

    end
    
end


