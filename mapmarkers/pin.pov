#include "colors.inc"
#include "stones.inc"
#include "textures.inc"
#include "shapes.inc"
#include "glass.inc"
#include "metals.inc"
#include "woods.inc"

camera {
	right x*1	/* Aspect ratio of 1x1 vs 4x3 default */
	location <0, 1, -1>*4.75
	look_at <0,3.0,0>
}

/* light at the upper left (behind the camera) */
light_source { 
	<-10, 10, -10> 
	color White
}


sphere {
	<0, 4, 0>, 1
	texture {
		pigment { 
			color rgb <1, 0.2, 0.6>
			filter 0.0
		}
		finish { 
			brilliance 1
			ambient 0.6
			phong 1.0
		}
	}
}

cylinder {
	<0,0,0>, <0,4,0>, 0.25
	texture {
		pigment {
			color rgb <0.7,0.7,0.7>
		}
		finish {
			ambient 0.3
		}
	}
}

disc {
	<0,0,0>, y, 0.33, 0.255
	texture {
		pigment {
			color rgb <0.3, 0.3, 0.3>
		}
		finish {
			ambient 0.3
		}
	}
}