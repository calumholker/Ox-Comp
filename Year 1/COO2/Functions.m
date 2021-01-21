classdef Functions
methods(Static)
    
    function [xOut] = Erf2(xIn)
        xOut = (2*exp(-(xIn^2)))/(sqrt(pi));
    end
    
    function [xOut] = Osci(xIn)
        xOut = (2*(sin(100*pi*xIn))^2*exp(-(xIn^2)))/(sqrt(pi));
    end
    
    function [xOut] = fun1(xIn)
        xOut = 3*exp(-xIn)-xIn+3;
    end
    
    function [xOut] = fun2(xIn)
        xOut = -3*exp(-xIn)-1;
    end
    
end
end