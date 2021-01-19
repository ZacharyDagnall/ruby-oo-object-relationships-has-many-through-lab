
class Appointment
    attr_accessor :date, :patient, :doctor
    @@all = []

    def initialize(date, patient, doctor)
        @date = date
        @patient = patient
        @doctor = doctor
        self.save
    end

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end
    
end
