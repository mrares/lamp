include <constants.scad>
include <light_pipe.scad>

module shifted_pipe() {
	translate([0, -light_pipe_pivot, 0]) {
		light_pipe();
	}
}


module lamp() {
	
	for (k = [0:light_pipes-1]) {

		translate([k*(light_pipe_separation+light_pipe_side), 0, 0]) 			{
			rotate([rotate_light(k),0,0])
			shifted_pipe();
		}
	}

	rotate([0,90,0])
	cylinder(d=40, h=(light_pipes-1) * (light_pipe_side + light_pipe_separation));

}


lamp();