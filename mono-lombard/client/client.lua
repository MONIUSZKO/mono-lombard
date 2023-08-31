Citizen.CreateThread(function()
	local bliplombard = AddBlipForCoord(Config.BlipCoord)

	SetBlipSprite      (bliplombard, Config.BlipSprite)
	SetBlipDisplay     (bliplombard, 4)
	SetBlipScale       (bliplombard, Config.BlipScale)
	SetBlipColour      (bliplombard, Config.BlipColor)
	SetBlipAsShortRange(bliplombard, Config.BlipShort)

	BeginTextCommandSetBlipName('STRING')
	AddTextComponentSubstringPlayerName(Config.BlipName)
	EndTextCommandSetBlipName(bliplombard)
end)

RegisterNetEvent('mono_lombard:main')
AddEventHandler('mono_lombard:main', function()
	lib.registerContext({
		id = 'menu_głowne',
		title = 'LOMBARD',
		menu = 'menu_głowne',
		options = {
		  {
			title = 'Sprzedaj',
			description = 'Sprzedaj niepotrzebne itemy',
			serverEvent = 'mono_lombard:sell',
			icon = 'money-bill',
			arrow = false,
		  },
		  {
			title = 'Kup',
			description = 'Zakup najróżniejsze rzeczy',
			event = 'mono_lombard:buy',
			icon = 'shop',
			arrow = true,
		  }
		}
	  })
	  lib.showContext('menu_głowne')
end)

RegisterNetEvent('mono_lombard:buy')
AddEventHandler('mono_lombard:buy', function()
lib.registerContext({
	id = 'menu_buy',
	title = 'KUP',
	menu = 'menu_buy',
	options = {
		{
			title = 'Nota Kapitałowa',
			description = 'Kup Notę Kapitałową (750$)',
			serverEvent = 'mono_lombard:buy:kapital',
		},
		{
			title = 'Wiertarka',
			description = 'Kup Wiertarkę (350$)',
			serverEvent = 'mono_lombard:buy:drill',
		},
		{
			title = 'Wędka',
			description = 'Kup Wędke (75$)',
			serverEvent = 'mono_lombard:buy:fishingrod',
		},
	}
  })
  lib.showContext('menu_buy')
end)

exports[Config.Target]:AddBoxZone("pawn_shop", Config.BoxZoneVec, 0.8, 0.4, {
	name="pawn_shop",
	heading= Config.BoxZoneHea,
	debugPoly=false,
	minZ= Config.BoxMinZ,
	maxZ= Config.BoxMaxZ,
	}, {
		options = {
			{
				event = "mono_lombard:main",
				icon = Config.BoxIcon,
				label = Config.BoxLabel,
			},
		},
		distance = 1.5
})
