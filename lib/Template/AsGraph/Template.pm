package Template::AsGraph::TT2::Context;
# maybe this should become a separate module
# such as Template::Routes

use File::Basename;

use strict;
use warnings;

our $VERSION = '0.01';
our $ERROR = '';

sub new {
	my ($class, $filename, $config, $vars) = (@_);
	
	unless ($filename) {
		$ERROR = 'you must specify a template filename';
		return;
	}
	
	my $self = {
		_name     => $filename,
		_children => undef,
	};
	bless $self, $class;
	
	$self->process($config, $vars)
		or return;
	
	return $self;
}

sub name  { return shift->{'_name'} }

sub error { return $ERROR }

sub children {
	
}

sub process {
	my ($self, $config, $vars) = (@_);
	
#	unless ($vars) {
#		
#	}
#	open my $fh, '<', $self->name
#		or do { 
#			$ERROR = 'Error reading template file "' . $self->name . '":' . $!;
#		    return;
#		};
#	
#	my $START_TAG = $config->{START_TAG} || '[%';
#	my $END_TAG   = $config->{END_TAG}   || '%]';
#	
#	while (my $line = <$fh>)  {
#		if ($line =~ m{$START_TAG})
#	}
}
