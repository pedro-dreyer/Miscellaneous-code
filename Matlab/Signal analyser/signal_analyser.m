function varargout = signal_analyser(varargin)
% SIGNAL_ANALYSER MATLAB code for signal_analyser.fig
%      SIGNAL_ANALYSER, by itself, creates a new SIGNAL_ANALYSER or raises the existing
%      singleton*.
%
%      H = SIGNAL_ANALYSER returns the handle to a new SIGNAL_ANALYSER or the handle to
%      the existing singleton*.
%
%      SIGNAL_ANALYSER('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SIGNAL_ANALYSER.M with the given input arguments.
%
%      SIGNAL_ANALYSER('Property','Value',...) creates a new SIGNAL_ANALYSER or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before signal_analyser_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to signal_analyser_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help signal_analyser

% Last Modified by GUIDE v2.5 27-Apr-2017 17:08:00

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @signal_analyser_OpeningFcn, ...
                   'gui_OutputFcn',  @signal_analyser_OutputFcn, ...
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


% --- Executes just before signal_analyser is made visible.
function signal_analyser_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to signal_analyser (see VARARGIN)

% Choose default command line output for signal_analyser
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes signal_analyser wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = signal_analyser_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function sliderWindow_Callback(hObject, eventdata, handles)
% hObject    handle to sliderWindow (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
draw_window(handles,hObject);

% --- Executes during object creation, after setting all properties.
function sliderWindow_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sliderWindow (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function editSamplingFrequency_Callback(hObject, eventdata, handles)
% hObject    handle to editSamplingFrequency (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editSamplingFrequency as text
%        str2double(get(hObject,'String')) returns contents of editSamplingFrequency as a double


% --- Executes during object creation, after setting all properties.
function editSamplingFrequency_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editSamplingFrequency (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editWindowSize_Callback(hObject, eventdata, handles)
% hObject    handle to editWindowSize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editWindowSize as text
%        str2double(get(hObject,'String')) returns contents of editWindowSize as a double


% --- Executes during object creation, after setting all properties.
function editWindowSize_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editWindowSize (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in listboxTransformationType.
function listboxTransformationType_Callback(hObject, eventdata, handles)
% hObject    handle to listboxTransformationType (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listboxTransformationType contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listboxTransformationType


% --- Executes during object creation, after setting all properties.
function listboxTransformationType_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listboxTransformationType (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editXmin_Callback(hObject, eventdata, handles)
% hObject    handle to editXmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editXmin as text
%        str2double(get(hObject,'String')) returns contents of editXmin as a double


% --- Executes during object creation, after setting all properties.
function editXmin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editXmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editXmax_Callback(hObject, eventdata, handles)
% hObject    handle to editXmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editXmax as text
%        str2double(get(hObject,'String')) returns contents of editXmax as a double


% --- Executes during object creation, after setting all properties.
function editXmax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editXmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editYmin_Callback(hObject, eventdata, handles)
% hObject    handle to editYmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editYmin as text
%        str2double(get(hObject,'String')) returns contents of editYmin as a double


% --- Executes during object creation, after setting all properties.
function editYmin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editYmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editYmax_Callback(hObject, eventdata, handles)
% hObject    handle to editYmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editYmax as text
%        str2double(get(hObject,'String')) returns contents of editYmax as a double


% --- Executes during object creation, after setting all properties.
function editYmax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editYmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in checkboxRemoveMean.
function checkboxRemoveMean_Callback(hObject, eventdata, handles)
% hObject    handle to checkboxRemoveMean (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkboxRemoveMean

% --------------------------------------------------------------------


function editWindowSpec_Callback(hObject, eventdata, handles)


function editWindowSpec_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function editNOverlap_Callback(hObject, eventdata, handles)


function editNOverlap_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function editNfft_Callback(hObject, eventdata, handles)


function editNfft_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function menuLoad_Callback(hObject, eventdata, handles)
% hObject    handle to menuLoad (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


function savePDF_Callback(hObject, eventdata, handles)
% hObject    handle to savePDF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function saveWorkspace_Callback(hObject, eventdata, handles)
% hObject    handle to saveWorkspace (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
assignin('base', 'result', handles.result);

function menuArquivo_Callback(hObject, eventdata, handles)


function menuSalvar_Callback(hObject, eventdata, handles)


function checkboxLog_Callback(hObject, eventdata, handles)


% --------------------------------------------------------------------
function menuLoadFile_Callback(hObject, eventdata, handles)
% hObject    handle to menuLoadFile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Loading data
[fileName,pathName] = uigetfile;
filePath = [pathName fileName];
dataStructe = load(filePath);
dataName = fieldnames(dataStructe);
data = dataStructe.(dataName{1});
handles.data = data;
guidata(hObject,handles);

% plotting
signalLength = length(data);
plot(handles.axesOriginalSignal,0:signalLength-1,data);
handles.axesOriginalSignal.XLim = [0 signalLength-1];
% changing axis limits edit fields to become equal to de plotted graph
handles.editXmin.String = 0;
handles.editXmax.String = signalLength - 1;
handles.editYmin.String = num2str(handles.axesOriginalSignal.YLim(1));
handles.editYmax.String = num2str(handles.axesOriginalSignal.YLim(2));
hold on

draw_window(handles,hObject);

% --------------------------------------------------------------------
function menuLoadWorkspace_Callback(hObject, eventdata, handles)
% hObject    handle to menuLoadWorkspace (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

prompt = {'Enter Variable name:'};
dlg_title = 'Load';
num_lines = 1;
defaultans = {'data'};
data = inputdlg(prompt,dlg_title,num_lines,defaultans);
data = data{1};
data = evalin('base',data);
handles.data = data;
guidata(hObject,handles);

% plotting
signalLength = length(data);
plot(handles.axesOriginalSignal,0:signalLength-1,data);
handles.axesOriginalSignal.XLim = [0 signalLength-1];

% changing axis limits edit fields to become equal to de plotted graph
handles.editXmin.String = 0;
handles.editXmax.String = signalLength - 1;
handles.editYmin.String = num2str(handles.axesOriginalSignal.YLim(1));
handles.editYmax.String = num2str(handles.axesOriginalSignal.YLim(2));
hold on

draw_window(handles,hObject);

function draw_window(handles,hObject)

xMin = str2double(handles.editXmin.String);
xMax = str2double(handles.editXmax.String);
windowSize = str2double(handles.editWindowSize.String);

% xWinMin = round(xMin + handles.sliderWindow.Value * (xMax-xMin));
% xWinMax = xWinMin + str2double(handles.editWindowSize.String) - 1;
yWinMin = str2double(handles.editYmin.String);
yWinMax = str2double(handles.editYmax.String);
xWinMin = (xMax - windowSize) * handles.sliderWindow.Value;
xWinMax = (windowSize - 1) + (xMax - windowSize) * handles.sliderWindow.Value;
xWindow = [xWinMin xWinMax xWinMax xWinMin xWinMin];
yWindow = [yWinMin yWinMin yWinMax yWinMax yWinMin];

if isfield(handles,'windowHandle')
    handles.windowHandle.XData = xWindow;
    handles.windowHandle.YData = yWindow;
    handles.windowHandle.BaseValue = yWinMin;
    
else 
    handles.windowHandle = area(handles.axesOriginalSignal,xWindow,yWindow,yWinMin);
    handles.windowHandle.FaceAlpha = 0.5;
    handles.windowHandle.ShowBaseLine = 'off';
end

result = plotResult(xWinMin,xWinMax,handles);
handles.result = result;
guidata(hObject, handles);

function [result] = plotResult(xWinMin,xWinMax,handles)

axes(handles.axesAnalysedSignal)
windowSize = str2double(handles.editWindowSize.String);
fSample =  str2double(handles.editSamplingFrequency.String);
samplePoints = round(xWinMin:xWinMax);
Y = handles.data(samplePoints + 1,:);
if handles.checkboxRemoveMean.Value == 1
    Y = Y - mean(Y);
end

% TODO Absolute value

switch handles.listboxTransformationType.Value
    case 1
        samplePoints = (0:windowSize-1)';
        plot(handles.axesAnalysedSignal,samplePoints',Y)
        handles.axesAnalysedSignal.XLim = [0 windowSize-1];
        result.Y = Y;
        result.samplePoints = samplePoints;
    case 2
        Y = fft(Y);
        Y = abs(Y/windowSize);
        if handles.checkboxLog.Value == 1
            Y = log(Y);
        end
        %ignoring the first term with zero frequency, the fft is 
        %simetric with respect to the frequency of N/2 radians per sample.
        %We then double the values of the repeteaded frequencies.
        Y((1:windowSize/2 - 1)+1) = 2*Y((1:windowSize/2 - 1)+1);
        samplePoints = 0:windowSize-1;
        %Frequency of the Fourier bins
        frequency = (fSample / 2) .* samplePoints / (windowSize/2);
        stem(handles.axesAnalysedSignal,frequency,Y)
        handles.axesAnalysedSignal.XLim = [0 fSample/2];
        Y = Y((0:windowSize/2)+1);
        frequency = frequency((0:windowSize/2)+1);
        frequency = frequency';
        
        result.Y = Y;
        result.frequency = frequency;
        
        title('Single-Sided Amplitude Spectrum of the signal')
        xlabel('Frequency (Hz)')
        ylabel('Magnitude')
    case 3
        windowSpec = str2double(handles.editWindowSpec.String);
        nOverlap = str2double(handles.editNOverlap.String);
        nfft = str2double(handles.editNfft.String);
        [Y,frequency,time] = spectrogram(Y,windowSpec,nOverlap,nfft,fSample,'yaxis');
        Y = abs(Y);
        if handles.checkboxLog.Value == 1
            Y = log(Y);
        end
        
        result.Y = Y;
        result.frequency = frequency;
        result.time = time;
        
        surf(time,frequency,abs(Y),'EdgeColor','none')
        view(0,90)
        %shading interp
        axis tight
        %figure
        %spectrogram(a,windowSpec,nOverlap,nfft,fSample,'yaxis')
        cmocean('gray')
        
        %colormap gray
        xlabel('Time (s)')
        ylabel('Frequency (Hz)')     
end