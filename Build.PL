use strict;
use warnings;
use Module::Build;
my $build = Module::Build->new(
	module_name => 'PSGI::Hector',
	license => 'perl',
	dist_author => 'MacGyveR <dumb@cpan.org>',
	dist_abstract => 'Very simple PSGI web framework',
	requires => {
		"perl" => "5.006",
		"CGI::Simple::Cookie" => 0,
		"HTTP::Response" => 0,
		"Plack" => 0,
		"Hash::MultiValue" => 0,
		"Carp" => 0,
		"File::Basename" => 0,
		"Data::Dumper" => 0,
		"Template" => 0,
		"File::Spec" => 0,
		"Class::Load" => 0,
		"Plack::Middleware::Deflater" => 0,
		"Plack::Middleware::MCCS" => 0,
		"CSS::Minifier::XS" => 0,
		"JavaScript::Minifier::XS" => 0,
		"IO::Compress::Gzip" => 0,
		"Plack::Middleware::ReverseProxy" => 0,
		"Plack::Middleware::ReverseProxyPath" => 0
	},
	build_requires => {
		"Test::More" => 0
	},
	create_makefile_pl => 'traditional',
	meta_merge => {
		resources => {
			repository => 'https://github.com/thedumbterminal/PSGI-Hector'
		}
	}
);
$build->create_build_script;
