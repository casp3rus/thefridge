def main_menu_selector
    system "clear"
    welcome
    prompt = TTY::Prompt.new
    user_choice = prompt.select("Open the fridge and choose your action",
    ["Take a look and see what's in the fridge", "Look for something in the fridge","Add something new to the fridge", "Add existing things to the fridge", "Finish an item from the fridge", "Empty the fridge"])
    if user_choice == "Take a look and see what's in the fridge"
        fridge_inventory
    elsif
        user_choice == "Look for something in the fridge"
        look_for_something_in_the_fridge
    elsif
        user_choice == "Add something new to the fridge"
        add_something_new_to_the_fridge
    elsif
        user_choice == "Add existing things to the fridge"
        add_existing_things_to_the_fridge
    elsif
        user_choice == "Finish an item from the fridge"
        finish_an_item_from_the_fridge
    else 
        user_choice == "Empty the fridge"
        empty_the_fridge
    end
end