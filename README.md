# project_tournament
Udacity Fullstack Nanodegree tournament database project

To run the files you need to have Python 2.7 and Vagrant Installed.

To install Python go [here](https://www.pythong.org)

To install Vagrant go [here](https://www.vagrantup.com)

You will need to download or clone this repository to your local machine.

From the `/vagrant` directory in the downloaded project you can run `vagrant up` to start the Vagrant box.

Once the box has loaded and begun running you can connect to the box via `vagrant ssh`.

The files for the project can be found by using  `cd /vagrant/tournament`.

THe database will need to be created from the PostresGQL interface access via the `psql -f tournament.sql` command.

To run the tests you can then call `python tournament_test.py` to run the test files.
