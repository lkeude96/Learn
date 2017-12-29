import java.util.*;
import java.io.*;

public class MaxPairwiseProduct {
    static long getMaxPairwiseProduct(long[] numbers) {
        long result = 0;
        for (int i = 0; i < numbers.length; ++i) {
            for (int j = i + 1; j < numbers.length; ++j) {
                if (numbers[i] * numbers[j] > result)
                    result = numbers[i] * numbers[j];
            }
        }

        return result;
    }

    static long getMaxPairwiseProductFast(long[] numbers) {
        int firstMaxIndex = -1;
        for (int i = 0; i < numbers.length; ++i)
            if ((firstMaxIndex == -1) || (numbers[i] > numbers[firstMaxIndex]))
                firstMaxIndex = i;

        int secondMaxIndex = -1;
        for (int j = 0; j < numbers.length; ++j)
            if ((j != firstMaxIndex) && ((secondMaxIndex == -1) || (numbers[j] > numbers[secondMaxIndex])))
                secondMaxIndex = j;

        return numbers[firstMaxIndex] * numbers[secondMaxIndex];
    }

    public static void main(String[] args) {
        stressTest();
        FastScanner scanner = new FastScanner(System.in);
        int n = scanner.nextInt();
        long[] numbers = new long[n];
        for (int i = 0; i < n; i++) {
            numbers[i] = scanner.nextInt();
        }
        System.out.println(getMaxPairwiseProductFast(numbers));
    }

    static void stressTest() {
        while (true) {
            Random rand = new Random();
            int n = rand.nextInt(100) + 2;
            System.out.println(n);

            long[] a = new long[n];
            for (int i = 0; i < n; ++i) {
                a[i] = rand.nextInt(100000);
                System.out.print (a[i] + " ");
            }
            System.out.println();

            long res1 = getMaxPairwiseProduct(a);
            long res2 = getMaxPairwiseProductFast(a);

            if (res1 != res2) {
                System.out.println("Wrong answer: " + res1 + " " + res2 );
                break;
            } else {
                System.out.println("OK");
            }
        }
    }

    static class FastScanner {
        BufferedReader br;
        StringTokenizer st;

        FastScanner(InputStream stream) {
            try {
                br = new BufferedReader(new InputStreamReader(stream));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        String next() {
            while (st == null || !st.hasMoreTokens()) {
                try {
                    st = new StringTokenizer(br.readLine());
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            return st.nextToken();
        }

        int nextInt() {
            return Integer.parseInt(next());
        }
    }

}
