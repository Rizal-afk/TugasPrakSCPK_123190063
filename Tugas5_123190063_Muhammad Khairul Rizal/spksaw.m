function varargout = spksaw(varargin)
% SPKSAW MATLAB code for spksaw.fig
%      SPKSAW, by itself, creates a new SPKSAW or raises the existing
%      singleton*.
%
%      H = SPKSAW returns the handle to a new SPKSAW or the handle to
%      the existing singleton*.
%
%      SPKSAW('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SPKSAW.M with the given input arguments.
%
%      SPKSAW('Property','Value',...) creates a new SPKSAW or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before spksaw_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to spksaw_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help spksaw

% Last Modified by GUIDE v2.5 22-Jun-2021 18:19:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @spksaw_OpeningFcn, ...
                   'gui_OutputFcn',  @spksaw_OutputFcn, ...
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


% --- Executes just before spksaw is made visible.
function spksaw_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to spksaw (see VARARGIN)

% Choose default command line output for spksaw
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes spksaw wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = spksaw_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
data = [ 6000 4 64 3299000
         4000 2 32 1899000
         4500 6 64 2900000
         4000 4 64 2400000
         5000 3 32 1900000];
set(handles.uitable1,'data',data);


% --- Executes on button press in proses.
function proses_Callback(hObject, eventdata, handles)
% hObject    handle to proses (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of proses
data = [ 6000 4 64 3299000
         4000 2 32 1899000
         4500 6 64 2900000
         4000 4 64 2400000
         5000 3 32 1900000];
for i=1:1:5
    for j=1:1:4
        if(j==1)
            if(data(i,j)>=4000 && data(i,j)<5000)
                x(i,j)=1;
            elseif(data(i,j)>=5000 && data(i,j)<6000)
                x(i,j)=2;
            elseif(data(i,j)>=6000 && data(i,j)<7000)
                x(i,j)=3;
            end
        elseif j==2
                if data(i,j)>=2 && data(i,j)<=3 
                    x(i,j)=1;
                elseif data(i,j)==4
                    x(i,j)=2;
                elseif data(i,j)==6
                    x(i,j)=3;
                end
       elseif j==3
          if data(i,j)==16
                x(i,j)=1;
          elseif data(i,j)==32
                x(i,j)=2;
          elseif data(i,j)==64
                x(i,j)=3;
          end
        elseif j==4
           if data(i,j)>=1000000 && data(i,j)<2000000                           
                  x(i,j)=1;
           elseif data(i,j)>=2000000 && data(i,j)<3000000
                  x(i,j)=2;
           elseif data(i,j)>=3000000 && data(i,j)<4000000
                  x(i,j)=3;
           end
       end
    end
end
set(handles.uitable2,'data',x);


% --- Executes on button press in proses2.
function proses2_Callback(hObject, eventdata, handles)
% hObject    handle to proses2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of proses2
data = [ 6000 4 64 3299000
         4000 2 32 1899000
         4500 6 64 2900000
         4000 4 64 2400000
         5000 3 32 1900000];
for i=1:1:5
    for j=1:1:4
        if(j==1)
            if(data(i,j)>=4000 && data(i,j)<5000)
                x(i,j)=1;
            elseif(data(i,j)>=5000 && data(i,j)<6000)
                x(i,j)=2;
            elseif(data(i,j)>=6000 && data(i,j)<7000)
                x(i,j)=3;
            end
        elseif j==2
                if data(i,j)>=2 && data(i,j)<=3 
                    x(i,j)=1;
                elseif data(i,j)==4
                    x(i,j)=2;
                elseif data(i,j)==6
                    x(i,j)=3;
                end
       elseif j==3
          if data(i,j)==16
                x(i,j)=1;
          elseif data(i,j)==32
                x(i,j)=2;
          elseif data(i,j)==64
                x(i,j)=3;
          end
        elseif j==4
           if data(i,j)>=1000000 && data(i,j)<2000000                           
                  x(i,j)=1;
           elseif data(i,j)>=2000000 && data(i,j)<3000000
                  x(i,j)=2;
           elseif data(i,j)>=3000000 && data(i,j)<4000000
                  x(i,j)=3;
           end
       end
    end
end

k=[1,1,1,0];%nilai atribut, dimana 0= atribut biaya &1= atribut keuntungan
w=[0.2,0.25,0.25,0.30];% bobot untuk masing-masing kriteria
[m n]=size (x); %matriks m x n dengan ukuran sebanyak variabel x (input)
R=zeros (m,n); %membuat matriks R, yang merupakan matriks kosong
Y=zeros (m,n); %membuat matriks Y, yang merupakan titik kosong
for j=1:n,
 if k(j)==1, %statement untuk kriteria dengan atribut keuntungan
  R(:,j)=x(:,j)./max(x(:,j));
 else
  R(:,j)=min(x(:,j))./x(:,j);
 end;
end;

for i=1:m,
 V(i)= sum(w.*R(i,:))
end;

a=V(1);
angka=1;
for j=2:m,
    if V(j)>a
        angka=j;
        a=V(j);
    end
end
hasil1="Smartphone "+angka;
set(handles.hasil,'string',(hasil1))



function hasil_Callback(hObject, eventdata, handles)
% hObject    handle to hasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hasil as text
%        str2double(get(hObject,'String')) returns contents of hasil as a double


% --- Executes during object creation, after setting all properties.
function hasil_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
