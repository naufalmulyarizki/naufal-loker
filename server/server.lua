AddEventHandler('onServerResourceStart', function(resourceName) -- Event Ketika Start Resource
	if resourceName == 'naufal-loker' then -- Validasi Kalau Nama Resourcenya Sesuai
		for k,v in pairs(Config.Loker) do
			for a,b in ipairs(v) do
				for i = 1, b.maxloker do
					-- exports.ox_inventory:RegisterStash('loker' .. a .. '' .. k .. '' .. i, "Loker Pekerjaan " .. k, 200, 1000000, false) -- Membuat stash loker untuk hanya yang bisa dilihat oleh orangnya itu sendiri
					exports.ox_inventory:RegisterStash('loker' .. a .. '' .. k .. '' .. i, "Loker Pekerjaan " .. k, 200, 1000000, false) --  Membuat stash loker untuk semua player
				end
			end
		end
	end
end)