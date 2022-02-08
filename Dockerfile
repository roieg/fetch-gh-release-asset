FROM ubuntu:bionic

RUN apt-get update ; apt-get install bash ca-certificates curl wget jq -y 

COPY fetch_github_asset.sh /fetch_github_asset.sh

ENTRYPOINT ["/fetch_github_asset.sh"]
