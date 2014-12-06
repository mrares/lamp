


light_pipe_side = 20;
light_pipe_length = 650;

light_pipes = 20;

light_pipe_pivot = 650/4;
light_pipe_separation = 50;

rotation_amplitude = 6;


function rotate_light(k) = 
	rotation_amplitude * sin(k*3.14 *12) + 
	rotation_amplitude * sin(k*8*3.14);

