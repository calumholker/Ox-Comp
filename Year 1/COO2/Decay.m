function [pops] = Decay[NX,NY,NZ,ax,ay,az]
    dt = 1/100;
    NX2 = NX * exp(-ax*dt);
    NY2 = NY * exp(-ay*dt) + (NX-NX2);
    NZ2 = NZ * exp(-az*dt) + (NY-(NY * exp(-ay*dt)));
    pops = [NX2,NY2,NZ2];
end
