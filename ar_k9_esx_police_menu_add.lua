Written by Madhatter23412 5/19/2020
For Ascaped K9 Script (ar_k9[1.2])

Adding K9 Commands to esx_policejob Menu

-----------ESX_POLICEJOB/CLIENT/MAIN/OPENPOLICEACTIONSMENU--------

You will replace the beginning of the ActionsMenu with the folling:

[[
function OpenPoliceActionsMenu()
	local elements = {
			{label = _U('citizen_interaction'), value = 'citizen_interaction'},
			{label = _U('vehicle_interaction'), value = 'vehicle_interaction'},
			{label = _U('object_spawner'), value = 'object_spawner'}
	}
	
	  if ESX.PlayerData.job.grade_name == 'k9' then
    table.insert(elements, {label = 'K9 Interaction', value = 'k9_interaction'})
  end
	
	ESX.UI.Menu.CloseAll()
	ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'police_actions', {
		title    = 'Police',
		align    = 'bottom-right',
		elements = elements
		}, function(data, menu)
]]		
		if data.current.value == ‘citizen_interaction’ then
local elements = {
..................
end, function(data2, menu2)
menu2.close()
end)

[[
elseif data.current.value == 'k9_interaction' then
			local elements = {
				{label = 'Spawn K9', value = 'k9spawn'},
				{label = 'K9 Follow', value = 'k9follow'},
				{label = 'K9 Stay', value = 'k9stay'},
				{label = 'K9 Search Vehicle', value = 'k9sehveh'},
				{label = 'K9 Search Citizen', value = 'k9sehcit'},
				{label = 'K9 Enter Vehicle', value = 'k9enterveh'},
				{label = 'K9 Exit Vehicle', value = 'k9exitveh'},
				{label = 'K9 Dismiss', value = 'k9delete'}
			}
			
      ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'k9_interaction', {
        title    = 'K9 Actions',
        align    = 'bottom-right',
        elements = elements
      }, function(data2, menu2)
          local action = data2.current.value

          if action == 'k9spawn' then
              ExecuteCommand('k9 spawn shepherd')
          elseif action == 'k9follow' then
            ExecuteCommand('k9 follow')
          elseif action == 'k9stay' then
          ExecuteCommand('k9 stay')
        elseif action == 'k9sehveh' then
          ExecuteCommand('k9 search vehicle')
        elseif action == 'k9sehcit' then
            ExecuteCommand('k9 search player')
          elseif action == 'k9enterveh' then
            ExecuteCommand('k9 enter')
          elseif action == 'k9exitveh' then
            ExecuteCommand('k9 exit')
          elseif action == 'k9delete' then
            ExecuteCommand('k9 delete')
          end
      end, function(data2, menu2)
        menu2.close()
      end)
]]

     elseif data.current.value == ‘vehicle_interaction’ then
	     local elements  = {}
.......
	  