//PlayerValues
#region Player Values
global.Health = 5;
global.MaxHealth = 5;
global.Staggered = false;
global.Mana = 0;
global.MaxMana = 100;

global.StopMoving = false;

global.Parry = false;
global.state = "IDLE";

alarm[0] = 10;
alarm[11] = 30;
#endregion

application_surface_draw_enable(true);