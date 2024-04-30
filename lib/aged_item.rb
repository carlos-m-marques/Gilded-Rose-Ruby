require_relative 'item'

class AgedItem < Item
  def tick
    @days_remaining -= 1
    return if @quality >= 50

    @quality += 1
    @quality = 50 if @quality > 50
    if @days_remaining <= 0
      @quality += 1
      @quality = 50 if @quality > 50
    end
  end
end