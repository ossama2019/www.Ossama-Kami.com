<table width="100%" border="0" cellpadding="0" cellspacing="0" class="title">
  <tr>
    <td align="left"><h1>Server</h1></td>
  </tr>
</table>
{if $e_msg1}<div id="infobox"><strong>{$e_msg1}</strong><br />{$e_msg2}</div>{/if}

<div id="sumcon">

<div id="sumleft" class="trans">

<h2>{$srv.ip}:{$srv.port}</h2>
<hr>
<table width="90%" border="0" cellpadding="2" cellspacing="2" align="center">
        <tr>
          <td class="fwhite">Ime:</td>
          <td class="fieldarea">{$srv.name}</td>
        </tr>
	<tr>
          <td class="fwhite">Igra:</td>
          <td class="fieldarea">{$srv.game}</td>
        </tr>
        {if $srv.boxlocation}
        <tr>
          <td class="fwhite">Lokacija:</td>
          <td class="fieldarea">{$srv.boxlocation}</td>
        </tr>
        {/if}
        {if $srv.status == 'Pending'}{assign var='color' value='#FFAA00'}
    	{elseif $srv.status == 'Active'}{assign var='color' value='#669933'}
    	{else}{assign var='color' value='#DD0000'}{/if}
        <tr>
          <td class="fwhite">Stanje:</td>
          <td class="fieldarea"><font color="{$color}"><b>{$srv.status}</b></font></td>
        </tr>
</table>
<a href="steam://connect/{$srv.ip}:{$srv.port}"><img src="templates/{$template}/img/img_16.png"></a>
</div>
<div id="sumright" class="trans">

<h2>FTP Info</h2>
<hr>
    {if $srv.showftp && $srv.ip}
      <table width="90%" border="0" cellpadding="2" cellspacing="2" align="center">
        <tr>
          <td class="fwhite">IP adresa:</td>
          <td class="fieldarea">{$srv.ip}</td>
        </tr>
        <tr>
          <td class="fwhite">Port:</td>
          <td class="fieldarea">{$srv.ftpport}</td>
        </tr>
        <tr>
          <td class="fwhite">Korisnik:</td>
          <td class="fieldarea">{$srv.user}</td>
        </tr>
        <tr>
          <td class="fwhite">Sifra:</td>
          <td class="fieldarea">{$srv.password}</td>
        </tr>
      </table>
      {/if}

	<div id="shortcuts">
	<a href="serverftp.php?id={$srv.serverid}&path=cstrike%2F"><img src="templates/{$template}/img/img_22.png"></a>
	<a href="serverftp.php?id={$srv.serverid}&path=cstrike%2Faddons%2Famxmodx%2Fconfigs%2F"><img src="templates/{$template}/img/img_24.png"></a>
	<a href="serverftp.php?id={$srv.serverid}&path=cstrike%2Faddons%2Famxmodx%2Fplugins%2F"><img src="templates/{$template}/img/img_26.png"></a>
	</div>

</div>

<div id="sumbuttons" class="trans">
{if $srv.status == 'Active'}
  {if $srv.online == 'Stopped'}
  <a href="servermanage.php?task=start&amp;serverid={$srv.serverid}"><img src="templates/{$template}/img/img_04.png"></a>
  {elseif $srv.online == 'Started'}
  <a href="servermanage.php?task=restart&amp;serverid={$srv.serverid}"><img src="templates/{$template}/img/img_03.png"></a>
  <a href="servermanage.php?task=stop&amp;serverid={$srv.serverid}"><img src="templates/{$template}/img/img_06.png"></a>
  {/if}
  {if $srv.webftp}
  <a href="serverftp.php?id={$srv.serverid}"><img src="templates/{$template}/img/img_10.png"></a>
  <a href="serverftp.php?id={$srv.serverid}&path=cstrike/addons/amxmodx/configs/users.ini"><img src="templates/{$template}/img/img_17.png"></a>
  {/if}
{/if}

</div>
<div style="clear: left"></div>

<div id="sumconf" class="trans">

