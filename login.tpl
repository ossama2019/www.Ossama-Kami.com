<table width="100%" border="0" cellpadding="0" cellspacing="0" class="title">
  <tr height="30px" valign="top">
        <td align="center" id="login-title"><h1></h1></td>
  </tr>
</table>
{if $lockout}
<div align="center">
	<div align="center" style="width:400px;background-color:#FCF9D2;border:1px solid #F9D43E;padding:10px;"><strong>Previse neuspesnih pokusaja</strong><br />
      Prisni 5 minuta përpara se të provoni përsëri.</div>
</div>
{elseif $task != 'password'}
<div align="center">
  {if $login_error}<div align="center" style="width:400px;background-color:#FCF9D2;border:1px solid #F9D43E;padding:10px;"><strong>Prijava nije uspela. Pokusajte ponovo.</strong><br />
      Vas IP je logovan i vidljiv adminu kao neuspesan pokusaj.</div><br />{/if}
  <form action="process.php" method="post">
    <input type="hidden" name="task" value="login" />
    <input type="hidden" name="return" value="{$return}" />
    <table border="0" cellpadding="0" cellspacing="10" class="login-container trans">
      <tr class="datafields">
        <td align="left">Email:</td>
        <td align="left">Password:</td>
      </tr>
      <tr>
        <td><input type="text" name="email" class="text" size="30" value="{$email}" /></td>
        <td><input type="password" name="password" class="text" size="30" value="{$password}" /></td>
      </tr>
      <tr>
        <td align="center"><label for="rememberme"><input type="checkbox" name="rememberme" id="rememberme"{if $remember_me} checked="checked"{/if} /> Mbaj ne mend</label></td>
        <td><a href="login.php?task=password">E keni harruar fjalekalimi?</a></td>
      </tr>
      <tr>
        <td colspan="2" align="center"><input type="submit" value="Login" class="gbutton ggreen" /></td>
      </tr>
    </table>
  </form>
  <br />
</div>
{else}
<div align="center">
  {if $success == 'Yes'}<div align="center" style="width:400px;background-color:#FCF9D2;border:1px solid #F9D43E;padding:10px;"><strong>Sifra poslana.</strong><br />
      Šifra je resetirana i poslana na mail.</div><br />
  {elseif $success == 'No'}<div align="center" style="width:400px;background-color:#FCF9D2;border:1px solid #F9D43E;padding:10px;"><strong>Email nije nadjena.</strong><br />
      Vas IP je logovan i vidljiv adminu kao neuspesan pokušaj.</div><br />
  {/if}
  <form action="process.php" method="post">
    <input type="hidden" name="task" value="password" />
    <table border="0" cellpadding="0" cellspacing="10" class="trans">
      <tr>
        <td align="right">Email:</td>
        <td><input type="text" name="email" class="text" size="30" value="" /></td>
      </tr>
      <tr>
        <td colspan="2" align="center"><input type="submit" value="Send Password" class="button" /></td>
      </tr>
    </table>
  </form>
  <br />
  <a href="login.php">Kthehu</a>
</div>
{/if}
