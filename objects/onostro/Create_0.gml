/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

Poise = 1;
Health = 120;//30;
HealthMax = 120;//30;
subState = "IDLE";
prevState = 0;

originY = y;
StaggerRegenTime = 1;

Name = "Nostro, the good pastor";
rnd = irandom(3);

StaggerMax = 100;

DeathXoffset = 64;
DeathYoffset = -20;

ArenaStart = x - 300;
ArenaEnd = x + 300;

global.Boss = oNostro;
