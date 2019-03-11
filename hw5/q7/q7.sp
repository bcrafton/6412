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
* vin  vp gnd dc 1.45
* vr   vn gnd dc 1.45
* vout vo gnd dc 1.45
* rld vn vo 1e6

lon   vo vn  1000000
cngnd vn gnd 1000000
vin vp gnd dc 1.45 ac 1

vs vdd gnd dc 2
is vdd va 15u

* Evic vic gnd vol='(v(vp) + v(vn)) / 2'
*****************************
* .op
* .dc vr 0 2 0.001
.option post=1 POST_VERSION=9601 method=BDF
*.PLOT v(vic)
*.PLOT i(m2) i(m5)

*.ac vin 100 100e6 10
.ac dec 100 100 100e6

*****************************
.model pmos pmos vto=-0.4 kp=50u  lambda=1m
.model nmos nmos vto=0.4  kp=200u lambda=1m

