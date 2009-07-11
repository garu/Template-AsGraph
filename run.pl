use lib 'lib';
use Template::AsGraph;

my $graph = Template::AsGraph->graph('1.tt');

if (open(my $png, '|-', 'dot -Tpng -o routes.png')) {
	print $png $graph->as_graphviz;
	close($png);
}
