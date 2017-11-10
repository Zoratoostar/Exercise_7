
class PassengerCarriage < Carriage
  attr_reader :seats
  attr_reader :occupied_seats

  self.instances = 0

  def initialize(number, seats)
    super(number)
    @seats = seats.to_i
    validate!
    @occupied_seats = 0
  end

  def occupy_seat
    @occupied_seats += 1 if occupied_seats < seats
  end

  def vacant_seats
    seats - occupied_seats
  end

  def to_s
    "#{number}::#{seats} => #{vacant_seats}"
  end

  protected

  def validate!
    super
    raise "Число посадочных мест в вагоне должно быть указано." if seats.nil?
    instruction = "Введённое число посадочных мест некорректно."
    raise instruction if !(seats > 10 && seats < 110)
    true
  end
end
