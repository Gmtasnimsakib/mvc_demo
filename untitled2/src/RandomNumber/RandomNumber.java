package RandomNumber;

import java.util.Random;

public class RandomNumber {
    public static int generateRandomNumber(int min, int max) {

        Random random = new Random();
        // Generate a random number within the specified range
        return random.nextInt((max - min) + 1) + min;
    }

    public static void main(String[] args) {
        // Example usage
        int randomNumber = generateRandomNumber(1, 100);
        System.out.println("Random number: " + randomNumber);
    }
}

