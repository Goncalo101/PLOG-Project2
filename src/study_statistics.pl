:- include('study_plan.pl').

start :-
    statistics(runtime, [T0|_]),
    study(['Bernardete', 'Asdrubal', 'Eleuterio', 'Felismina', 'Manuel', 'Maria']),
    statistics(runtime, [T1|_]),
    T is T1 - T0,
    format('study took ~3d sec.~n', [T]).