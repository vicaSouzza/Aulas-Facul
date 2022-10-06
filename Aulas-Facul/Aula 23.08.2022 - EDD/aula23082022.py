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


####   Remove no Final   ##############################################
class Node:
    def __init__(self, data):
        self.data = data
        self.next = None

class LinkedList:
    def __init__(self):
        InicioDaLista = None
        
    def printLista(self):
        atual = self.InicioDaLista;
        while atual.next is not None:
            print(atual.data)
            atual = atual.next
    
    def removeDoFim (self):
        if self.InicioDaLista is not None:
            atual = self.InicioDaLista
            proximo = atual.next
            
            while proximo.next is not None:
                atual = atual.next
                proximo = atual.next
            
            atual.next = None
            del proximo
        else:
            print("Lista vazia")

meuNo = Node(10)
meuNo1 = Node(11)
meuNo2 = Node(12)
meuNo3 = Node(13)
Lista = LinkedList()
Lista.InicioDaLista = meuNo

meuNo.next = meuNo1
meuNo1.next = meuNo2
meuNo2.next = meuNo3

Lista.printLista()

Lista.removeDoFim()

print("\n\n")
Lista.printLista()

####   Remove no Começo  ##############################################

class Node:
    Def _init_(self, data):
        self.data = data
        self.next = None

class LinkedList:
    Def _init_(self):
        InicioDaLista = None

meuNo = Node(10)

atual = self.InicioDaLista

self.InicioDaLista = atual.next

del atual


####   Remove no Meio  ##############################################

class Node:
    def __init__(self, data):
        self.data = data
        self.next = None

class LinkedList:
    def __init__(self):
        InicioDaLista = None
        
    def printLista(self):
        atual = self.InicioDaLista;
        while atual is not None:
            print(atual.data)
            atual = atual.next
    
    def removeDoPonto (self, index):
        if self.InicioDaLista is not None:
            antecessor = self.InicioDaLista
            proximo = antecessor.next
            
            for i in range(1,index):
                if proximo:
                    antecessor = proximo
                    proximo = proximo.next
            
            antecessor.next = proximo.next
            del proximo
        

meuNo = Node(10)
meuNo1 = Node(11)
meuNo2 = Node(12)
meuNo3 = Node(13)
meuNo4 = Node(14)
meuNo5 = None
Lista = LinkedList()
Lista.InicioDaLista = meuNo

meuNo.next = meuNo1
meuNo1.next = meuNo2
meuNo2.next = meuNo3
meuNo3.next = meuNo4
meuNo4.next = None

Lista.printLista()
print("\n------")
Lista.removeDoPonto(2) #escolhe um index para remover
Lista.printLista()
