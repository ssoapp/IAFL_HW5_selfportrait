$fn = 30;

module me(){
scale([.1, .1, .1])
import("daphne_model.stl");
}

difference(){

union(){
me();
//translate([-30, -25, -30])
//scale([1.5, 1.2, .4])
//cube([40, 40, 40]);

//translate([1.5, 0, 40])
//sphere(r = 15);

//eyebrows
rotate([0, 20, 0])
translate([-15, -11, 34.3])
scale([3, .8, .8])
sphere(r = 1);

rotate([0, 340, 0])
translate([17, -11, 33.7])
scale([3, .8, .8])
sphere(r = 1);

translate([1.3, -1, 45])
cylinder(h = 7, r=2.5, $fn=20);

for (i =  [0 : 0.1 : 6]) {
    echo(360*i/6, sin(360*i/6)*80, cos(360*i/6)*80);
		translate([1.6, -6, 40])
    translate([sin(360*i/6)*10, cos(360*i/6)*10, 0 ])
    cylinder(h = 1, r=1);
}

}//end union

translate([-32, -27, -32])
scale([1.6, 1.3, .5])
cube([40, 40, 40]);

translate([1.2, -10.4, 25.5])
rotate([90, 0, 0])
cylinder(h = 2, r=2, $fn=6);

//eyes
translate([-2.7, -10.5, 33])
rotate([90, 0, 0])
cylinder(h = 2, r=2.5, $fn=10);
translate([5, -10, 33])
rotate([90, 0, 0])
cylinder(h = 5, r=2.5, $fn=10);

translate([1.3, 5 , 50])
rotate([90, 0, 0])
cylinder(h = 15, r=1, $fn=20);

}//end difference