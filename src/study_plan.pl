:-use_module(library(lists)).
:-use_module(library(clpfd)).

study(Student):-
    StartT = [O1, O2, O3],
    EndT = [E1, E2, E3],
    Tasks = [
        task(O1, 2, E1, 1, esof),
        task(O2, 1, E2, 1, laig),
        task(O3, 2, E3, 1, plog)
    ],
    domain(StartT, 0, 10),
    maximum(End, EndT),
    cumulative(Tasks),
    labeling([minimize(End)], StartT),
    write(Student), nl,
    write(StartT), nl,
    write(EndT), nl, nl.

study_time([H|T]):-
    study(H),
    study_time(T).

study_time([_]).

/*  Students is the list of students, then you add a list with their curricular units*/
students(Students):-
    curricular_units(Students).

curricular_units([H|T]):-
    write(H), write(' curricular units:'),
    read(CurricularUnits),
    write(CurricularUnits), nl, nl,
    curricular_units(T).

curricular_units([]).
