package _06_gridworld;

import java.awt.Color;
import java.util.Random;

import info.gridworld.actor.Bug;
import info.gridworld.actor.Flower;
import info.gridworld.grid.Location;
import info.gridworld.world.World;

public class Gridworld {
public static void main(String[] args) {
	World world = new World();
	world.show();
	Location location = new Location(1, 1);
	Bug bug = new Bug();
	world.add(location, bug);
	Random rand = new Random();
	 int xLoc = rand.nextInt(10);
	 int yLoc = rand.nextInt(10);
	 Location location2 = new Location(xLoc, yLoc);
	 Bug bug2 = new Bug();
	 bug2.setColor(Color.BLUE);
	 bug2.setDirection(90);
	 world.add(location2, bug2);
	 Location location3 = new Location(xLoc, yLoc-1);
	 Flower flower = new Flower();
	 world.add(location3, flower);
	 Location location4 = new Location(xLoc, yLoc+1);
	 Flower flower2 = new Flower();
	 world.add(location4, flower2);
	 for(int i =0;i<10;i++) {
		 for(int j = 0;j<10;j++) {
			 Location location5 = new Location(i, j);
			 Flower flower3 = new Flower();
			 world.add(location5, flower3);
	 }
	 }
}
}
