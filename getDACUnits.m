function [DAC] = getDACUnits(mW, mouse)

if strcmpi(mouse, 'OK211') % rig 1
    fiberpct = 0.886;
    lasernum = 03120119;
elseif strcmpi(mouse, 'OK213') % rig 4
    fiberpct = 0.861;
    lasernum = 04180022;
elseif strcmpi(mouse, 'OK214') % rig 3
    fiberpct = 0.86;
    lasernum = 04180023;
elseif strcmpi(mouse, 'OK215') % rig 2
    fiberpct = 0.855;
    lasernum = 04180022;
elseif strcmpi(mouse, 'OK216') % rig 1
    fiberpct = 0.872;
    lasernum = 03120119;
elseif strcmpi(mouse, 'OK217') % rig 4
    fiberpct = 0.878;
    lasernum = 04180022;
elseif strcmpi(mouse, 'OK218') % rig 3
    fiberpct = 0.812;
    lasernum = 04180023;
else
    disp('MOUSE NOT FOUND IN LIST!')
    pause
end

if lasernum == 03120119 % should be rig 1
    a = 11.067;
    b = 0.0197;
elseif lasernum == 04180023 % should be rig 3
    a = 10.457;
    b = 0.024;
elseif lasernum == 04180022 % should be rig 2
    a = 12.477;
    b = 0.021;
elseif lasernum == 12120077 % should be rig 4
    a = 9.9682;
    b = 0.0231;
end

DAC = ((mW./fiberpct) + a)./b;
DAC = round(DAC);

if DAC > 4095
    disp('DAC UNITS EXCEED APPROPRIATE RANGE')
    pause
end

end