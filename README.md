# fantiadl-docker
Dockerized fantiadl script

Example:
`docker run --rm --name fantiadl -v "<DOWNLOADPATH>":"<DOWNLOADPATH>" legsplits/fantiadl:latest --dump-metadata --parse-for-external-links --download-thumbnail --ignore-errors --output-directory "<DOWNLOADPATH>" --email "<EMAIl>" --password "<PASSWORD>" https://fantia.jp/fanclubs/<YOURKINK>`

Runs as root. See `<DOWNLOADPATH>`? Replace with your path of choice.

Should be possible to use `.netrc` as `-v "/root/.netrc":"/root/.netrc"`, didn't test it.
