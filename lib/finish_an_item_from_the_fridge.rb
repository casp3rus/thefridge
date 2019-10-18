def finish_an_item_from_the_fridge
    system "clear"
    welcome
    prompt = TTY::Prompt.new

    
    key = prompt.collect do
        key(:item_name).ask("Please enter the item name:")
    end

    item = TheFridge.find_by(key)
    item.delete
    tp TheFridge.all

    user_choice = prompt.select("", ["Back"])
    if user_choice == "Back"
        main_menu_selector
    end
end