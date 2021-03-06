request("John Smith",45,2,yes,3,400,300,250,5,2).
request("Nick Cave",55,2,yes,3,450,350,300,7,3).
request("George Harris",50,3,yes,1,500,350,300,7,5).
request("Harrison Ford",50,2,no,0,370,300,350,5,0).
request("Will Smith",100,5,yes,0,100,50,25,2,1).
%Δωσμένα γεγονότα. Μπορείτε να προσθέσετε και αλλα γεγονότα από κάτω.



% Επιπρόσθετοι κανόνες. Επιτρέπουν στην επιστροφή των διαφορετικών
% ορισμάτων των γεγονότων. (Βασίστηκε στα Βοηθητικά Python scripts
% για την δημιουργία των αρχείων σπιτιών και αιτημάτων.
% https://elearning.auth.gr/mod/forum/discuss.php?d=156232 )

%Γενικός κανόνας.
request(X) :-                        request(X,_,_,_,_,_,_,_,_,_).
%min_area/2. Επιστρέφει το ελάχιστο εμβαδόν διαμερίσματος
min_area(X, Value) :-                request(X,Value,_,_,_,_,_,_,_,_).
%min_bedrooms/2.Επιστρέφει τον ελάχιστο αριθμό δωματιών.
min_bedrooms(X, Value) :-            request(X,_,Value,_,_,_,_,_,_,_).
%wants_pets/2.Επιστρέφει αν ο ενοικιαστής απαιτεί κατοικίδια.
wants_pets(X, Value) :-              request(X,_,_,Value,_,_,_,_,_,_).
% has_elevator_limit/2.Επιστρέφει το όριο στον όροφο που θα πρέπει να
% βρίσκεται το διαμέρισμα από τον οποίο και πάνω η πολυκατοικία πρέπει να
% έχει ανελκυστήρα.
has_elevator_limit(X, Value) :-      request(X,_,_,_,Value,_,_,_,_,_).
% max_rent/2.Άνω όριο διαθέσιμου ποσού.
rent_upper_limit(X, Value) :-        request(X,_,_,_,_,Value,_,_,_,_).
% max_rent_downtown/2.Μέγιστο διαθέσιμο ποσό για διαμέρισμα που
% βρίσκεται στο κέντρο της πόλης
max_rent_downtown(X, Value) :-       request(X,_,_,_,_,_,Value,_,_,_).
%max_rent_suburbs/2.Μέγιστο διαθέσιμο ποσό για διαμέρισμα που βρίσκεται
%στα προάστια.
max_rent_suburbs(X, Value) :-        request(X,_,_,_,_,_,_,Value,_,_).
%additional_rent_area/2.Μέγιστο επιπλέον διαθέσιμο ποσό για κάθε τετραγωνικό μέτρο εμβαδού διαμερίσματος
%πέραν της ελάχιστης απαίτησης
additional_rent_area(X, Value) :-    request(X,_,_,_,_,_,_,_,Value,_).
%additional_rent_garden/2.Μέγιστο επιπλέον διαθέσιμο ποσό για κάθε τετραγωνικό μέτρο κήπου
additional_rent_garden(X, Value) :-  request(X,_,_,_,_,_,_,_,_,Value).
%requester/2.Επιστρέφει το όνομα του ενοικιαστή.
requester(X, Value) :-               request(X,_,_,_,_,_,_,_,_,_), Value=X.
