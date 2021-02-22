struct ComplexNumber <: Number
	a::Real
	b::Real
end

function Base.:(==)(lhs::ComplexNumber, rhs::ComplexNumber)
    lhs.a ≈ rhs.a && lhs.b ≈ rhs.b
end

function Base.:(≈)(lhs::ComplexNumber, rhs::ComplexNumber)
    lhs == rhs
end

function Base.:(+)(lhs::ComplexNumber, rhs::ComplexNumber)
	ComplexNumber(lhs.a + rhs.a, lhs.b + rhs.b)
end

function Base.:(-)(lhs::ComplexNumber, rhs::ComplexNumber)
	ComplexNumber(lhs.a - rhs.a, lhs.b - rhs.b)
end

function Base.:(*)(lhs::ComplexNumber, rhs::ComplexNumber)
	r = lhs.a * rhs.a - lhs.b * rhs.b
	i = lhs.a * rhs.b + lhs.b * rhs.a
	ComplexNumber(r, i)
end

function Base.:(exp)(n::ComplexNumber)
	r = exp(n.a) * cos(n.b)
	i = exp(n.a) * sin(n.b)
	ComplexNumber(r, i)
end

function reciprocal(n::ComplexNumber)
	den = n.a^2 + n.b^2
	ComplexNumber(n.a/den, -n.b/den)
end

function Base.:(/)(lhs::ComplexNumber, rhs::ComplexNumber)
	lhs * reciprocal(rhs)
end

Base.:(abs)(n::ComplexNumber) = √(n.a^2 + n.b^2)

conj(n::ComplexNumber) = ComplexNumber(n.a, -n.b)
real(n::ComplexNumber) = n.a
imag(n::ComplexNumber) = n.b


