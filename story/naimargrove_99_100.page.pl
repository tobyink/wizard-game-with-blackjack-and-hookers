at 'naimargrove:99,100';

if ( visited ) {
	text qq{
		You are on the path through the forest. To the east, you can hear
		running water. To the west are some younger trees.
	};
}
else {
	text qq{
		You continue your journey along the path through the forest.
		If it weren't for a thousand thoughts running through your head,
		this would be a rather pleasant walking route. Birds sing overhead.
		You can hear the sound of running water coming from the dense
		old-growth forest to the east. The forest on the west side of the path
		seems more sparse, with the trees looking a lot younger, like they'd
		been planted maybe a decade ago.
	};
}

next_page 'naimargrove_98_100' => 'Walk north along the path';
next_page 'naimargrove_99_101' => 'Go east towards the water';
next_page 'naimargrove_99_99' => 'Go west into the forest';
