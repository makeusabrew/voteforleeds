{extends file="default/views/base.tpl"}
{block name="body"}
    <div class="grids">
        
        <div class="grid-8">
        
            
            <div id="content">
                <ul id="pagination">
                    <li class="prev"><a href="#">Previous entry</a></li>
                    <li class="next"><a href="#">Next entry</a></li>
                </ul>
                {foreach from=$slides item="slide" name="loop"}
                    <div class='foobar' id='slide{$smarty.foreach.loop.index+1}'>
                        {$slide->content}
                    </div>
                    {if !$smarty.foreach.loop.first}
                        <script>
                            document.getElementById('slide{$smarty.foreach.loop.index+1}').style.display = 'none';
                        </script>
                    {/if}
                {/foreach}
            </div>

            <ul id="share">
                <li><a href="http://twitter.com/share" class="twitter-share-button" data-count="horizontal">Tweet</a><script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script></li>
                <li><div id="fb-root"></div><script src="http://connect.facebook.net/en_US/all.js#xfbml=1"></script><fb:like href="{$full_url}" send="true" width="140" show_faces="false" layout="button_count" font="arial"></fb:like></li>
            </ul>
            
            <div id="fb-root"></div><script src="http://connect.facebook.net/en_US/all.js#xfbml=1"></script><fb:comments href="{$full_url}" num_posts="5" width="620"></fb:comments>
            
        </div>
        
        <div class="grid-4">
        
            <form id="vote" action="{$direction->url}/vote" method="post">
                {if !$hasVoted}
                    <fieldset>
                    
                        <legend class="accessibility">Place your vote for the Leeds Digital Festival brand identity</legend>
                        
                        <p>
                            <label for="email">Vote for this direction</label>
                            <input type="email" id="email" name="email" placeholder="your email address" /> <input type="submit" value="Vote" />
                            <small class="form-info">Remember, it&rsquo;s <strong>one vote per person!</strong></small>
                        </p>
                        {* leave the UL here even if it's empty, so we can hook into it from JS. Can rework if desired... *}
                        <ul class='errors'>
                            {if isset($_errors) && count($_errors)}
                                {foreach from=$_errors item="_err"}
                                    <li>{$_err}</li>
                                {/foreach}
                            {/if}
                        </ul>
                        
                    </fieldset>
                {/if}
                <div class="thanks" {if !$hasVoted}style="display:none;"{/if}>
                    <h3>Thanks for voting!</h3>
                    <p>The winners will be announced in July 2011</p>
                </div>
            </form>
        
            <ul class="thumbs cf">
                {foreach from=$slides item="slide"}
                    {$slide->thumbnail}
                {/foreach}
            </ul>
            
        </div>
        
    </div>
{/block}
{block name="script"}
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
    <script src="js/vote.js"></script>
{/block}
