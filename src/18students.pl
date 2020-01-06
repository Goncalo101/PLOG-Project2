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

enrolled_in('Anacleto', 'LAIG').
enrolled_in('Anacleto', 'ESOF').
enrolled_in('Anacleto', 'PLOG').
enrolled_in('Anacleto', 'RCOM').
enrolled_in('Anacleto', 'LTW').

enrolled_in('Piedade', 'LAIG').
enrolled_in('Piedade', 'ESOF').
enrolled_in('Piedade', 'PLOG').
enrolled_in('Piedade', 'RCOM').
enrolled_in('Piedade', 'LTW').

enrolled_in('Margarida', 'LAIG').
enrolled_in('Margarida', 'ESOF').
enrolled_in('Margarida', 'PLOG').
enrolled_in('Margarida', 'RCOM').
enrolled_in('Margarida', 'LTW').

enrolled_in('Joao', 'LAIG').
enrolled_in('Joao', 'ESOF').
enrolled_in('Joao', 'PLOG').
enrolled_in('Joao', 'RCOM').
enrolled_in('Joao', 'LTW').

enrolled_in('Joana', 'LAIG').
enrolled_in('Joana', 'ESOF').
enrolled_in('Joana', 'PLOG').
enrolled_in('Joana', 'RCOM').
enrolled_in('Joana', 'LTW').

enrolled_in('Isabel', 'LAIG').
enrolled_in('Isabel', 'ESOF').
enrolled_in('Isabel', 'PLOG').
enrolled_in('Isabel', 'RCOM').
enrolled_in('Isabel', 'LTW').

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
group('ESOF', ['Jose', 'Eleuterio']).
group('ESOF', ['Maria', 'Manuel']).
group('ESOF', ['Ana', 'Bernardete']).
group('ESOF', ['Sofia', 'Diana']).
group('ESOF', ['Miguel', 'Andre']).
group('ESOF', ['Anacleto', 'Piedade']).
group('ESOF', ['Joana', 'Joao']).
group('ESOF', ['Isabel', 'Margarida']).

group('LAIG', ['Maria', 'Felismina']).
group('LAIG', ['Manuel', 'Bernardete']).
group('LAIG', ['Diana', 'Eleuterio']).
group('LAIG', ['Jose', 'Ana']).
group('LAIG', ['Sofia', 'Miguel']).
group('LAIG', ['Andre', 'Asdrubal']).
group('LAIG', ['Joana', 'Margarida']).
group('LAIG', ['Piedade', 'Joao']).
group('LAIG', ['Isabel', 'Anacleto']).

group('PLOG', ['Maria', 'Eleuterio']).
group('PLOG', ['Bernardete', 'Felismina']).
group('PLOG', ['Manuel', 'Isabel']).
group('PLOG', ['Ana', 'Jose']).
group('PLOG', ['Miguel', 'Diana']).
group('PLOG', ['Andre', 'Sofia']).
group('PLOG', ['Anacleto', 'Margarida']).
group('PLOG', ['Joana', 'Asdrubal']).
group('PLOG', ['Joao', 'Piedade']).

group('LTW', ['Manuel', 'Eleuterio']).
group('LTW', ['Bernardete', 'Andre']).
group('LTW', ['Maria', 'Asdrubal']).
group('LTW', ['Ana', 'Jose']).
group('LTW', ['Miguel', 'Piedade']).
group('LTW', ['Anacleto', 'Diana']).
group('LTW', ['Sofia', 'Joao']).
group('LTW', ['Margarida', 'Felismina']).
group('LTW', ['Isabel', 'Miguel']).

group('RCOM', ['Sofia', 'Miguel']).
group('RCOM', ['Manuel', 'Maria']).
group('RCOM', ['Ana', 'Andre']).
group('RCOM', ['Diana', 'Jose']).
group('RCOM', ['Bernardete', 'Eleuterio']).
group('RCOM', ['Asdrubal', 'Piedade']).
group('RCOM', ['Anacleto', 'Felismina']).
group('RCOM', ['Joana', 'Joao']).
group('RCOM', ['Isabel', 'Margarida']).
