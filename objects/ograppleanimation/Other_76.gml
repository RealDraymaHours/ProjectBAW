if event_data[? "event_type"] == "sequence event" // or you can check "sprite event"
{
    switch (event_data[? "message"])
    {
	#region STARTUPS
		case "seqNostro1StartUp":
			CameraZoom(20,10);
		break;
		case "seqNostro2StartUp":
			CameraZoom(20,10);
		break;
	#endregion
	
	#region DAMAGE
	
		case "seqDamageBig":
			switch(TheSequence)
			{
				case(seqNostro1Grapple):
					oNostro.Health -= 25;
				break;
			}
		break;
		case "seqDamageMid":
			switch (TheSequence)
			{
				case(seqNostro2Grapple):
					oNostro2.Stagger = 0;
					oNostro2.Health -= 10;
				break;
			}
		break;
		case "seqDamageSmall":
			switch(TheSequence)
			{
				case(seqNostro1Grapple):
					oNostro.Health -= 8;
				break;
			}
		break;
	#endregion
	
	#region ZOOMS	
		case"seqZoom20":
			CameraZoom(20,10);
		break;
		case"seqZoom25":
			CameraZoom(25,10);
		break;
		case"seqZoom18":
			CameraZoom(18,10);
		break;
		case"seqZoom16":
			CameraZoom(16,10);
		break;
		case"seqZoom14":
			CameraZoom(14,10);
		break;
		case"seqZoom12":
			CameraZoom(12,10);
		break;
		case"seqZoom10":
			CameraZoom(10,10);
		break;
		case"seqZoom8":
			CameraZoom(8,10);
		break;
	#endregion
    }
} 