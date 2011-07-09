{extends file="base.tpl"}
{block name="header"}
    <div id="top">
        <div class="wrapper">
        
            <h1><span class="accessibility">Leeds Digital Festival 2011&mdash;</span>Vote for your favourite.</h1>
            
            <img src="img/logo.png" alt="Leeds Digital Festival&mdash;November 2011" id="badge" />
        
        </div>
    </div>

    <div class="intro">
        <div class="wrapper">
        
            <div class="grids">
            
                <div class="grid-6">
                    <p>Here is your chance to choose the identity for the <b>2011 Leeds Digital Festival</b>.  Simply look through the options below and vote for your favourite.</p>
                </div>
            
                <div class="grid-4">
                    <p>Voting closes at 5pm, Friday 5th August 2011. <strong>Remember: it&rsquo;s one vote per person!</strong></p>
                </div>
            
                <div class="grid-2">
                    <a href="http://www.leedsdigitalfestival.com" class="main-link">Main site</a>
                </div>
            
            </div>
        
        </div>
    </div>
{/block}
{block name="body"}
    <ul id="line-up" class="grids">
        
        {foreach from=$directions item="direction"}
            <li class="grid-4">
            
                <a href="{$direction->url}">
                
                    {cycle assign="cycle" values='a,b,c'}
                    <h2 class="direction dir-{$cycle}">{$direction->title|htmlentities8}</h2>
                
                    <img src="img/content/entries/{$cycle}/cropped.jpg" alt="Cropped version of the {$direction->title|htmlentities8} logo" />
                    
                    <h3>{$direction->title|htmlentities8}</h3>
                    
                    <p>{$direction->content|htmlentities8}</p>
                    
                    <b class="more-link">View full direction</b>
                
                </a>
                
            </li>
        {/foreach}
        
    </ul>
{/block}
