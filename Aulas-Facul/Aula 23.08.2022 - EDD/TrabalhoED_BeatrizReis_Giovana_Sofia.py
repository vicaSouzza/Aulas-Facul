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

    def empty_list(self):
        return self.size == 0
    
    #Método necessário para ser possível usar a função len()
    def __len__(self):
        return self.size

    #responsável por verificar os nós entre dois valores
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
        if self.empty_list():
            print("Lista vazia")
        return self.delete_node(self.header.next) 
    
    def delete_last(self):
        if self.empty_list():
            print("Lista vazia")
        return self.delete_node(self.trailer.previous)

    def delete_selectItem(self, elemento): #rever esse
        if self.empty_list():
            print("Lista vazia")
        else:
            atual = self.header.next

            while atual.data is not elemento:
                atual = atual.next
            
            return self.delete_node(atual)

    #def delete_selectPosition(self):
    
    def buscaPosicao (self, index): #ARRUMAR
        atual = self.header
        
        if index == 0:
            print(atual.data)
        else:
            for i in range(index):
                atual = atual.next
            print('Elemento encontrado na posição ',index,": ",atual.data)

    #def buscaElemento (self,elemento):

    def print_list(self):
        temp = self.header.next
        x = []
       
        while temp.next != None:
            x.append(temp.data)
            temp = temp.next
        return x

Lista = CDLinkedList()

Lista.insert_first(14)
Lista.insert_first(12)
Lista.insert_first(11)
Lista.insert_first(10)

print("Quantidade de elementos da lista:")
print(len(Lista))

print("\nLista: ") 
print(Lista.print_list())

print("\nRemover item da última posição: ") 
#Lista.delete_last() #Entender porque só retorna o elemento que foi removido
print(Lista.print_list())

print("\nRemover item da primeira posição: ") 
Lista.delete_first()
print(Lista.print_list())

print("\nRemover item de posição determinada: ")
index = int(input("Escolha a posição do nó que deseja remover: "))
#Lista.delete_selectPosition(index) #ajustar  
print(Lista.print_list())

print("\nRemover elemento determinado: ")
elemento = int(input("Escolha o elemento que deseja remover: "))
Lista.delete_selectItem(elemento) #ajustar
print(Lista.print_list())

print("\nInserir no começo da lista: ")
Lista.insert_first(9)
print(Lista.print_list())

print("\nInserir no final da lista: ")
Lista.insert_last(15) #Entender porque só retorna o elemento que foi inserido
print(Lista.print_list())

print("\nInserir na posição determinada: ") 
#Lista.insereNoPonto(elemento) #TEMOS no outro
print(Lista.print_list())

print("\nBuscar elemento pela posição: ")
index = int(input("Digite a posição que deseja buscar: "))
Lista.buscaPosicao(index) #TEMOS  no outro
print(Lista.print_list())

print("\nBuscar elemento: ")
#Lista.buscaElemento(elemento) #TEMOS no outro
print(Lista.print_list())
