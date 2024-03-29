% make randomized trial table, 80 trials long with 3 trial types- one at 15
% mW, 30 mW, and 60 mW

trialtypes = [];
for i = 1:20
    trialtypes = [trialtypes; randperm(3)'];
end

trialtypes(trialtypes == 1,1) = 15;
trialtypes(trialtypes == 2,1) = 30;
trialtypes(trialtypes == 3,1) = 60;

% trialtable column setup is
% 1 - Trial repeats in this block
% 2 - CS dur
% 3 - CS num
% 4 - CS intensity
% 5 - ISI
% 6 - US duration
% 7 - US num
% 8 - laser delay
% 9 - laser duration
% 10 - DAC units
% 11 - CS period
% 12 - CS repeats
% 13 - Add reps
% 14 - Block #
% 15 - Block repeats

exampleRow = [1,500,5,40,200,25,3,0,850,0,500,1,0,1,1];

cd('E:\trialtables')

mice{1,1} = 'OK211';
mice{2,1} = 'OK213';
mice{3,1} = 'OK214';
mice{4,1} = 'OK215';
mice{5,1} = 'OK216';
mice{6,1} = 'OK217';
mice{7,1} = 'OK218';

for m = 1:length(mice)
    trialtable = nan(size(trialtypes,1), size(exampleRow,2));
    for t = 1:length(trialtypes)
        temp = exampleRow;
        temp(1,10) = getDACUnits(trialtypes(t,1), mice{m,1});
        trialtable(t,:) = temp;
    end
    filename = [mice{m,1},'_trialtable.csv'];
    csvwrite(filename, trialtable)
end