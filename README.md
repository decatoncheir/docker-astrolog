#Docker Image of Astrolog

This is a containerize version of Astrolog

- based on source code from Astrolog version 7.7 https://www.astrolog.org/ftp/ast77src.zip
- Include
	- Optional Swiss Ephemeris files for accuracy over a longer range of years
	- Optional larger atlas file with nearly 200K cities that can replace the default "atlas.as"
	- Optional world map bitmap with twice the resolution that can replace the default "earth.bmp"
	- The Astro, Enigma, Hamburg, Astronomicon, and Hank's Nakshatra TrueType fonts that can be displayed within Astrolog.

##Usage
	docker run --rm -it -v $[PATH_TO_CHART_FILE]:/chart.as astrolog -i /chart.as

##Reference
	- Official Astrolog homepage https://www.astrolog.org/
