# EM::WorkQueue

WorkQueue makes EventMachine's queue simpler to work with.  Often when
using an EventMachine queue, you will want to work on the
queue.  Often this is done by creating a Proc object and passing it as
an argument to the queue when you call pop.  WorkQueue makes this
simpler by packing the queue and processing proc together.  It also
makes controlling the queue processing simpler with methods like start/stop/status.

## Installation

Add this line to your application's Gemfile:

    gem 'em-work_queue'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install em-work_queue

## Usage

TODO: Write usage instructions here

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
