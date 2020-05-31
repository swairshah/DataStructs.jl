import Base: ==, <=, !=, length, eltype, iterate

abstract type LinkedList{T} end

mutable struct Nil{T} <: LinkedList{T}
end

mutable struct Cons{T} <: LinkedList{T}
    head::T
    tail::LinkedList{T}
end

cons(h, t::LinkedList{T}) where {T} = Cons{T}(h, t)

head(x::Cons) = x.head
tail(x::Cons) = x.tail

nil(T) = Nil{T}()
nil() = Nil{Any}()

==(x::Nil, y::Nil) = true
==(x::Cons, y::Cons) = (x.head == y.head) && (x.tail == y.tail)

list() = nil()

function list(elts::T...) where T
    l = nil(T)
    for i=length(elts):-1:1
        l = cons(elts[i],l)
    end
    return l
end

#length(l::Nil{T}) where {T} = 0
#length(l::Cons{T}) where {T} = 1 + length(l.tail)
length(l::Nil) = 0
function length(l::Cons)
    n = 0
    for i in l
        n += 1
    end
    return n
end

iterate(l::LinkedList, ::Nil) = nothing
function iterate(l::LinkedList, state::Cons = l)
    state.head, state.tail
end
