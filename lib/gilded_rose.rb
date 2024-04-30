require_relative 'item'
require_relative 'normal_item'
require_relative 'aged_item'
require_relative 'backstage_pass'
require_relative 'conjured_item'
require_relative 'legendary_item'

class GildedRose
  def initialize(items)
    @items = items
  end

  def tick
    @items.each(&:tick)
  end

  def self.create_item(name:, days_remaining:, quality:)
    case name
    when /Aged/
      AgedItem.new(name: name, days_remaining: days_remaining, quality: quality)
    when /Backstage passes/
      BackstagePass.new(name: name, days_remaining: days_remaining, quality: quality)
    when /Conjured/
      ConjuredItem.new(name: name, days_remaining: days_remaining, quality: quality)
    when /Legendary/
      LegendaryItem.new(name: name, days_remaining: days_remaining, quality: quality)
    else
      NormalItem.new(name: name, days_remaining: days_remaining, quality: quality)
    end
  end
end