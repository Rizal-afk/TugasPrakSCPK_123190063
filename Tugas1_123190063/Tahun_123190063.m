function varargout = Tahun_123190063(varargin)
% TAHUN_123190063 MATLAB code for Tahun_123190063.fig
%      TAHUN_123190063, by itself, creates a new TAHUN_123190063 or raises the existing
%      singleton*.
%
%      H = TAHUN_123190063 returns the handle to a new TAHUN_123190063 or the handle to
%      the existing singleton*.
%
%      TAHUN_123190063('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TAHUN_123190063.M with the given input arguments.
%
%      TAHUN_123190063('Property','Value',...) creates a new TAHUN_123190063 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Tahun_123190063_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Tahun_123190063_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Tahun_123190063

% Last Modified by GUIDE v2.5 07-Apr-2021 11:11:51

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Tahun_123190063_OpeningFcn, ...
                   'gui_OutputFcn',  @Tahun_123190063_OutputFcn, ...
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


% --- Executes just before Tahun_123190063 is made visible.
function Tahun_123190063_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Tahun_123190063 (see VARARGIN)

% Choose default command line output for Tahun_123190063
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Tahun_123190063 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Tahun_123190063_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in tombolcek.
function tombolcek_Callback(hObject, eventdata, handles)
% hObject    handle to tombolcek (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of tombolcek
input1=get(handles.edit1,'string'); %mengambil nilai pada edit1
angka1=str2double (input1); %mengubah string menjadi double
hasil= mod(angka1,4); %proses pembagian
huruf1="Merupakan Tahun Kabisat";
huruf2="Bukan Tahun Kabisat";
if(hasil==0)
    
    set(handles.hasil,'string',(huruf1))
else
    
    set(handles.hasil,'string',(huruf2))
end

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
