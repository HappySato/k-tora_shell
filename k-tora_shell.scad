module TwoByFour(long,position,deg,col){
    translate(position)
    rotate(deg)
    color(col) 
    cube([long,89,38], center = false);
}

module ThirtyByForty(long,position,deg,col){
    translate(position)
    rotate(deg)
    color(col) 
    cube([long,40,30], center = false);
}

module FortyFiveByFifteen(long,position,deg,col){
    translate(position)
    rotate(deg)
    color(col) 
    cube([long,45,15], center = false);
}

module stud(long,position,deg,col){
    translate(position)
    rotate(deg)
    color(col) 
    cube([long,45,65], center = false);
}

module SteelRunner(long,x,y,z,deg,col){
    y=-y;
    rotate(deg){
        translate([x,y,z])
        color(col) 
        cube([long,0.8,30.8], center = false);
        translate([x,y+0.8+45,z])
        color(col) 
        cube([long,0.8,30.8], center = false);
        translate([x,y+0.8,z])
        color(col) 
        cube([long,45,0.8], center = false);
    }
}

module siding(long,x,y,z,deg,col){
    rotate(deg){
        translate([x,y,z])
        color(col)
        cube([297,long,5], center = false);
        
        for ( i = [0 : 10] )
        {
            translate([x+14+i*27,y,z])
            color("LightSlateGray")
            cube([13,long,6], center = false);
        }
    }    
}

module FixWindow(x,y,z,deg){
    translate([x,y,z])
    rotate(deg)
    color("black")
    cube([1690,40,38], center = false);
    translate([x,y,z+540])
    rotate(deg)
    color("black")
    cube([1690,30,38], center = false);
    translate([x,y,z+40])
    rotate([0,0,0])
    color("black")
    cube([38,20,500], center = false);
    translate([x,y+1670,z+40])
    rotate([0,0,0])
    color("black")
    cube([38,20,500], center = false);
}

module door(x,y,z,deg){
    translate([x,y,z])
    rotate(deg)
    color("black")
    cube([640,78.5,1400], center = false);
   
}

module panel(size,position,deg,col){
    translate(position)
    rotate(deg)
    color(col)
    cube(size, center = false);  
}

module seat(size,position,deg,col){
    translate(position)
    rotate(deg)
    color(col)
    cube(size, center = false);  
}

//ベース部分
TwoByFour(1244,[38,38,4],[90,0,0]);
TwoByFour(1244,[38,478.5,4],[90,0,0]);
TwoByFour(1244,[38,919,4],[90,0,0]);
TwoByFour(1244,[38,1359.5,4],[90,0,0]);
TwoByFour(1244,[38,2100,4],[90,0,0]);

TwoByFour(402.5,[641,38,4],[90,0,90],"green");
TwoByFour(402.5,[641,478.5,4],[90,0,90],"green");
TwoByFour(402.5,[641,919,4],[90,0,90],"green");
TwoByFour(402.5,[641,1359.5,4],[90,0,90],"green");

TwoByFour(2100,[0,0,4],[90,0,90],"red");
TwoByFour(2100,[1282,0,4],[90,0,90],"red");

//壁面（窓）
stud(1600,[0.8,0,97.8],[0,-90,-90],"red");
stud(1600,[0.8,205-7.5-65,97.8],[0,-90,-90],"Coral");
stud(1600,[0.8,1837.5+65,97.8],[0,-90,-90],"Coral");
stud(1600,[0.8,2035,97.8],[0,-90,-90],"red");
SteelRunner(2100,0,45+1.6,97,[0,0,90],"HotPink");
SteelRunner(2100,0,0,-97-1.6-1600,[0,180,-90],"HotPink");

stud(750,[0.8,205-7.5,97.8],[0,-90,-90],"Cyan");
stud(750,[0.8,600,97.8],[0,-90,-90],"Cyan");
stud(750,[0.8,1000,97.8],[0,-90,-90],"Cyan");
stud(750,[0.8,1400,97.8],[0,-90,-90],"Cyan");
stud(750,[0.8,1837.5,97.8],[0,-90,-90],"Cyan");

stud(274.2,[0.8,205-7.5,1423.6],[0,-90,-90],"Cyan"); 
stud(274.2,[0.8,600,1423.6],[0,-90,-90],"Cyan");
stud(274.2,[0.8,1000,1423.6],[0,-90,-90],"Cyan");
stud(274.2,[0.8,1400,1423.6],[0,-90,-90],"Cyan");
stud(274.2,[0.8,1837.5,1423.6],[0,-90,-90],"Cyan"); 

