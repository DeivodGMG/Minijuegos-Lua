local attemps, life, cpu
local function Verify(player)
        assert(tonumber(player), "Solo se aceptan numeros")
end --Verificar que el numero sea un valor entero
local function Lose()
    print("Se te acabaron los turnos. Mi numero era "..cpu)
print("[1] Volver a jugar")
        print("[2] Ir al menu")
        while true do
            local selection = io.read()
            if selection == "1" then
            GuessMyNumber()
            elseif selection == "2" then
    Menu()
            else
                print("Argumento invalido")
            end 
        end
end --funcion lose
local function YouWin()
    print("Wow Lo adivinaste. Lo hiciste en "..attemps.." intentos.")
        print("[1] Volver a jugar")
        print("[2] Ir al menu")
        while true do
            local selection = io.read()
            if selection == "1" then
            GuessMyNumber()
            break
            elseif selection == "2" then
    Menu()
    break
            else
                print("Argumento invalido")
            end 
        end --bucle while
end --Funcion win
 local function StartGame()
    attemps = 1
    os.execute("cls")
 cpu = math.random(1, 100)
print("Ingresa mi numero:")
 while true do --bucle general
local player, data
while true do
    data = io.read()
   local s,r = pcall(Verify, data)
    if s == true then
        player = tonumber(data)
        break
    else
        print(r)
    end
 end
    if player == cpu then
       YouWin()
        break
    elseif life == 0 then
        Lose()
        break
     elseif player < cpu then
        print("+ Tu numero esta por debajo del mio. ("..life.." vidas restantes)")
        life = life - 1
        attemps = attemps + 1
     else
        print("- Te pasaste("..life.." vidas restantes)")
        life = life - 1
        attemps = attemps + 1
     end --Condicional if
     end
 end--Bucle while
function GuessMyNumber()
    life = 5
    os.execute("cls")
    print("---Adivina Mi Numero :)---")
    print("*Instrucciones*")
    print("- La maquina generara un numero aleatorio\nentre el 1 y el 100 y tendras que adivinarlo.\n- Dispondras de "..life.. " vidas.")
    print("[1] Iniciar")
    print("[2] Ir al menu")
    while true do
        local selection = io.read()
        if selection == "1" then
            StartGame()
            break
        elseif selection == "2" then
            Menu()
            break
        else
            print("Argumento invalido")
        end
    end
end