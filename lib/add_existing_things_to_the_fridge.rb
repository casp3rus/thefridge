def add_existing_things_to_the_fridge
    system "clear"
    welcome
    prompt = TTY::Prompt.new

    product_name = prompt.collect do
        key(:item_name).ask("Product name:")
    end

    new_quantity = prompt.collect do
        key(:quantity).ask("Product quantity:")
    end

    item_to_update = TheFridge.find_by(product_name)
    item_to_update.update(new_quantity)

    tp TheFridge.all

    user_choice = prompt.select("", ["Back"])
    if user_choice == "Back"
        main_menu_selector
    end
end