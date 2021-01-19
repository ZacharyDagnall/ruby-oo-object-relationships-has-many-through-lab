
class Patient
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

    def new_appointment(date, doctor)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select{|appt| appt.patient == self}
    end

    def doctors
        appointments.map(&:doctor)
    end

end
