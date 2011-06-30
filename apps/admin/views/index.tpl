{extends file="base.tpl"}
{block name="body"}
    <h1>Admin</h1>
    <div id="container"></div> 
    <h2>Vote Breakdown</h2>
    {foreach from=$directions item="direction" name="outer"}
        <h3>{$direction->title} ({$direction->getVoteCount()|number_format} vote{if $direction->getVoteCount() != 1}s{/if})</h3>

        {assign var="votes" value=$direction->getVotes()}
        {foreach from=$votes item="vote" name="inner"}
            <div>{$vote->email}, {$vote->created|date_format:"d/m/y H:i"}</div>
        {foreachelse}
            <p>No votes.</p>
        {/foreach}
    {/foreach}

{/block}
{block name="script"}
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
    <script src="js/lib/highcharts.js"></script>
    <script> 
        var total = {$total};
        $(function() {
            if (total == 0) {
                return;
            }

            function getPercentage(x) {
                return Math.round((x / total) * 100);
            }

            var chart = new Highcharts.Chart({
                chart: {
                    renderTo: 'container',
                    plotBackgroundColor: null,
                    plotBorderWidth: null,
                    plotShadow: false
                },
                title: {
                    text: 'Vote Share'
                },
                tooltip: {
                    formatter: function() {
                        return '<b>'+ this.point.name +'</b>: '+getPercentage(this.y)+'% ('+ this.y +' votes)';
                    }
                },
                plotOptions: {
                    pie: {
                        allowPointSelect: true,
                        cursor: 'pointer',
                        dataLabels: {
                            enabled: false
                        },
                        showInLegend: true
                    }
                },
                series: [{
                    type: 'pie',
                    name: 'Vote Share',
                    data: [
                        {foreach from=$directions item="direction" name="loop"}
                            ['{$direction->title}', {$direction->getVoteCount()}]{if !$smarty.foreach.loop.last},{/if}
                        {/foreach}
                    ]
                }]
            });
        });
    </script>
{/block}
