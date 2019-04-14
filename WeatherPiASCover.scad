// 
// WeatherPi Solar System
//
// SwitchDoc Labs - 04/01/15
// 
//
// WeatherPi AS Outdoor temp cover
//


include <write.scad>
include <joints.scad>


module Tube()
{
    
       // tube
    

    difference()
    {
        
     
     
   //     cylinder(h=130, r=28);
        cylinder(h=130, r=28);
    
        translate([0,0,-2])
        cylinder(h=132, r=26);
        
        translate([-30,-90,-2])
        #cube([231,90,135]);
        
        
          // vents
        
        translate([-20,100,100])
        rotate(90,[1,0,0])
        #cube([40,3,200]);
        
        translate([-20,100,90])
        rotate(90,[1,0,0])
        #cube([40,3,200]);
        
        translate([-20,100,80])
        rotate(90,[1,0,0])
        #cube([40,3,200]);
        
        translate([-20,100,70])
        rotate(90,[1,0,0])
        #cube([40,3,200]);
        
    }
    
}


module OutdoorCover()
{
    
    
    // sphere
    
    difference()
    {
        sphere(r=28);
    
        sphere(r=25);
       
        translate([-45,0,0])
        #cube([90,90, 100]);
        
        translate([-45,-45,-100])
        #cube([90,90, 100]);
        
        
    }
    
    // tube
    
    translate([0,130,0])
    rotate(90,[1,0,0])
    Tube();

    // mounting plates
    
    difference()
    {
        translate([-30,-35,0])
        cube([60,165,2]);
        
        
        translate([-20,-15,0])
        cube([40,145,2]);
        
        // screw holes
        
        translate([25,-24,-2])
        #cylinder(r=2,h=15);
        
        translate([-25,-24,-2])
        #cylinder(r=2,h=15);
        
      

    }
    
}


difference()
{

OutdoorCover();
    
      translate([-50,105,-10])
  #cube([100,100,100]);
    
}