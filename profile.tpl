<table width="100%" border="0" cellpadding="0" cellspacing="0" class="title">
  <tr>
    <td align="left"><h1>Profili</h1></td>
  </tr>
</table>
<form method="post" action="profileprocess.php">
  <input type="hidden" name="task" value="profile" />
  {if $e_msg1}<div id="infobox"><strong>{$e_msg1}</strong><br />{$e_msg2}</div>{/if}
  <img src="templates/{$template}/images/spacer.gif" width="1" height="6" alt="" /><br />
  <table width="100%" border="0" cellpadding="2" cellspacing="2" class="trans">
    <tr>
      <td class="fieldname" style="width:310px;">Emri</td>
      <td class="fieldarea"><input type="text" name="firstname" class="text" size="25" value="{$first_name}" /></td>
    </tr>
    <tr>
      <td class="fieldname">Mbiemri</td>
      <td class="fieldarea"><input type="text" name="lastname" class="text" size="25" value="{$last_name}" /></td>
    </tr>
    <tr>
      <td class="fieldname" disable>Email</td>
      <td class="fieldarea2">{$email}</td>
    </tr>
    <tr>
      <td class="fieldname">Password</td>
      <td class="fieldarea"><input type="text" name="password" class="text" size="20" value="{$password}" />
        <font color="#666666" size="-2">***ostavite prazno da generisete novu sifru</font></td>
    </tr>
  </table>
  <img src="templates/{$template}/images/spacer.gif" height="10" width="1" alt="" /><br />
  <div align="center">
    <input type="submit" value="Ruje" class="gbutton ggreen" />
    <input type="reset" value="Mos e Ruej" class="gbutton gred" />
  </div>
</form>
