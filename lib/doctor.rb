
class Doctor
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        self.save
    end

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end

    def appointments
        Appointment.all.select{|appt| appt.doctor == self}
    end
    
    def new_appointment(date,patient)
        Appointment.new(date, patient, self)
    end

    def patients
        appointments.map(&:patient)
    end

end