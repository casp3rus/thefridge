def empty_the_fridge
    system "clear"
    welcome

    tp TheFridge.delete_all

    prompt = TTY::Prompt.new
    user_choice = prompt.select("The fridge is empty", ["Back"])
    if user_choice == "Back"
        main_menu_selector
    end
    
end