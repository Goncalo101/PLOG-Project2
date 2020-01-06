:- include('study_plan.pl').
:- include('30students.pl').

start :-
    statistics(walltime, [T0|_]),
    study(['Bernardete', 'Asdrubal', 'Eleuterio', 'Felismina', 'Manuel', 'Maria', 'Jose', 'Ana', 'Diana', 'Miguel', 'Andre', 'Sofia',
    'Anacleto', 'Piedade', 'Margarida', 'Joao', 'Joana', 'Isabel',
    'Joaquim', 'Zulmira', 'Cristiano', 'Paula', 'Napoleao', 'Fatima',
    'Zezinho', 'Carlos', 'Celia', 'Marta', 'Paulo', 'Mafalda']),
    statistics(walltime, [T1|_]),
    fd_statistics,
    T is T1 - T0,
    format('study took ~3d sec.~n', [T]).