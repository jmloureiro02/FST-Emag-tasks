function H = ObtemH(B)

m1 = 0.003143;
    b1 = 0;
    %upper_elbow
    m2 = 0.001;
    b2 = 0.75;
    %lower_elbow
    m3 = 0.001;
    b3 =-0.75;
    %saturation_upper
    m4 = 0;
    b4 = 1.75;
    %saturation_lower
    m5 = 0.0002;
    b5 = -1.03;
    if B >= -1.1 && B <= 1.1
        H = B/m1;
    else
        H = 0;
    end
    if B >= 1.1 && B <= 1.75
        H = (B - b2)/m2;
    end
    if B >= 1.75
        H = (B - 1.5833333)/(1.6*(10^-4));
    end
    if B <= -1.75
        H = (B + 1.5833333)/(1.6*(10^-4));
    end
    if B <= -1.1 && B >= -1.75
       H = (B + b2)/m2;
    end
%
%     if B <= -1.75
%         H = (B + 1.7)/(0.00005);
%     end
%
%     if B >= -1.75 && B <= 1.1
%         H = (B + b2 )/m2;
%     end

end


