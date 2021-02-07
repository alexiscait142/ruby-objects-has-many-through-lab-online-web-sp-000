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

  def new_appointment(doctor, date)
    Appointment.new(self, doctor,date)
  end

  def appointments
    Appointment.all { |appointment| appointment.patient == self }
  end

  def doctors
    appointments.map { |appointment|appointment.patient}
  end
end
