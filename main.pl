run :-
	write('Μενού:'), nl, nl,
	write('1 - Προτιήσεις ενός πελάτη'), nl,
	write('2 - Μαζικές προτιμήσεις πελατών'), nl,
	write('3 - Επιλογή πελατών μέσω δημοπρασίας'), nl,
	write('0 - Έξοδος'), nl, nl,
	write('Choice: '),
	read(Answer),
	do_on_choice(Answer).



do_on_choice(0) :- !,
	nl, write('Goodbye!'), nl.

do_on_choice(_) :-
	nl, write('Give a number between 0 and 3!'), nl,
	run.
