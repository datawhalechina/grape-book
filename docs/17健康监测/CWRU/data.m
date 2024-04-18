%============Arrange data ===========%
% 1�����
clear;    % �ӹ�������ɾ����Ŀ���ͷ�ϵͳ�ڴ�  
clc;      % ���������
close all % �Ƴ�ָ���滭
% 2������·��
savepath = 'G:\����ͼ����\code\data\CWRU\';
% 3��������Դ·��
Datapath='G:\����ͼ����\code\data\CWRU\';
% %=====Label-1 Data----����L0=====%%
% 4����������--����L0
a1=load([Datapath,'B007.mat']);  % ����ģʽB007
a2=load([Datapath,'B014.mat']);  % ����ģʽB014
a3=load([Datapath,'B021.mat']);  % ����ģʽB021
b1=load([Datapath,'IR007.mat']); % ����ģʽIR007
b2=load([Datapath,'IR014.mat']); % ����ģʽIR014
b3=load([Datapath,'IR021.mat']); % ����ģʽIR021
c1=load([Datapath,'OR007_6.mat']); % ����ģʽOR007_6
c2=load([Datapath,'OR014_6.mat']); % ����ģʽOR014_6
c3=load([Datapath,'OR021_6.mat']); % ����ģʽOR021_6
d1=load([Datapath,'Normal.mat']); % ��������״̬
% 5��������Ƭ
L=512;
for i=1:450
    Data0(i,:) = d1.X099_DE_time((L-250)*(i-1)+1:L*i-250*(i-1),1);
    Data1(i,:) = a1.X107_DE_time((L-250)*(i-1)+1:L*i-250*(i-1),1);
    Data2(i,:) = a2.X187_DE_time((L-250)*(i-1)+1:L*i-250*(i-1),1);
    Data3(i,:) = a3.X224_DE_time((L-250)*(i-1)+1:L*i-250*(i-1),1);
    Data4(i,:) = b1.X120_DE_time((L-250)*(i-1)+1:L*i-250*(i-1),1);
    Data5(i,:) = b2.X171_DE_time((L-250)*(i-1)+1:L*i-250*(i-1),1);
    Data6(i,:) = b3.X211_DE_time((L-250)*(i-1)+1:L*i-250*(i-1),1);
    Data7(i,:) = c1.X132_DE_time((L-250)*(i-1)+1:L*i-250*(i-1),1);
    Data8(i,:) = c2.X199_DE_time((L-250)*(i-1)+1:L*i-250*(i-1),1);
    Data9(i,:) = c3.X236_DE_time((L-250)*(i-1)+1:L*i-250*(i-1),1);
end
% 6����ǩ�趨
Data0(:,513)=0;
Data1(:,513)=1;
Data2(:,513)=2;
Data3(:,513)=3;
Data4(:,513)=4;
Data5(:,513)=5;
Data6(:,513)=6;
Data7(:,513)=7;
Data8(:,513)=8;
Data9(:,513)=9;
% 7����������
Data = [Data0;Data1;Data2;Data3;Data4;Data5;Data6;Data7;Data8;Data9];
% 8�������ļ�
savepath1=[savepath,'L1750.mat']
save(savepath1,'Data')