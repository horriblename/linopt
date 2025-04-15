set I := {1..6};

param weights[I] := <1> 5, <2> 4, <3> 2, <4> 8, <5> 8, <6> 9;
param costs[I] := <1> 30, <2> 40, <3> 10, <4> 70, <5> 10, <6> 50;

var x[I] integer >= 0;

maximize cost: sum <i> in I : costs[i] * x[i];

subto c1: sum <i> in I: weights[i] * x[i] <= 20;
