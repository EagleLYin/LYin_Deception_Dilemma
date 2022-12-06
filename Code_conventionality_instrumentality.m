%%%%% Code for LYin Deception Dilemma %%%%%

% import data in the order from Item 1 to Item 16, see example.xlsx
% 1: appropriate judgment; 0: inappropriate judgment
col=xlsread('example.xlsx');

subject_col=size(col,1);

for i=1:subject_col
    
    % Xone: the total scores of appropriate judgment in Higher damage of truth-telling condition
    Xone=col(i,1)+col(i,3)+col(i,5)+col(i,7)+col(i,9)+col(i,11)+col(i,13)+col(i,15)+col(i,17)+col(i,19)+col(i,21)+col(i,23)+col(i,25)+col(i,27)+col(i,29)+col(i,31);
    % Xtwo: the total scores of appropriate judgment in Higher damage of lying condition
    Xtwo=col(i,2)+col(i,4)+col(i,6)+col(i,8)+col(i,10)+col(i,12)+col(i,14)+col(i,16)+col(i,18)+col(i,20)+col(i,22)+col(i,24)+col(i,26)+col(i,28)+col(i,30)+col(i,32);
    
    % Other-regarding deception dilemma: Item1-8 (col 1-16)
    Xone_OtherRegarding=col(i,1)+col(i,3)+col(i,5)+col(i,7)+col(i,9)+col(i,11)+col(i,13)+col(i,15);
    Xtwo_OtherRegarding=col(i,2)+col(i,4)+col(i,6)+col(i,8)+col(i,10)+col(i,12)+col(i,14)+col(i,16);
    
    %Self-regarding deception dilemma: Item9-16 (col 17-32)
    Xone_SelfRegarding=col(i,17)+col(i,19)+col(i,21)+col(i,23)+col(i,25)+col(i,27)+col(i,29)+col(i,31);
    Xtwo_SelfRegarding=col(i,18)+col(i,20)+col(i,22)+col(i,24)+col(i,26)+col(i,28)+col(i,30)+col(i,32);
        
    %% conventionality
    conventionality(i,1)=16-Xtwo + Xone;
    conventionality(i,2)=8-Xtwo_OtherRegarding + Xone_OtherRegarding; %conventionality_OtherRegarding
    conventionality(i,3)=8-Xtwo_SelfRegarding+ Xone_SelfRegarding; %conventionality_SelfRegarding
    
    %% instrumentality
    instrumentality(i,1)=Xone+Xtwo;% 
    instrumentality(i,2)=Xone_OtherRegarding+Xtwo_OtherRegarding; %instrumentality_OtherRegarding
    instrumentality(i,3)=Xone_SelfRegarding+Xtwo_SelfRegarding; %instrumentality_SelfRegarding
    
end


