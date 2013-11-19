// 80x120 largest size

$fn = 80;

minShell = 4;
w = 80;
h = 120;
iter = 8;
step = 2;
hStep = 1;

module oval(w,h, height, center = false) {
  scale([1, h/w, 1]) cylinder(h=height, r=w/2, center=center);
}

difference() {
	for ( i = [0 : iter]) {
		oval(w-(i*step), h-(i*step), i+hStep);
	}
	translate([0,0,minShell])
		oval(w-(iter*step)+1, h-(iter*step)+1, iter);
}