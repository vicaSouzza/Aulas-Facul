class Node:
    def __init__(self, data):
        self.data = data
        self.next = None

class LinkedList:
    def __init__(self):
        self.IniciodaLista = None

    def printList(self):
        atual = self.IniciodaLista
        while atual is not None:
            print(atual.data, end=" ")
            atual = atual.next

    def insertIntoEmptyList(self, element):
        newNode = Node(element)
        self.IniciodaLista = newNode


meuNo = Node(10)
print("O dado armazenado no No é:", meuNo.data)
print("O apontador next é :", meuNo.next)

minhaListaencadeada = LinkedList()
meuNo1 = Node(10)
meuNo2 = Node(20)
meuNo3 = Node(30)
meuNo4 = Node(40)

minhaListaencadeada.Head = meuNo1
meuNo1.next = meuNo2
meuNo2.next = meuNo3
meuNo3.next = meuNo4

print("Os elementos na lista ligada são:")

print(minhaListaencadeada.Head.data, end=" ")
print(minhaListaencadeada.Head.next.data, end=" ")
print(minhaListaencadeada.Head.next.next.data, end=" ")
print(minhaListaencadeada.Head.next.next.next.data)


##################################################
class Node:
    Def _init_(self, data):
        self.data = data
        self.next = None

class LinkedList:
    Def _init_(self):
        InicioDaLista = None

meuNo = Node(10)

print("O dado armazenado no No é:", meuNo.data)
print("O apontador next é: ", meuNo.next)

Def removeDoFim (self):
    if meuNo.next == None:
        meuNo.data.remove
