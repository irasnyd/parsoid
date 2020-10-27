Introduction
============

**OBSOLETE**: This project is obsolete. Please use the [upstream Parsoid containers](https://hub.docker.com/r/thenets/parsoid). It is now archived for historical purposes.

This is a Docker container for the
[Mediawiki Parsoid application](https://www.mediawiki.org/wiki/Parsoid).
This is meant to be used with the
[Mediawiki VisualEditor extension](https://www.mediawiki.org/wiki/Extension:VisualEditor).

Environment Variables
=====================

- `MEDIAWIKI_API_URL` - URL to your Mediawiki API page (default: `http://localhost/w/api.php`)
- `MEDIAWIKI_DOMAIN` - VisualEditor plugin setting (default: `localhost`)
- `MEDIAWIKI_PREFIX` - VisualEditor plugin setting (default: `localhost`)
- `NUM_WORKERS` - Number of NodeJS workers to start (default: 4)
