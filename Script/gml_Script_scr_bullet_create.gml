var __newbullet = gml_Script_instance_create(argument0, argument1, argument2)
__newbullet.damage = damage
__newbullet.target = target
if variable_instance_exists(self, "element")
    __newbullet.element = element
return __newbullet;
