// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CameraShake(Time,Intensity){
	with(oCamera)
	{
		oCamera.Intensity = Intensity;
		alarm[0] = Time;
		screenShake = true;
	}
}

function CameraZoom(Amount, Speed)
{

	oCamera.Multiplier = Amount;
	oCamera.Speed = Speed;

}

function CameraReset(Speed)
{
	oCamera.Multiplier = 4;
	oCamera.Speed = Speed;
}
