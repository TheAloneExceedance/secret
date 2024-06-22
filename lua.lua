local services = {"workspace", "ReplicatedFirst", "ReplicatedStorage", "ServerScriptService", "ServerStorage", "StarterGui", "StarterPack", "StarterPlayer", "Teams"}
for _,service in pairs(services) do
	if game[service] then
		for i,v in pairs(game[service]:GetDescendants()) do
			if v:IsA("Script") or v:IsA("LocalScript") or v:IsA("ModuleScript") then
				v:Destroy()
			end
			if i%100 == 0 then
				wait()
			end
		end
	end
end
