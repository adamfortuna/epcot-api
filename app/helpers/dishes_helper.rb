module DishesHelper
  def icon_for_dish(dish)
    case dish.category
      when "Food" then "125-food.png"
      when "Wine" then "87-wine-glass.png"
      when "Beer" then "88-beer-mug.png"
      when "Dessert" then "147-popsicle.png"
      when "Alcohol" then "144-martini.png"
      else "48-fork-and-knife.png"
    end
  end
  
  # def dish_sort_link(restaurant, order)
  #   = link_to "sort by #{other_order}", restaurant_dishes_path(:order => other_order), "data-icon" => "gear",  "class" => "ui-btn-right"
  # end
  
  def dish_checkbox(dish)
    return nil unless user_signed_in?
    content_tag(:div, :id => "dish_check_#{dish.id}", :class => "ui-dish_check_field") do
      render :partial => 'dish_check/form', :locals => { :dish => dish }
    end
  end
  
  # %div{ :id => "dish_check_#{dish.id}", :class => "ui-dish_check_field" }
  #   = render :partial => 'dish_check/form', :locals => { :dish => dish }
  
end