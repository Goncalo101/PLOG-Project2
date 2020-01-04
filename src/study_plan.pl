:-use_module(library(lists)).
:-use_module(library(clpfd)).

make_tasks([], [], [], []).
make_tasks([Module|T], [Start|Starts], [End|Ends], [Task|Tasks]) :-
    study_hours(Module, Time),
    Task =.. [task, Start, Time, End, 1, Module],
    make_tasks(T, Starts, Ends, Tasks).

study(Student) :-
    %find all modules where the student is enrolled in
    findall(Module, enrolled_in(Student, Module), Modules),
    length(Modules, Length),

    %create lists for start and end times with as many 
    %elements as modules the student is enrolled in
    length(StartTimes, Length),
    length(EndTimes, Length),

    %generate list of tasks to use in the cumulative predicate
    make_tasks(Modules, StartTimes, EndTimes, Tasks),
    write(Tasks), nl,

    domain(StartTimes, 0, 10),
    maximum(End, EndTimes),
    cumulative(Tasks),
    labeling([minimize(End)], StartTimes),
    write(Student), nl,
    write(StartTimes), nl,
    write(EndTimes), nl, nl.

study_time([H|T]):-
    study(H),
    study_time(T).

study_time([_]).


%enrolled_in(Student, Module).
enrolled_in('Eme de Maria', 'ESOF').
enrolled_in('Eme de Maria', 'PLOG').
enrolled_in('Eme de Maria', 'LTW').
enrolled_in('Valdisnei', 'PLOG').
enrolled_in('Valdisnei', 'LAIG').
enrolled_in('Umdoistres da Silva Quatro', 'LTW').

%study_hours(Module, Time).
study_hours('ESOF', 2).
study_hours('PLOG', 3).
study_hours('LAIG', 5).
study_hours('LTW', 1).

%group(Module, Students)
group('PLOG', ['Eme de Maria', 'Valdisnei']).


/*  Students is the list of students, then you add a list with their curricular units */
students(Students):-
    curricular_units(Students).

curricular_units([]).
curricular_units([H|T]):-
    write(H), write(' curricular units: '),
    read(CurricularUnits),
    write(CurricularUnits), nl, nl,

    curricular_units(T).
