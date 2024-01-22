import java.util.Arrays;

public class reducer {
    public static void main(String[] args) {
        int[] arr = {100,1};
        int result = minimizeCost(arr);
        System.out.println("Minimum cost: " + result);
    }

    public static int minimizeCost(int[] arr) {
        Arrays.sort(arr);

        int totalCost = 0;
        for (int i = 1; i < arr.length; i++) {
            int sum = arr[i - 1] + arr[i];
            totalCost += sum;
            arr[i] = sum; // Update the current element with the sum for further calculation
            Arrays.sort(arr, i, arr.length);
        }

        return totalCost;
    }
}
