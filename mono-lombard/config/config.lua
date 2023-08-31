Config                = {}

Config.Target         = 'qtarget'                                         -- tutaj wpisz nazwę swojego "oczka" (qtarget lub bt-target)

Config.Notify         = 'ESX'                                             -- wpisz tutaj nazwę swojego notify (wspierane: OKOK, ESX)

Config.Text           = "Możesz sprzedać tylko i wyłącznie: Złoto,"       -- dodaj tutaj itemy z Config.Items

Config.BlipCoord      = vector3(-230.1015, 6233.8496, 31.7864)            -- tutaj ustaw koordy blipa lombardu    
Config.BlipSprite     = 58                                                -- tutaj ustawiasz sprite blipa
Config.BlipScale      = 0.6                                               -- tutaj ustawiasz skalę blipa
Config.BlipColor      = 5                                                 -- tutaj ustaiwasz kolor blipa
Config.BlipShort      = true                                              -- czy blip ma być "przyklejony" do mapy
Config.BlipName       = "Lombard"                                         -- tutaj ustawiasz nazwę blipa

Config.BoxZoneVec     = vector3(-221.61, 6233.49, 31.79)                  -- tutaj wpisz coordy PolyZona
Config.BoxZoneHeading = 315.0                                             -- tutaj ustaw heading PolyZona
Config.BoxMinZ        = 28.19                                             -- Minimalna oś Z potrzebna do działania Targeta
Config.BoxMaxZ        = 32.19                                             -- Maksymalna oś Z potrzebna do działania Targeta
Config.BoxIcon        = "fas fa-shop"                                     -- tutaj ustawiasz ikonkę na pasku Targeta (https://fontawesome.com/search)
Config.BoxLabel       = "Lombard"                                         -- tutaj ustaw nazwę która się wyświetla na Targecie

Config.Items          = {
    ['gold'] = {
        min = 500,
        max = 750
    },
}
