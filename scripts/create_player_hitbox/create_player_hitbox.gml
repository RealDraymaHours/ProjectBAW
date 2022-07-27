// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_player_hitbox(Dmg, ManaMultiplier, Sprite, Break, KnockbackDirection, ActiveTime, CanBreakGuard)
{
	hitbox = instance_create(x,y,oPDZ);
	
	hitbox.sprite_index = Sprite;
	
	if oPlayer.facing == oPlayer.RIGHT
	{
		hitbox.image_xscale = 1;
	}
	else
	{
		hitbox.image_xscale = -1;
	}
		
	global.ManaMultiplier = ManaMultiplier;
	hitbox.Break = Break;
	hitbox.Damage = Dmg;
	hitbox.KnockbackDirection = KnockbackDirection;
	hitbox.alarm[0] = ActiveTime;		
	hitbox.charge = CanBreakGuard;
}