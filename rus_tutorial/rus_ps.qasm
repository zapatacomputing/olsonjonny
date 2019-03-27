OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg c1[1];
creg c2[1];
creg c3[1];
creg c4[1];
ry(1.57079632679490) q[0];
u1(-1.57079632679490) q[0];
cy q[0],q[1];
ry(-1.57079632679490) q[0];
measure q[0] -> c1[0];
u1(-1.57079632679490) q[1];
cy q[1],q[3];
ry(1.57079632679490) q[2];
u1(-1.57079632679490) q[2];
cy q[2],q[1];
ry(-1.57079632679490) q[2];
measure q[2] -> c2[0];
measure q[1] -> c3[0];
measure q[3] -> c4[0];
