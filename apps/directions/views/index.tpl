{extends file="default/views/base.tpl"}
{block name="body"}
    <div class="grids">
        
        <div class="grid-8">
        
            <div id="content">
            
                <ul id="pagination">
                    <li class="prev"><a href="#">Previous entry</a></li>
                    <li class="next"><a href="#">Next entry</a></li>
                </ul>
            
                <h2>Direction A overview</h2>
                
                <div class="blurb">
                <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>
                <p>Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt.</p>
                </div>
                
            </div>
            <ul id="share">
                <li><a href="http://twitter.com/share" class="twitter-share-button" data-count="horizontal">Tweet</a><script type="text/javascript" src="http://platform.twitter.com/widgets.js"></script></li>
                <li><div id="fb-root"></div><script src="http://connect.facebook.net/en_US/all.js#xfbml=1"></script><fb:like href="127.0.0.1" send="true" width="250" show_faces="false" font="arial"></fb:like></li>
            </ul>
            
            <div id="fb-root"></div><script src="http://connect.facebook.net/en_US/all.js#xfbml=1"></script><fb:comments href="127.0.0.1" num_posts="5" width="620"></fb:comments>
            
        </div>
        
        <div class="grid-4">
        
            <form id="vote">
                <fieldset>
                
{*<legend class="accessibility">Place your vote for the Leeds Digital Festival brand identity</legend>
                    
                    <p>
                        <label for="email">Vote for this direction</label>
                        <input type="email" id="email" name="email" placeholder="your email address" /> <input type="submit" value="Vote" />
                        <small class="form-info">Remember, it&rsquo;s <strong>one vote per person!</strong></small>
                    </p>*}
                    <div class="thanks">
                        <h3>Thanks for voting!</h3>
                        <p>The winners will be announced in July 2011</p>
                    </div>
                    
                </fieldset>
            </form>
        
            <ul class="thumbs cf">
                <li id="overview-thumb">
                    <a href="#">
                        <h3>Overview</h3>
                        <p>Introduced by the team in their own words.</p>
                    </a>
                </li>
                <li><a href="#"><img src="http://dummyimage.com/140x100/eee/eee.jpg" alt="" /></a></li>
                <li><a href="#"><img src="http://dummyimage.com/140x100/eee/eee.jpg" alt="" /></a></li>
                <li><a href="#"><img src="http://dummyimage.com/140x100/eee/eee.jpg" alt="" /></a></li>
                <li><a href="#"><img src="http://dummyimage.com/140x100/eee/eee.jpg" alt="" /></a></li>
                <li><a href="#"><img src="http://dummyimage.com/140x100/eee/eee.jpg" alt="" /></a></li>
            </ul>
            
        </div>
        
    </div>
{/block}
