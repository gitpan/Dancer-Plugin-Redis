
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "English" => 0,
    "File::Find" => 0,
    "File::Temp" => 0,
    "Module::Build" => "0.3601",
    "Scalar::Util" => 0,
    "Test::More" => "0.94",
    "perl" => "5.004"
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "easy database connections for Dancer applications",
  "dist_author" => [
    "Celogeek <geistteufel\@yahoo.fr>"
  ],
  "dist_name" => "Dancer-Plugin-Redis",
  "dist_version" => "0.03",
  "license" => "perl",
  "module_name" => "Dancer::Plugin::Redis",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Carp" => 0,
    "Dancer::Plugin" => 0,
    "Data::Dumper" => 0,
    "LWP::Protocol::https" => 0,
    "Redis" => 0,
    "Template" => 0,
    "Try::Tiny" => 0,
    "perl" => "5.006",
    "strict" => 0,
    "warnings" => 0
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
