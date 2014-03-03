use DancerTestProblem;

use Carp;
use Test::More;

use Dancer::Test;

sub content_like {
    my ($got, $expectect, $message) = @_;

    if ($got =~ m{<h2>runtime error</h2><pre class="error">(.*?)</pre>}msg) {
        die $1;
    } else {
        like(
            $got,
            $expectect,
            $message,
        );
    }

    return '';
}

sub main {
    my $response = dancer_response(
        GET => '/die',
    );

    content_like(
        $response->{content},
        qr/done/,
        "",
    );

    done_testing();
}
main();
