package _05_netflix;

public class NetfixRunner {
public static void main(String[] args) {
	Movie movie = new Movie("Avengers: Endgame", 5);
	Movie movie2 = new Movie("Star Wars", 5);
	Movie movie3 = new Movie("Made-up Movie", 75);
	Movie movie4 = new Movie("Fake Movie 3: The Fake Movie", 100);
	Movie movie5 = new Movie("Fake Movie 4: The Fakemageddon", 1001);
	System.out.println(movie5.getTicketPrice());
	NetflixQueue netflix = new NetflixQueue();
	netflix.addMovie(movie);
	netflix.addMovie(movie2);
	netflix.addMovie(movie3);
	netflix.addMovie(movie4);
	netflix.addMovie(movie5);
	System.out.println(netflix.getBestMovie());
	System.out.println(netflix.getMovie(1));
	
}
}
