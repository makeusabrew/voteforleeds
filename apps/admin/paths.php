<?php
PathManager::setPrefix("/admin");

PathManager::loadPaths(
    array("", "index"),
    array("/login", "login"),
    array("/logout", "logout")
);

PathManager::clearPrefix();
