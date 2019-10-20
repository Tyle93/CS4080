package HW2;

import java.util.ArrayList;
import java.util.Date;
import java.util.Random;

public class Main {

    public static void main(String[] args) {
        final int SIZE = 100000;
        Random r = new Random();
        r.setSeed(new Date().getTime());
        double t = 0;
        ArrayList nums = new ArrayList<Integer>(SIZE);
        int moreNums[] = new int[SIZE];
        double times[] = new double[10];

        for(int i = 0; i < 10; i++){
            t = new Date().getTime();
            for(int j = 0; j < SIZE; j++){
                moreNums[j] = r.nextInt() %1000 + 1;
            }
            t = (new Date().getTime() - t)/1000;
            times[i] = t;
            System.out.println("Time Elapsed for Array Test #" + i+1 + ": "  + t + " seconds.");
        }

        double total = 0;
        for(int i = 0; i < 10; i++){
            total += times[i];
        }
        double arrayAverage = total/10;

        total = 0;
        for(int i = 0; i < 10; i++){
            t = new Date().getTime();
            for(int j = 0; j < SIZE; j++){
                nums.add(j);
            }
            t = (new Date().getTime() - t)/1000f;
            times[i] = t;
            System.out.println("Time Elapsed for ArrayList Test #" + i+1 + ": "  + t + " seconds.");
        }
        for (int i = 0; i < 10; i++){
            total += times[i];
        }

        double listAverage = total/10;

        System.out.println("Average Time Elapsed for Array Tests: " + arrayAverage + " seconds.");
        System.out.println("Average Time Elapsed for ArrayList Tests: " + listAverage + " seconds.");

    }
}
