
function wesnoth.wml_actions.copy_unit_attack(t)
  local unit = wesnoth.units.find_on_map { id = t.unit_id }[1]

  local attack
  for k,v in ipairs(unit.attacks) do
    if v.name == t.src then
      attack = v
    end
  end

  local dst_attack = wml.clone(attack.__cfg)
  dst_attack.name = t.dst
  table.insert(unit.attacks, dst_attack)
end

