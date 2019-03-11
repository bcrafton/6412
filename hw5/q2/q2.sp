*****************************
* name drain gate source body class

m3 vc vc vdd vdd pmos L=5u W=50u
m6 vo vc vdd vdd pmos L=5u W=50u

m2 vc vp vd gnd nmos L=5u W=4.5u
m5 vo vn vd gnd nmos L=5u W=4.5u

m1 va va gnd gnd nmos L=5u W=8.3u

m4 vd va gnd gnd nmos L=5u W=25u

cld vo gnd 10p
****************************
vin vp gnd dc 1.45
rld vn vo 1e6

vs vdd gnd dc 2
is vdd va 15u
*****************************
.op
*****************************
.model pmos pmos level=2 L=1u W=1u VTO=-0.4 KP=50u Lambda=1m * Tox=5n
.model nmos nmos level=2 L=1u W=1u VTO=0.4 KP=200u Lambda=1m * Tox=5n

