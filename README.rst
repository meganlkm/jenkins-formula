jenkins
=======

With Docker, the feedback cycle shortens to near instantaneous. Here’s how I do
it. Note that I’m not advocating this as the best way by any means,this is
just the simple approach that works very well for me.

Let’s get a few assumptions out of the way. I will assume that you have Docker
running properly in your environment. If you do not,
[this]:https://docs.docker.com/engine/installation/ is the best way to get
started.
'Make' is on your system and available. If it is not or you are not sure what
make is, [this]:https://www.gnu.org/software/make/ is a good place to start.

testing
=======

Change to state file location in checked out repositiory.
    * cd jenkins-formula/jenkins

This is where the __Makefile__ is located.
    * run ```bash make``
    * test results will return to your screen.

Available states
================

.. contents::
    :local:

``jenkins``
-----------

Install jenkins from the source package repositories and start it up.

``jenkins.nginx``
-----------------

Add a jenkins nginx entry. It depends on the nginx formula being installed and
requires manual inclusion `nginx` and `jenkins` states in your `top.sls` to
function, in this order: `jenkins`, `nginx`, `jenkins.nginx`.

Pillar customizations:
==========================

.. code-block:: yaml

    jenkins:
      lookup:
        port: 80
        home: /usr/local/jenkins
        user: jenkins
        group: www-data
        server_name: ci.example.com
