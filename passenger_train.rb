
class PassengerTrain < Train
  def hitch_carriage(car)
    super(car) if car.class == PassengerCarriage
  end

  def to_s
    "#{unique_number}_pssngr_#{carriages.count}"
  end
end
