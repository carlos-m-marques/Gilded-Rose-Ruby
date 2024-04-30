require_relative 'item'

class NormalItem < Item
  def tick
    @days_remaining -= 1
    return if quality.zero?

    @quality -= 1
    @quality -= 1 if @days_remaining <= 0
  end
end