<table width="100%" border="0" cellpadding="0" cellspacing="0" class="title">
  <tr>
    <td align="left"><h1>Home</h1></td>
  </tr>
</table>
{if $e_msg1}<div id="infobox"><strong>{$e_msg1}</strong><br />{$e_msg2}</div>{/if}
<p>Mire se vini ne GamePanel. Ketu ju mund te kontrolloje dhe te mbikeqyren serverat e Tu</p>
<table width="100%" class="container trans">
  <tr>
    <td width="50%" valign="top"><table width="100%" cellpadding="0" cellspacing="1" class="data">
        <tr>
          <td align="center" style="padding:10px;"><strong>{$client.first_name} {$client.last_name}</strong><br />{$client.email}<br /></td>
        </tr>
      </table></td>
    <td width="50%" valign="top"><table width="100%" cellpadding="0" cellspacing="1" class="data">
        <tr>
          <td align="center" style="padding:10px;">Broj servera: <strong>{$client.servers}</strong></td>
        </tr>
      </table></td>
  </tr>
</table>
<p><strong>Serverat E Mi</strong></p>
<table width="95%" align="center" cellpadding="1" cellspacing="1" class="container trans">
  <tr>
  	<th width="40"></th>
    <th>Ime</th>
    <th>Igra</th>
    <th>IP adresa</th>
    <th>Stanje</th>
    <th width="30"></th>
  </tr>
  {foreach from=$servers item=srv}
  <tr onmouseover="this.className='mouseover'" onmouseout="this.className=''">
  	{if $srv.online == 'Pending'}{assign var='img' value='yellow'}
    {elseif $srv.online == 'Started'}{assign var='img' value='green'}
    {else}{assign var='img' value='red'}{/if}
  	<td><img src="templates/{$template}/images/buttons/{$img}.png" width="25" height="25" alt="{$srv.online}" title="{$srv.online}" /></td>
    <td><a href="serversummary.php?id={$srv.serverid}">{$srv.name}</a></td>
    <td>{$srv.game}</td>
    {if $srv.ip}
    <td>{$srv.ip}<b>:</b>{$srv.port}</td>
    {else}
    <td>~</td>
    {/if}
    {if $srv.status == 'Pending'}{assign var='color1' value='#FFAA00'}
    {elseif $srv.status == 'Active'}{assign var='color1' value='#669933'}
    {else}{assign var='color1' value='#DD0000'}{/if}
    <td><font color="{$color1}"><b>{$srv.status}</b></font></td>
    <td><a href="serversummary.php?id={$srv.serverid}"><img src="templates/{$template}/images/edit24.png" width="24" height="24" border="0" alt="Edit" /></a></td>
  </tr>
  {foreachelse}
  <tr>
    <td colspan="6"><b>Nema servera</b></td>
  </tr>
  {/foreach}
</table>
