/* Created: May 24, 2011 */
package com.example.model;

import java.util.*;

public class BeerExpert {
   public List<String> getBrands(String color) {
      List<String> brands = new ArrayList<String>();
      if (color.equals("amber")) {
         brands.add("Jack Amber");
         brands.add("Red Moose");
      } else if (color.equals("light")){
         brands.add("Penguin's Favorite");
         brands.add("Polar Passion");
      } else if (color.equals("brown")){
         brands.add("Boot Leather Special");
         brands.add("John Barleycorn's Nut Brown");
      } else if (color.equals("clear")){
         brands.add("YCH! Clearwater");
      } else {
      brands.add("No recommendations for the color: " + color);
      }
      return(brands);
   }
}
