def fridge_inventory
    system "clear"
    welcome
    tp TheFridge.all
    prompt = TTY::Prompt.new
    user_choice = prompt.select("That's all that this fridge has for you.", ["Back"])
    if user_choice == "Back"
        main_menu_selector
    end
end