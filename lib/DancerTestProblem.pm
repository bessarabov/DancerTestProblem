package DancerTestProblem;
use Dancer ':syntax';

use Carp;

our $VERSION = '0.1';

get '/' => sub {
    template 'index';
};

get '/die' => sub {
    croak "Error message";
};

true;
