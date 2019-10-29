# fantiadl-docker
Dockerized [fantiadl script](https://github.com/bitbybyte/fantiadl) [legsplits/fantiadl:latest](https://hub.docker.com/r/legsplits/fantiadl)

UID/GID: `1000:1000`

Can be changed by passing UID/GID env.

Example:
`docker run --rm --name fantiadl -v "<DOWNLOADPATH>":"<DOWNLOADPATH>" suika/fantiadl:latest --dump-metadata --parse-for-external-links --download-thumbnail --ignore-errors --output-directory "<DOWNLOADPATH>" --email "<EMAIl>" --password "<PASSWORD>" https://fantia.jp/fanclubs/<YOURKINK>`
