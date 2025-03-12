CreateThread(function()
    for k,v in pairs(Config.Loker) do
        for a,b in ipairs(v) do
            exports.ox_target:addSphereZone({ -- Parameter
                name = "loker" .. a,
                radius = b.radius,
                coords = b.coords,
                debug = b.debug,
                rotation = b.rotation,
                options = {
                    {
                        icon = b.icon,
                        label = b.label,
                        groups = k,
                        onSelect = function()
                            local dialog = lib.inputDialog('Loker', { -- Membuat dialog untuk lokasi nomor berapa yang dibuka
                                {
                                    type = 'number',
                                    label = "Nomor Loker",
                                    description = 'Masukan nomor loker',
                                    default = 1,
                                    max = b.maxloker,
                                    required = true,
                                },
                            })

                            if not dialog then return end

                            if dialog[1] > b.maxloker then return end

                            exports.ox_inventory:openInventory('stash', {id = 'loker' .. a .. '' .. k .. '' .. dialog[1]}) -- Export Membuka Stash Yang Sudah Dibuat Di Server Side
                        end
                    },
                },
            })
        end
    end
end)