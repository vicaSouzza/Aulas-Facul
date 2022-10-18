# Beatriz Reis - G22FAD6 - CC4P12
# Sofia Gozzoli - F3428D6 - CC3P12
# Giovanna Zanetti - G181719 - CC4P12

class Node:
    def __init__(self, data, previous, next):
        self.data = data
        self.previous = previous
        self.next = next

class CDLinkedList:
    def __init__(self):
        self.header = Node(None, None, None)
        self.trailer = Node(None, None, None)
        self.header.next = self.trailer

        self.trailer.previous = self.header
        self.size = 0

    def is_empty(self):
        return self.size == 0
    
    #
    def __len__(self):
        return self.size

    def insert_between(self, item, predecessor, successor):
        novoNo = Node(item, predecessor, successor)
        predecessor.next = novoNo
        predecessor.next = novoNo
        self.size += 1
        
        return novoNo
    
    def delete_node(self, node):
        predecessor = node.previous
        successor = node.next
        predecessor.next = successor
        successor.previous = predecessor
        self.size -= 1

        #armazena o elemento removido 
        element = node.data
        node.previous = node.next = node.element = None
        
        return element
    
    def insert_first(self, data):
        self.insert_between(data, self.header, self.header.next)

    def insert_last(self, data):
        self.insert_between(data, self.trailer.previous, self.trailer)

    def delete_first(self):
        if self.is_empty():
            print("Lista vazia")
        return self.delete_node(self.header.next) 
    
    def delete_last(self):
        if self.is_empty():
            print("Lista vazia")
        return self.delete_node(self.trailer.previous)

    #def delete_selectItem(self): 

    #def delete_selectPosition(self):
    
    #def buscaPosicao (self, index):

    #def buscaElemento (self,elemento):

    def print_list(self):
        temp = self.header.next
        x = []
       
        while temp.next != None:
            x.append(temp.data)
            temp = temp.next
        return x

Lista = CDLinkedList()

Lista.insert_first(13)
Lista.insert_first(12)
Lista.insert_first(11)
Lista.insert_first(10)

print("Quantidade de elementos da lista:")
print(len(Lista))

print("\nLista: ") 
print(Lista.print_list())

print("\nRemover item da última posição: ") 
Lista.delete_last() #Rever erro
print(Lista.print_list())

print("\nRemover item da primeira posição: ") 
Lista.delete_first()
print(Lista.print_list())

#print("\nRemover item de posição determinada: ")
#index = int(input("Escolha a posição do nó que deseja remover: "))
#Lista.removeDoPonto(index) #ajustar  
#print(Lista.print_list())

#print("\nRemover elemento determinado: ")
#elemento = int(input("Escolha o elemento que deseja remover: "))
#Lista.removeElemento(elemento) #ajustar
#print(Lista.print_list())

print("\nInserir no começo da lista: ")
Lista.insert_first(1)
print(Lista.print_list())

print("\nInserir no final da lista: ")
Lista.insert_last(2) #REVER
print(Lista.print_list())

print("\nInserir na posição determinada: ") 
#Lista.insereNoPonto(elemento) #TEMOS no outro
print(Lista.print_list())

print("\nBuscar elemento pela posição: ")
Lista.buscaPosicao(index) #TEMOS  no outro
print(Lista.print_list())

print("\nBuscar elemento: ")
Lista.buscaElemento(elemento) #TEMOS no outro
print(Lista.print_list())