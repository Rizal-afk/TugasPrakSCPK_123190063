function varargout = Balok_123190063(varargin)
% BALOK_123190063 MATLAB code for Balok_123190063.fig
%      BALOK_123190063, by itself, creates a new BALOK_123190063 or raises the existing
%      singleton*.
%
%      H = BALOK_123190063 returns the handle to a new BALOK_123190063 or the handle to
%      the existing singleton*.
%
%      BALOK_123190063('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BALOK_123190063.M with the given input arguments.
%
%      BALOK_123190063('Property','Value',...) creates a new BALOK_123190063 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Balok_123190063_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Balok_123190063_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Balok_123190063

% Last Modified by GUIDE v2.5 07-Apr-2021 11:33:40

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Balok_123190063_OpeningFcn, ...
                   'gui_OutputFcn',  @Balok_123190063_OutputFcn, ...
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


% --- Executes just before Balok_123190063 is made visible.
function Balok_123190063_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Balok_123190063 (see VARARGIN)

% Choose default command line output for Balok_123190063
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Balok_123190063 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Balok_123190063_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function panjang_Callback(hObject, eventdata, handles)
% hObject    handle to panjang (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of panjang as text
%        str2double(get(hObject,'String')) returns contents of panjang as a double


% --- Executes during object creation, after setting all properties.
function panjang_CreateFcn(hObject, eventdata, handles)
% hObject    handle to panjang (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function lebar_Callback(hObject, eventdata, handles)
% hObject    handle to lebar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lebar as text
%        str2double(get(hObject,'String')) returns contents of lebar as a double


% --- Executes during object creation, after setting all properties.
function lebar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lebar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tinggi_Callback(hObject, eventdata, handles)
% hObject    handle to tinggi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tinggi as text
%        str2double(get(hObject,'String')) returns contents of tinggi as a double


% --- Executes during object creation, after setting all properties.
function tinggi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tinggi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in hitungluas.
function hitungluas_Callback(hObject, eventdata, handles)
% hObject    handle to hitungluas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of hitungluas
input1=get(handles.panjang, 'string');
input2=get(handles.lebar, 'string');
input3=get(handles.tinggi, 'string');
p=str2num(input1);
l=str2num(input2);
t=str2num(input3);
hasil=2*((p*l)+(p*t)+(l*t));
hasil1=num2str(hasil);
set(handles.hasilluas,'string', (hasil1))

function hasilluas_Callback(hObject, eventdata, handles)
% hObject    handle to hasilluas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hasilluas as text
%        str2double(get(hObject,'String')) returns contents of hasilluas as a double


% --- Executes during object creation, after setting all properties.
function hasilluas_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasilluas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in hitungvolume.
function hitungvolume_Callback(hObject, eventdata, handles)
% hObject    handle to hitungvolume (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of hitungvolume
input1=get(handles.panjang, 'string');
input2=get(handles.lebar, 'string');
input3=get(handles.tinggi, 'string');
p=str2num(input1);
l=str2num(input2);
t=str2num(input3);
hasil=p*l*t;
hasil1=num2str(hasil);
set(handles.hasilvolume,'string', (hasil1))


function hasilvolume_Callback(hObject, eventdata, handles)
% hObject    handle to hasilvolume (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hasilvolume as text
%        str2double(get(hObject,'String')) returns contents of hasilvolume as a double


% --- Executes during object creation, after setting all properties.
function hasilvolume_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasilvolume (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
