athena-crowd
============

Crowdsourcing interaction scripts for the Athena project.

Interacting with External HITs
--------------------------------

The package contains scripts to create HITs, stop existing HITs, pay workers, etc. The main scripts of interest for interacting with external HITs are in the samples folder. There, each experiment type (i.e. restaurant_external_hit) should have its own folder. Inside the folder are the various scripts to interact with the HITs. 

Creating new External HIT types
--------------------------------

The external_hit folder in the samples folder should provide a template from which new types of external HIT experiments can be run. Copy the folder and its contents in to a new folder and leverage the scripts from the /bin folder to compose together desired functionality. The external_hit folder should provide an example.
