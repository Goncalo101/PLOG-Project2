%enrolled_in(Student, Module).
enrolled_in('Asdrubal', 'ESOF').
enrolled_in('Asdrubal', 'PLOG').
enrolled_in('Asdrubal', 'LTW').
enrolled_in('Asdrubal', 'RCOM').
enrolled_in('Asdrubal', 'LAIG').

enrolled_in('Felismina', 'PLOG').
enrolled_in('Felismina', 'ESOF').
enrolled_in('Felismina', 'LTW').
enrolled_in('Felismina', 'RCOM').
enrolled_in('Felismina', 'LAIG').

enrolled_in('Bernardete', 'LTW').
enrolled_in('Bernardete', 'ESOF').
enrolled_in('Bernardete', 'PLOG').
enrolled_in('Bernardete', 'RCOM').
enrolled_in('Bernardete', 'LAIG').

enrolled_in('Eleuterio', 'LTW').
enrolled_in('Eleuterio', 'ESOF').
enrolled_in('Eleuterio', 'PLOG').
enrolled_in('Eleuterio', 'RCOM').
enrolled_in('Eleuterio', 'LAIG').

enrolled_in('Manuel', 'LAIG').
enrolled_in('Manuel', 'ESOF').
enrolled_in('Manuel', 'PLOG').
enrolled_in('Manuel', 'RCOM').
enrolled_in('Manuel', 'LTW').

enrolled_in('Maria', 'LAIG').
enrolled_in('Maria', 'ESOF').
enrolled_in('Maria', 'PLOG').
enrolled_in('Maria', 'RCOM').
enrolled_in('Maria', 'LTW').

enrolled_in('Ana', 'LAIG').
enrolled_in('Ana', 'ESOF').
enrolled_in('Ana', 'PLOG').
enrolled_in('Ana', 'RCOM').
enrolled_in('Ana', 'LTW').

enrolled_in('Jose', 'LAIG').
enrolled_in('Jose', 'ESOF').
enrolled_in('Jose', 'PLOG').
enrolled_in('Jose', 'RCOM').
enrolled_in('Jose', 'LTW').

enrolled_in('Miguel', 'LAIG').
enrolled_in('Miguel', 'ESOF').
enrolled_in('Miguel', 'PLOG').
enrolled_in('Miguel', 'RCOM').
enrolled_in('Miguel', 'LTW').

enrolled_in('Diana', 'LAIG').
enrolled_in('Diana', 'ESOF').
enrolled_in('Diana', 'PLOG').
enrolled_in('Diana', 'RCOM').
enrolled_in('Diana', 'LTW').

enrolled_in('Andre', 'LAIG').
enrolled_in('Andre', 'ESOF').
enrolled_in('Andre', 'PLOG').
enrolled_in('Andre', 'RCOM').
enrolled_in('Andre', 'LTW').

enrolled_in('Sofia', 'LAIG').
enrolled_in('Sofia', 'ESOF').
enrolled_in('Sofia', 'PLOG').
enrolled_in('Sofia', 'RCOM').
enrolled_in('Sofia', 'LTW').

%study_hours(Module, Type, Time).
%Type is 1 - individual work, 2 - group work
study_hours('ESOF', 1, 3).
study_hours('ESOF', 2, 8).

study_hours('PLOG', 1, 4).
study_hours('PLOG', 2, 5).

study_hours('LAIG', 1, 1).
study_hours('LAIG', 2, 7).

study_hours('LTW', 1, 3).
study_hours('LTW', 2, 6).

study_hours('RCOM', 1, 3).
study_hours('RCOM', 2, 3).

%group(Module, Students)
group('ESOF', ['Asdrubal', 'Felismina']).
group('ESOF', ['Bernardete', 'Eleuterio']).
group('ESOF', ['Maria', 'Manuel']).
group('ESOF', ['Ana', 'Asdrubal']).
group('ESOF', ['Sofia', 'Diana']).
group('ESOF', ['Miguel', 'Andre']).

group('LAIG', ['Maria', 'Felismina']).
group('LAIG', ['Manuel', 'Bernardete']).
group('LAIG', ['Diana', 'Eleuterio']).
group('LAIG', ['Jose', 'Ana']).
group('LAIG', ['Sofia', 'Miguel']).
group('LAIG', ['Andre', 'Asdrubal']).

group('PLOG', ['Maria', 'Eleuterio']).
group('PLOG', ['Bernardete', 'Felismina']).
group('PLOG', ['Manuel', 'Asdrubal']).
group('PLOG', ['Ana', 'Jose']).
group('PLOG', ['Miguel', 'Diana']).
group('PLOG', ['Andre', 'Sofia']).

group('LTW', ['Maria', 'Bernardete']).
group('LTW', ['Eleuterio', 'Jose']).
group('LTW', ['Manuel', 'Asdrubal']).
group('LTW', ['Ana', 'Felismina']).
group('LTW', ['Miguel', 'Diana']).
group('LTW', ['Andre', 'Sofia']).

group('RCOM', ['Sofia', 'Miguel']).
group('RCOM', ['Manuel', 'Maria']).
group('RCOM', ['Ana', 'Andre']).
group('RCOM', ['Diana', 'Jose']).
group('RCOM', ['Bernardete', 'Eleuterio']).
group('RCOM', ['Asdrubal', 'Felismina']).
