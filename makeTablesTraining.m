trialtypes = [0;30];

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

nolaserRow = [10,500,5,40,200,25,3,0,0,0,500,1,0,1,10];
laserRow = [1,0,0,0,0,0,0,0,850,0,500,1,0,1,10];

cd('E:\trialtables')

mice{1,1} = 'OK214';
mice{2,1} = 'OK216';
mice{3,1} = 'OK217';

for m = 1:length(mice)
    trialtable = nan(size(trialtypes,1), size(nolaserRow,2));
    for t = 1:length(trialtypes)
        if trialtypes(t,1) == 0
            temp = nolaserRow;
        else
            temp = laserRow;
            temp(1,10) = getDACUnits(trialtypes(t,1), mice{m,1});
        end
        trialtable(t,:) = temp;
    end
    filename = [mice{m,1},'_trainingtrialtable.csv'];
    csvwrite(filename, trialtable)
end


trialtypes = [0];

mice{1,1} = 'OK211';
mice{2,1} = 'OK213';
mice{3,1} = 'OK215';
mice{4,1} = 'OK218';

for m = 1:length(mice)
    trialtable = nan(size(trialtypes,1), size(nolaserRow,2));
    for t = 1:length(trialtypes)
        if trialtypes(t,1) == 0
            temp = nolaserRow;
        else
            temp = laserRow;
            temp(1,10) = getDACUnits(trialtypes(t,1), mice{m,1});
        end
        trialtable(t,:) = temp;
    end
    filename = [mice{m,1},'_trainingtrialtable.csv'];
    csvwrite(filename, trialtable)
end
