# 4. Declaração de funções
function separador(symbol='*', n=10)
	println(repeat(symbol, n))
end
separador('*', 20)

# 0. Hello, World
println("Hello, World")
separador()
# 1. Declaração de variáveis
nome = "Hallison Paz"
idade = 15
println(nome, " ", idade)
separador('-', 20)
# 2. If-else (controle de fluxo)
if idade ≥ 18 && idade < 70
	println(nome, " é obrigado a votar")
elseif idade < 16
	println(nome, " não pode votar")
else
	println(nome, " não é obrigado a votar")
end

separador('+', 15)
# 3. Repetições (iterações)
planetas = ["Mercúrio", "Vênus", "Terra", "Marte", "Júpiter"]
for p in planetas
	println(p)
end

for i = 1:9
	println(i)
end
# FALHOU
for (i, p) in enumerate(planetas)
	println("$i º planeta é $p")
end
separador()

# 5 Mais sobre funções
function distance(x, y)
    √(x^2 + y^2)
end

distance2(a, b) = √(a^2 + b^2)

d = distance(4, 3)
println(d)
d = distance2(5, 12)
println(d)

# Composição de funções
# f(g(x)) = f ⊝ g

soma_e_multiplica = √ |> + 
r = soma_e_multiplica(12, 4)
println(r)








