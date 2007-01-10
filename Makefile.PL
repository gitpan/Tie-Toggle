# $Id: Makefile.PL,v 1.7 2007/01/10 04:57:59 comdog Exp $
use ExtUtils::MakeMaker;

eval "use Test::Manifest 1.14";
	
WriteMakefile(
	'NAME'		    => 'Tie::Toggle',
	'VERSION_FROM'	=> 'Toggle.pm',
	'LICENSE'       => 'perl',

	'PREREQ_PM'		=> {
		'Test::More'       => '0',
		'Tie::Cycle'       => '1.05',
		},

	'MAN3PODS'      => {
		'Toggle.pm'  => '$(INST_MAN3DIR)/Tie::Toggle.3',
		},

	'clean' => { FILES => 'Tie-Toggle-*' },
	);