{if isset($_errors) && count($_errors)}
    <ul>
        {foreach from=$_errors item="_error"}
            {if isset($ucfirst) && $ucfirst == true}
                <li>{$_error|ucfirst}</li>
            {else}
                <li>{$_error}</li>
            {/if}
        {/foreach}
    </ul>
{/if}
