/**
 * 
 */
function loginCheck()
{
	if($("#username").val().length == 0 || $("#password").val().length == 0)
	{
		return false;
	}
}