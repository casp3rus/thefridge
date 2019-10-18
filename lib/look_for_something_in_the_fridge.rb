def look_for_something_in_the_fridge
    system "clear"
    welcome
    prompt = TTY::Prompt.new

    search_key = prompt.collect do
        key(:category).ask("Please enter a category:")
    end

    search = TheFridge.where(search_key)
    tp search
    user_choice = prompt.select("", ["Back"])
    if user_choice == "Back"
        main_menu_selector
    end
end