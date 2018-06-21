function [Y,Xf,Af] = myNeuralNetworkFunction(X,~,~)
%MYNEURALNETWORKFUNCTION neural network simulation function.
%
% Generated by Neural Network Toolbox function genFunction, 11-Mar-2018 17:52:01.
%
% [Y] = myNeuralNetworkFunction(X,~,~) takes these arguments:
%
%   X = 1xTS cell, 1 inputs over TS timsteps
%   Each X{1,ts} = 13xQ matrix, input #1 at timestep ts.
%
% and returns:
%   Y = 1xTS cell of 1 outputs over TS timesteps.
%   Each Y{1,ts} = 1xQ matrix, output #1 at timestep ts.
%
% where Q is number of samples (or series) and TS is the number of timesteps.

%#ok<*RPMT0>

% ===== NEURAL NETWORK CONSTANTS =====

% Input 1
x1_step1_xoffset = [0.42199;0.017348;0.0010127;0.013756;0.02099;0.026345;0.0025846;0.076224;0.036914;0.0021286;0.059685;0.010627;0.0096623];
x1_step1_gain = [0.00545616231384495;0.0464461151215267;0.0441082539791109;0.0427841860407009;0.0483664123318874;0.0421526027493403;0.0446175452509025;0.0447119450822852;0.0493874889538708;0.054331775476524;0.058683181678876;0.0398649590458306;0.0486969455817258];
x1_step1_ymin = -1;

% Layer 1
b1 = [-1.9214028893976839996;-1.5443579148718598049;0.74287278803974554631;-0.97425263534125527976;-0.32430786105506814732;0.14973121870757319374;-0.43288545660579791363;0.89463117124113622491;1.2942986050662930175;1.5625586004312674859];
IW1_1 = [0.87881189137512083498 -0.72179732641638827406 0.35383844779510298384 0.36519944167467333074 0.040851478532181934034 -0.22502418763099107935 0.29675104634555327099 0.74513507185976335379 -0.19277292250776056903 -0.52713328380658530659 -0.45150684012129926881 -0.0096562434331286597922 -0.51687195397215190962;0.82212294363823890109 0.66044143849949754621 -0.30553443931614288065 -0.43998672163414465075 0.65102507531716780065 0.28297961678689409482 0.29206497304689077454 -0.51086071648385367183 0.44070823650516632863 -0.64004395628386323569 0.94743562238489920091 -0.64625102273044432444 -0.097395052620150801559;-0.57307280706634844414 0.36809861410694694195 -0.2702881741638146762 -0.54076962235707992654 0.28479161184721057953 0.7422936964550219674 -0.70375447038378435849 0.46680073053401133221 -0.02622918958614843532 0.38117772554727308298 -0.13041065785817790301 -0.94499334195743645015 -0.71327820129334640331;0.34579004247641420555 -0.36182707454562657023 0.64732856280359762913 -1.1669558562233870447 0.78892514840181082736 -0.075120330163228277165 0.3689893532743734883 -0.2617747850725890002 0.12767683461306622572 -0.092920627454113099986 -0.0061191141446773553159 0.41757987483297220876 0.85780456044692154904;-0.23552039586363290868 0.078259301591854124602 0.25413557519530616258 -0.84101226554748265141 -0.30381092991523556135 -0.12543135306035141374 0.65691559748449146472 0.26523350727718192354 0.17734270183640177265 0.36619626695773321856 -0.42041612081098411746 -0.42847620329961022545 0.54039324350969064614;-1.4730631440008101762 -0.7133467601954037729 0.22411167360693701189 0.45236830893326207548 0.64829500591525301978 -0.073075929238602482796 0.81508156876177162431 -0.40078140363092973342 0.4533101465336163427 -0.44066349891373562953 0.78023170353523463305 0.53760294765956262442 0.50357742725852727705;0.010795911287027448733 -0.49163851623784071698 1.2280601539962436863 0.22744478380974220144 -0.021065243347215045766 0.92528859526427564841 0.16774131109553300223 0.077168152508375303933 0.26679031728837843129 -0.19543370521851100019 -0.40404267374554864167 0.41259732456890563235 -0.36384795891012966518;-0.22643332087420703358 0.79057445180300867094 -0.049957850331370401431 -0.46915087850227704669 0.47687176167204592403 -0.30979681360027438997 -0.61907728428099528806 -0.3745758036933917734 0.50956935783763457337 -0.30942030651083118897 0.36348705793806052045 0.88367444420126917137 -0.19532237794268442199;0.60022598655945913482 0.32256466019081764252 0.10022871147528483737 0.72633764600217942675 0.2706351180121008837 0.28823039877141498621 -0.66687419060531460957 0.11512888115603980843 -0.25338302068478368856 -0.80631928487845727638 0.23213059675971237095 -0.73336201993572269764 -0.38092899569719790298;0.60658032110612936094 0.73653533487768796384 -0.96649852325954199728 -0.95009356599887273553 0.2803056500945163565 -0.51579940166862980888 -0.27674114228153057216 -0.62100454171522001534 0.25503171480540165472 -0.33188919497062308039 0.23943180055263088568 -0.27370362544259463355 0.21263009531962290266];

% Layer 2
b2 = 1.0405355072274156125;
LW2_1 = [-0.26089402305743769617 0.90581463921667282335 -0.59857641288669194424 -0.51963681323308286153 -0.12281410968431460962 -0.70174149764090909542 0.37367531061890513211 0.26255470867977992455 -0.37308338981293809322 -0.7334527012318496908];

% Output 1
y1_step1_ymin = -1;
y1_step1_gain = 2;
y1_step1_xoffset = 0;

% ===== SIMULATION ========

% Format Input Arguments
isCellX = iscell(X);
if ~isCellX, X = {X}; end;

% Dimensions
TS = size(X,2); % timesteps
if ~isempty(X)
    Q = size(X{1},2); % samples/series
else
    Q = 0;
end

% Allocate Outputs
Y = cell(1,TS);

% Time loop
for ts=1:TS
    
    % Input 1
    Xp1 = mapminmax_apply(X{1,ts},x1_step1_gain,x1_step1_xoffset,x1_step1_ymin);
    
    % Layer 1
    a1 = tansig_apply(repmat(b1,1,Q) + IW1_1*Xp1);
    
    % Layer 2
    a2 = repmat(b2,1,Q) + LW2_1*a1;
    
    % Output 1
    Y{1,ts} = mapminmax_reverse(a2,y1_step1_gain,y1_step1_xoffset,y1_step1_ymin);
end

% Final Delay States
Xf = cell(1,0);
Af = cell(2,0);

% Format Output Arguments
if ~isCellX, Y = cell2mat(Y); end
end

% ===== MODULE FUNCTIONS ========

% Map Minimum and Maximum Input Processing Function
function y = mapminmax_apply(x,settings_gain,settings_xoffset,settings_ymin)
y = bsxfun(@minus,x,settings_xoffset);
y = bsxfun(@times,y,settings_gain);
y = bsxfun(@plus,y,settings_ymin);
end

% Sigmoid Symmetric Transfer Function
function a = tansig_apply(n)
a = 2 ./ (1 + exp(-2*n)) - 1;
end

% Map Minimum and Maximum Output Reverse-Processing Function
function x = mapminmax_reverse(y,settings_gain,settings_xoffset,settings_ymin)
x = bsxfun(@minus,y,settings_ymin);
x = bsxfun(@rdivide,x,settings_gain);
x = bsxfun(@plus,x,settings_xoffset);
end