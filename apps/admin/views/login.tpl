{extends file="base.tpl"}
{block name="body"}
    <h1>Please Login</h1>
    {include file="helpers/errors.tpl"}
    <form id="login" action="admin/login" class="clearfix" method="post">
        <input type="email" name="email" id="email" placeholder="email" required class="text-input"/>
        <input type="password" name="password" id="password" placeholder="password" required class="text-input" />
        <input type="submit" title="Login" name="submit" id="submit" value="Login"/>
    </form>
{/block}
