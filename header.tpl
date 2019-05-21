<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>{$site_title}</title>

<link href="templates/{$template}/images/favicon.ico" rel="shortcut icon" />

<link href="templates/{$template}/style.css" rel="stylesheet" type="text/css" />
<link href="templates/{$template}/regaa.css" rel="stylesheet" type="text/css" />
{if !$logged_in}

<link href="templates/{$template}/body.css" rel="stylesheet" type="text/css" />

{else}

<link href="templates/{$template}/body-logged.css" rel="stylesheet" type="text/css" />

{/if}

</head>

<body>

<div id="nav">{php} setlocale(LC_ALL, 'sr_RS@latin'); {/php}

  {if !$logged_in}

  <div id="home">

    <div id="logo"><img src="templates/{$template}/images/logo-big.png"/></div>

    <div id="title">

	  <a style="color:#fcb900; font-size:40px; font-weight:100; margin-down:10px; font-family: ger;">Mire se vini ne {$site_name}</a>

      <img src="templates/{$template}/images/title.png" style="margin:8px auto 30px;"/>

	  <!--<h1 style="font-size:16px;">kliknite <a href="#" style="color:#fb961d;">ovde</a> da biste se ulogovali na demo korisnika i isprobali <a style="color:#fb961d;">GAMEPANEL</a></h1>-->

	</div>

  </div>

  {else}

  <div id="home">

    <div id="logo"><img src="templates/{$template}/images/logo-big.png"/></div>

  </div>

  <div id="tabs">

    <ul class="menutabs">

      <li><div class="home"><a href="index.php">Home</a></div></li>

      <li><div class="servers"><a href="server.php">Serverat</a></div></li>

      <li><div class="support"><a href="https://www.facebook.com/ermal.mehmetii">Kontakto</a></div></li>

      <li><div class="account"><a href="profile.php">Profili</a></div></li>

      <li><div class="logout"><a href="process.php?task=logout" title="Clients">Dilni</a></div></li>

    </ul>

  </div>

  <div id="time">{$smarty.now|date_format:"%A | %e. %B %Y | %H:%M %p"}</div>

  {/if}

</div>

{if $logged_in}<div id="pagebg">{/if}

<div id={if $logged_in}"page"{else}"page-login"{/if}>

  <div id="content">

  <div id="container">
