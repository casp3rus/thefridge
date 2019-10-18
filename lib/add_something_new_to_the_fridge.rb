def add_something_new_to_the_fridge
    system "clear"
    welcome
    prompt = TTY::Prompt.new
    hash = prompt.collect do
        key(:item_name).ask("Please enter the item name:")
        key(:category).ask("Please enter the item category:")
        key(:quantity).ask("Please enter the quantity:")
    end
    TheFridge.create(hash)
    tp TheFridge.all
    
    user_choice = prompt.select("Done.....", ["Back"])
    if user_choice == "Back"
        main_menu_selector
    end
end
