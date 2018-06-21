<%@ include file="uheader.jsp"%>

<script>
function closeCurrentWindow()
{
  window.close();
}


function quitBox(cmd)
{   
    if (cmd=='quit')
    {
        open(location, '_self').close();
    }   
    return false;   
}
</script>

<h2><h1>Thanking you for your valueble feedback..</h1></h2>
<input type="button" name="Quit" id="Quit" value="Close this window.." onclick="return quitBox('quit');" />



<%@ include file="footer.jsp"%>
