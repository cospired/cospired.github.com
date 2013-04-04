Repository setup locally now create a repository named USERNAME.github.com
and point the origin it's way.

The rest of the Rakefile assumes a stasis default setup to be used so

    rake development
runs a local development server on port 3000, watching the current dir

    rake generate
generates the current page inside public

    rake publish
publishes whatever is currently generated to the master branch ready to push

Have a great day!
@sideshowcoder <Twitter @ischi>
