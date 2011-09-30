module RestaurantsHelper
  def icon_for_restaurant(restaurant)
    "restaurants/#{restaurant.slug}.png"
  end

  def restaurant_sort_link(current_order)
    other_order = (current_order == 'name') ? :booth_order : :name
    order = other_order.to_s.split("_").join(" ")
    link_to "sort by #{order}", restaurants_path(:order => other_order), "data-icon" => "gear",  "class" => "ui-btn-right"
  end
end
