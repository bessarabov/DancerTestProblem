use DancerTestProblem;

use Test::More;

use Dancer::Test;

sub main {
    my $response = dancer_response(
        GET => '/die',
    );

    like(
        $response->{content},
        qr/done/,
        "",
    );

    done_testing();
}
main();
