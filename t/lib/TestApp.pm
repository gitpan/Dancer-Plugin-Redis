#
# This file is part of Dancer-Plugin-Redis
#
# This software is copyright (c) 2011 by Geistteufel <geistteufel@celogeek.fr>.
#
# This is free software; you can redistribute it and/or modify it under
# the same terms as the Perl 5 programming language system itself.
#
package TestApp;

use Dancer;
use FakeRedis;
use Dancer::Plugin::Redis;

get '/' => sub {
    [ redis->get('foo') ];
};

true;
