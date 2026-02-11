x = [2, 7, 11, 15]
y = 26

def two_sum(x, y):
# i y j se comportan como posiciones de la lista
# tamaño
  for i in range(len(x)):
    for j in range(len(x)):
      if x[i] + x[j] == y:
        return i, j

resultado = two_sum(x, y)
print(resultado)