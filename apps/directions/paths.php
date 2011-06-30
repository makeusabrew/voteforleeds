<?php
PathManager::loadPaths(
    array("/(?P<identifier>[\w-]+)", "index"),
    array("/(?P<identifier>[\w-]+)/vote", "vote")
);
