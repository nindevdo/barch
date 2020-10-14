#!/usr/bin/env bash


barch_genpass() {
	LANGS=(eff-long eff-short eff-special legacy spa-mich fin-kotus ita-wiki ger-anlx nor-nb fr-freelang pt-ipublicis pt-l33t-ipublicis)
	rand=$[$RANDOM % ${#LANGS[@]}]
	xkcdpass -C random -n $1 -w ${LANGS[$rand]} -d ${FOO:-.}
}
