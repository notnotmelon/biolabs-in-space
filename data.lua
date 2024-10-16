local lab = data.raw.lab['biolab']

if not lab then
    error('Mod "Biolabs in Space" failed to load. ERROR: Could not find biolab prototype. Was this lab removed by another mod?')
end

local new_surface_conditions = {}
for _, condition in pairs(lab.surface_conditions) do
    if condition.property ~= 'pressure' then
        new_surface_conditions[#new_surface_conditions + 1] = condition
    end
end
lab.surface_conditions = new_surface_conditions