<h2>Konfigurimi i Serverit</h2>
<hr>

      <form method="post" action="serverprocess.php">
      <input type="hidden" name="task" value="serveredit" />
      <input type="hidden" name="serverid" value="{$srv.serverid}" />
      <fieldset>
      <table width="90%" border="0" cellpadding="2" cellspacing="2" align="center">
        <tr>
          <td class="fwhite" style="height:20px;width:110px;">Slotovi:</td>
          <td class="fieldarea">{$srv.slots}</td>
        </tr>
        <tr>
          <td class="fwhite" style="height:20px;">Tip:</td>
          <td class="fieldarea">{$srv.type}</td>
        </tr>
        {if $srv.cfg1name}
        <tr>
          <td class="fwhite" style="height:20px;">{$srv.cfg1name}:</td>
          {if $srv.cfg1edit}<td class="fieldarea"><input type="text" name="cfg1" class="text" size="15" value="{$srv.cfg1}" /></td>
          {else}<td class="fieldarea">{$srv.cfg1}</td>{/if}
        </tr>
        {/if}
        {if $srv.cfg2name}
        <tr>
          <td class="fwhite" style="height:20px;">{$srv.cfg2name}:</td>
          {if $srv.cfg2edit}<td class="fieldarea"><input type="text" name="cfg2" class="text" size="15" value="{$srv.cfg2}" /></td>
          {else}<td class="fieldarea">{$srv.cfg2}</td>{/if}
        </tr>
        {/if}
        {if $srv.cfg3name}
        <tr>
          <td class="fwhite" style="height:20px;">{$srv.cfg3name}:</td>
          {if $srv.cfg3edit}<td class="fieldarea"><input type="text" name="cfg3" class="text" size="15" value="{$srv.cfg3}" /></td>
          {else}<td class="fieldarea">{$srv.cfg3}</td>{/if}
        </tr>
        {/if}
        {if $srv.cfg4name}
        <tr>
          <td class="fwhite" style="height:20px;">{$srv.cfg4name}:</td>
          {if $srv.cfg4edit}<td class="fieldarea"><input type="text" name="cfg4" class="text" size="15" value="{$srv.cfg4}" /></td>
          {else}<td class="fieldarea">{$srv.cfg4}</td>{/if}
        </tr>
        {/if}
        {if $srv.cfg5name}
        <tr>
          <td class="fwhite" style="height:20px;">{$srv.cfg5name}:</td>
          {if $srv.cfg5edit}<td class="fieldarea"><input type="text" name="cfg5" class="text" size="15" value="{$srv.cfg5}" /></td>
          {else}<td class="fieldarea">{$srv.cfg5}</td>{/if}
        </tr>
        {/if}
        {if $srv.cfg6name}
        <tr>
          <td class="fwhite" style="height:20px;">{$srv.cfg6name}:</td>
          {if $srv.cfg6edit}<td class="fieldarea"><input type="text" name="cfg6" class="text" size="15" value="{$srv.cfg6}" /></td>
          {else}<td class="fieldarea">{$srv.cfg6}</td>{/if}
        </tr>
        {/if}
        {if $srv.cfg7name}
        <tr>
          <td class="fwhite" style="height:20px;">{$srv.cfg7name}:</td>
          {if $srv.cfg7edit}<td class="fieldarea"><input type="text" name="cfg7" class="text" size="15" value="{$srv.cfg7}" /></td>
          {else}<td class="fieldarea">{$srv.cfg7}</td>{/if}
        </tr>
        {/if}
        {if $srv.cfg8name}
        <tr>
          <td class="fwhite" style="height:20px;">{$srv.cfg8name}:</td>
          {if $srv.cfg8edit}<td class="fieldarea"><input type="text" name="cfg8" class="text" size="15" value="{$srv.cfg8}" /></td>
          {else}<td class="fieldarea">{$srv.cfg8}</td>{/if}
        </tr>
        {/if}
      </table>
      </fieldset>
      {if $srv.cfg1edit || $srv.cfg2edit || $srv.cfg3edit || $srv.cfg4edit || $srv.cfg5edit || $srv.cfg6edit || $srv.cfg7edit || $srv.cfg8edit}
      <img src="templates/{$template}/images/spacer.gif" height="6" width="1" alt="" /><br />
      <div align="center">
        <input type="submit" value="Sacuvaj" class="gbutton ggreen" />
        <input type="reset" value="Odustani" class="gbutton gred" />
      </div>{/if}</form>

</div>
<div id="sumstat" class="trans">

<h2>Statusi i Serverit</h2>
<hr>

	<table width="90%" border="0" cellpadding="2" cellspacing="2" align="center">

        {if $srv.online == 'Pending'}{assign var='color' value='#FFAA00'}
    	{elseif $srv.online == 'Started'}{assign var='color' value='#669933'}
    	{else}{assign var='color' value='#DD0000'}{/if}
        <tr>
          <td class="fwhite" style="height:20px;width:110px;">Stanje:</td>
          <td class="fieldarea"><font color="{$color}"><b>{$srv.online}</b></font> (<a href="#" onclick="window.location.reload();">Osvezi</a>)</td>
        </tr>
        {foreach from=$query key=name item=value}
        <tr>
          <td class="fwhite" style="height:20px;">{$name}:</td>
          <td class="fieldarea">{$value}</td>
        </tr>
        {/foreach}
      </table>

</div>

<div style="clear: left"></div>

</div>