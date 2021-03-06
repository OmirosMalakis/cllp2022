house("Βασιλέως Γεωργίου 35",1,50,yes,1,no,yes,0,300).
house("Αγγελάκη 7",	2,	45,	yes,	0,	no,	yes,	0,	335).
house("Κηφισίας 10",	2,	65,	no,	2,	no,	yes,	0,	350).
house("Πλαστήρα 72",	2,	55,	no,	1,	yes,	no,	15,	330).
house("Τσιμισκή 97",	3,	55,	yes,	0,	no,	yes,	15,	350).
house("Πολυτεχνείου 19",2,	60,	yes,	3,	no,	no,	0,	370).
house("Ερμού 22",	3,	65,	yes,	1,	no,	yes,	12,	375).
house("Τσικλητήρα 13",	3,	65,	no,	2,	yes,	no,	0,	320).
%Δωσμένα γεγονότα. Μπορείτε να προσθέσετε και αλλα γεγονότα από κάτω.



% Επιπρόσθετοι κανόνες. Επιτρέπουν στην επιστροφή των διαφορετικών
% ορισμάτων των γεγονότων. (Βασίστηκε στα Βοηθητικά Python scripts
% για την δημιουργία των αρχείων σπιτιών και αιτημάτων.
% https://elearning.auth.gr/mod/forum/discuss.php?d=156232 )


%Γενικός κανόνας.
house(X) :-                  house(X, _, _, _, _, _, _, _, _).
%bedrooms/2.Επιστρέφει τον αριθμό των δωματίων
bedrooms(X, Value) :-        house(X, Value, _, _, _, _, _, _, _).
%area/2.Επιστρέφει το εμβαδόν του διαμερίσματος.
area(X, Value) :-            house(X, _, Value, _, _, _, _, _, _).
%in_city_center/2.Επιστρέφει αν το διαμέρισμα είναι στο κέντρο
in_city_center(X, Value) :-  house(X, _, _, Value, _, _, _, _, _).
%floor_number/2.Επιστρέφει τον όροφο του διαμερίσματος.
floor_number(X, Value) :-    house(X, _, _, _, Value, _, _, _, _).
%has_elevator/2.Επιστρέφει αν το διαμέρισμα έχει ανελκυστήρα.
has_elevator(X, Value) :-    house(X, _, _, _, _, Value, _, _, _).
%allows_pets/2.Επιστρέφει αν το διαμέρισμα επιτρέπει κατοικήδια.
allows_pets(X, Value) :-     house(X, _, _, _, _, _, Value, _, _).
%yard_area/2.Επιστρέφει το εμβαδόν του κήπου.
yard_area(X, Value) :-       house(X, _, _, _, _, _, _, Value, _).
%rent_amount/2.Επιστρέφει το ενοίκιο
rent_amount(X, Value) :-     house(X, _, _, _, _, _, _, _, Value).
%address/2.Επιστρέφει την διεύθυνση του διαμερίσματος.
address(X, Value) :-         house(X, _, _, _, _, _, _, _, _), Value = X.
