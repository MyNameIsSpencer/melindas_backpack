class Backpack
  def initialize(attributes)
    @attributes = attributes # a hash containing day_of_week and weather keys
    @items = []
    prepare
  end

  def items
    @items
  end


  def prepare
    weather_items
    gym_shoes
    pack_lunch
  end

  def weather_items
    weather_today = @attributes[:weather]
    if weather_today == 'rainy'
      @items += ['pants', 'shirt', 'umbrella']
    elsif weather_today == 'cold'
      @items += ['pants', 'shirt', 'jacket']
    else
      @items += ['pants', 'shirt']
    end
  end

  def gym_shoes
    day_of_week = @attributes[:day_of_week]
    if day_of_week == 'monday' || day_of_week == 'thursday'
      @items << 'gym shoes'
    end
  end

  def pack_lunch
    day_of_week = @attributes[:day_of_week]
    if day_of_week != 'saturday' && day_of_week != 'sunday'
      @items << 'packed lunch'
    end
  end

  # Prints a summary packing list for Melinda's backpack
  def packing_summary
    output = []
    output << "Melinda, here's your packing list!"
    output << "Day: #{@attributes[:day_of_week]}, Weather: #{@attributes[:weather]}"
    output << ""

    @items.each do |item|
      output << "- #{item}"
    end
    output.join("\n")
  end

end
