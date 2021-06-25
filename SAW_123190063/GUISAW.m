function varargout = GUISAW(varargin)
% GUISAW MATLAB code for GUISAW.fig
%      GUISAW, by itself, creates a new GUISAW or raises the existing
%      singleton*.
%
%      H = GUISAW returns the handle to a new GUISAW or the handle to
%      the existing singleton*.
%
%      GUISAW('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUISAW.M with the given input arguments.
%
%      GUISAW('Property','Value',...) creates a new GUISAW or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUISAW_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUISAW_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUISAW

% Last Modified by GUIDE v2.5 25-Jun-2021 14:59:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUISAW_OpeningFcn, ...
                   'gui_OutputFcn',  @GUISAW_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before GUISAW is made visible.
function GUISAW_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUISAW (see VARARGIN)

% Choose default command line output for GUISAW
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUISAW wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUISAW_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
[~, ~, raw0_0] = xlsread('DATA RUMAH.xlsx','Sheet1','A2:A1011');
[~, ~, raw0_1] = xlsread('DATA RUMAH.xlsx','Sheet1','C2:H1011');
raw = [raw0_0,raw0_1];

%% Create output variable
data = reshape([raw{:}],size(raw));

%% Create table
DATARUMAH = table;

%% Allocate imported array to column variable names
data1 = data(:,1);
data2 = data(:,2);
data3 = data(:,3);
data4 = data(:,4);
data5 = data(:,5);
data6 = data(:,6);
data7 = data(:,7);
data=[data1,data2,data3,data4,data5,data6,data7];
set(handles.uitable1,'data',data);


% --- Executes on button press in togglebutton1.
function togglebutton1_Callback(hObject, eventdata, handles)
% hObject    handle to togglebutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of togglebutton1
[~, ~, raw0_0] = xlsread('C:\Users\Asus\Documents\ResponsiSPK\DATA RUMAH.xlsx','Sheet1','A2:A1011');
[~, ~, raw0_1] = xlsread('C:\Users\Asus\Documents\ResponsiSPK\DATA RUMAH.xlsx','Sheet1','C2:H1011');
raw = [raw0_0,raw0_1];

%% Create output variable
data = reshape([raw{:}],size(raw));

%% Create table
DATARUMAH = table;

%% Allocate imported array to column variable names
data1 = data(:,1);
data2 = data(:,2);
data3 = data(:,3);
data4 = data(:,4);
data5 = data(:,5);
data6 = data(:,6);
data7 = data(:,7);
data=[data2,data3,data4,data5,data6,data7];

k=[0,1,1,1,1,1];%nilai atribut, dimana 0= atribut biaya &1= atribut keuntungan
w=[0.3,0.2,0.23,0.1,.07,0.1];% bobot untuk masing-masing kriteria

%tahapan 1. normalisasi matriks
[m n]=size (data); %matriks m x n dengan ukuran sebanyak variabel x
R=zeros (m,n); %membuat matriks R, yang merupakan matriks kosong
Y=zeros (m,n); %membuat matriks Y, yang merupakan titik kosong

for j=1:n,
    if k(j)==1, %statement untuk kriteria dengan atribut keuntungan
        R(:,j)=data(:,j)./max(data(:,j));
    else
        R(:,j)=min(data(:,j))./data(:,j);
    end;
end;


%tahapan kedua, proses perangkingan
for i=1:m,
    V(i)= sum(w.*R(i,:));
end;
data=[data1,data2,data3,data4,data5,data6,data7];
[m n]=size (data); %matriks m x n dengan ukuran sebanyak variabel x
[nilai,idx] = sort(V,'descend');
for i=1:20,
    for j=1:m,
        if nilai(i)== V(j) 
            a(i,1:n)=data(j,1:n);
            disp(i+". No Rumah : "+j+" | Nilai : "+V(j))
        end
    end
end
set(handles.uitable2,'data',a);
