msg = {}
------------------------------------
-- en / fr / custom
-- Select your lang.
msg.lang = 'en' 

------------------------------------
-- chatMessage
if msg.lang == 'custom' then
	msg[1] = "EDIT - custom text "
	msg[2] = "EDIT - custom text "
	msg[3] = "EDIT - custom text "
	msg[4] = "EDIT - custom text "
	msg[5] = "EDIT - custom text "
	msg[6] = "EDIT - custom text "

elseif msg.lang == 'en' then
	msg[1] = "You dropped your lure in, wait for a fish to bite ..."
	msg[2] = "The fish got away ..."
	msg[3] = "You caught a fish !"
	msg[4] = "The fish got away !"
	msg[5] = "You hooked one, reeling it in !"
	msg[6] = "You must be standing in water to fish !"

elseif msg.lang == 'fr' then
	msg[1] = "Vous avez lancé votre appât, attendez qu'un poisson morde ..."
	msg[2] = "Le poisson s'est échappé ..."
	msg[3] = "Vous avez attrapé un poisson !"
	msg[4] = "Le poisson s'est échappé !"
	msg[5] = "Vous en avez un, ferrez le !"
	msg[6] = "Vous devez être dans l'eau pour pêcher !"

else
	msg[1] = "^1 msg.lang ERROR from lang.lua"
	msg[2] = "^1 msg.lang ERROR from lang.lua"
	msg[3] = "^1 msg.lang ERROR from lang.lua"
	msg[4] = "^1 msg.lang ERROR from lang.lua"
	msg[5] = "^1 msg.lang ERROR from lang.lua"
	msg[6] = "^1 msg.lang ERROR from lang.lua"

end