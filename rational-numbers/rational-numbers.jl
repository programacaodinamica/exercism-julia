import Base.:+, Base.:-, Base.:*, Base.:/, Base.:abs, Base.:^
import Base.:(==), Base.:(!=), Base.:<, Base.:<=, Base.:>, Base.:>=
import Base.:zero, Base.:one

struct RationalNumber{T <: Integer} <: Real
	num::T
	den::T

	function RationalNumber{T}(a::T, b::T) where T <: Integer
		if b == 0 
			throw(ArgumentError("Denominator is zero!"))
		else
			m = gcd(a, b)
			if b < 0
				a = -a
				b = -b
			end
			new(a ÷ m, b ÷ m)
		end
	end
end

RationalNumber(n::Int) = RationalNumber(n, 1)

promote_rule(::Type{RationalNumber{T}}, ::Type{S}) where {T <: Integer, S <: Integer} = RationalNumber{promote_type(T, S)}
promote_rule(::Type{Rational{T}}, ::Type{Rational{S}}) where {T<:Integer,S<:Integer} = Rational{promote_type(T,S)}


numerator(rat) = rat.num
denominator(rat) = rat.den

# function zero(::Type{RationalNumber{Int}})
# 	RationalNumber(0, 1)
# end

# function one(::Type{RationalNumber{Int}})
# 	RationalNumber(1, 1)
# end


# lhs = left hand side
function +(lhs::RationalNumber, rhs::RationalNumber)
	den = lhs.den * rhs.den
	num = lhs.num * (rhs.den) + rhs.num * (lhs.den)
	RationalNumber(num, den)
end

function -(lhs::RationalNumber, rhs::RationalNumber)
	lhs + RationalNumber(-rhs.num, rhs.den)
end

function *(lhs::RationalNumber, rhs::RationalNumber)
	RationalNumber(lhs.num * rhs.num, lhs.den * rhs.den)
end

function /(lhs::RationalNumber, rhs::RationalNumber)
	lhs * RationalNumber(rhs.den, rhs.num)
end

function abs(rat::RationalNumber)
	RationalNumber(abs(rat.num), abs(rat.den))
end

function ^(lhs::RationalNumber, rhs::Int)
	RationalNumber(lhs.num^rhs, lhs.den^rhs)
end

function ^(lhs::Real, rhs::RationalNumber)
	lhs^(rhs.num/rhs.den)
end

function ==(lhs::RationalNumber, rhs::RationalNumber)
	lhs.num == rhs.num && lhs.den == rhs.den
end

!=(lhs::RationalNumber, rhs::RationalNumber) = !(lhs == rhs)

function <(lhs::RationalNumber, rhs::RationalNumber)
	lhs.num * (rhs.den) < rhs.num * (lhs.den)
end

<=(lhs::RationalNumber, rhs::RationalNumber) = lhs < rhs || lhs == rhs

>(lhs::RationalNumber, rhs::RationalNumber) = !(lhs <= rhs)
	
>=(lhs::RationalNumber, rhs::RationalNumber) = lhs > rhs || lhs == rhs






