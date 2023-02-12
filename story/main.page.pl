at 'welcome';

use Mojo::Util ();
my $get = sub {
	my ( $key, $fallback ) = @_;
	my $value = world->{cookies}{$key};
	return Mojo::Util::url_unescape( $value ) if defined $value;
	return $fallback;
};

player->{name} = $get->( pref_nick => 'Alex' );

player->meta->{fullname} = $get->( pref_name => 'Alex Warlock' );
player->meta->{species} = $get->( pref_species => 'human' );
player->meta->{title} = $get->( pref_title => 'mage' );

my $p = $get->( pref_pronoun => 'theythem' );

if ( $p eq 'hehim' ) {
	player->meta->{pronoun} = {
		nom      => 'he',
		acc      => 'him',
		pos      => 'his',
		det      => 'his',
		ref      => 'himself',
	};
}
elsif ( $p eq 'sheher' ) {
	player->meta->{pronoun} = {
		nom      => 'she',
		acc      => 'her',
		pos      => 'hers',
		det      => 'her',
		ref      => 'herself',
	};
}
elsif ( $p eq 'theythem' ) {
	player->meta->{pronoun} = {
		nom      => 'they',
		acc      => 'them',
		pos      => 'theirs',
		det      => 'their',
		ref      => 'themself',
	};
}
else {
	player->meta->{pronoun} = {
		nom      => $get->( pref_pronoun_custom_nominative => 'ze' ),
		acc      => $get->( pref_pronoun_custom_accusative => 'zir' ),
		pos      => $get->( pref_pronoun_custom_possessive => 'zirs' ),
		det      => $get->( pref_pronoun_custom_possessive => 'zir' ),
		ref      => $get->( pref_pronoun_custom_possessive => 'zirself' ),
	};
}

text qq{
	Welcome to the Wizard Game.
	
	You are @{[ player ]},
	a @{[ player->meta->{species} ]} @{[ player->meta->{title} ]},
	about to start @{[ player->meta->{pronoun}{det} ]} training.
};

next_page 'naimargrove' => 'Walk down the forest path';
