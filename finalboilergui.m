function varargout = finalboilergui(varargin)
% FINALBOILERGUI M-file for finalboilergui.fig
%      FINALBOILERGUI, by itself, creates a new FINALBOILERGUI or raises the existing
%      singleton*.
%
%      H = FINALBOILERGUI returns the handle to a new FINALBOILERGUI or the handle to
%      the existing singleton*.
%
%      FINALBOILERGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FINALBOILERGUI.M with the given input
%      arguments.
%
%      FINALBOILERGUI('Property','Value',...) creates a new FINALBOILERGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before finalboilergui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to finalboilergui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help finalboilergui

% Last Modified by GUIDE v2.5 09-Oct-2017 13:19:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @finalboilergui_OpeningFcn, ...
                   'gui_OutputFcn',  @finalboilergui_OutputFcn, ...
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

% --- Executes just before finalboilergui is made visible.
function finalboilergui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to finalboilergui (see VARARGIN)

% Choose default command line output for finalboilergui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes finalboilergui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = finalboilergui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in twicept.
function twicept_Callback(hObject, eventdata, handles)
% hObject    handle to twicept (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of twicept
if get(hObject,'Value')==1
    set(handles.equalpt,'Value',0);
end

% --- Executes on button press in equalpt.
function equalpt_Callback(hObject, eventdata, handles)
% hObject    handle to equalpt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of equalpt
if get(hObject,'Value')==1
    set(handles.twicept,'Value',0);
end
% --- Executes on selection change in layout.
function layout_Callback(hObject, eventdata, handles)
% hObject    handle to layout (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns layout contents as cell array
%        contents{get(hObject,'Value')} returns selected item from layout
a=cellstr(get(hObject,'String'));
b=a(get(hObject,'Value'));
if strcmp(b,'single riveted')==1&&get(handles.longbutt,'value')==1
    set(handles.equalpt,'Enable','off');
set(handles.twicept,'Enable','off');
set(handles.outer,'String','pitch');
set(handles.dist,'Enable','off');
set(handles.innerouter,'Enable','off')
set(handles.inner,'Enable','off');
set(handles.innerpt,'Enable','off');
set(handles.transverse,'Enable','off');
set(handles.transpt,'Enable','off');
set(handles.innerpt,'string',' ');set(handles.innerouter,'string',' ');set(handles.transpt,'string',' ');
%set(handles.lapdiagpt,'Enable','off');
%set(handles.lapdiagptedit,'Enable','off');
elseif strcmp(b,'single riveted')==0&&get(handles.longbutt,'value')==1
    set(handles.equalpt,'Enable','on');
set(handles.twicept,'Enable','on');
set(handles.outer,'String','outer pitch');
set(handles.dist,'Enable','on');
set(handles.innerouter,'Enable','on');
set(handles.inner,'Enable','on');
set(handles.innerpt,'Enable','on');
set(handles.transverse,'Enable','on');
set(handles.transpt,'Enable','on');
%set(handles.lapdiagpt,'Enable','on');
%set(handles.lapdiagptedit,'Enable','on');
end
 if strcmp(b,'single riveted')==1&&get(handles.circumlap,'value')==1
    set(handles.equalpt,'Enable','off');
set(handles.twicept,'Enable','off');
set(handles.lapouter,'String','circumferential pitch');
set(handles.lapdist,'Enable','off');
set(handles.lapdistedit,'Enable','off');
set(handles.lapdistedit,'string',' ');%set(handles.lapdistedit,'string',' ');set(handles.lapinneredit,'string',' ');set(handles.laptransedit,'string',' ');
set(handles.lapinner,'Enable','off');
set(handles.lapinneredit,'string',' ');
set(handles.lapinneredit,'Enable','off');

set(handles.laptransverse,'Enable','off');
set(handles.laptransedit,'Enable','off');
set(handles.laptransedit,'string',' ');
%set(handles.lapdiagpt,'Enable','off');
%set(handles.lapdiagptedit,'Enable','off');
elseif strcmp(b,'single riveted')==0&&get(handles.circumlap,'value')==1
    set(handles.equalpt,'Enable','on');
set(handles.twicept,'Enable','on');
set(handles.lapouter,'String','outer circumferential pitch');
set(handles.lapdist,'Enable','on');
set(handles.lapdistedit,'Enable','on');
set(handles.lapinner,'Enable','on');
set(handles.lapinneredit,'Enable','on');
set(handles.laptransverse,'Enable','on');
set(handles.laptransedit,'Enable','on');
%set(handles.lapdiagpt,'Enable','on');
%set(handles.lapdiagptedit,'Enable','on');
 end
 if strcmp(b,'double riveted (chain)')==1||strcmp(b,'double riveted (zig zag)')==1
    set(handles.laptransedit,'string',' ');
 end
 if strcmp(b,'double riveted (chain)')==0&&strcmp(b,'double riveted (zig zag)')==0&&strcmp(b,'single riveted')==0&&get(handles.circumlap,'value')==1
set(handles.laptransverse,'Enable','on');
set(handles.laptransedit,'Enable','on');
end
if (strcmp(b,'double riveted (chain)')==1||strcmp(b,'double riveted (zig zag)')==1||strcmp(b,'single riveted')==1)&&get(handles.circumlap,'value')==1
set(handles.laptransverse,'Enable','off');
set(handles.laptransedit,'Enable','off');
set(handles.laptransedit,'string',' ')
end
if strcmp(b,'double riveted (chain)')==0&&strcmp(b,'double riveted (zig zag)')==0&&strcmp(b,'single riveted')==0&&get(handles.longbutt,'value')==1
set(handles.transverse,'Enable','on');
set(handles.transpt,'Enable','on');
end
if (strcmp(b,'double riveted (chain)')==1||strcmp(b,'double riveted (zig zag)')==1||strcmp(b,'single riveted')==1)&&get(handles.longbutt,'value')==1
set(handles.transverse,'Enable','off');
set(handles.transpt,'Enable','off');
set(handles.transpt,'string',' ');
end
 

% --- Executes during object creation, after setting all properties.
function layout_CreateFcn(hObject, eventdata, handles)
% hObject    handle to layout (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function P_Callback(hObject, eventdata, handles)
% hObject    handle to P (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of P as text
%        str2double(get(hObject,'String')) returns contents of P as a double
P=str2double(get(handles.P,'String'));
if isnan(P)
    set(handles.P, 'String', ' ');
    errordlg('Input must be a number','Error');
end
if P<0
    set(handles.P,'String',' ');
    errordlg('input must be postive number','Error');
end
handles.metricdata.P = P;
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function P_CreateFcn(hObject, eventdata, handles)
% hObject    handle to P (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function D_Callback(hObject, eventdata, handles)
% hObject    handle to D (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of D as text
%        str2double(get(hObject,'String')) returns contents of D as a double

x=str2double(get(handles.D,'String'));
if isnan(x)
    set(handles.D, 'String',' ');
    errordlg('Input must be a number','Error');
end
if x<0
    set(handles.D,'String',' ');
    errordlg('input must be postive number','Error');
end
%handles.metricdata.D = D;
%guidata(hObject,handles)
% --- Executes during object creation, after setting all properties.
function D_CreateFcn(hObject, eventdata, handles)
% hObject    handle to D (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function st_Callback(hObject, eventdata, handles)
% hObject    handle to st (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of st as text
%        str2double(get(hObject,'String')) returns contents of st as a double
st=str2double(get(handles.st,'String'));
if isnan(st)
    set(handles.st, 'String', ' ');
    errordlg('Input must be a number','Error');
end
if st<0
    set(handles.st,'String', ' ');
    errordlg('input must be postive number','Error');
end

handles.metricdata.st = st;
guidata(hObject,handles)
% --- Executes during object creation, after setting all properties.
function st_CreateFcn(hObject, eventdata, handles)
% hObject    handle to st (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sc_Callback(hObject, eventdata, handles)
% hObject    handle to sc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sc as text
%        str2double(get(hObject,'String')) returns contents of sc as a double
sc=str2double(get(handles.sc,'String'));
if isnan(sc)
    set(handles.sc, 'String', ' ');
    errordlg('Input must be a number','Error');
end
if sc<0
    set(handles.sc,'String',' ');
    errordlg('input must be postive number','Error');
end
handles.metricdata.sc = sc;
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function sc_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sc (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tou_Callback(hObject, eventdata, handles)
% hObject    handle to tou (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tou as text
%        str2double(get(hObject,'String')) returns contents of tou as a double
tou=str2double(get(handles.tou,'String'));
if isnan(tou)
    set(handles.tou, 'String', ' ');
    errordlg('Input must be a number','Error');
end
if tou<0
    set(handles.tou,'String',' ');
    errordlg('input must be positive number','Error');
end
handles.metricdata.tou = tou;
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function tou_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tou (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in longbutt.
function longbutt_Callback(hObject, eventdata, handles)
% hObject    handle to longbutt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of longbutt
if get(hObject,'Value')==1
    set(handles.circumlap,'Value',0);
   set(handles.strap,'Enable','on');
   set(handles.calculatebutt,'Enable','on');
   set(handles.calculatelap,'Enable','off');
set(handles.lapplate,'Enable','off');
set(handles.lapplateedit,'Enable','off');
set(handles.lapplateedit,'string',' ');
set(handles.laprivetedit,'Enable','off');
set(handles.laprivetedit,'string',' ');
set(handles.laprivet,'Enable','off');
set(handles.lapouter,'Enable','off');
set(handles.lapouteredit,'Enable','off');
set(handles.lapouteredit,'string',' ');
set(handles.lapdist,'Enable','off');
set(handles.lapdistedit,'Enable','off');
set(handles.lapdistedit,'string',' ');
set(handles.lapinner,'Enable','off');
set(handles.lapinneredit,'Enable','off');
set(handles.lapinneredit,'string',' ');
set(handles.laptransverse,'Enable','off');
set(handles.laptransedit,'Enable','off');
set(handles.laptransedit,'string',' ');
set(handles.lapmargin,'Enable','off');
set(handles.lapmedit,'Enable','off');
set(handles.lapmedit,'string',' ');
set(handles.lapefficiency,'Enable','off');
set(handles.lapeffiedit,'Enable','off');
set(handles.lapeffiedit,'string',' ');
set(handles.laprvtperrow,'Enable','off');
set(handles.laprvtperrowedit,'Enable','off');
set(handles.laprvtperrowedit,'string',' ');
set(handles.inducedst,'Enable','off');
set(handles.inducedtou,'Enable','off');
set(handles.inducedsc,'Enable','off');
set(handles.inducedtensile,'Enable','off');
set(handles.inducedcomp,'Enable','off');
set(handles.inducedshear,'Enable','off');
set(handles.lapcheck,'string',' ');
set(handles.inducedtensile,'string',' ');
set(handles.inducedcomp,'string',' ');
set(handles.inducedshear,'string',' ');
%set(handles.transpt,'string',
end

if get(hObject,'Value')==1
    set(handles.plate,'Enable','on');
set(handles.staticplate,'Enable','on');
set(handles.staticrivet,'Enable','on');
set(handles.rivet,'Enable','on');
set(handles.outer,'Enable','on');
set(handles.outerpt,'Enable','on');
set(handles.dist,'Enable','on');
set(handles.innerouter,'Enable','on');
set(handles.inner,'Enable','on');
set(handles.innerpt,'Enable','on');
set(handles.transverse,'Enable','on');
set(handles.transpt,'Enable','on');
set(handles.margin,'Enable','on');
set(handles.m,'Enable','on');
set(handles.outerstrap,'Enable','on');
set(handles.outerst,'Enable','on');
set(handles.innerstrap,'Enable','on');
set(handles.innerst,'Enable','on');
set(handles.efficiency,'Enable','on');
set(handles.effi,'Enable','on');

end
% --- Executes on button press in circumlap.
function circumlap_Callback(hObject, eventdata, handles)
% hObject    handle to circumlap (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of circumlap
if get(hObject,'Value')==1
    set(handles.longbutt,'Value',0);
set(handles.strap,'Enable','off');
set(handles.calculatebutt,'Enable','off');
set(handles.calculatelap,'Enable','on');
set(handles.plate,'Enable','off');
set(handles.plate,'string',' ');
set(handles.staticplate,'Enable','off');
set(handles.staticrivet,'Enable','off');
set(handles.rivet,'Enable','off');
set(handles.rivet,'string',' ');
set(handles.outer,'Enable','off');
set(handles.outerpt,'Enable','off');
set(handles.outerpt,'string',' ');
set(handles.dist,'Enable','off');
set(handles.innerouter,'Enable','off');
set(handles.innerouter,'string',' ');
set(handles.inner,'Enable','off');
set(handles.innerpt,'Enable','off');
set(handles.innerpt,'string',' ');
set(handles.transverse,'Enable','off');
set(handles.transpt,'Enable','off');
set(handles.transpt,'string',' ');
set(handles.margin,'Enable','off');
set(handles.m,'Enable','off');
set(handles.m,'string',' ');
set(handles.outerstrap,'Enable','off');
set(handles.outerst,'Enable','off');
set(handles.outerst,'string',' ');
set(handles.innerstrap,'Enable','off');
set(handles.innerst,'Enable','off');
set(handles.innerst,'string',' ');
set(handles.efficiency,'Enable','off');
set(handles.effi,'Enable','off');
set(handles.effi,'string',' ');
set(handles.check,'string',' ');
set(handles.lapplate,'Enable','on');
set(handles.lapplateedit,'Enable','on');
set(handles.laprivetedit,'Enable','on');
set(handles.laprivet,'Enable','on');
set(handles.lapouter,'Enable','on');
set(handles.lapouteredit,'Enable','on');
set(handles.lapdist,'Enable','on');
set(handles.lapdistedit,'Enable','on');
set(handles.lapinner,'Enable','on');
set(handles.lapinneredit,'Enable','on');
set(handles.laptransverse,'Enable','on');
set(handles.laptransedit,'Enable','on');
set(handles.lapmargin,'Enable','on');
set(handles.lapmedit,'Enable','on');
set(handles.lapefficiency,'Enable','on');
set(handles.lapeffiedit,'Enable','on');
set(handles.laprvtperrow,'Enable','on');
set(handles.laprvtperrowedit,'Enable','on');
set(handles.inducedst,'Enable','on');
set(handles.inducedtou,'Enable','on');
set(handles.inducedsc,'Enable','on');
set(handles.inducedtensile,'Enable','on');
set(handles.inducedcomp,'Enable','on');
set(handles.inducedshear,'Enable','on');
end




function plate_Callback(hObject, eventdata, handles)
% hObject    handle to staticplate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of staticplate as text
%        str2double(get(hObject,'String')) returns contents of staticplate as a double
plate=str2double(get(handles.plate,'string'));
if isnan(plate)
    set(handles. plate, 'String', ' ');
    errordlg('enter all the required inputs','Error');
end
if plate<0
    set(handles. plate,'String',' ');
    errordlg('enter the valid combination of inputs ','Error');
end
%handles.metricdata. plate = plate;
%guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function staticplate_CreateFcn(hObject, eventdata, handles)
% hObject    handle to staticplate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rivet_Callback(hObject, eventdata, handles)
% hObject    handle to rivet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rivet as text
%        str2double(get(hObject,'String')) returns contents of rivet as a double

rivet=str2double(get(handles.rivet,'string'));
if isnan(rivet)
    set(handles.rivet, 'String', ' ');
    errordlg('enter all the required inputs','Error');
end
if rivet<0
    set(handles.rivet,'String',' ');
    errordlg('enter the valid combination of inputs ','Error');
end
handles.metricdata.rivet =rivet;
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function rivet_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rivet (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function outerpt_Callback(hObject, eventdata, handles)
% hObject    handle to outerpt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of outerpt as text
%        str2double(get(hObject,'String')) returns contents of outerpt as a double

 outerpt=str2double(get(handles.outerpt,'string'));
if isnan( outerpt)
    set(handles.outerpt, 'String', ' ');
    errordlg('enter all the required inputs','Error');
end
if  outerpt<0
    set(handles.outerpt,'String',' ');
    errordlg('enter the valid combination of inputs ','Error');
end
handles.metricdata.outerpt = outerpt;
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function outerpt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to outerpt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function innerouter_Callback(hObject, eventdata, handles)
% hObject    handle to innerouter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of innerouter as text
%        str2double(get(hObject,'String')) returns contents of innerouter as a double
innerouter=str2double(get(handles.innerouter,'string'));
if isnan(innerouter)
    set(handles.innerouter, 'String', ' ');
    errordlg('enter all the required inputs','Error');
end
if innerouter<0
    set(handles.innerouter,'String',' ');
    errordlg('enter the valid combination of inputs ','Error');
end
handles.metricdata.innerouter =innerouter;
guidata(hObject,handles)


% --- Executes during object creation, after setting all properties.
function innerouter_CreateFcn(hObject, eventdata, handles)
% hObject    handle to innerouter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function innerpt_Callback(hObject, eventdata, handles)
% hObject    handle to innerpt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of innerpt as text
%        str2double(get(hObject,'String')) returns contents of innerpt as a double
innerpt=str2double(get(handles.innerpt,'string'));
if isnan(innerpt)
    set(handles.innerpt, 'String', ' ');
    errordlg('enter all the required inputs','Error');
end
if innerpt<0
    set(handles.innerpt,'String',' ');
    errordlg('enter the valid combination of inputs ','Error');
end
handles.metricdata.innerpt = innerpt;
guidata(hObject,handles)


% --- Executes during object creation, after setting all properties.
function innerpt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to innerpt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function transpt_Callback(hObject, eventdata, handles)
% hObject    handle to transpt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of transpt as text
%        str2double(get(hObject,'String')) returns contents of transpt as a double
 transpt=str2double(get(handles.transpt,'string'));
if isnan( transpt)
    set(handles.transpt, 'String', ' ');
    errordlg('enter all the required inputs','Error');
end
if  transpt<0
    set(handles.transpt,'String',' ');
    errordlg('enter the valid combination of inputs ','Error');
end
handles.metricdata.transpt = transpt;
guidata(hObject,handles)


% --- Executes during object creation, after setting all properties.
function transpt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to transpt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function lapplateedit_Callback(hObject, eventdata, handles)
% hObject    handle to lapplateedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lapplateedit as text
%        str2double(get(hObject,'String')) returns contents of lapplateedit as a double


% --- Executes during object creation, after setting all properties.
function lapplateedit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lapplateedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function lapouteredit_Callback(hObject, eventdata, handles)
% hObject    handle to lapouteredit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lapouteredit as text
%        str2double(get(hObject,'String')) returns contents of lapouteredit as a double


% --- Executes during object creation, after setting all properties.
function lapouteredit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lapouteredit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function laprivetedit_Callback(hObject, eventdata, handles)
% hObject    handle to laprivetedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of laprivetedit as text
%        str2double(get(hObject,'String')) returns contents of laprivetedit as a double


% --- Executes during object creation, after setting all properties.
function laprivetedit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to laprivetedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function lapdistedit_Callback(hObject, eventdata, handles)
% hObject    handle to lapdistedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lapdistedit as text
%        str2double(get(hObject,'String')) returns contents of lapdistedit as a double


% --- Executes during object creation, after setting all properties.
function lapdistedit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lapdistedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function lapinneredit_Callback(hObject, eventdata, handles)
% hObject    handle to lapinneredit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lapinneredit as text
%        str2double(get(hObject,'String')) returns contents of lapinneredit as a double


% --- Executes during object creation, after setting all properties.
function lapinneredit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lapinneredit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function laptransedit_Callback(hObject, eventdata, handles)
% hObject    handle to laptransedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of laptransedit as text
%        str2double(get(hObject,'String')) returns contents of laptransedit as a double


% --- Executes during object creation, after setting all properties.
function laptransedit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to laptransedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function lapmedit_Callback(hObject, eventdata, handles)
% hObject    handle to lapmedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lapmedit as text
%        str2double(get(hObject,'String')) returns contents of lapmedit as a double


% --- Executes during object creation, after setting all properties.
function lapmedit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lapmedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function lapeffiedit_Callback(hObject, eventdata, handles)
% hObject    handle to lapeffiedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lapeffiedit as text
%        str2double(get(hObject,'String')) returns contents of lapeffiedit as a double


% --- Executes during object creation, after setting all properties.
function lapeffiedit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lapeffiedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in calculatelap.
function calculatelap_Callback(hObject, eventdata, handles)
% hObject    handle to calculatelap (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(get(handles.circumlap,'Value')==1)
st=str2double(get(handles.st,'String'));
sc=str2double(get(handles.sc,'String'));
tou=str2double(get(handles.tou,'String'));
P=str2double(get(handles.P,'String'));
D=str2double(get(handles.D,'String'));
a = cellstr(get(handles.layout,'String'));
 b=a(get(handles.layout,'Value'));
 if(strcmp(b,'single riveted'))
    effi=0.45;
 elseif strcmp(b,'double riveted (zig zag)')||strcmp(b,'double riveted (chain)')
    effi=0.63;
 elseif strcmp(b,'triple riveted (zig zag)')||strcmp(b,'triple riveted (chain)')
    effi=0.75;
 end
t=ceil(P*D/(2*effi*st));
c = cellstr(get(handles.strap,'String'));
if(t>=8)
    dia=6*sqrt(t);
    dia=std_dia(dia);
    
elseif(t<8)
    dia=4*t*sc/(3.14*tou);
    dia=std_dia(dia);

end
if(dia<t)
    t=dia-2;
end
x=get(handles.equalpt,'Value');
y=get(handles.twicept,'Value');

    [effi,m,outerinnerpt,innertranspt,outerpt,innerpt,rvtperrow,calst,calsc,caltou]=circumlap(D,dia,P,tou,x,y,t,b);
set(handles.laptransedit,'String',innertranspt); 
set(handles.lapplateedit,'String',t);
set(handles.laprivetedit,'String',dia);
set(handles.lapouteredit,'String',outerpt);
set(handles.lapinneredit,'String',innerpt);
set(handles.lapmedit,'String',m);
set(handles.lapeffiedit,'String',effi);
set(handles.lapdistedit,'String',outerinnerpt);
set(handles.laprvtperrowedit,'String',rvtperrow);
if strcmp(b,'single riveted')==1&&get(handles.circumlap,'value')==1
    set(handles.lapdistedit,'string',' ');set(handles.lapinneredit,'string',' ');set(handles.laptransedit,'string',' ');
end
if strcmp(b,'double riveted (chain)')==1||strcmp(b,'double riveted (zig zag)')==1
    set(handles.laptransedit,'string',' ');
 end
if(calst<=st&&caltou<=tou&&calsc<=sc)
        set(handles.lapcheck,'string','design is valid as the induced tensile,compressive and shear stresses are with in the permissible limits');
    else
        set(handles.lapcheck,'string','design is not valid as the induced tensile,compressive and shear stresses are not with in the permissible limits');
end
set(handles.inducedtensile,'String',calst);
set(handles.inducedcomp,'String',calsc);
set(handles.inducedshear,'String',caltou);
end
if strcmp(b,'single riveted')==1
    xlswrite('single_rivet_lap.xlsx',D,'Sheet1','B3')
    xlswrite('single_rivet_lap.xlsx',t,'Sheet1','C3')
    xlswrite('single_rivet_lap.xlsx',1000,'Sheet1','D3')
    xlswrite('single_rivet_lap.xlsx',t,'Sheet1','E3')
    xlswrite('single_rivet_lap.xlsx',D,'Sheet1','F3')
    xlswrite('single_rivet_lap.xlsx',1000,'Sheet1','G3')
    xlswrite('single_rivet_lap.xlsx',3*dia,'Sheet1','H3')
    xlswrite('single_rivet_lap.xlsx',1.5*dia,'Sheet1','I3')
    xlswrite('single_rivet_lap.xlsx',dia/2,'Sheet1','J3')
    xlswrite('single_rivet_lap.xlsx',120,'Sheet1','K3')
    xlswrite('single_rivet_lap.xlsx',0.125*dia,'Sheet1','L3')
    xlswrite('single_rivet_lap.xlsx',360,'Sheet1','M3')
    xlswrite('single_rivet_lap.xlsx',0.1*dia,'Sheet1','N3')
    xlswrite('single_rivet_lap.xlsx',360,'Sheet1','O3')
    xlswrite('single_rivet_lap.xlsx',360,'Sheet1','P3')
    xlswrite('single_rivet_lap.xlsx',rvtperrow,'Sheet1','Q3')
    xlswrite('single_rivet_lap.xlsx',360,'Sheet1','R3')
    xlswrite('single_rivet_lap.xlsx',360,'Sheet1','S3')
  
system('taskkill/im EXCEL.EXE/f')
winopen single_rivet_lap.SLDPRT
end
if strcmp(b,'double riveted (zig zag)')==1||strcmp(b,'double riveted (chain)')==1
    xlswrite('double_rivet_lap.xlsx',D,'Sheet1','B3')
    xlswrite('double_rivet_lap.xlsx',t,'Sheet1','C3')
    xlswrite('double_rivet_lap.xlsx',1.5*dia+outerinnerpt+1000,'Sheet1','D3')
    xlswrite('double_rivet_lap.xlsx',t,'Sheet1','E3')
    xlswrite('double_rivet_lap.xlsx',D,'Sheet1','F3')
    xlswrite('double_rivet_lap.xlsx',1.5*dia+outerinnerpt+1000,'Sheet1','G3')
    xlswrite('double_rivet_lap.xlsx',3*dia+outerinnerpt,'Sheet1','H3')
    xlswrite('double_rivet_lap.xlsx',1.5*dia,'Sheet1','I3')
    xlswrite('double_rivet_lap.xlsx',dia/2,'Sheet1','J3')
    xlswrite('double_rivet_lap.xlsx',120,'Sheet1','K3')
    xlswrite('double_rivet_lap.xlsx',0.125*dia,'Sheet1','L3')
    xlswrite('double_rivet_lap.xlsx',360,'Sheet1','M3')
    xlswrite('double_rivet_lap.xlsx',0.1*dia,'Sheet1','N3')
    xlswrite('double_rivet_lap.xlsx',360,'Sheet1','O3')
    xlswrite('double_rivet_lap.xlsx',360,'Sheet1','P3')
    xlswrite('double_rivet_lap.xlsx',rvtperrow,'Sheet1','Q3')
    xlswrite('double_rivet_lap.xlsx',360,'Sheet1','R3')
     xlswrite('double_rivet_lap.xlsx',360,'Sheet1','S3')
    xlswrite('double_rivet_lap.xlsx',outerinnerpt,'Sheet1','T3')
   xlswrite('double_rivet_lap.xlsx',dia/2,'Sheet1','V3')
   xlswrite('double_rivet_lap.xlsx',120,'Sheet1','W3')
   xlswrite('double_rivet_lap.xlsx',0.125*dia,'Sheet1','X3')
   xlswrite('double_rivet_lap.xlsx',360,'Sheet1','Y3')
   xlswrite('double_rivet_lap.xlsx',0.1*dia,'Sheet1','Z3')
      xlswrite('double_rivet_lap.xlsx',360,'Sheet1','AA3')
         xlswrite('double_rivet_lap.xlsx',360,'Sheet1','AB3')
    if x==1       
         xlswrite('double_rivet_lap.xlsx',rvtperrow,'Sheet1','AC3')
    end
    if y==1
    xlswrite('double_rivet_lap.xlsx',rvtperrow/2,'Sheet1','AC3')
    end
if strcmp(b,'double riveted (zig zag)')==1
 xlswrite('double_rivet_lap.xlsx',innerpt/2,'Sheet1','U3')  
end
 if strcmp(b,'double riveted (chain)')==1
xlswrite('double_rivet_lap.xlsx',innerpt,'Sheet1','U3')      
 end   
system('taskkill/im EXCEL.EXE/f')
winopen double_rivet_lap.SLDPRT
end  
 if strcmp(b,'triple riveted (zig zag)')==1||strcmp(b,'triple riveted (chain)')==1
   xlswrite('triple_rivet_butt.xlsx',D,'Sheet1','B3')
    xlswrite('triple_rivet_butt.xlsx',t,'Sheet1','C3')
    xlswrite('triple_rivet_butt.xlsx',1.5*dia+outerinnerpt+1000,'Sheet1','D3')
    xlswrite('triple_rivet_butt.xlsx',t,'Sheet1','E3')
    xlswrite('triple_rivet_butt.xlsx',D,'Sheet1','F3')
    xlswrite('triple_rivet_butt.xlsx',1.5*dia+outerinnerpt+1000,'Sheet1','G3')
    xlswrite('triple_rivet_butt.xlsx',3*dia+outerinnerpt,'Sheet1','H3')
    xlswrite('triple_rivet_butt.xlsx',1.5*dia,'Sheet1','I3')
    xlswrite('triple_rivet_butt.xlsx',dia/2,'Sheet1','J3')
    xlswrite('triple_rivet_butt.xlsx',120,'Sheet1','K3')
    xlswrite('triple_rivet_butt.xlsx',0.125*dia,'Sheet1','L3')
    xlswrite('triple_rivet_butt.xlsx',360,'Sheet1','M3')
    xlswrite('triple_rivet_butt.xlsx',0.1*dia,'Sheet1','N3')
    xlswrite('triple_rivet_butt.xlsx',360,'Sheet1','O3')
    xlswrite('triple_rivet_butt.xlsx',360,'Sheet1','P3')
    xlswrite('triple_rivet_butt.xlsx',rvtperrow,'Sheet1','Q3')
    xlswrite('triple_rivet_butt.xlsx',360,'Sheet1','R3')
     xlswrite('triple_rivet_butt.xlsx',360,'Sheet1','S3')
    xlswrite('triple_rivet_butt.xlsx',innertranspt,'Sheet1','T3')
 
    xlswrite('triple_rivet_butt.xlsx',dia/2,'Sheet1','V3')
   xlswrite('triple_rivet_butt.xlsx',120,'Sheet1','W3')
   xlswrite('triple_rivet_butt.xlsx',0.125*dia,'Sheet1','X3')
   xlswrite('triple_rivet_butt.xlsx',360,'Sheet1','Y3')
   xlswrite('triple_rivet_butt.xlsx',0.1*dia,'Sheet1','Z3')
      xlswrite('triple_rivet_butt.xlsx',360,'Sheet1','AA3')
         xlswrite('triple_rivet_butt.xlsx',360,'Sheet1','AB3')
           xlswrite('triple_rivet_butt.xlsx',rvtperrow,'Sheet1','AC3')
    if x==1       
         xlswrite('triple_rivet_butt.xlsx',rvtperrow,'Sheet1','AJ3')
    end
    if y==1
    xlswrite('triple_rivet_butt.xlsx',rvtperrow/2,'Sheet1','AJ3')
    end
     xlswrite('triple_rivet_butt.xlsx',outerinnerpt,'Sheet1','AD3')   
    xlswrite('triple_rivet_butt.xlsx',360,'Sheet1','AF3')
      xlswrite('triple_rivet_butt.xlsx',360,'Sheet1','AH3')
        xlswrite('triple_rivet_butt.xlsx',360,'Sheet1','AI3')
if strcmp(b,'triple riveted (zig zag)')==1
 xlswrite('triple_rivet_butt.xlsx',innerpt/2,'Sheet1','U3')  
end
 if strcmp(b,'triple riveted (chain)')==1
xlswrite('triple_rivet_butt.xlsx',innerpt,'Sheet1','U3')
 end
        system('taskkill/im EXCEL.EXE/f')
winopen triple_rivet_butt.SLDPRT 
 end
    







function m_Callback(hObject, eventdata, handles)
% hObject    handle to m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of m as text
%        str2double(get(hObject,'String')) returns contents of m as a double
m=str2double(get(handles.m,'string'));
if isnan(m)
    set(handles.m, 'String', ' ');
    errordlg('enter all the required inputs','Error');
end
if m<0
    set(handles.m,'String',' ');
    errordlg('enter the valid combination of inputs ','Error');
end
handles.metricdata.m = m;
guidata(hObject,handles)


% --- Executes during object creation, after setting all properties.
function m_CreateFcn(hObject, eventdata, handles)
% hObject    handle to m (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function effi_Callback(hObject, eventdata, handles)
% hObject    handle to effi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of effi as text
%        str2double(get(hObject,'String')) returns contents of effi as a double
effi=str2double(get(handles.effi,'string'));
if isnan(effi)
    set(handles. effi, 'String', ' ');
    errordlg('enter all the required inputs','Error');
end
if effi<0
    set(handles. effi,'String',' ');
    errordlg('enter the valid combination of inputs ','Error');
end
handles.metricdata. effi =  effi;
guidata(hObject,handles)


% --- Executes during object creation, after setting all properties.
function effi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to effi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function innerst_Callback(hObject, eventdata, handles)
% hObject    handle to innerst (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of innerst as text
%        str2double(get(hObject,'String')) returns contents of innerst as a double

 innerst=str2double(get(handles.innerst,'string'));
if isnan( innerst)
    set(handles. innerst, 'String', ' ');
    errordlg('enter all the required inputs','Error');
end
if  innerst<0
    set(handles. innerst,'String',' ');
    errordlg('enter the valid combination of inputs ','Error');
end
handles.metricdata. innerst =  innerst;
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function innerst_CreateFcn(hObject, eventdata, handles)
% hObject    handle to innerst (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function outerst_Callback(hObject, eventdata, handles)
% hObject    handle to outerst (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of outerst as text
%        str2double(get(hObject,'String')) returns contents of outerst as a double
 outerst=str2double(get(handles.outerst,'string'));
if isnan( outerst)
    set(handles. outerst, 'String', ' ');
    errordlg('enter all the required inputs','Error');
end
if x<0
    set(handles. outerst,'String',' ');
    errordlg('enter the valid combination of inputs ','Error');
end
handles.metricdata. outerst =  outerst;
guidata(hObject,handles)


% --- Executes during object creation, after setting all properties.
function outerst_CreateFcn(hObject, eventdata, handles)
% hObject    handle to outerst (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function [ d ] = std_dia( d )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
std_dia=[12 14 16 18 20 22 24 27 30 33 36 39 42 48];
for i=1:1:14
    e=std_dia(i)-d;
    if(e>=0)
        d=std_dia(i);
     break
    end      
end
if(d>48)
    d=48;

end
% --- Executes on selection change in strap.
function strap_Callback(hObject, eventdata, handles)
% hObject    handle to strap (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns strap contents as cell array
%        contents{get(hObject,'Value')} returns selected item from strap
x=cellstr(get(hObject,'String'));
y=x(get(hObject,'Value'));
if strcmp(y,'single strap')==1
    set(handles.outerstrap,'String','strap thickness');
    set(handles.innerstrap,'Enable','off');
    set(handles.innerst,'Enable','off');
    set(handles.innerst,'string',' ')
else
    set(handles.outerstrap,'String','outer strap thickness');
    set(handles.innerstrap,'Enable','on');
    set(handles.innerst,'Enable','on');
end
%plate=str2double(get(handles.plate,'string'));
if strcmp(y,'select')==1
    
    errordlg('enter all the required inputs','Error');
end



% --- Executes during object creation, after setting all properties.
function strap_CreateFcn(hObject, eventdata, handles)
% hObject    handle to strap (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function [effi,m,outerinnerpt,innertranspt,outerpt,innerpt,rvtperrow,calst,calsc,caltou] = circumlap(D,dia,P,tou,x,y,t,b )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
rvtno=ceil((D*D*P)/(dia*dia*tou));
if(strcmp(b,'single riveted')==1)
   rno=1;
elseif(strcmp(b,'double riveted (zig zag)')==1||strcmp(b,'double riveted (chain)')==1)
    rno=2;
elseif(strcmp(b,'triple riveted (zig zag)')==1||strcmp(b,'triple riveted (chain)')==1)
    rno=3;
end
rvtperrow=round(rvtno/rno);
outerpt=round(pi*(D+t)/rvtperrow);
effi=(outerpt-dia)/outerpt;
m=ceil(1.5*dia);
strcmp(b,'single riveted')

 if(strcmp(b,'double riveted (zig zag)')==1||strcmp(b,'triple riveted (zig zag)')==1)&&(x==1)
                outerinnerpt=ceil(0.33*outerpt+0.67*dia);
            innertranspt=outerinnerpt;
            elseif(strcmp(b,'double riveted (chain)')==1||strcmp(b,'triple riveted (chain)')==1)&&(x==1)
                    outerinnerpt=2*dia;innertranspt=outerinnerpt;
            elseif(strcmp(b,'double riveted (zig zag)')==1||strcmp(b,'triple riveted (zig zag)')==1)&&(y==1)
                outerinnerpt=ceil(0.2*outerpt+1.15*dia);
                innertranspt=ceil(0.165*outerpt+0.67*dia);
            elseif(strcmp(b,'double riveted (chain)')==1||strcmp(b,'triple riveted (chain)')==1)&&(y==1)
                outerinnerpt=ceil(0.33*outerpt+0.67*dia);
                innertranspt=2*dia;
 elseif strcmp(b,'single riveted')==1
     outerinnerpt=0;
     innertranspt=0;
     innerpt=0;
     
 end
if(y==1)
    innerpt=round(outerpt/2);
end
if(x==1)
        innerpt=outerpt;
end
fb=3.14*D*D*P/4;
calst=fb/((3.14*D-rvtperrow*dia)*t);
caltou=fb*4/(rvtno*3.14*dia*dia);
calsc=fb/(dia*t*rvtno);


    

% --- Executes on button press in calculatebutt.
function calculatebutt_Callback(hObject, eventdata, handles)
% hObject    handle to calculatebutt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if(get(handles.longbutt,'Value')==1)
st=str2double(get(handles.st,'String'));
sc=str2double(get(handles.sc,'String'));
tou=str2double(get(handles.tou,'String'));
P=str2double(get(handles.P,'String'));
D=str2double(get(handles.D,'String'));
a = cellstr(get(handles.layout,'String'));
 b=a(get(handles.layout,'Value'));
 if(strcmp(b,'single riveted'))
    effi=0.6;
 elseif strcmp(b,'double riveted (zig zag)')||strcmp(b,'double riveted (chain)')
    effi=0.75;
 elseif strcmp(b,'triple riveted (zig zag)')||strcmp(b,'triple riveted (chain)')
    effi=0.8;
 end
    
 
t=ceil(P*D/(2*effi*st));
set(handles.plate,'String',t);
c = cellstr(get(handles.strap,'String'));
d=c(get(handles.strap,'Value'));
if(t>=8)
    dia=6*sqrt(t);
    dia=std_dia(dia);
elseif((t<8&&(strcmp(d,'single strap'))||strcmp(d,'double strap (unequal width)'))||t<8&&get(handles.circumlap,'Value',1))
    dia=4*t*sc/(3.14*tou);
    dia=std_dia(dia);
elseif(t<8&&strcmp(d,'double strap (equal width)'))
    dia=4*t*sc/(3.14*1.875*tou);
    dia=std_dia(dia);
end
set(handles.rivet,'String',dia);
x=get(handles.equalpt,'Value');
y=get(handles.twicept,'Value');
if(get(handles.longbutt,'Value')==1)
     [outerpt,innerpt,innertranspt,outerinnerpt,widetc,narrtc,tc,m,caleffi]=longbutt(d,b,x,y,dia,st,sc,tou,t);
     if(strcmp(b,'single riveted')==1)
if(strcmp(d,'single strap')==1)
set(handles.outerpt,'String',outerpt);
set(handles.outerst,'String',tc);
set(handles.m,'String',m);
set(handles.effi,'String',caleffi);
elseif strcmp(d,'double strap (unequal width)')
    set(handles.outerpt,'String',outerpt);
    set(handles.innerst,'String',widetc);
    set(handles.outerst,'String',narrtc);
    set(handles.effi,'String',caleffi);
    set(handles.m,'String',m);
elseif strcmp(d,'double strap (equal width)')
 set(handles.outerpt,'String',outerpt);
 set(handles.outerst,'String',tc); 
set(handles.innerst,'String',tc);
 set(handles.effi,'String',caleffi);
    set(handles.m,'String',m);
end
end
if((strcmp(b,'double riveted (zig zag)')==1||strcmp(b,'double riveted (chain)')==1))
   
    if(strcmp(d,'single strap')==1)
        set(handles.outerpt,'String',outerpt);
        set(handles.innerpt,'String',innerpt);
        set(handles.innerouter,'String',outerinnerpt);
        set(handles.outerst,'String',tc);
        set(handles.effi,'String',caleffi);
        set(handles.m,'String',m);
        elseif strcmp(d,'double strap (unequal width)')
    set(handles.outerpt,'String',outerpt);
   set(handles.innerpt,'String',innerpt);
   set(handles.innerouter,'String',outerinnerpt); 
   set(handles.innerst,'String',widetc);
    set(handles.outerst,'String',narrtc);
    set(handles.effi,'String',caleffi);
    set(handles.m,'String',m);
elseif strcmp(d,'double strap (equal width)')
 set(handles.outerpt,'String',outerpt);
  set(handles.innerpt,'String',innerpt);
 set(handles.innerouter,'String',outerinnerpt);
set(handles.innerst,'String',tc);
set(handles.outerst,'String',tc);  
set(handles.effi,'String',caleffi);
    set(handles.m,'String',m);
    end
end

    if((strcmp(b,'triple riveted (zig zag)')==1||strcmp(b,'triple riveted (chain)')==1))
if(strcmp(d,'single strap')==1)
    set(handles.outerpt,'String',outerpt);
        set(handles.innerpt,'String',innerpt);
        set(handles.innerouter,'String',outerinnerpt);
         set(handles.transpt,'String',innertranspt);
        set(handles.outerst,'String',tc);
        set(handles.effi,'String',caleffi);
        set(handles.m,'String',m); 
     elseif strcmp(d,'double strap (unequal width)')
    set(handles.outerpt,'String',outerpt);
   set(handles.innerpt,'String',innerpt);
   set(handles.innerouter,'String',outerinnerpt); 
   set(handles.transpt,'String',innertranspt);
   set(handles.innerst,'String',widetc);
    set(handles.outerst,'String',narrtc);
    set(handles.effi,'String',caleffi);
    set(handles.m,'String',m);   
elseif strcmp(d,'double strap (equal width)')
 set(handles.outerpt,'String',outerpt);
  set(handles.innerpt,'String',innerpt);
 set(handles.innerouter,'String',outerinnerpt);
set(handles.transpt,'String',innertranspt);
 set(handles.innerst,'String',tc);
set(handles.outerst,'String',tc);  
set(handles.effi,'String',caleffi);
    set(handles.m,'String',m);
end
    end
end  
end
if (get(handles.longbutt,'Value')==1)
if (strcmp(b,'double riveted (zig zag)')==1||strcmp(b,'double riveted (chain)')==1)&&(caleffi>0.75&&caleffi<0.85)
    set(handles.check,'string','design is valid, as calculated efficiency is with in the permisssible limits');
elseif (strcmp(b,'single riveted')==1)&&(caleffi>0.6&&caleffi<0.8)
set(handles.check,'string','design is valid, as calculated efficiency is with in the permisssible limits');
elseif (strcmp(b,'triple riveted (zig zag)')==1||strcmp(b,'triple riveted (chain)')==1)&&(caleffi>0.8&&caleffi<0.9)
set(handles.check,'string','design is valid, as calculated efficiency is with in the permisssible limits');
elseif (strcmp(b,'triple riveted (zig zag)')==1||strcmp(b,'triple riveted (chain)')==1)&&(caleffi<0.8||caleffi>0.9)
set(handles.check,'string','design is not valid, as calculated efficiency is not with in the permisssible limits for triple riveted ie.b/w 0.8-0.9');
elseif(strcmp(b,'double riveted (zig zag)')==1||strcmp(b,'double riveted (chain)')==1)&&(caleffi<0.75||caleffi>0.85)
    set(handles.check,'string','design is not valid, as calculated efficiency is not with in the permisssible limits for double riveted ie. b/w 0.75-0.85');
elseif (strcmp(b,'single riveted')==1)&&(caleffi<0.6||caleffi>0.8)
set(handles.check,'string','design is not valid, as calculated efficiency is not with in the permisssible limits ie. b/w 0.6-0.8');

end
end
if strcmp(b,'single riveted')==1
xlswrite('single_rivet.xlsx',D,'Sheet1','B3')
xlswrite('single_rivet.xlsx',t,'Sheet1','C3')
if strcmp(d,'double strap (unequal width)')==1
xlswrite('single_rivet.xlsx',narrtc,'Sheet1','F3')
end
if strcmp(d,'double strap (equal width)')==1
    xlswrite('single_rivet.xlsx',tc,'Sheet1','F3')
end
if strcmp(d,'single strap')==1
xlswrite('single_rivet.xlsx',tc,'Sheet1','F3') 
end
xlswrite('single_rivet.xlsx',3*dia,'Sheet1','D3')
xlswrite('single_rivet.xlsx',3*dia,'Sheet1','E3')
xlswrite('single_rivet.xlsx',2400,'Sheet1','G3')
xlswrite('single_rivet.xlsx',1.5*dia,'Sheet1','H3')
xlswrite('single_rivet.xlsx',1.5*dia,'Sheet1','I3')%innertheta
xlswrite('single_rivet.xlsx',outerpt,'Sheet1','J3')%outertheta
xlswrite('single_rivet.xlsx',dia/2,'Sheet1','K3')%outertheta
xlswrite('single_rivet.xlsx',0.125*dia,'Sheet1','L3')%outertheta
xlswrite('single_rivet.xlsx',120,'Sheet1','M3')%outertheta
 xlswrite('single_rivet.xlsx',360,'Sheet1','N3') 
  xlswrite('single_rivet.xlsx',0.1*dia,'Sheet1','O3') 
  xlswrite('single_rivet.xlsx',360,'Sheet1','P3') 
  xlswrite('single_rivet.xlsx',outerpt,'Sheet1','Q3')
  xlswrite('single_rivet.xlsx',floor(2400/outerpt)-1,'Sheet1','R3')
  xlswrite('single_rivet.xlsx',outerpt,'Sheet1','S3')
  xlswrite('single_rivet.xlsx',floor(2400/outerpt)-1,'Sheet1','T3')
  xlswrite('single_rivet.xlsx',360,'Sheet1','U3') 
  xlswrite('single_rivet.xlsx',1200,'Sheet1','V3')
system('taskkill/im EXCEL.EXE/f')
winopen single_rivet.SLDPRT
end
if strcmp(b,'double riveted (chain)')==1||strcmp(b,'double riveted (zig zag)')==1  
    xlswrite('double_rivet.xlsx',D,'Sheet1','B3')
xlswrite('double_rivet.xlsx',t,'Sheet1','C3')


xlswrite('double_rivet.xlsx',2400,'Sheet1','G3')
xlswrite('double_rivet.xlsx',1.5*dia,'Sheet1','H3')
xlswrite('double_rivet.xlsx',1.5*dia,'Sheet1','I3')
xlswrite('double_rivet.xlsx',outerinnerpt,'Sheet1','J3')
xlswrite('double_rivet.xlsx',innerpt,'Sheet1','K3')
xlswrite('double_rivet.xlsx',dia/2,'Sheet1','L3')
xlswrite('double_rivet.xlsx',0.125*dia,'Sheet1','M3')
xlswrite('double_rivet.xlsx',120,'Sheet1','N3')
xlswrite('double_rivet.xlsx',360,'Sheet1','O3')
xlswrite('double_rivet.xlsx',0.1*dia,'Sheet1','P3')
xlswrite('double_rivet.xlsx',360,'Sheet1','Q3')
xlswrite('double_rivet.xlsx',innerpt,'Sheet1','R3')
xlswrite('double_rivet.xlsx',floor(2400/innerpt)-1,'Sheet1','S3')
xlswrite('double_rivet.xlsx',innerpt,'Sheet1','T3')
xlswrite('double_rivet.xlsx',floor(2400/innerpt)-1,'Sheet1','U3')
xlswrite('double_rivet.xlsx',360,'Sheet1','V3')
xlswrite('double_rivet.xlsx',1200,'Sheet1','W3')
xlswrite('double_rivet.xlsx',dia/2,'Sheet1','Y3')
xlswrite('double_rivet.xlsx',120,'Sheet1','Z3')
xlswrite('double_rivet.xlsx',0.125*dia,'Sheet1','AA3')
xlswrite('double_rivet.xlsx',360,'Sheet1','AB3')
xlswrite('double_rivet.xlsx',0.1*dia,'Sheet1','AC3')
xlswrite('double_rivet.xlsx',360,'Sheet1','AD3')
xlswrite('double_rivet.xlsx',outerpt,'Sheet1','AE3')
xlswrite('double_rivet.xlsx',floor(2400/outerpt)-1,'Sheet1','AF3')
xlswrite('double_rivet.xlsx',outerpt,'Sheet1','AG3')
xlswrite('double_rivet.xlsx',floor(2400/outerpt)-1,'Sheet1','AH3')
if strcmp(b,'double riveted (chain)')==1
 xlswrite('double_rivet.xlsx',innerpt,'Sheet1','X3')
end
if strcmp(b,'double riveted (zig zag)')==1
xlswrite('double_rivet.xlsx',innerpt/2,'Sheet1','X3') 
end
if strcmp(d,'single strap')==1
 xlswrite('double_rivet.xlsx',tc,'Sheet1','F3')
elseif strcmp(d,'double strap (unequal width)')==1
xlswrite('double_rivet.xlsx',narrtc,'Sheet1','F3')
xlswrite('double_rivet.xlsx',1.5*dia+outerinnerpt/2,'Sheet1','D3')
xlswrite('double_rivet.xlsx',1.5*dia+outerinnerpt/2,'Sheet1','E3')
elseif strcmp(d,'double strap (equal width)')==1
xlswrite('double_rivet.xlsx',tc,'Sheet1','F3')
xlswrite('double_rivet.xlsx',4.5*dia,'Sheet1','D3')
xlswrite('double_rivet.xlsx',4.5*dia,'Sheet1','E3')
end
system('taskkill/im EXCEL.EXE/f')
winopen double_rivet.SLDPRT
end
if strcmp(b,'triple riveted (chain)')==1||strcmp(b,'triple riveted (zig zag)')==1
 xlswrite('triple_rivet.xlsx',D,'Sheet1','B3')
xlswrite('triple_rivet.xlsx',t,'Sheet1','C3')


xlswrite('triple_rivet.xlsx',2400,'Sheet1','G3')
xlswrite('triple_rivet.xlsx',1.5*dia,'Sheet1','H3')
xlswrite('triple_rivet.xlsx',1.5*dia,'Sheet1','I3')
xlswrite('triple_rivet.xlsx',innertranspt,'Sheet1','J3')
xlswrite('triple_rivet.xlsx',innertranspt,'Sheet1','K3')
xlswrite('triple_rivet.xlsx',innerpt,'Sheet1','L3')
xlswrite('triple_rivet.xlsx',dia/2,'Sheet1','M3')
xlswrite('triple_rivet.xlsx',0.125*dia,'Sheet1','N3')
xlswrite('triple_rivet.xlsx',120,'Sheet1','O3')
xlswrite('triple_rivet.xlsx',360,'Sheet1','P3')
xlswrite('triple_rivet.xlsx',0.1*dia,'Sheet1','Q3')
xlswrite('triple_rivet.xlsx',360,'Sheet1','R3')
xlswrite('triple_rivet.xlsx',innerpt,'Sheet1','S3')
xlswrite('triple_rivet.xlsx',floor(2400/innerpt)-1,'Sheet1','T3')
xlswrite('triple_rivet.xlsx',innerpt,'Sheet1','U3')
xlswrite('triple_rivet.xlsx',floor(2400/innerpt)-1,'Sheet1','V3')
xlswrite('triple_rivet.xlsx',360,'Sheet1','W3')
xlswrite('triple_rivet.xlsx',1200,'Sheet1','X3')
xlswrite('triple_rivet.xlsx',dia/2,'Sheet1','Z3')
xlswrite('triple_rivet.xlsx',120,'Sheet1','AA3')
xlswrite('triple_rivet.xlsx',0.125*dia,'Sheet1','AB3')
xlswrite('triple_rivet.xlsx',360,'Sheet1','AC3')
xlswrite('triple_rivet.xlsx',0.1*dia,'Sheet1','AD3')
xlswrite('triple_rivet.xlsx',360,'Sheet1','AE3')
xlswrite('triple_rivet.xlsx',innerpt,'Sheet1','AF3')
xlswrite('triple_rivet.xlsx',floor(2400/innerpt)-1,'Sheet1','AG3')
xlswrite('triple_rivet.xlsx',innerpt,'Sheet1','AH3')
xlswrite('triple_rivet.xlsx',floor(2400/innerpt)-1,'Sheet1','AI3')
xlswrite('triple_rivet.xlsx',outerpt,'Sheet1','AJ3')
xlswrite('triple_rivet.xlsx',dia/2,'Sheet1','AK3')
xlswrite('triple_rivet.xlsx',120,'Sheet1','AL3')
xlswrite('triple_rivet.xlsx',0.125*dia,'Sheet1','AM3')
xlswrite('triple_rivet.xlsx',360,'Sheet1','AN3')
xlswrite('triple_rivet.xlsx',0.1*dia,'Sheet1','AO3')
xlswrite('triple_rivet.xlsx',360,'Sheet1','AP3')
xlswrite('triple_rivet.xlsx',outerpt,'Sheet1','AQ3')
xlswrite('triple_rivet.xlsx',floor(2400/outerpt)-1,'Sheet1','AR3')
xlswrite('triple_rivet.xlsx',outerpt,'Sheet1','AS3')
xlswrite('triple_rivet.xlsx',floor(2400/outerpt)-1,'Sheet1','AT3')
if strcmp(b,'triple riveted (chain)')==1
 xlswrite('triple_rivet.xlsx',innerpt,'Sheet1','Y3')
end
if strcmp(b,'triple riveted (zig zag)')==1
xlswrite('triple_rivet.xlsx',innerpt/2,'Sheet1','Y3') 
end
if strcmp(d,'single strap')==1
 xlswrite('triple_rivet.xlsx',tc,'Sheet1','F3')
elseif strcmp(d,'double strap (unequal width)')==1
xlswrite('triple_rivet.xlsx',narrtc,'Sheet1','F3')
xlswrite('triple_rivet.xlsx',1.5*dia+innertranspt+outerinnerpt/2,'Sheet1','D3')
xlswrite('triple_rivet.xlsx',1.5*dia+innertranspt+outerinnerpt/2,'Sheet1','E3')
elseif strcmp(d,'double strap (equal width)')==1
xlswrite('triple_rivet.xlsx',tc,'Sheet1','F3')
xlswrite('triple_rivet.xlsx',3*dia+innertranspt+outerinnerpt,'Sheet1','D3')
xlswrite('triple_rivet.xlsx',3*dia+innertranspt+outerinnerpt,'Sheet1','E3')
end
system('taskkill/im EXCEL.EXE/f')
winopen triple_rivet.SLDPRT
end

    function [ outerpt,innerpt,innertranspt,outerinnerpt,widetc,narrtc,tc,m,caleffi ] = longbutt(d,b,x,y,dia,st,sc,tou,t)

 if (strcmp(d,'double strap (unequal width)')==1)&&((strcmp(b,'double riveted (zig zag)'))==1||(strcmp(b,'double riveted (chain)')==1))&&(y==1)
    a=1;
    r=2;
    c=4.63;
elseif (strcmp(d,'double strap (unequal width)')==1)&&((strcmp(b,'triple riveted (zig zag)'))==1||(strcmp(b,'triple riveted (chain)')==1))&&(y==1)
  a=1;
  r=4;
  c=6;
elseif(strcmp(d,'double strap (unequal width)')==1)&&((strcmp(b,'double riveted (zig zag)'))==1||(strcmp(b,'double riveted (chain)')==1))&&(x==1)     
 a=1;
 r=1;
 c=3.5;
elseif(strcmp(d,'double strap (unequal width)')==1)&&((strcmp(b,'triple riveted (zig zag)'))==1||(strcmp(b,'triple riveted (chain)')==1))&&(x==1)
  a=1;
  r=2;
  c=4.63;
elseif(strcmp(d,'double strap (unequal width)')==1)&&(strcmp(b,'single riveted')==1)
  a=0;
  r=1;
  c=1.75;
elseif(strcmp(d,'double strap (equal width)')==1)&&((strcmp(b,'double riveted (zig zag)'))==1||(strcmp(b,'double riveted (chain)')==1))&&(y==1)
  a=0;r=3;c=4.63;
elseif(strcmp(d,'double strap (equal width)')==1)&&((strcmp(b,'triple riveted (zig zag)'))==1||(strcmp(b,'triple riveted (chain)')==1))&&(y==1)
  a=0;r=5;c=6;
elseif(strcmp(d,'double strap (equal width)')==1)&&((strcmp(b,'double riveted (zig zag)'))==1||(strcmp(b,'double riveted (chain)')==1))&&(x==1)
  a=0;r=2;c=3.5;
elseif(strcmp(d,'double strap (equal width)')==1)&&((strcmp(b,'triple riveted (zig zag)'))==1||(strcmp(b,'triple riveted (chain)')==1))&&(x==1)
  a=0;r=3;c=4.63;
elseif(strcmp(d,'double strap (equal width)')==1)&&(strcmp(b,'single riveted')==1)
  a=0;r=1;c=1.75;
elseif(strcmp(d,'single strap')==1)&&((strcmp(b,'double riveted (zig zag)'))==1||(strcmp(b,'double riveted (chain)')==1))&&(y==1)
  a=3;r=0;c=4.05;
elseif(strcmp(d,'single strap')==1)&&((strcmp(b,'triple riveted (zig zag)'))==1||(strcmp(b,'triple riveted (chain)')==1))&&(y==1)
  a=5;r=0;c=10000000;
elseif(strcmp(d,'single strap')==1)&&(strcmp(b,'single riveted')==1)
  a=1;r=0;c=1.53;
  elseif(strcmp(d,'single strap')==1)&&((strcmp(b,'triple riveted (zig zag)'))==1||(strcmp(b,'triple riveted (chain)')==1))&&(x==1)
  a=3;r=0;c=4.05;
elseif(strcmp(d,'single strap')==1)&&((strcmp(b,'double riveted (zig zag)'))==1||(strcmp(b,'double riveted (chain)')==1))&&(x==1)
  a=2;r=0;c=3.06;
 end

 outerpt= ceil((3.14*dia*dia)*(a+r*1.875)*tou/(4*t*st)+dia);
ptmax=c*t+41;
if(outerpt>ptmax)
    outerpt=ceil(ptmax);
else
    outerpt=outerpt;
end
if(y==1)
    innerpt=ceil(outerpt/2);
end
    if(x==1)
        innerpt=outerpt;
    end     
    
            if(strcmp(b,'double riveted (zig zag)')==1||strcmp(b,'triple riveted (zig zag)')==1)&&(x==1)
                outerinnerpt=ceil(0.33*outerpt+0.67*dia);
            innertranspt=outerinnerpt;
            elseif(strcmp(b,'double riveted (chain)')==1||strcmp(b,'triple riveted (chain)')==1)&&(x==1)
                    outerinnerpt=2*dia;innertranspt=outerinnerpt;
            elseif(strcmp(b,'double riveted (zig zag)')==1||strcmp(b,'triple riveted (zig zag)')==1)&&(y==1)
                outerinnerpt=ceil(0.2*outerpt+1.15*dia);
                innertranspt=ceil(0.165*outerpt+0.67*dia);
            elseif(strcmp(b,'double riveted (chain)')==1||strcmp(b,'triple riveted (chain)')==1)&&(y==1)
                outerinnerpt=ceil(0.33*outerpt+0.67*dia);
                innertranspt=2*dia;
             end
            
   
m=ceil(1.5*dia);
Pc=(a+r)*dia*t*sc;
Pt=(outerpt-dia)*t*st;
Ps=(a+r*1.875)*3.1432*dia*dia*tou/4;
solid=outerpt*t*st;
r=[Pc Pt Ps];
z=min(r);
caleffi=z/solid;
if(strcmp(d,'single strap')==1&&x==1)
    tc=ceil(1.125*t);
 widetc=0;
    narrtc=0;

end
if(strcmp(d,'single strap')==1&&y==1)
    tc=ceil(1.125*t*(outerpt-dia)/(outerpt-2*dia));
 widetc=0;
    narrtc=0;

end
if(strcmp(d,'double strap (equal width)')==1&&x==1)
    tc=ceil(0.625*t);
 widetc=0;
    narrtc=0;

end
if(strcmp(d,'double strap (equal width)')==1&&y==1)
    tc=ceil(0.625*t*(outerpt-dia)/(outerpt-2*dia));
    widetc=0;
    narrtc=0;

end
if(strcmp(d,'double strap (unequal width)')==1)
   widetc=ceil(0.75*t);
   narrtc=ceil(0.625*t);
tc=0;
end
if(strcmp(b,'single riveted')==1)
    innerpt=0;
    outerinnerpt=0;
    innertranspt=0;
   
elseif(strcmp(b,'double riveted (zig zag)')==1||strcmp(b,'double riveted (chain)')==1)
    innertranspt=0;

end
if(strcmp(d,'single strap')==1&&(strcmp(b,'single riveted')==1))
    tc=ceil(1.125*t);
 widetc=0;
    narrtc=0;
end

if(strcmp(d,'double strap (equal width)')==1&&strcmp(b,'single riveted')==1)
    tc=ceil(0.625*t);
 widetc=0;
    narrtc=0;
end
if(strcmp(d,'double strap (unequal width)')==1&&strcmp(b,'single riveted')==1)
   widetc=ceil(0.75*t);
   narrtc=ceil(0.625*t);
tc=0;
   
end





function laprvtperrowedit_Callback(hObject, eventdata, handles)
% hObject    handle to laprvtperrowedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of laprvtperrowedit as text
%        str2double(get(hObject,'String')) returns contents of laprvtperrowedit as a double


% --- Executes during object creation, after setting all properties.
function laprvtperrowedit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to laprvtperrowedit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1


% --- Executes on button press in reset.
function reset_Callback(hObject, eventdata, handles)
% hObject    handle to reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.st,'String',' ');
set(handles.sc,'String',' ');
set(handles.tou,'String',' ');
set(handles.P,'String',' ');
set(handles.D,'String',' ');
set(handles.layout,'Value',1); 
set(handles.equalpt,'Value',0);
set(handles.twicept,'Value',0);
set(handles.longbutt,'Value',0);
set(handles.circumlap,'Value',0);
set(handles.strap,'Value',1);
set(handles.check,'string',' ');
set(handles.lapcheck,'string',' ');
set(handles.lapplateedit,'string',' ');
set(handles.lapinneredit,'string',' ');
set(handles.laprvtperrowedit,'string',' ');
set(handles.laptransedit,'string',' ');
set(handles.lapmedit,'string',' ');
set(handles.lapeffiedit,'string',' ');
set(handles.laprivetedit,'string',' ');
set(handles.lapdistedit,'string',' ');
set(handles.inducedtensile,'string',' ');
set(handles.lapouteredit,'string',' ');
set(handles.lapplateedit,'string',' ');
set(handles.inducedcomp,'string',' ');
set(handles.inducedshear,'string',' ');
set(handles.plate,'string',' ');
set(handles.innerpt,'string',' ');
set(handles.transpt,'string',' ');
set(handles.m,'string',' ');
set(handles.outerst,'string',' ');
set(handles.effi,'string',' ');
set(handles.rivet,'string',' ');
set(handles.outerpt,'string',' ');
set(handles.innerouter,'string',' ');
set(handles.innerst,'string',' ');



% --- Executes during object creation, after setting all properties.
function lapcheck_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lapcheck (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function inducedtensile_Callback(hObject, eventdata, handles)
% hObject    handle to inducedtensile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inducedtensile as text
%        str2double(get(hObject,'String')) returns contents of inducedtensile as a double


% --- Executes during object creation, after setting all properties.
function inducedtensile_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inducedtensile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inducedcomp_Callback(hObject, eventdata, handles)
% hObject    handle to inducedcomp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inducedcomp as text
%        str2double(get(hObject,'String')) returns contents of inducedcomp as a double


% --- Executes during object creation, after setting all properties.
function inducedcomp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inducedcomp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inducedshear_Callback(hObject, eventdata, handles)
% hObject    handle to inducedshear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inducedshear as text
%        str2double(get(hObject,'String')) returns contents of inducedshear as a double


% --- Executes during object creation, after setting all properties.
function inducedshear_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inducedshear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function plate_CreateFcn(hObject, eventdata, handles)
% hObject    handle to plate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over outerst.
function outerst_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to outerst (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
