print('Hello, from sagemath container!')

R.<x> = PolynomialRing(QQ)
f = 'x^2 - 1'
print(f'The factorization of {f} is {R(f).factor()}.')
