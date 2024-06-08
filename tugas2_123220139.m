function varargout = tugas2_123220139(varargin)
% TUGAS2_123220139 MATLAB code for tugas2_123220139.fig
%      TUGAS2_123220139, by itself, creates a new TUGAS2_123220139 or raises the existing
%      singleton*.
%
%      H = TUGAS2_123220139 returns the handle to a new TUGAS2_123220139 or the handle to
%      the existing singleton*.
%
%      TUGAS2_123220139('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TUGAS2_123220139.M with the given input arguments.
%
%      TUGAS2_123220139('Property','Value',...) creates a new TUGAS2_123220139 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before tugas2_123220139_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to tugas2_123220139_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help tugas2_123220139

% Last Modified by GUIDE v2.5 18-Mar-2024 22:33:57

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @tugas2_123220139_OpeningFcn, ...
                   'gui_OutputFcn',  @tugas2_123220139_OutputFcn, ...
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


% --- Executes just before tugas2_123220139 is made visible.
function tugas2_123220139_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to tugas2_123220139 (see VARARGIN)

% Choose default command line output for tugas2_123220139
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes tugas2_123220139 wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% Memasukan data dari file.csv kedalam table matlab
insertVar = detectImportOptions('OnlineNewsMedia.csv');
insertVar.SelectedVariableNames=(1:8);

allData = table2cell(readtable('OnlineNewsMedia.csv', insertVar));
set(handles.data_table, 'data', allData);


% --- Outputs from this function are returned to the command line.
function varargout = tugas2_123220139_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

function hasilnya_Callback(hObject, eventdata, handles)
% hObject    handle to hasilnya (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hasilnya as text
%        str2double(get(hObject,'String')) returns contents of hasilnya as a double


% --- Executes during object creation, after setting all properties.
function hasilnya_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hasilnya (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function wordsInTitle_Callback(hObject, eventdata, handles)
% hObject    handle to wordsInTitle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of wordsInTitle as text
%        str2double(get(hObject,'String')) returns contents of wordsInTitle as a double


% --- Executes during object creation, after setting all properties.
function wordsInTitle_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wordsInTitle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function wordsInContent_Callback(hObject, eventdata, handles)
% hObject    handle to wordsInContent (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of wordsInContent as text
%        str2double(get(hObject,'String')) returns contents of wordsInContent as a double


% --- Executes during object creation, after setting all properties.
function wordsInContent_CreateFcn(hObject, eventdata, handles)
% hObject    handle to wordsInContent (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function uniqueRate_Callback(hObject, eventdata, handles)
% hObject    handle to uniqueRate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of uniqueRate as text
%        str2double(get(hObject,'String')) returns contents of uniqueRate as a double


% --- Executes during object creation, after setting all properties.
function uniqueRate_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uniqueRate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function linkQuantity_Callback(hObject, eventdata, handles)
% hObject    handle to linkQuantity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of linkQuantity as text
%        str2double(get(hObject,'String')) returns contents of linkQuantity as a double


% --- Executes during object creation, after setting all properties.
function linkQuantity_CreateFcn(hObject, eventdata, handles)
% hObject    handle to linkQuantity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function imagesQuantity_Callback(hObject, eventdata, handles)
% hObject    handle to imagesQuantity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of imagesQuantity as text
%        str2double(get(hObject,'String')) returns contents of imagesQuantity as a double


% --- Executes during object creation, after setting all properties.
function imagesQuantity_CreateFcn(hObject, eventdata, handles)
% hObject    handle to imagesQuantity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function videoQuantity_Callback(hObject, eventdata, handles)
% hObject    handle to videoQuantity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of videoQuantity as text
%        str2double(get(hObject,'String')) returns contents of videoQuantity as a double


% --- Executes during object creation, after setting all properties.
function videoQuantity_CreateFcn(hObject, eventdata, handles)
% hObject    handle to videoQuantity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function averageLength_Callback(hObject, eventdata, handles)
% hObject    handle to averageLength (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of averageLength as text
%        str2double(get(hObject,'String')) returns contents of averageLength as a double


% --- Executes during object creation, after setting all properties.
function averageLength_CreateFcn(hObject, eventdata, handles)
% hObject    handle to averageLength (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function k_value_Callback(hObject, eventdata, handles)
% hObject    handle to k_value (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k_value as text
%        str2double(get(hObject,'String')) returns contents of k_value as a double


% --- Executes during object creation, after setting all properties.
function k_value_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k_value (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in determinate.
function determinate_Callback(hObject, eventdata, handles)
% hObject    handle to determinate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

wit = str2double(get(handles.wordsInTitle, 'String'));
wic = str2double(get(handles.wordsInContent, 'String'));
urw = str2double(get(handles.uniqueRate, 'String'));
lq = str2double(get(handles.linkQuantity, 'String'));
iq = str2double(get(handles.imagesQuantity, 'String'));
vq = str2double(get(handles.videoQuantity, 'String'));
al = str2double(get(handles.averageLength, 'String'));
k_value = str2double(get(handles.k_value, 'String'));

sample = [wit wic urw lq iq vq al];

importVar = detectImportOptions('OnlineNewsMedia.csv');
importVar.SelectedVariableNames=(1:7);
training = readmatrix('OnlineNewsMedia.csv', importVar);

importVar.SelectedVariableNames=(8);
group = readmatrix('OnlineNewsMedia.csv', importVar);

class = fitcknn(training, group, 'NumNeighbors', k_value);
result = predict(class, sample);

switch(result)
    case 0
        jawaban = "Low (<1000)";
    case 1
        jawaban = "Normal (1000-5000)";
    case 2
        jawaban = "Moderately High (5000-10000)";
    case 3
        jawaban = "High (10000-20000)";
    case 4
        jawaban = "Very High (>20000)";
    case 99
        jawaban = "";
end

set(handles.hasilnya, 'String', "The share count most likely to be " + jawaban);
