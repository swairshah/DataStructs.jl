module DataStructs

import Base: <, <=, ==, length, isempty, iterate, show,
             last, first, eltype, map, filter, size,
             maximum, minimum

include("list.jl")
# Write your package code here.
export LinkedList, Nil, Cons, nil, cons, head, tail, list

end
