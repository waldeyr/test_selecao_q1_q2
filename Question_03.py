Input = [1, 7, 13, 22, 5, 12, 30, 9, 6, 7, 7, 9, 5, 38, 43, 9]
print(f"Input..........: {Input}")

def quicksort(lista):
    if len(lista) <= 1:
        return lista
    pivot = lista[len(lista) // 2]
    esquerda = [x for x in lista if x < pivot]
    meio = [x for x in lista if x == pivot]
    direita = [x for x in lista if x > pivot]
    return quicksort(esquerda) + meio + quicksort(direita)

def buscador(Input):
    Output = list()
    for item in Input:
        if 5 == item:
            Output.append(5)
        if 7 == item:
            Output.append(7)
        if 9 == item:
            Output.append(9)
    return list(set(Output))

Output = buscador(Input)
print(f"Output.........: {Output}")
Output = quicksort(Output)
print(f"Output ordenado: {Output}")