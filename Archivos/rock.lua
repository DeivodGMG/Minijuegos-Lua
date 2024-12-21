local function Verify(player)
    assert(tonumber(player), "Ingrese numeros del 1 al 3.")
end
local function Start()
    local player
    local Jugadas = {"Piedra", "Papel", "Tijera"}
    os.execute("cls")
    print("1) Piedra")
    print("2) Papel")
    print("3) Tijera")
    print("Escoge tu jugada")
    local cpu = math.random(1, 3)
    while true do
        while true do
           local data = io.read()
             player = tonumber(data)
            local s,r = pcall(Verify, player)
            if s then
                break
            else
                print(r)
            end
        end
        if player == 1 or player == 2 or player == 3 then
            break
        else
            print("Argumento invalido")
        end --condicional
    end --bucle while
    if player == 1 and cpu == 3 then --El jugador gano
        print("¡Ganaste! Usuario: "..Jugadas[player].." | CPU: ".. Jugadas[cpu])
    elseif player == 3 and cpu == 1 then --El jugador perdio
    print("¡Perdiste! Usuario: "..Jugadas[player].." | CPU: ".. Jugadas[cpu])
elseif player == 2 and cpu == 1 then --El jugador Gano
    print("Ganaste! Usuario: "..Jugadas[player].." | CPU: ".. Jugadas[cpu])
elseif player == 1 and cpu == 2 then --El jugador perdio
    print("¡Perdiste! Usuario: "..Jugadas[player].." | CPU: ".. Jugadas[cpu])
elseif player == 3 and cpu == 2 then --El jugador Gano
    print("Ganaste! Usuario: "..Jugadas[player].." | CPU: ".. Jugadas[cpu])
elseif player == 2 and cpu == 3 then --El jugador perdio
elseif player == cpu then
    print("¡Empate! Usuario: "..Jugadas[player].." | CPU: ".. Jugadas[cpu])
    end --Las condicionales
    print("[1] Volver a jugar")
    print("[2] Regresar al Menu")
    while true do
        local selection = io.read()
        if selection == "1" then
        Piedra()
        break
        elseif selection == "2" then
Menu()
break
        else
            print("Argumento invalido")
        end 
    end
end --funcion
function Piedra()
    os.execute("cls")
    print("---Piedra, Papel o Tijera---")
    print("*Instrucciones*")
    print("- Un juego muy simple :).")
    print("[1] Iniciar")
    print("[2] Ir al menu")
    while true do
        local selection = io.read()
        if selection == "1" then
            Start()
            break
        elseif selection == "2" then
Menu()
break
        else
            print("Argumento invalido")
        end
    end
end