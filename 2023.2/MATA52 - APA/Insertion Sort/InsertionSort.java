import java.util.Arrays;

public class InsertionSort {
    public static void insertionSort(int[] arr) {
        int n = arr.length;
        for (int i = 1; i < n; i++) {
            int key = arr[i];
            int j = i - 1;

            System.out.println("\nCurrent element: " + key);
            System.out.println("Subarray before sorting: " + Arrays.toString(arr));

            while (j >= 0 && arr[j] > key) {
                arr[j + 1] = arr[j];
                j--;

                System.out.println("Shifting " + arr[j + 1] + " to the right");
                System.out.println("Subarray during shifting: " + Arrays.toString(arr));
            }

            arr[j + 1] = key;

            System.out.println("Placing " + key + " in its correct position");
            System.out.println("Subarray after sorting: " + Arrays.toString(arr));
        }
    }

    public static void main(String[] args) {
        int[] arr = {12, 11, 13, 5, 6};
        System.out.println("Original array: " + Arrays.toString(arr));
        insertionSort(arr);
        System.out.println("Sorted array: " + Arrays.toString(arr));
    }
}
