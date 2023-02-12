at 'naimargrove:100,101';

if ( visited ) {
	text qq{
		You are by the large oak tree near the forest path.
	};
}
else {
	text qq{
		You venture into the trees. According to the map, this place is called
		Naimar Grove. You remember your parents driving you past these woods
		on your way to visit your grandmother, back when you were a child.
		They had never seemed anything special.
		
		In retrospect, she had always seemed distant and cold with your parents,
		but doted on you and your siblings. You hadn't noticed it at the time,
		but it was clear looking back.
	};
	if ( visited 'naimargrove_99_100' ) {
		text qq{
			You stop by a large oak tree. This must have been around where
			that voice was coming from.
		};
	}
	else {
		text qq{
			You stop by a large oak tree. You can't hear the voice any more.
			You're not sure where to go next.
		};
	}
}

next_page 'naimargrove_100_100' => 'Return to the path';
next_page 'naimargrove_99_101' => 'Walk into the woods, parallel to the path';
next_page 'naimargrove_100_102' => 'Continue away from the path';
next_page 'naimargrove_100_101_tree' => 'Climb the oak tree';
