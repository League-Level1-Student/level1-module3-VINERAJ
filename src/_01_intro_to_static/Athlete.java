package _01_intro_to_static;

public class Athlete {
	static int nextBibNumber = 1;
    static String raceLocation = "New York";
    static String raceStartTime = "9.00am";

    String name;
    int speed;
    int bibNumber = 0;

    Athlete (String name, int speed){
        this.name = name;
        this.speed = speed;
    }

    public static void main(String[] args) {
        //create two athletes
        //print their names, bibNumbers, and the location of their race.
    	Athlete athlete1 = new Athlete("Bill Cipher", 299);
    	System.out.println(athlete1.name);
    	System.out.println(athlete1.bibNumber);
    	System.out.println(raceLocation);
    	Athlete athlete2 = new Athlete("Bob", 301);
    	System.out.println(athlete2.name);
    	System.out.println(nextBibNumber);
    	System.out.println(raceLocation);
    }

}
