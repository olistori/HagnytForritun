function [len, averageTime] = averageTime(stim)

stimLen = [];

rep = 0;
flag = 0;
counter = 1;
sampleRate = 50;
for i = 1:length(stim)

	if flag == 1 && stim(i,2) == 0
		stimLen(counter) = rep;
		counter = counter+1;
		rep = 0;
		flag = 0;
	end

	if stim(i,2) == 1
		flag = 1;
	end

	if flag == 1
		rep = rep+1;
	end

	len = length(stimLen);
	averageTime = 1/sampleRate*(sum(stimLen)/length(stimLen));

end