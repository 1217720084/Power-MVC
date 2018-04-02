%% getMpcFault: TODO
function [mpc] = getMpcFault()

	% nid, Ra, Xd'1, Xd'2, Xd'0, Xn, Connection
	mpc.gen = {
		1	0	0.0608	0.0608	inf	inf	'Y';
		2	0	0.1198	0.1198	inf	inf	'Y';
		3	0	0.1813	0.1813	inf	inf	'Y';
	};

	% fid, tid, r, x1, x0, 
	mpc.line = [
		4	5	0.010	0.085	0.09;
		4	6	0.017	0.092	0.09;
		5	7	0.032	0.161	0.16;
		6	9	0.039	0.170	0.17;
		7	8	0.0085	0.072	0.07;
		8	9	0.0119	0.1008	0.10;
	];

	% fid, tid, rt, Xt1, Xt0, Xn, ratio, angle, Connection
	mpc.transformer = {
		1	4	0	0.0576	0.14	0	1	0	'YNd11';
		2	7	0	0.0625	0.16	0	1	0	'YNd11';
		3	9	0	0.0586	0.15	0	1	0	'YNd11';
	};

	mpc.fault = [];
	mpc.fault.nid = 6;
	mpc.fault.zf = 0;
	% mpc.fault.zg = 0;
	mpc.fault.type = 'f1';
	mpc.fault.phase = 'a';

end