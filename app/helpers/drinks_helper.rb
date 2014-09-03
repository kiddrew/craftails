module DrinksHelper
  def drink_image image_url
    if image_url.present?
      return image_tag image_url, :class => "img-polaroid"
    else
      return image_tag 'http://www.placehold.it/200x150/EFEFEF/AAAAAA&text=no+image', :class => "img-polaroid"
    end
  end

  def unit_pluralize(amount, unit)
    if unit == 'dash'
      return pluralize(amount, unit)
    end

    return amount + ' ' + unit
  end
end
