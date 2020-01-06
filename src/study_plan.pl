:- use_module(library(lists)).
:- use_module(library(clpfd)).

get_type(1, 'Individual').
get_type(2, 'Group').

make_tasks([], [], [], []).
make_tasks([[Module, Type]|T], [Start|Starts], [End|Ends], [Task|Tasks]) :-
    study_hours(Module, Type, Time),
    get_type(Type, TypeString),
    Task =.. [task, Start, Time, End, 1, Module-TypeString],
    make_tasks(T, Starts, Ends, Tasks).

all_tasks([], [], [], []).
all_tasks([Student|Students], [Task|Tasks], [Start|Starts], [End|Ends]) :-
    %find all modules where the student is enrolled in
    findall([Module, Type], (enrolled_in(Student, Module), study_hours(Module, Type, _)), Modules),
    length(Modules, Length),

    %create lists for start and end times with as many 
    %elements as modules the student is enrolled in
    length(Start, Length),
    length(End, Length),
    domain(Start, 0, 59),
    domain(End, 1, 60),
    
    %generate list of tasks to use in the cumulative predicate
    make_tasks(Modules, Start, End, Task),
    all_tasks(Students, Tasks, Starts, Ends).

get_task([task(StartT, _, _, _, Module-'Group')|Tasks], Module, StartT).

get_task([Task|Tasks], Module, StartT):-
    get_task(Tasks, Module, StartT).

constrain_groups(_, [], [], [], _).
constrain_groups(Students, [[Module, Student1, Student2]|Groups], [StartT1|Starts1], [StartT2|Starts2], Tasks) :-
    nth0(Index, Students, Student1),
    nth0(Index, Tasks, Tasks1),
    nth0(Index2, Students, Student2),
    nth0(Index2, Tasks, Tasks2),
    get_task(Tasks1, Module, StartT1),
    get_task(Tasks2, Module, StartT2),
    StartT1 #= StartT2, 
    constrain_groups(Students, Groups, Starts1, Starts2, Tasks).

group_time(Students, Tasks):-
    findall([Module, Student1, Student2], group(Module, [Student1, Student2]), GroupList),
    length(GroupList, Length),
    length(Starts1, Length),
    length(Starts2, Length),
    constrain_groups(Students, GroupList, Starts1, Starts2, Tasks),
    nl, write(GroupList), nl, write(Starts1), nl, write(Starts2), nl.

acc_constraints([], [], _).
acc_constraints([StartTimes|StartTimess], [EndTimes|EndTimess], [Task|Tasks]) :-
    maximum(End, EndTimes),
    cumulative(Task),
    labeling([minimize(End)], StartTimes),
    acc_constraints(StartTimess, EndTimess, Tasks).

write_schedules([], []).
write_schedules([Student|Students], [Task|Tasks]):-
    write(Student), nl,
    write_tasks(Task), nl,
    write_schedules(Students, Tasks).

write_tasks([]).
write_tasks([task(StartT, _, EndT, _, Module-'Group')|Tasks]):-
    StartTime is StartT + 1,
    EndTime is EndT + 1,
    write(Module), write(' - Group work: slots '), write(StartTime), write(' to '), write(EndTime), nl,
    write_tasks(Tasks).

write_tasks([task(StartT, _, EndT, _, Module-'Individual')|Tasks]):-
    StartTime is StartT + 1,
    EndTime is EndT + 1,
    write(Module), write(' - Individual: slots '), write(StartTime), write(' to '), write(EndTime), nl,
    write_tasks(Tasks).

study(Students) :-
    all_tasks(Students, Tasks, StartTimes, EndTimes),
    group_time(Students, Tasks),
    acc_constraints(StartTimes, EndTimes, Tasks), nl,
    write('Slots 1 to 10 represent day 1, 11 to 20 day 2, and so on!'), nl, nl,
    write_schedules(Students, Tasks).

%enrolled_in(Student, Module).
enrolled_in('Asdrubal', 'ESOF').
enrolled_in('Asdrubal', 'PLOG').
enrolled_in('Asdrubal', 'LTW').
/*enrolled_in('Asdrubal', 'RCOM').
enrolled_in('Asdrubal', 'LAIG').*/
enrolled_in('Felismina', 'PLOG').
enrolled_in('Felismina', 'ESOF').
enrolled_in('Felismina', 'LTW').
/*enrolled_in('Felismina', 'RCOM').
enrolled_in('Felismina', 'LAIG').
enrolled_in('Felismina', 'LCOM').*/
enrolled_in('Bernardete', 'LTW').
enrolled_in('Bernardete', 'ESOF').
enrolled_in('Bernardete', 'PLOG').
enrolled_in('Eleuterio', 'LTW').
enrolled_in('Eleuterio', 'ESOF').
enrolled_in('Eleuterio', 'PLOG').

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
group('PLOG', ['Asdrubal', 'Eleuterio']).
group('PLOG', ['Bernardete', 'Felismina']).
group('LTW', ['Asdrubal', 'Bernardete']).
group('LTW', ['Eleuterio', 'Felismina']).