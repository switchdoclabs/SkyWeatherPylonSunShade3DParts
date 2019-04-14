//
// WeatherPi Lightning Sensor Block Extension
//
// SwitchDoc Labs 5/18/15
//
//

module sensorPylon()
{
    
    // tube
    
    difference()
    {
        union()
        {
            cylinder(120, r=12);
        

        }
    
        translate([0,0,-10])
        cylinder(150, r=10.5);
        

        
    }
    
    
   
    
    
    
    
}

module sensorBox()
{
    
    difference()
    {
        translate([-16.5,-16.5,0])
        cube([43,43,33]);
    
        translate([-15,-15,-2])
        cube([40,40,32]);
        
        translate([-15.5,-15.5,-1])
        cube([41,41,3]);
        
    }
    
    
}

module sensorPlatform()
{
    
    difference()
    {
        union()
        {
            translate([-17.95,-17.95,-1])
            cube([40.9,40.9,2]);
            
            translate([2.5,2.5,-5])
            #cylinder(5,r=10.4);
        }
        
        translate([2.5,2.5,-5])
        #cylinder(10,r=9.0); 
    }
    
    
}

/*
sensorPylon();

translate([0,0,180])
sensorBox();

translate([0,0,160])
sensorPlatform();
*/

translate([0,0,0])  // 60
sensorPylon();

/*
rotate(180,[0,1,0])
{

translate([50,0,-33])
sensorBox();

//translate([0,0,-1])
//sensorPlatform();
}

*/