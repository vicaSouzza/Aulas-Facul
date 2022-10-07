#CC4P12
#Beatriz de Souza Mantovani dos Reis - G22FAD6
#Giovanna Zanetti - G181719
#Sofia Gozzoli - F3428D6

class Node:
    def __init__(self, data):
        self.data = data
        self.next = None

class LinkedList:
    def __init__(self):
        InicioDaLista = None
    
    # Exibir elementos da lista
    def printLista(self):
        atual = self.InicioDaLista;
        while atual.next is not None:
            print(atual.data)
            atual = atual.next
    
    # Exibir a quantidade de elementos da lista
    def quantElementos(self):
        if self.InicioDaLista is not None:
            atual = self.InicioDaLista
            proximo = atual.next
            cont = 1
            
            while proximo.next is not None:
                cont+=1
                atual = atual.next
                proximo = atual.next
            
            atual.next = None
            print("\nQuantidade de elementos: ",cont)
        else:
            print("Lista vazia")

    # Remover item da primeira posição 
    def removeDoComeco(self):
        
        if self.InicioDaLista is not None:
            atual = self.InicioDaLista
            self.InicioDaLista = atual.next
            del atual
        else:
            print("Lista vazia")
    
    # Remover item da última posição
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

    # Remover item de posição determinada
    def removeDoPonto (self, index):
        if self.InicioDaLista is not None:
            antecessor = self.InicioDaLista
            proximo = antecessor.next
            
            if index == 0:
                Lista.removeDoComeco()
            else:
                for i in range(1,index):
                    if proximo:
                        antecessor = proximo
                        proximo = proximo.next
                
                antecessor.next = proximo.next
                del proximo
        else:
            print("Lista vazia")
 
    # Remover determinado elemento
    def removeElemento(self):
        if self.InicioDaLista is not None:
            antecessor = self.InicioDaLista
            proximo = antecessor.next
            
            if index == 0:
                Lista.removeDoComeco()
            else:
                for i in range(1,index):
                    if proximo:
                        antecessor = proximo
                        proximo = proximo.next
                
                antecessor.next = proximo.next
                del proximo
        else:
            print("Lista vazia")

    # Item inserido na primeira posição
    def insereNoComeco(self):
        if self.InicioDaLista is not None:
            antecessor = self.InicioDaLista
            proximo = antecessor.next
            
        else:
            print("Lista vazia")

    # Item inserido na posição determinada
    def insereNoPonto (self, index):
        if self.InicioDaLista is not None:
            antecessor = self.InicioDaLista
            proximo = antecessor.next
            
        else:
            print("Lista vazia")

    # Item inserido na última determinada
    def insereNoFim(self):
        if self.InicioDaLista is not None:
            antecessor = self.InicioDaLista
            proximo = antecessor.next
            
        else:
            print("Lista vazia")

    # Buscar item de posição determinada

    # Buscar item por elemento

meuNo = Node(10)
meuNo1 = Node(11)
meuNo2 = Node(12)
meuNo3 = Node(13)
Lista = LinkedList()
Lista.InicioDaLista = meuNo

meuNo.next = meuNo1
meuNo1.next = meuNo2
meuNo2.next = meuNo3

print("\nLista: ") 
Lista.printLista()

Lista.quantElementos()

Lista.removeDoFim()
print("\nRemover item da última posição: ") 
Lista.printLista()

Lista.removeDoComeco()
print("\nRemover item da primeira posição: ") 
Lista.printLista()


print("\nRemover item de posição determinada: ")
index = int(input("Escolha a posição do nó que deseja remover: "))
Lista.removeDoPonto(index)
Lista.printLista()

print("\nRemover elemento determinado: ")
elemento = int(input("Escolha o elemento que deseja remover: "))
Lista.removeElemento()
Lista.printLista()
