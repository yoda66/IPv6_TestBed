## IPv6 TestBed

This is a very quick and dirty writeup of a basic IPv6
network that tunnels its traffic across to Hurricance Electric's
tunnelbroker.net.

The setup creates two sub-networks in which DHCPv6 and Route
Advertisement is propagated.  Since HE allocates a /64, the
subnets are /72 in size.  This is not typical. At the enterprise
level, most orgs will deploy subnets of /64 having been created
a /48 more than likely.

-Joff Thyer


