# cornify

Do you ever take a step back from web design and think to yourself, "This website would be so much more awesome if it had twice, even thrice as many unicorns!"?

Well, you're in luck, pardner. Using this here gem you can add as many unicorns as you want at the click of a button! And even a touch of pink comic sans!

## Prerequisites

Rails, but you could probably pull this off with only ActionPack (not tested)

## Installation

Put this in your Gemfile

    gem 'cornify'

And bundle. You can now use these helpers in your views!

Say, in your show.html.erb:

  <%= cornify_link %>

Would product a button that allows you to click it to create unicorns on demand!

Soooo many advanced coadskillz:

  <%= cornify_link "This here be's a link to cornify", :class => "corniest", :id => "so_corny" %>

Secret treats!

  <%= cornify_link :rainbow_madness %>


All credit goes to cornify.com!
http://www.cornify.com

And a little fun CSS3 trick to this thread:
http://css-tricks.com/forums/discussion/16668/css3-buttons/p1


## Contributing to cornify
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

The fuck?
