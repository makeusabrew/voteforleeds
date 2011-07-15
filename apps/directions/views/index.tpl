{extends file="default/views/base.tpl"}
{block name="body"}
    <div class="grids">
        
        <div class="grid-8">
        
            
            <div id="content">
                <ul id="pagination">
                    <li class="prev"><a href="#">Previous entry</a></li>
                    <li class="next"><a href="#">Next entry</a></li>
                </ul>
                <div id="slides">
                {foreach from=$slides item="slide" name="loop"}
                    <div class='slide' id='slide{$smarty.foreach.loop.index+1}'>
                        {$slide->content}
                    </div>
                    {if !$smarty.foreach.loop.first}
                        <script>
                            document.getElementById('slide{$smarty.foreach.loop.index+1}').style.display = 'none';
                        </script>
                    {/if}
                {/foreach}
                </div>
            </div>            

            <ul id="share">
                <li><a href="http://twitter.com/share" class="twitter-share-button" data-count="horizontal" data-text="Vote for your favourite identity for the Leeds Digital Festival #ldf2011" data-via="LDSDigital" data-url="http://www.voteforleeds.com/">Tweet</a><script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script></li>
                <li><fb:like href="{$full_url}" send="true" width="140" show_faces="false" layout="button_count" font="arial"></fb:like></li>
            </ul>
            
            <div id="comments"><fb:comments href="{$full_url}" num_posts="5" width="620"></fb:comments></div>{* sorry Harry, had to hack some extra markup around the comments to make them work nicely *}
            
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
                    <p>The winners will be announced in August 2011</p>
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
    <script src="js/carousel.js"></script>
    <div id="fb-root"></div> 
    {literal} <script type="text/javascript"> 
          window.fbAsyncInit = function() {
            FB.init({xfbml: true});
            FB.Event.subscribe('edge.create', function(targetUrl){
                _gaq.push(['_trackSocial', 'facebook', 'like', targetUrl]);
            });
            FB.Event.subscribe('edge.remove', function(targetUrl){
                _gaq.push(['_trackSocial', 'facebook', 'unlike', targetUrl]);
            });
            FB.Event.subscribe('message.send', function(targetUrl) {
              _gaq.push(['_trackSocial', 'facebook', 'send', targetUrl]);
            });
            FB.Event.subscribe('comment.create', function() {
              _gaq.push(['_trackSocial', 'facebook', 'comment']);
            });
            FB.Event.subscribe('comment.remove', function() {
              _gaq.push(['_trackSocial', 'facebook', 'remove comment']);
            });
          };
          (function() {
            var e = document.createElement('script'); e.async = true;
            
            e.src = (document.location.protocol == 'file:' ? 'http:' : document.location.protocol) + '//connect.facebook.net/en_US/all.js';
            document.getElementById('fb-root').appendChild(e);
          }());
          
          twttr.events.bind('tweet', function(event) {
                if (event) {
                    var targetUrl;
                    if (event.target && event.target.nodeName == 'IFRAME') {
                      targetUrl = extractParamFromUri(event.target.src, 'url');
                    }
                    _gaq.push(['_trackSocial', 'twitter', 'tweet', targetUrl]);
                  }
            });
            twttr.events.bind('follow', function(event) {
                if (event) {
                    _gaq.push(['_trackSocial', 'twitter', 'follow']);
                }
          });
          
          function extractParamFromUri(uri, paramName){
            if(!uri){
                return;
            }
            var uri = uri.split('#')[0]; //remove anchor
            var parts = uri.split('?'); //check for query params
            if(parts.length == 1){
                return; //no params
            }
            
            var query = decodeURI(parts[1]);
            
            //find the url param
            paramName += '=';
            var params = query.split('&');
            for(var i = 0, param; param = params[i]; ++i){
                if(param.indexOf(paramName) === 0){
                    return unescape(param.split('=')[1]);
                }
            }
          }
        </script>{/literal}
{/block}
