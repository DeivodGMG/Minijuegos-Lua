 require("guess")
 require("rock")
 function Menu()
    os.execute("cls")
    print("-----Minijuegos chidos-----")
    print("[1] Adivina mi Numero")
    print("[2] Piedra, Papel o Tijera")
    print("[3] Salir")
    while true do
        local selection = io.read()
    if selection == "1" then
        GuessMyNumber()
        break
    elseif selection == "2" then
    Piedra()
    break
    elseif selection == "3" then
    os.exit()
    else
        print("Argumento invalido")
    end  
    end
end
Menu()