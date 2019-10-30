function FinalCode_JKM = FinalCode(subja)
% Determining identity of A-B-A triplets
% 
% A = 1400
% octave = power(2,-1)
% 
% %calculating the dF to subtract from A in order to come up with B identity
% %of ABA triplet
% onesemitone = (1/12)*octave, dF = 58.33, B1 = 1341.7
% threesemitone = 3*onesemitone, dF = 175, B3 = 1225
% sixsemitone = 6*onesemitone, dF = 350, B6 = 1050
% ninesemitone =  9*onesemitone, dF = 525, B9 = 875

%%


fs=44100; % sampling rate (per sec)
durA=0.25; % sound duration, s
pdur=.01; % pause duration, s
tramp=0.01; % ramp duration, s (5-10 ms is reasonable)
highfreq=1400; % frequency, Hz
A=1; % sound amplitude, arbitrary units
%NOTE: if we want to specify intensity in dB, say Level, then 
t=(1:durA*fs)/fs; % vector of time points
s=sin(2*pi*highfreq*t); % vector of sound waveform
pnumpts=round(pdur*fs); %number of points in the pause
p=zeros(1,pnumpts);
s=A*s/sqrt(mean(s.*s)); % normalize sound vector
rampon=min(t/tramp,ones(size(t)));
rampoff=fliplr(rampon);
s=rampon.*s.*rampoff;
high=[s];

%create low tone with 9 semitones dF
low=875;
devslowA=sin(2*pi*low*t);
pnumpts=round(pdur*fs);
p=zeros(1,pnumpts);
devslowA=A*devslowA/sqrt(mean(devslowA.*devslowA));
low=[devslowA];



downint=1341;
devsdown=sin(2*pi*downint*t);
pnumpts=round(pdur*fs);
p=zeros(1,pnumpts);
devsdown=A*devsdown/sqrt(mean(devsdown.*devsdown));
down=[devsdown];


pdur=.25;
tramp=0.05;
highfreq=1400; 
A=1; 
t=(1:durA*fs)/fs; 
s=sin(2*pi*highfreq*t); 
pnumpts=round(pdur*fs); 
p=zeros(1,pnumpts);
s=A*s/sqrt(mean(s.*s)); 
rampon=min(t/tramp,ones(size(t)));
rampoff=fliplr(rampon);
s=rampon.*s.*rampoff;
high2=[s p];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fs=44100;
startdur=1; 
tramp=0.1;
startfreq=500; 
A=1; 
sstart=sin(2*pi*startfreq*t); 
pnumpts=round(pdur*fs); 
p=zeros(1,pnumpts);
sstart=A*sstart/sqrt(mean(sstart.*sstart)); 
rampon=min(t/tramp,ones(size(t)));
rampoff=fliplr(rampon);
sstart=rampon.*sstart.*rampoff;
begin=[sstart];



pdur= 3; 
tramp=0.1; 
startfreq=500;
A=1; 
t=(1:startdur*fs)/fs; 
sstart=sin(2*pi*startfreq*t);
pnumpts=round(pdur*fs); 
p=zeros(1,pnumpts);
sstart=A*sstart/sqrt(mean(sstart.*sstart));
rampon=min(t/tramp,ones(size(t)));
rampoff=fliplr(rampon);
sstart=rampon.*sstart.*rampoff;
begin1=[sstart p];

reference = [begin1 begin];

segregation = [high low high2 high low high2 high low high2 high low high2 high low high2 high low high2 high low high2 high low high2 high low high2 high low high2 high low high2 high low high2 high low high2 high low high2 high low high2];
integration = [high down high2 high down high2 high down high2 high down high2 high down high2 high down high2 high down high2 high down high2 high down high2 high down high2 high down high2 high down high2 high down high2 high down high2 high down high2];
%baseline--with no visual

disp 'Concentrate on the x mark of the visual and report back with 1 or 2 the number of streams you hear.'

disp 'Press "start slideshow" of powerpoint 1 once you hear the second low beep.'

for j=1
    sound(reference,fs)
end

pause(10)

for j=1
    sound(segregation,fs)
end

resp1=input('Was your final perception integrated (1) or segregated (2)?\n');
pause(5)

for j = 1
    sound(integration,fs)
end

resp2=input('Was your final perception integrated (1) or segregated (2)?\n');
pause(5)

for j=1
    sound(segregation,fs)
end

resp3=input('Was your final perception integrated (1) or segregated (2)?\n');
pause(5)

for j = 1
    sound(integration,fs)
end
resp4=input('Was your final perception integrated (1) or segregated (2)?\n');
pause(5)


for j=1
    sound(segregation,fs)
end

resp5=input('Was your final perception integrated (1) or segregated (2)?\n');
pause(5)

for j = 1
    sound(integration,fs)
end

resp6=input('Was your final perception integrated (1) or segregated (2)?\n');
pause(5)

for j=1
    sound(segregation,fs)
end

resp7=input('Was your final perception integrated (1) or segregated (2)?\n');
pause(5)

for j = 1
    sound(integration,fs)
end
resp8=input('Was your final perception integrated (1) or segregated (2)?\n');
pause(5)





baselinearray(subja) = [resp1 resp2 resp3 resp4 resp5 resp6 resp7 resp8];


resp = input('Once you are ready to move on, press the ENTER button. Repeat the previous procedure of opening up the slideshow for powerpoint2')




disp 'Concentrate on the x mark of the visual and report back with 1 or 2 the number of streams you hear.'

disp 'Press "start slideshow" of powerpoint 1 once you hear the second low beep.'


for j=1
    sound(reference,fs)
end

pause(10)

for j=1
    sound(segregation,fs)
end

resp9=input('Was your final perception integrated (1) or segregated (2)?\n');
pause(5)

for j = 1
    sound(integration,fs)
end

resp10=input('Was your final perception integrated (1) or segregated (2)?\n');
pause(5)

for j=1
    sound(segregation,fs)
end

resp11=input('Was your final perception integrated (1) or segregated (2)?\n');
pause(5)

for j = 1
    sound(integration,fs)
end
resp12=input('Was your final perception integrated (1) or segregated (2)?\n');
pause(5)


for j=1
    sound(segregation,fs)
end

resp13=input('Was your final perception integrated (1) or segregated (2)?\n');
pause(5)

for j = 1
    sound(integration,fs)
end

resp14=input('Was your final perception integrated (1) or segregated (2)?\n');
pause(5)

for j=1
    sound(segregation,fs)
end

resp15=input('Was your final perception integrated (1) or segregated (2)?\n');
pause(5)

for j = 1
    sound(integration,fs)
end
resp16=input('Was your final perception integrated (1) or segregated (2)?\n');
pause(5)

disp 'Finished! Thank you for participating!'
flashingarray(subja) = [resp9 resp10 resp11 resp12 resp13 resp14 resp15 resp16];
end
