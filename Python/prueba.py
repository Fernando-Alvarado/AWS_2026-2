# Codigo para el fizz buzz

def fizz_buzz(n):
    contenedor = []
    for i in range(1, n + 1):
        if i % 3 == 0 and i % 5 == 0:
            contenedor.append("FizzBuzz")
        elif i % 3 == 0:
            contenedor.append("Fizz")
        elif i % 5 == 0:
            contenedor.append("Buzz")
        else:
            contenedor.append(str(i))
    return contenedor

print(fizz_buzz(15))