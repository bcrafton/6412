
*****************************
* name drain gate source body class

m3 vc vc vdd vdd pmos L=5u W=50u
m6 vf vc vdd vdd pmos L=5u W=50u

m2 vc vb vd gnd nmos L=5u W=4.5u
m5 vf ve vd gnd nmos L=5u W=4.5u

m1 va va gnd gnd nmos L=5u W=8u

m4 vd va gnd gnd nmos L=5u W=24u
****************************
vs vdd gnd dc 2
is vdd va 15u

vsb vb gnd pwl( 0 1.1 1m 1.7 1.1m 1.1)
vse ve gnd pwl( 0 1.1 1m 1.1 1.3m 1.1 2m 1.7) 
*****************************
.tran 1u 2m
.option post=1 POST_VERSION=9601 method=BDF
*****************************
.model pmos pmos level=2 L=1u W=1u VTO=-0.4 KP=50u Lambda=1m * Tox=5n
.model nmos nmos level=2 L=1u W=1u VTO=0.4 KP=200u Lambda=1m * Tox=5n

