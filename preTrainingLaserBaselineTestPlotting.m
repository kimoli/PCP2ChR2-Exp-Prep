timeVector = 1:340;
timeVector = timeVector * 0.00488372;
timeVector = timeVector - 0.2;


% OK211 data
load('\\blinklab\Data\users\okim\behavior\OK211\190613\trialdata.mat')

DACvals = unique(trials.laser.amp);

figure
subplot(2,3,1)
rectangle('Position', [0 0 0.85 1], 'FaceColor', [0 1 1 0.5], 'EdgeColor', [0 1 1 0.5]);
hold on
plot(timeVector, trials.eyelidpos(idx15,:)')
plot(timeVector, mean(trials.eyelidpos(idx15,:)), 'Color', [0 0 0], 'LineWidth', 2)
xlim([-0.1 1.2])
ylim([0 1])
ylabel('FEC')
title('OK211, 15 mW, pretraining')
subplot(2,3,4)
rectangle('Position', [0 -0.6 0.85 1.6], 'FaceColor', [0 1 1 0.5], 'EdgeColor', [0 1 1 0.5]);
hold on
plot(timeVector, trials.encdisp(idx15,:)')
plot(timeVector, median(trials.encdisp(idx15,:)), 'Color', [0 0 0], 'LineWidth', 2)
xlim([-0.1 1.2])
ylim([-0.6 1])
ylabel('cm wheel movement')
xlabel('time s')

subplot(2,3,2)
rectangle('Position', [0 0 0.85 1], 'FaceColor', [0 1 1 0.5], 'EdgeColor', [0 1 1 0.5]);
hold on
plot(timeVector, trials.eyelidpos(idx30,:)')
plot(timeVector, mean(trials.eyelidpos(idx30,:)), 'Color', [0 0 0], 'LineWidth', 2)
xlim([-0.1 1.2])
ylim([0 1])
ylabel('FEC')
title('OK211, 30 mW, pretraining')
subplot(2,3,5)
rectangle('Position', [0 -0.6 0.85 1.6], 'FaceColor', [0 1 1 0.5], 'EdgeColor', [0 1 1 0.5]);
hold on
plot(timeVector, trials.encdisp(idx30,:)')
plot(timeVector, median(trials.encdisp(idx30,:)), 'Color', [0 0 0], 'LineWidth', 2)
xlim([-0.1 1.2])
ylim([-0.6 1])
ylabel('cm wheel movement')
xlabel('time s')

subplot(2,3,3)
rectangle('Position', [0 0 0.85 1], 'FaceColor', [0 1 1 0.5], 'EdgeColor', [0 1 1 0.5]);
hold on
plot(timeVector, trials.eyelidpos(idx60,:)')
plot(timeVector, mean(trials.eyelidpos(idx60,:)), 'Color', [0 0 0], 'LineWidth', 2)
xlim([-0.1 1.2])
ylim([0 1])
ylabel('FEC')
title('OK211, 60 mW, pretraining')
subplot(2,3,6)
rectangle('Position', [0 -0.6 0.85 1.6], 'FaceColor', [0 1 1 0.5], 'EdgeColor', [0 1 1 0.5]);
hold on
plot(timeVector, trials.encdisp(idx60,:)')
plot(timeVector, median(trials.encdisp(idx60,:)), 'Color', [0 0 0], 'LineWidth', 2)
xlim([-0.1 1.2])
ylim([-0.6 1])
ylabel('cm wheel movement')
xlabel('time s')

%% OK213
% OK211 data
load('\\blinklab\Data\users\okim\behavior\OK213\190613\trialdata.mat')

DACvals = unique(trials.laser.amp);

figure
subplot(2,3,1)
rectangle('Position', [0 -0.1 0.85 1], 'FaceColor', [0 1 1 0.5], 'EdgeColor', [0 1 1 0.5]);
hold on
plot(timeVector, trials.eyelidpos(idx15,:)')
plot(timeVector, mean(trials.eyelidpos(idx15,:)), 'Color', [0 0 0], 'LineWidth', 2)
xlim([-0.1 1.2])
ylim([-0.1 0.9])
ylabel('FEC')
title('OK213, 15 mW, pretraining')
subplot(2,3,4)
rectangle('Position', [0 -0.6 0.85 1.6], 'FaceColor', [0 1 1 0.5], 'EdgeColor', [0 1 1 0.5]);
hold on
plot(timeVector, trials.encdisp(idx15,:)')
plot(timeVector, median(trials.encdisp(idx15,:)), 'Color', [0 0 0], 'LineWidth', 2)
xlim([-0.1 1.2])
ylim([-0.6 1])
ylabel('cm wheel movement')
xlabel('time s')

subplot(2,3,2)
rectangle('Position', [0 -0.1 0.85 1], 'FaceColor', [0 1 1 0.5], 'EdgeColor', [0 1 1 0.5]);
hold on
plot(timeVector, trials.eyelidpos(idx30,:)')
plot(timeVector, mean(trials.eyelidpos(idx30,:)), 'Color', [0 0 0], 'LineWidth', 2)
xlim([-0.1 1.2])
ylim([-0.1 0.9])
ylabel('FEC')
title('OK213, 30 mW, pretraining')
subplot(2,3,5)
rectangle('Position', [0 -0.6 0.85 1.6], 'FaceColor', [0 1 1 0.5], 'EdgeColor', [0 1 1 0.5]);
hold on
plot(timeVector, trials.encdisp(idx30,:)')
plot(timeVector, median(trials.encdisp(idx30,:)), 'Color', [0 0 0], 'LineWidth', 2)
xlim([-0.1 1.2])
ylim([-0.6 1])
ylabel('cm wheel movement')
xlabel('time s')

subplot(2,3,3)
rectangle('Position', [0 -0.1 0.85 1], 'FaceColor', [0 1 1 0.5], 'EdgeColor', [0 1 1 0.5]);
hold on
plot(timeVector, trials.eyelidpos(idx60,:)')
plot(timeVector, mean(trials.eyelidpos(idx60,:)), 'Color', [0 0 0], 'LineWidth', 2)
xlim([-0.1 1.2])
ylim([-0.1 0.9])
ylabel('FEC')
title('OK213, 60 mW, pretraining')
subplot(2,3,6)
rectangle('Position', [0 -0.6 0.85 1.6], 'FaceColor', [0 1 1 0.5], 'EdgeColor', [0 1 1 0.5]);
hold on
plot(timeVector, trials.encdisp(idx60,:)')
plot(timeVector, median(trials.encdisp(idx60,:)), 'Color', [0 0 0], 'LineWidth', 2)
xlim([-0.1 1.2])
ylim([-0.6 1])
ylabel('cm wheel movement')
xlabel('time s')

%% OK214 data
load('\\blinklab\Data\users\okim\behavior\OK214\190613\trialdata.mat')

DACvals = unique(trials.laser.amp);

figure
subplot(2,3,1)
rectangle('Position', [0 0 0.85 1], 'FaceColor', [0 1 1 0.5], 'EdgeColor', [0 1 1 0.5]);
hold on
plot(timeVector, trials.eyelidpos(idx15,:)')
plot(timeVector, mean(trials.eyelidpos(idx15,:)), 'Color', [0 0 0], 'LineWidth', 2)
xlim([-0.1 1.2])
ylim([0 1])
ylabel('FEC')
title('OK214, 15 mW, pretraining')
subplot(2,3,4)
rectangle('Position', [0 -0.6 0.85 1.6], 'FaceColor', [0 1 1 0.5], 'EdgeColor', [0 1 1 0.5]);
hold on
plot(timeVector, trials.encdisp(idx15,:)')
plot(timeVector, median(trials.encdisp(idx15,:)), 'Color', [0 0 0], 'LineWidth', 2)
xlim([-0.1 1.2])
ylim([-0.6 1])
ylabel('cm wheel movement')
xlabel('time s')

subplot(2,3,2)
rectangle('Position', [0 0 0.85 1], 'FaceColor', [0 1 1 0.5], 'EdgeColor', [0 1 1 0.5]);
hold on
plot(timeVector, trials.eyelidpos(idx30,:)')
plot(timeVector, mean(trials.eyelidpos(idx30,:)), 'Color', [0 0 0], 'LineWidth', 2)
xlim([-0.1 1.2])
ylim([0 1])
ylabel('FEC')
title('OK214, 30 mW, pretraining')
subplot(2,3,5)
rectangle('Position', [0 -0.6 0.85 1.6], 'FaceColor', [0 1 1 0.5], 'EdgeColor', [0 1 1 0.5]);
hold on
plot(timeVector, trials.encdisp(idx30,:)')
plot(timeVector, median(trials.encdisp(idx30,:)), 'Color', [0 0 0], 'LineWidth', 2)
xlim([-0.1 1.2])
ylim([-0.6 1])
ylabel('cm wheel movement')
xlabel('time s')

subplot(2,3,3)
rectangle('Position', [0 0 0.85 1], 'FaceColor', [0 1 1 0.5], 'EdgeColor', [0 1 1 0.5]);
hold on
plot(timeVector, trials.eyelidpos(idx60,:)')
plot(timeVector, mean(trials.eyelidpos(idx60,:)), 'Color', [0 0 0], 'LineWidth', 2)
xlim([-0.1 1.2])
ylim([0 1])
ylabel('FEC')
title('OK214, 60 mW, pretraining')
subplot(2,3,6)
rectangle('Position', [0 -0.6 0.85 1.6], 'FaceColor', [0 1 1 0.5], 'EdgeColor', [0 1 1 0.5]);
hold on
plot(timeVector, trials.encdisp(idx60,:)')
plot(timeVector, median(trials.encdisp(idx60,:)), 'Color', [0 0 0], 'LineWidth', 2)
xlim([-0.1 1.2])
ylim([-0.6 1])
ylabel('cm wheel movement')
xlabel('time s')

%% OK215 data
load('\\blinklab\Data\users\okim\behavior\OK215\190613\trialdata.mat')

DACvals = unique(trials.laser.amp);

figure
subplot(2,3,1)
rectangle('Position', [0 0 0.85 1], 'FaceColor', [0 1 1 0.5], 'EdgeColor', [0 1 1 0.5]);
hold on
plot(timeVector, trials.eyelidpos(idx15,:)')
plot(timeVector, mean(trials.eyelidpos(idx15,:)), 'Color', [0 0 0], 'LineWidth', 2)
xlim([-0.1 1.2])
ylim([0 1])
ylabel('FEC')
title('OK215, 15 mW, pretraining')
subplot(2,3,4)
rectangle('Position', [0 -0.6 0.85 1.6], 'FaceColor', [0 1 1 0.5], 'EdgeColor', [0 1 1 0.5]);
hold on
plot(timeVector, trials.encdisp(idx15,:)')
plot(timeVector, median(trials.encdisp(idx15,:)), 'Color', [0 0 0], 'LineWidth', 2)
xlim([-0.1 1.2])
ylim([-0.6 1])
ylabel('cm wheel movement')
xlabel('time s')

subplot(2,3,2)
rectangle('Position', [0 0 0.85 1], 'FaceColor', [0 1 1 0.5], 'EdgeColor', [0 1 1 0.5]);
hold on
plot(timeVector, trials.eyelidpos(idx30,:)')
plot(timeVector, mean(trials.eyelidpos(idx30,:)), 'Color', [0 0 0], 'LineWidth', 2)
xlim([-0.1 1.2])
ylim([0 1])
ylabel('FEC')
title('OK215, 30 mW, pretraining')
subplot(2,3,5)
rectangle('Position', [0 -0.6 0.85 1.6], 'FaceColor', [0 1 1 0.5], 'EdgeColor', [0 1 1 0.5]);
hold on
plot(timeVector, trials.encdisp(idx30,:)')
plot(timeVector, median(trials.encdisp(idx30,:)), 'Color', [0 0 0], 'LineWidth', 2)
xlim([-0.1 1.2])
ylim([-0.6 1])
ylabel('cm wheel movement')
xlabel('time s')

subplot(2,3,3)
rectangle('Position', [0 0 0.85 1], 'FaceColor', [0 1 1 0.5], 'EdgeColor', [0 1 1 0.5]);
hold on
plot(timeVector, trials.eyelidpos(idx60,:)')
plot(timeVector, mean(trials.eyelidpos(idx60,:)), 'Color', [0 0 0], 'LineWidth', 2)
xlim([-0.1 1.2])
ylim([0 1])
ylabel('FEC')
title('OK215, 60 mW, pretraining')
subplot(2,3,6)
rectangle('Position', [0 -0.6 0.85 1.6], 'FaceColor', [0 1 1 0.5], 'EdgeColor', [0 1 1 0.5]);
hold on
plot(timeVector, trials.encdisp(idx60,:)')
plot(timeVector, median(trials.encdisp(idx60,:)), 'Color', [0 0 0], 'LineWidth', 2)
xlim([-0.1 1.2])
ylim([-0.6 1])
ylabel('cm wheel movement')
xlabel('time s')

%% OK216 data
load('\\blinklab\Data\users\okim\behavior\OK216\190613\trialdata.mat')

DACvals = unique(trials.laser.amp);

figure
subplot(2,3,1)
rectangle('Position', [0 -0.1 0.85 1], 'FaceColor', [0 1 1 0.5], 'EdgeColor', [0 1 1 0.5]);
hold on
plot(timeVector, trials.eyelidpos(idx15,:)')
plot(timeVector, mean(trials.eyelidpos(idx15,:)), 'Color', [0 0 0], 'LineWidth', 2)
xlim([-0.1 1.2])
ylim([-0.1 0.9])
ylabel('FEC')
title('OK216, 15 mW, pretraining')
subplot(2,3,4)
rectangle('Position', [0 -0.6 0.85 1.6], 'FaceColor', [0 1 1 0.5], 'EdgeColor', [0 1 1 0.5]);
hold on
plot(timeVector, trials.encdisp(idx15,:)')
plot(timeVector, median(trials.encdisp(idx15,:)), 'Color', [0 0 0], 'LineWidth', 2)
xlim([-0.1 1.2])
ylim([-0.6 1])
ylabel('cm wheel movement')
xlabel('time s')

subplot(2,3,2)
rectangle('Position', [0 -0.1 0.85 1], 'FaceColor', [0 1 1 0.5], 'EdgeColor', [0 1 1 0.5]);
hold on
plot(timeVector, trials.eyelidpos(idx30,:)')
plot(timeVector, mean(trials.eyelidpos(idx30,:)), 'Color', [0 0 0], 'LineWidth', 2)
xlim([-0.1 1.2])
ylim([-0.1 0.9])
ylabel('FEC')
title('OK216, 30 mW, pretraining')
subplot(2,3,5)
rectangle('Position', [0 -0.6 0.85 1.6], 'FaceColor', [0 1 1 0.5], 'EdgeColor', [0 1 1 0.5]);
hold on
plot(timeVector, trials.encdisp(idx30,:)')
plot(timeVector, median(trials.encdisp(idx30,:)), 'Color', [0 0 0], 'LineWidth', 2)
xlim([-0.1 1.2])
ylim([-0.6 1])
ylabel('cm wheel movement')
xlabel('time s')

subplot(2,3,3)
rectangle('Position', [0 -0.1 0.85 1], 'FaceColor', [0 1 1 0.5], 'EdgeColor', [0 1 1 0.5]);
hold on
plot(timeVector, trials.eyelidpos(idx60,:)')
plot(timeVector, mean(trials.eyelidpos(idx60,:)), 'Color', [0 0 0], 'LineWidth', 2)
xlim([-0.1 1.2])
ylim([-0.1 0.9])
ylabel('FEC')
title('OK216, 60 mW, pretraining')
subplot(2,3,6)
rectangle('Position', [0 -0.6 0.85 1.6], 'FaceColor', [0 1 1 0.5], 'EdgeColor', [0 1 1 0.5]);
hold on
plot(timeVector, trials.encdisp(idx60,:)')
plot(timeVector, median(trials.encdisp(idx60,:)), 'Color', [0 0 0], 'LineWidth', 2)
xlim([-0.1 1.2])
ylim([-0.6 1])
ylabel('cm wheel movement')
xlabel('time s')

%% OK217 data
load('\\blinklab\Data\users\okim\behavior\OK217\190613\trialdata.mat')

DACvals = unique(trials.laser.amp);

figure
subplot(2,3,1)
rectangle('Position', [0 -0.1 0.85 1], 'FaceColor', [0 1 1 0.5], 'EdgeColor', [0 1 1 0.5]);
hold on
plot(timeVector, trials.eyelidpos(idx15,:)')
plot(timeVector, mean(trials.eyelidpos(idx15,:)), 'Color', [0 0 0], 'LineWidth', 2)
xlim([-0.1 1.2])
ylim([-0.1 0.9])
ylabel('FEC')
title('OK217, 15 mW, pretraining')
subplot(2,3,4)
rectangle('Position', [0 -0.6 0.85 1.6], 'FaceColor', [0 1 1 0.5], 'EdgeColor', [0 1 1 0.5]);
hold on
plot(timeVector, trials.encdisp(idx15,:)')
plot(timeVector, median(trials.encdisp(idx15,:)), 'Color', [0 0 0], 'LineWidth', 2)
xlim([-0.1 1.2])
ylim([-0.6 1])
ylabel('cm wheel movement')
xlabel('time s')

subplot(2,3,2)
rectangle('Position', [0 -0.1 0.85 1], 'FaceColor', [0 1 1 0.5], 'EdgeColor', [0 1 1 0.5]);
hold on
plot(timeVector, trials.eyelidpos(idx30,:)')
plot(timeVector, mean(trials.eyelidpos(idx30,:)), 'Color', [0 0 0], 'LineWidth', 2)
xlim([-0.1 1.2])
ylim([-0.1 0.9])
ylabel('FEC')
title('OK217, 30 mW, pretraining')
subplot(2,3,5)
rectangle('Position', [0 -0.6 0.85 1.6], 'FaceColor', [0 1 1 0.5], 'EdgeColor', [0 1 1 0.5]);
hold on
plot(timeVector, trials.encdisp(idx30,:)')
plot(timeVector, median(trials.encdisp(idx30,:)), 'Color', [0 0 0], 'LineWidth', 2)
xlim([-0.1 1.2])
ylim([-0.6 1])
ylabel('cm wheel movement')
xlabel('time s')

subplot(2,3,3)
rectangle('Position', [0 -0.1 0.85 1], 'FaceColor', [0 1 1 0.5], 'EdgeColor', [0 1 1 0.5]);
hold on
plot(timeVector, trials.eyelidpos(idx60,:)')
plot(timeVector, mean(trials.eyelidpos(idx60,:)), 'Color', [0 0 0], 'LineWidth', 2)
xlim([-0.1 1.2])
ylim([-0.1 0.9])
ylabel('FEC')
title('OK217, 60 mW, pretraining')
subplot(2,3,6)
rectangle('Position', [0 -0.6 0.85 1.6], 'FaceColor', [0 1 1 0.5], 'EdgeColor', [0 1 1 0.5]);
hold on
plot(timeVector, trials.encdisp(idx60,:)')
plot(timeVector, median(trials.encdisp(idx60,:)), 'Color', [0 0 0], 'LineWidth', 2)
xlim([-0.1 1.2])
ylim([-0.6 1])
ylabel('cm wheel movement')
xlabel('time s')

%% OK218 data
load('\\blinklab\Data\users\okim\behavior\OK218\190613\trialdata.mat')

DACvals = unique(trials.laser.amp);

figure
subplot(2,3,1)
rectangle('Position', [0 -0.1 0.85 1], 'FaceColor', [0 1 1 0.5], 'EdgeColor', [0 1 1 0.5]);
hold on
plot(timeVector, trials.eyelidpos(idx15,:)')
plot(timeVector, mean(trials.eyelidpos(idx15,:)), 'Color', [0 0 0], 'LineWidth', 2)
xlim([-0.1 1.2])
ylim([-0.1 0.9])
ylabel('FEC')
title('OK218, 15 mW, pretraining')
subplot(2,3,4)
rectangle('Position', [0 -0.6 0.85 1.6], 'FaceColor', [0 1 1 0.5], 'EdgeColor', [0 1 1 0.5]);
hold on
plot(timeVector, trials.encdisp(idx15,:)')
plot(timeVector, median(trials.encdisp(idx15,:)), 'Color', [0 0 0], 'LineWidth', 2)
xlim([-0.1 1.2])
ylim([-0.6 1])
ylabel('cm wheel movement')
xlabel('time s')

subplot(2,3,2)
rectangle('Position', [0 -0.1 0.85 1], 'FaceColor', [0 1 1 0.5], 'EdgeColor', [0 1 1 0.5]);
hold on
plot(timeVector, trials.eyelidpos(idx30,:)')
plot(timeVector, mean(trials.eyelidpos(idx30,:)), 'Color', [0 0 0], 'LineWidth', 2)
xlim([-0.1 1.2])
ylim([-0.1 0.9])
ylabel('FEC')
title('OK218, 30 mW, pretraining')
subplot(2,3,5)
rectangle('Position', [0 -0.6 0.85 1.6], 'FaceColor', [0 1 1 0.5], 'EdgeColor', [0 1 1 0.5]);
hold on
plot(timeVector, trials.encdisp(idx30,:)')
plot(timeVector, median(trials.encdisp(idx30,:)), 'Color', [0 0 0], 'LineWidth', 2)
xlim([-0.1 1.2])
ylim([-0.6 1])
ylabel('cm wheel movement')
xlabel('time s')

subplot(2,3,3)
rectangle('Position', [0 -0.1 0.85 1], 'FaceColor', [0 1 1 0.5], 'EdgeColor', [0 1 1 0.5]);
hold on
plot(timeVector, trials.eyelidpos(idx60,:)')
plot(timeVector, mean(trials.eyelidpos(idx60,:)), 'Color', [0 0 0], 'LineWidth', 2)
xlim([-0.1 1.2])
ylim([-0.1 0.9])
ylabel('FEC')
title('OK218, 60 mW, pretraining')
subplot(2,3,6)
rectangle('Position', [0 -0.6 0.85 1.6], 'FaceColor', [0 1 1 0.5], 'EdgeColor', [0 1 1 0.5]);
hold on
plot(timeVector, trials.encdisp(idx60,:)')
plot(timeVector, median(trials.encdisp(idx60,:)), 'Color', [0 0 0], 'LineWidth', 2)
xlim([-0.1 1.2])
ylim([-0.6 1])
ylabel('cm wheel movement')
xlabel('time s')