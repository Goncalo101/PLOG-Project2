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

group('LAIG', ['Maria', 'Felismina']).
group('LAIG', ['Manuel', 'Bernardete']).
group('LAIG', ['Asdrubal', 'Eleuterio']).

group('PLOG', ['Maria', 'Eleuterio']).
group('PLOG', ['Bernardete', 'Felismina']).
group('PLOG', ['Manuel', 'Asdrubal']).

group('LTW', ['Manuel', 'Eleuterio']).
group('LTW', ['Bernardete', 'Felismina']).
group('LTW', ['Maria', 'Asdrubal']).

group('RCOM', ['Felismina', 'Manuel']).
group('RCOM', ['Bernardete', 'Maria']).
group('RCOM', ['Eleuterio', 'Asdrubal']).

/*group('LTW', ['Asdrubal', 'Manuel']).
group('LTW', ['Asdrubal', 'Bernardete']).
group('RCOM', ['Asdrubal', 'Manuel']).
group('RCOM', ['Asdrubal', 'Bernardete']).*/

/* group('LAIG', ['Felismina', 'Asdrubal']).
group('LAIG', ['Eleuterio', 'Felismina']).
group('LAIG', ['Eleuterio', 'Felismina']).*/