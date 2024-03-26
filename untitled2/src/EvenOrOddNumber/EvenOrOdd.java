package EvenOrOddNumber;

import java.util.ArrayList;
import java.util.List;

public class EvenOrOdd {
    public static <T extends Number> void evenOrOdd(T[] num) {
        List<T> element = new ArrayList<>();
//        for even
        for (int i = 0; i < num.length ; i++) {
            T checkEven = num[i];
            if (checkEven.intValue() % 2 == 0) {
                element.add(checkEven);
                System.out.println("Even: " + checkEven);
            }
        }
//        for Odd
        for (int i = 0; i < num.length; i++) {
            T checkOdd = num[i];
            if (checkOdd.intValue() % 2 != 0) {
                element.add(checkOdd);
                System.out.println("Odd: " + checkOdd);
            }
        }
    }

    public static void main(String[] args) {
        Integer[] elementInt = {42, 123, -987, 1000, 7};
        Double[] elementDbl = {3.14, 2.718, 1.618, -0.707};
        Long[] elementLng = {123456789012L, 987654321098L, 456789012345L, -123456789012L};

        System.out.println("integer:----");
        evenOrOdd(elementInt);
        System.out.println("Double:----");
        evenOrOdd(elementDbl);
        System.out.println("Long:----");
        evenOrOdd(elementLng);


    }
}