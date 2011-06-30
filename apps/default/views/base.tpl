<!DOCTYPE html>
<html lang="en" class="cols-12">
<head>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0" />
	
	<title>Leeds Digital Festival</title>

    <base href="{$base_href}" />
	
	<!-- The framework -->
	<link rel="stylesheet" href="css/inuit.css" />
	<link rel="stylesheet" href="css/12-col.inuit.css" />
	
	<link rel="stylesheet" href="css/style.css" />

	<link rel="author" href="humans.txt" />
	
	<link rel="shortcut icon" href="icon.png?1" />
	<link rel="apple-touch-icon-precomposed" href="icon.png?1" />
</head>
<body {if isset($page_id)}id="{$page_id}"{/if}>
	
	
	
	<div id="header">
	
        {block name="header"}
            <div id="top">
                <div class="wrapper">
                
                    <div class="grids">
                    
                        <div class="grid-8">
                            <h1><span class="accessibility">Leeds Digital Festival 2011&mdash;</span>Vote for your favourite.</h1>
                        </div>
                    
                        <div class="grid-2">
                            <a href="./" class="main-link">Vote home</a>
                        </div>
                    
                        <div class="grid-2">
                            <a href="#" class="main-link">Main Site</a>
                        </div>
                    
                        <img src="img/logo.png" alt="Leeds Digital Festival&mdash;November 2011" id="badge" />
                
                    </div>
                
                </div>
            </div>
        
            <div class="intro">
                <div class="wrapper">
                
                    <ul id="entries-nav">
                        <li{if isset($direction) && $direction->url == "direction-a"} class="current"{/if}><a href="direction-a">Direction A</a></li>
                        <li{if isset($direction) && $direction->url == "direction-b"} class="current"{/if}><a href="direction-b">Direction B</a></li>
                        <li{if isset($direction) && $direction->url == "direction-c"} class="current"{/if}><a href="direction-c">Direction C</a></li>
                    </ul>
                
                </div>
            </div>
        {/block}
		
	</div>
	
	<div class="wrapper">
	
        {block name="body"}{/block}
	
	</div>
	
	<div id="page-footer">
	
		<div class="wrapper">
			<p>The winners will be announced in early July 2011.</p>
			<p>If you would like to be kept informed of all the goings on with the festival, <a href="#">sign up for our email newsletter&hellip;</a></p>
		</div>
	
	</div>
	
	<div id="site-footer">
	
		<div class="wrapper cf">
			<div class="grids">
				<p class="grid-6 desc">Leeds Digital Festival is a celebration of the amazing talent this great city has to offer. Whether you&rsquo;re a digital ninja, underground urban artist, eager student, collaborator or freelancer fresh with ideas, it&rsquo;s a chance for you to enjoy and explore the digital scene in all its vibrant glory. <b>Be part of it!</b></p>
			</div>
			<p class="text-right">&copy; Copyright 2011 Leeds Digital Festival</p>
		</div>
	
	</div>
	
    {block name="script"}{/block}
</body>
</html>
