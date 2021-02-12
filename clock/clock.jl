

struct Clock
	hours::Int
	minutes::Int
end

format(n) = length(digits(n)) == 2 ? "$n" : "0$n"

Base.:(==)(lhs::Clock, rhs::Clock) = repr(lhs) == repr(rhs)

function repr(clock::Clock)
	m = clock.minutes % 60
	q = clock.minutes ÷ 60
	
	if m < 0
		q =  q - 1
		m = 60 + m
	end
	
	h = (q + clock.hours) % 24
	h = format(h ≥ 0 ? h : h + 24)
	m = format(m)
	"\"$h:$m\""
end

function Base.:(+)(clock::Clock, minutes::Minute)
	Clock(clock.hours, clock.minutes + minutes.value)
end

function Base.:(-)(clock::Clock, minutes::Minute)
	Clock(clock.hours, clock.minutes - minutes.value)
end

Base.show(io::IO, clk::Clock) = print(io, repr(clk))





