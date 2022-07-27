draw_UI_Player();

if instance_exists(global.Boss)
{
	draw_UI_Boss(global.Boss.Name, global.Boss.Health, global.Boss.HealthMax, global.Boss.Stagger, global.Boss.StaggerMax);	
}