SteelRunner(1705,205-7.5,45+1.6,1422.8,[0,0,90],"green");
SteelRunner(1705,205-7.5,0,-97-1.6-750,[0,180,-90],"blue");



//壁面（裏）
stud(1600,[0.8+1273.4,0,97.8],[0,-90,-90],"red");
stud(1600,[0.8+1273.4,2035,97.8],[0,-90,-90],"red");

stud(1600,[0.8+1273.4,500,97.8],[0,-90,-90],"green");
stud(1600,[0.8+1273.4,1000,97.8],[0,-90,-90],"green");
stud(1600,[0.8+1273.4,1500,97.8],[0,-90,-90],"green");

SteelRunner(2100,0,45+1.6+1273.4,97,[0,0,90],"HotPink");
SteelRunner(2100,0,-1273.4,-97-1.6-1600,[0,180,-90],"HotPink");

//壁面（玄関側）
SteelRunner(266.4,46.6,0,97,[0,0,0],"green");//下左
SteelRunner(266.4,1007,0,97,[0,0,0],"green");//下右
SteelRunner(1226.8,46.6,46.6,-97-1.6-1600,[180,0,0],"green");//上
SteelRunner(640+27*2,340-27,0,97+1400+30,[0,0,0],"green");//ドア上

stud(1600,[65+46.6,0.8,97.8],[0,-90,0],"blue");
stud(1600,[46.6+266.4,0.8,97.8],[0,-90,0],"red");
stud(169.2,[46.6+266.4+65,0.8,97.8+1400+30+0.8],[0,-90,0],"blue");
stud(169.2,[660 +320 +27,0.8,97.8+1400+30+0.8],[0,-90,0],"blue");
stud(169.2,[660 + 65/2 ,0.8,97.8+1400+30+0.8],[0,-90,0],"blue");
stud(1600,[660 +320 +27 + 65  ,0.8,97.8],[0,-90,0],"red");
stud(1600,[1226.8+46.6,0.8,97.8],[0,-90,0],"blue");

//壁面（キャビン側）
SteelRunner(1226.8,46.6,46.6-2100,97,[0,0,0],"green");
SteelRunner(1226.8,46.6,2100,-97-1.6-1600,[180,0,0],"green");

stud(1600,[65+46.6,0.8+2100-46.6,97.8],[0,-90,0],"blue");
stud(1600,[500,0.8+2100-46.6,97.8],[0,-90,0],"red");
stud(1600,[1000,0.8+2100-46.6,97.8],[0,-90,0],"red");
stud(1600,[1226.8+46.6,0.8+2100-46.6,97.8],[0,-90,0],"blue");

//窓
FixWindow(0,205,847.8,[90,0,90]);

//ドア
door(340,-51.5,97,[0,0,0]);

//屋根
translate([0,0,1698.6])
color("brown")
cube([1320,2100,4], center = false);

SteelRunner(2100,0,-1702.6,0,[-90,180,-90],"green");
SteelRunner(2100,0,1702.6+46.6,-1320,[90,180,-90],"green");
stud(1320-1.6,[0.8,65,1702.6+0.8],[90,0,0],"blue");
stud(1320-1.6,[0.8,65+400,1702.6+0.8],[90,0,0],"blue");
stud(1320-1.6,[0.8,65+800,1702.6+0.8],[90,0,0],"blue");
stud(1320-1.6,[0.8,65+1200,1702.6+0.8],[90,0,0],"blue");
stud(1320-1.6,[0.8,65+1600,1702.6+0.8],[90,0,0],"blue");
stud(1320-1.6,[0.8,2100,1702.6+0.8],[90,0,0],"blue");

translate([0,0,1749.2])
color("brown")
cube([1320,2100,4], center = false);

//パネル系
//底面パネル
panel([1320,2100,4],[0,0,0],[0,0,0],"blue");
//床面パネル
panel([1320,2100,4],[0,0,93],[0,0,0],"blue");

//外壁
panel([1600,2100,4],[1324,0,0],[0,-90,0],"yellow");
seat([1500,2100,2],[1326,0,0],[0,-90,0],"blue");
FortyFiveByFifteen(1400,[1326+15,0,0],[0,-90,0],"green");

FortyFiveByFifteen(1400,[1326+15,300*1,0],[0,-90,0],"green");
FortyFiveByFifteen(1400,[1326+15,300*2,0],[0,-90,0],"green");

siding(1300,0,0,1326+15,[90,0,90],"DimGray");
siding(1300,297*1,0,1326+15,[90,0,90],"DarkSlateGray");
siding(1300,297*2,0,1326+15,[90,0,90],"DimGray");
siding(1300,297*3,0,1326+15,[90,0,90],"DarkSlateGray");