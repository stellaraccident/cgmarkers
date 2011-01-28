#include "colors.inc"
#include "stones.inc"
#include "textures.inc"
#include "shapes.inc"
#include "glass.inc"
#include "metals.inc"
#include "woods.inc"

camera {
	right x*1	/* Aspect ratio of 1x1 vs 4x3 default */
	location <0, 0, -2.5>
	look_at 0
}

/* light at the upper left (behind the camera) */
light_source { 
	<-10, 10, -10> 
	color White
}

/* illuminate the back so we can up the transparency */
light_source {
	<0,0,-10>
	color Blue
}

/* A bunch of light sources scattered around the bottom right quadrant */
light_source {
	<1,-1, -0.1>*10
	color White
	parallel
	point_at <0,0,0>
}
light_source {
	<0,-1, -0.1>*10
	color White
	parallel
	point_at <0,0,0>
}
light_source {
	<0.25,-1, -0.1>*10
	color White
	parallel
	point_at <0,0,0>
}
light_source {
	<0.5,-1, -0.1>*10
	color White
	parallel
	point_at <0,0,0>
}
light_source {
	<1.5,-1, -0.1>*10
	color White
	parallel
	point_at <0,0,0>
}
light_source {
	<2,-1, -0.1>*10
	color White
	parallel
	point_at <0,0,0>
}
light_source {
	<2.5,-1, -0.1>*10
	color White
	parallel
	point_at <0,0,0>
}
light_source {
	<3.0,-1, -0.1>*10
	color White
	parallel
	point_at <0,0,0>
}
light_source {
	<3.5,-1, -0.1>*10
	color White
	parallel
	point_at <0,0,0>
}
light_source {
	<4,-1, -0.1>*10
	color White
	parallel
	point_at <0,0,0>
}
light_source {
	<4.5,-1, -0.1>*10
	color White
	parallel
	point_at <0,0,0>
}
light_source {
	<-0.5,-1, -0.1>*10
	color White
	parallel
	point_at <0,0,0>
}


sphere {
	<0, 0, 0>, 1
	texture {
		pigment { 
			//color Blue /*rgb <0.0078, 0.2980, 0.9451>*/ 
			color rgb <0.2, 0.6, 1>
			//color rgb <0.5, 0.4, 1>
			filter 0.5
		}
		finish { 
			brilliance 1
			ambient 0.6
			phong 1.0
		}
	}
}



