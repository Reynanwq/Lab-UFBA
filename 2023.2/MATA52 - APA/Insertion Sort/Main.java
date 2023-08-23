import java.util.Arrays;

public class Main {
    public static void main(String[] args) {
        int[] arr = {12, 11, 13, 5, 6};
        InsertionSort.insertionSort(arr);
        System.out.println("Sorted array: " + Arrays.toString(arr));
    }
}

/*
O algoritmo que você postou é uma implementação do **Insertion Sort**, que é um algoritmo de ordenação simples e eficiente, especialmente para pequenos conjuntos de dados ou quando o conjunto já está quase ordenado. Ele funciona da seguinte maneira:

1. Começando do segundo elemento (índice 1) até o final do array, o algoritmo itera sobre cada elemento.
2. Para cada elemento, ele é comparado com todos os elementos à sua esquerda até que um elemento menor ou igual seja encontrado, ou até que o início do array seja alcançado.
3. Enquanto compara e move os elementos, o algoritmo cria espaço para inserir o elemento na posição correta.
4. O elemento é então inserido na posição correta, garantindo que a sublista à esquerda do elemento atual esteja sempre ordenada.
5. O algoritmo continua esse processo até que todos os elementos estejam em suas posições corretas.

Esse algoritmo possui uma complexidade de tempo de **O(n^2)** no pior caso (quando o array está totalmente desordenado), mas pode ser mais eficiente do que outros algoritmos de ordenação, como Bubble Sort ou Selection Sort, em situações específicas, especialmente quando o número de elementos pequenos.

Aqui estão alguns outros exemplos de algoritmos de ordenação que utilizam o Insertion Sort como parte de suas implementações:

1. **Shell Sort:**
O Shell Sort é uma variação do Insertion Sort que visa melhorar o desempenho do Insertion Sort para conjuntos maiores de dados, reduzindo o número de comparações e trocas necessárias. Ele divide o array em subgrupos e aplica o Insertion Sort em cada subgrupo.

2. **Binary Insertion Sort:**
Esta é uma versão otimizada do Insertion Sort que utiliza busca binária para encontrar a posição correta de inserção de um elemento. Isso reduz o número de comparações necessárias para encontrar a posição correta, tornando o algoritmo mais eficiente.

3. **Tim Sort:**
O Tim Sort é um algoritmo híbrido que combina técnicas do Merge Sort e Insertion Sort. Ele é utilizado como algoritmo de ordenação padrão na linguagem Python devido à sua eficiência e adaptabilidade a diferentes tipos de dados.

Embora o Insertion Sort possa ser menos eficiente em comparação com algoritmos como o Merge Sort ou Quick Sort para conjuntos de dados maiores, ele é valioso em situações específicas, como quando o conjunto de dados já está parcialmente ordenado ou possui um tamanho pequeno.
*/