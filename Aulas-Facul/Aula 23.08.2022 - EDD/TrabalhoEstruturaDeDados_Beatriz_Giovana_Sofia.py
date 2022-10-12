class Node:
    def __init__(self, data):
        self.data = data
        self.next = None

class LinkedList:
    def __init__(self):
        self.InicioDaLista = None
    
    # Exibir elementos da lista
    def printLista(self):
        atual = self.InicioDaLista
        
        while atual is not None:
            print(atual.data)
            atual = atual.next
    
    # Exibir a quantidade de elementos da lista
    def quantElementos(self):
        if self.InicioDaLista is not None:
            atual = self.InicioDaLista
            proximo = atual.next
            cont = 1
            
            while proximo is not None:
                atual = atual.next
                proximo = atual.next
                cont+=1
            
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
            atual = self.InicioDaLista
            proximo = atual.next
            
            if index == 0:
                Lista.removeDoComeco()
            else:
                for i in range(1,index):
                    if proximo:
                        atual = proximo
                        proximo = proximo.next
                
                atual.next = proximo.next
                del proximo
        else:
            print("Lista vazia")
 
    # Remover determinado elemento - não terminado
    def removeElemento(self):
        print("Você é trouxa")

    # Item inserido na primeira posição - ajustar
    def insereNoComeco(self, elemento):
        if self.InicioDaLista is not None:
            
            NovoNo = Node(elemento)
            NovoNo.next = NovoNo
            self.InicioDaLista = NovoNo
            
        else:
            NovoNo = Node(elemento)
            self.InicioDaLista = NovoNo

    # Item inserido na posição determinada - não terminado
    def insereNoPonto (self, index):
        if self.InicioDaLista is not None:
            atual = self.InicioDaLista
            proximo = atual.next
            
        else:
            print("Lista vazia")

    # Item inserido na última posição
    def insereNoFim(self, elemento):
        if self.InicioDaLista is not None:
            atual = self.InicioDaLista
            
            while atual is not None:
                atual = atual.next

            NovoNo = Node(elemento)
            atual = NovoNo
    
        else:
            NovoNo = Node(elemento)
            self.InicioDaLista = NovoNo

    # Buscar item de posição determinada - não terminado

    # Buscar item por elemento - não terminado

Lista = LinkedList()
meuNo = Node(10)
meuNo1 = Node(11)
meuNo2 = Node(12)
meuNo3 = Node(13)
meuNo4 = Node(0) 
Lista.InicioDaLista = meuNo

meuNo.next = meuNo1
meuNo1.next = meuNo2
meuNo2.next = meuNo3
meuNo3.next = meuNo4

print("\nLista: ") 
Lista.printLista()

Lista.quantElementos()

print("\nRemover item da última posição: ") 
Lista.removeDoFim()
Lista.printLista() #ajustar

print("\nRemover item da primeira posição: ") 
Lista.removeDoComeco()
Lista.printLista()

print("\nRemover item de posição determinada: ")
index = int(input("Escolha a posição do nó que deseja remover: "))
Lista.removeDoPonto(index)
Lista.printLista()

print("\nRemover elemento determinado: ")
elemento = int(input("Escolha o elemento que deseja remover: "))
Lista.removeElemento()
Lista.printLista()

print("\nInserir no começo da lista: ")
elemento = int(input("Digite o valor que deseja inserir: "))
Lista.insereNoComeco(elemento)
Lista.printLista()

print("\nInserir no final da lista: ")
elemento = int(input("Digite o valor que deseja inserir: "))
Lista.insereNoFim(elemento)
Lista.printLista()
