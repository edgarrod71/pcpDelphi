{*******************************************************************}
{                                                                   }
{       Developer Express Visual Component Library                  }
{       ExpressPageControl COMPONENT                                }
{                                                                   }
{       Copyright (C) 2001 Developer Express Inc.                   }
{       ALL RIGHTS RESERVED                                         }
{                                                                   }
{   The entire coVisntents of this file is protected by U.S. and    }
{   International Copyright Laws. Unauthorized reproduction,        }
{   reverse-engineering, and distribution of all or any portion of  }
{   the code contained in this file is strictly prohibited and may  }
{   result in severe civil and criminal penalties and will be       }
{   prosecuted to the maximum extent possible under the law.        }
{                                                                   }
{   RESTRICTIONS                                                    }
{                                                                   }
{   THIS SOURCE CODE AND ALL RESULTING INTERMEDIATE FILES           }
{   (DCU, OBJ, DLL, ETC.) ARE CONFIDENTIAL AND PROPRIETARY TRADE    }
{   SECRETS OF DEVELOPER EXPRESS INC. THE REGISTERED DEVELOPER IS   }
{   LICENSED TO DISTRIBUTE THE EXPRESSPAGECONTROL AND               }
{   ALL ACCOMPANYING VCL CONTROLS AS PART OF AN                     }
{   EXECUTABLE PROGRAM ONLY.                                        }
{                                                                   }
{   THE SOURCE CODE CONTAINED WITHIN THIS FILE AND ALL RELATED      }
{   FILES OR ANY PORTION OF ITS CONTENTS SHALL AT NO TIME BE        }
{   COPIED, TRANSFERRED, SOLD, DISTRIBUTED, OR OTHERWISE MADE       }
{   AVAILABLE TO OTHER INDIVIDUALS WITHOUT EXPRESS WRITTEN CONSENT  }
{   AND PERMISSION FROM DEVELOPER EXPRESS INC.                      }
{                                                                   }
{   CONSULT THE END USER LICENSE AGREEMENT FOR INFORMATION ON       }
{   ADDITIONAL RESTRICTIONS.                                        }
{                                                                   }
{*******************************************************************}

unit dxPageControl_origina;

interface

{$I dxpcver.inc}

 uses Classes, SysUtils, Controls, Windows, Messages, Graphics {$IFDEF DELPHI4}, ImgList {$ENDIF};

 type

  TdxTabPosition = (dxtpTop, dxtpBottom, dxtpLeft, dxtpRight);
  TdxCustomPageControl = class;
  TdxTabSheet = class;

  TdxDrawTabExRecord = class
  private
    FTabSheet: TdxTabSheet;
    FFont: TFont;
  public
    constructor Create(ATabSheet: TdxTabSheet);
    destructor Destroy; override;
    
    property TabSheet: TdxTabSheet read FTabSheet;
    property Font: TFont read FFont;
  end;


  TdxDrawTabEvent = procedure(Control: TdxCustomPageControl; TabIndex: Integer;
    const Rect: TRect; Active: Boolean) of object;
  TdxDrawTabExEvent = procedure(Control: TdxCustomPageControl; EventRecord: TdxDrawTabExRecord) of object;
  TdxTabGetImageEvent = procedure(Sender: TObject; TabIndex: Integer; var ImageIndex: Integer) of object;

  TdxTabSheet = class(TWinControl)
  private
    FImageIndex: {$IFDEF DELPHI5}TImageIndex{$ELSE}Integer{$ENDIF};
    FPageControl: TdxCustomPageControl;
    FTabVisible: Boolean;
    FTabShowing: Boolean;
    FHighlighted: Boolean;
    FOnHide: TNotifyEvent;
    FOnShow: TNotifyEvent;

    function GetPageIndex: Integer;
    function GetTabIndex: Integer;
    function GetTabShowing: Boolean;
    procedure SetHighlighted(Value: Boolean);
    procedure SetImageIndex(Value: {$IFDEF DELPHI5}TImageIndex{$ELSE}Integer{$ENDIF});
    procedure SetPageControl(APageControl: TdxCustomPageControl);
    procedure SetPageIndex(Value: Integer);
    procedure SetTabShowing(Value: Boolean);
    procedure SetTabVisible(Value: Boolean);
    procedure UpdateTabShowing;
    procedure CMTextChanged(var Message: TMessage); message CM_TEXTCHANGED;
    procedure CMShowingChanged(var Message: TMessage); message CM_SHOWINGCHANGED;
    procedure CMDialogChar(var Message: TCMDialogChar); message CM_DIALOGCHAR;
  protected
    procedure CreateParams(var Params: TCreateParams); override;
    procedure DoHide; dynamic;
    procedure DoShow; dynamic;
    procedure ReadState(Reader: TReader); override;

    property TabShowing: Boolean read GetTabShowing;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property PageControl: TdxCustomPageControl read FPageControl write SetPageControl;
    property TabIndex: Integer read GetTabIndex;
  published
    {$IFDEF DELPHI4}
    property BorderWidth;
    {$ENDIF}
    property Caption;
    property DragMode;
    property Enabled;
    property Font;
    property Height stored False;
    property Highlighted: Boolean read FHighlighted write SetHighlighted default False;
    property ImageIndex: {$IFDEF DELPHI5}TImageIndex{$ELSE}Integer{$ENDIF} read FImageIndex write SetImageIndex default 0;
    property Left stored False;
    {$IFDEF DELPHI4}
    property Constraints;
    {$ENDIF}
    property PageIndex: Integer read GetPageIndex write SetPageIndex stored False;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property ShowHint;
    property TabVisible: Boolean read FTabVisible write SetTabVisible default True;
    property Top stored False;
    property Visible stored False;
    property Width stored False;
    {$IFDEF DELPHI5}
    property OnContextPopup;
    {$ENDIF}
    property OnDragDrop;
    property OnDragOver;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnHide: TNotifyEvent read FOnHide write FOnHide;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    {$IFDEF DELPHI4}
    property OnResize;
    {$ENDIF}
    property OnShow: TNotifyEvent read FOnShow write FOnShow;
    property OnStartDrag;
  end;

  TdxPageControlButtons = class;

  TdxPageControlButton = class
  private
    FTabSheet: TdxTabSheet;
    FButtons: TdxPageControlButtons;
    FRect: TRect;
    FWidth: Integer;
    FIndex: Integer;

    function GetRectHeight: Integer;
    function GetRectWidth: Integer;
    function GetBorderWidth: Integer;
    function GetCaptionRect: TRect;
    function GetImageRect: TRect;
    function GetImageIndex: Integer;
    function DoDrawTab(const ARect: TRect): Boolean;
  protected
    procedure InternalPaint; virtual; abstract;
    procedure DrawCaption(ARect: TRect); virtual;
    procedure DrawImage(ARect: TRect); virtual;
    function ImageWidth: Integer;
    function GetCanvas: TCanvas;

    property Rect: TRect read FRect;
    property CaptionRect: TRect read GetCaptionRect;
    property ImageRect: TRect read GetImageRect;
    property ImageIndex: Integer read GetImageIndex;
  public
    constructor Create(AButtons: TdxPageControlButtons; ATabSheet: TdxTabSheet);

    procedure Paint;
    function IsInRect(const point: TPoint): Boolean;
    function Caption: String;
    function IsActive: Boolean;
    function IsFocused: Boolean;
    function IsHotTrack: Boolean;
    function Index: Integer;
    function IsVisible: Boolean;
    procedure Empty;
    function CalcButtonTextWidth: Integer;
    procedure CalcButtonWidth; virtual;

    property Canvas: TCanvas read GetCanvas;
    property BorderWidth: Integer read GetBorderWidth;
    property Buttons: TdxPageControlButtons read FButtons;
    property TabSheet: TdxTabSheet read FTabSheet;
  end;

  TdxPageControlButtonClass = class of TdxPageControlButton;
  TdxPageControlButtonNavigatorState = (bnsNone, bnsLeftDown, bnsRightDown,
                bnsLeftHolding, bnsRightHolding, bnsLeftHotTrack, bnsRightHotTrack);

  TdxPageControlButtons = class
  private
    FList: TList;
    FPageControl: TdxCustomPageControl;
    FLeftButton: Integer;
    FLeftNavigatorRect: TRect;
    FRightNavigatorRect: TRect;
    FNavigatorState: TdxPageControlButtonNavigatorState;
    FScrollTimerID: Integer;
    FButtonLines: Integer;
    FHotTrackButton: TdxPageControlButton;

    function GetActiveButton: TdxPageControlButton;
    function GetButton(Index: Integer): TdxPageControlButton;
    function GetCount: Integer;
    function GetImages: {$IFNDEF DELPHI4}TImageList{$ELSE}TCustomImageList{$ENDIF};
    function GetIsCustomDraw: Boolean;
    function GetTabWidth: Integer;
    function GetTabPosition: TdxTabPosition;
    procedure SetHotTrackButton(Value: TdxPageControlButton);
    procedure SetLeftButton(Value: Integer);
    procedure SetNavigatorState(Value: TdxPageControlButtonNavigatorState);
  protected
    function GetBorderWidth: Integer; virtual;
    function GetTextHeight: Integer;
    function GetImageHeight: Integer;
    function GetButtonHeight: Integer; virtual;
    function GetButtonLines: Integer; virtual;
    function GetButtonsHeight: Integer; virtual;
    function GetButtonsWidth: Integer; virtual;
    function GetButtonOffSet: Integer; virtual;
    function GetControlWidth: Integer;
    function GetControlHeight: Integer;
    procedure GetBorderOffset(var Left, Top, Right, Bottom: Integer); virtual;
    function GetCanvas: TCanvas;

    function GetButtonByPage(ATabSheet: TdxTabSheet): TdxPageControlButton;
    function GetButtonsRect: TRect;
    function GetButtonAtPt(Pt: TPoint): TdxPageControlButton;
    procedure BeforeDrawTabEx(Button: TdxPageControlButton; AFont: TFont);
    procedure InternalPaintButton(Button: TdxPageControlButton; AFont: TFont); virtual;
    procedure PaintButtons;
    procedure FillFreeSpace; virtual;
    procedure DrawFrame; virtual;

    procedure RepaintButton(AButton: TdxPageControlButton);
    procedure RepaintNavigators;

    function CanFocus: Boolean; virtual;
    function NeedButtonsReplace: Boolean; virtual;
    function NeedReadrawFullHotTrackButton: Boolean; virtual;
    function NeedNavigatorButtonHotTrack: Boolean; virtual;
    function NeedHighLight(AButton: TdxPageControlButton) : Boolean; virtual;

    procedure CalcViewInfo; virtual;
    procedure CalcButtonsWidth; virtual;
    procedure CalcButtonsRects; virtual;
    procedure CalcButtonLines;
    procedure CalcLeftButton;
    procedure CalcNavigatorRect; virtual;
    function GetPageControlButtonClass: TdxPageControlButtonClass; virtual; abstract;

    property Canvas: TCanvas read GetCanvas;
    property HotTrackButton: TdxPageControlButton read FHotTrackButton write SetHotTrackButton;
    property Images: {$IFNDEF DELPHI4}TImageList{$ELSE}TCustomImageList{$ENDIF} read GetImages;
    property NavigatorState: TdxPageControlButtonNavigatorState read FNavigatorState write SetNavigatorState;
    property TabWidth: Integer read GetTabWidth;
    property IsCustomDraw: Boolean read GetIsCustomDraw;
  public
    constructor Create(APageControl: TdxCustomPageControl); virtual;
    destructor Destroy; override;

    procedure CreateButtons;
    procedure CreateButton(ATabSheet: TdxTabSheet; AInvalidate: Boolean);
    procedure DeleteButton(ATabSheet: TdxTabSheet; AInvalidate: Boolean);
    procedure MoveButton(ATabSheet: TdxTabSheet);
    procedure ClearButtons;
    procedure LeftButtonDown(X, Y: Integer);
    procedure LeftButtonUp(X, Y: Integer);
    procedure MouseMove(X, Y: Integer);
    procedure HotTrack(p: TPoint);
    procedure EmptyButtons;
    function IsButtonNavigatorVisible: Boolean;
    function IsLeftNavigatorButton(X, Y: Integer): Boolean;
    function IsRightNavigatorButton(X, Y: Integer): Boolean;
    procedure MakeActiveButtonVisible;

    procedure CalcClientSize(var ClientRect: TRect); virtual;
    function ScreenToClient(p: TPoint): TPoint; virtual;
    procedure Paint; virtual;
    procedure InternalPaint; virtual;
    procedure PaintNavigators; virtual; abstract;
    property ActiveButton: TdxPageControlButton read GetActiveButton;
    property BorderWidth: Integer read GetBorderWidth;
    property Count: Integer read GetCount;
    property Buttons[Index: Integer]: TdxPageControlButton read GetButton; default;
    property LeftButton: Integer read FLeftButton write SetLeftButton;
    property PageControl: TdxCustomPageControl read FPageControl;
    property TabPosition: TdxTabPosition read GetTabPosition;
  end;

  TdxPageControlButtonsClass = class of TdxPageControlButtons;

  TdxTabStyle = (dxtsTabs, dxtsButtons, dxtsFlatButtons, dxtsFlat);
  TdxTabChangingEvent = procedure(Sender: TObject; NewPage: TdxTabSheet; var AllowChange: Boolean) of object;

  TdxCustomPageControl = class(TCustomControl)
  private
    FPages: TList;
    FActivePage: TdxTabSheet;
    {$IFDEF DELPHI4}
    FNewDockSheet: TdxTabSheet;
    FUndockingPage: TdxTabSheet;
    {$ENDIF}
    FImageChangeLink: TChangeLink;
    FImages: {$IFNDEF DELPHI4}TImageList{$ELSE}TCustomImageList{$ENDIF};
    FButtons: TdxPageControlButtons;
    FTabPosition : TdxTabPosition;
    FMultiLine: Boolean;
    FRaggedRight: Boolean;
    FStyle: TdxTabStyle;
    FOldMouseCapture: HWnd;
    FHideButtons: Boolean;
    FHotTrack: Boolean;
    FOwnerDraw: Boolean;
    FScrollOpposite: Boolean;
    FTabHeight: Integer;
    FTabWidth: Integer;
    FOnTabDraw: TdxDrawTabEvent;
    FOnTabDrawEx:  TdxDrawTabExEvent;
    FOnGetImageIndex: TdxTabGetImageEvent;
    FOnChange: TNotifyEvent;
    FOnChanging: TdxTabChangingEvent;

    procedure ImageListChange(Sender: TObject);
    procedure ChangeActivePage(Page: TdxTabSheet);
    function GetActivePageIndex: Integer;
    {$IFDEF DELPHI4}
    function GetDockClientFromMousePos(MousePos: TPoint): TControl;
    {$ENDIF}
    function GetPage(Index: Integer): TdxTabSheet;
    function GetPageCount: Integer;
    function GetTab(Index: Integer): TdxTabSheet;
    function GetTabCount: Integer;
    function GetTabIndex: Integer;
    procedure InsertPage(Page: TdxTabSheet);
    procedure RemovePage(Page: TdxTabSheet);
    procedure SetActivePage(Page: TdxTabSheet);
    procedure SetActivePageIndex(const Value: Integer);
    procedure SetImages(Value: {$IFNDEF DELPHI4}TImageList{$ELSE}TCustomImageList{$ENDIF});
    procedure SetHideButtons(const Value: Boolean);
    procedure SetMultiLine(Value: Boolean);
    procedure SetOwnerDraw(const Value: Boolean);
    procedure SetRaggedRight(const Value: Boolean);
    procedure SetScrollOpposite(const Value: Boolean);
    procedure SetTabIndex(const Value: Integer);
    procedure SetTabPosition(const Value: TdxTabPosition);
    procedure SetStyle(const Value: TdxTabStyle);
    procedure SetTabHeight(Value: Integer);
    procedure SetTabWidth(Value: Integer);

    procedure ShowTab(Page: TdxTabSheet; AShow: Boolean);
    procedure UpdateTab(Page: TdxTabSheet);
    procedure UpdateTabHighlights;
    procedure UpdateFontOrientation;

    procedure CMDesignHitTest(var Message: TCMDesignHitTest); message CM_DESIGNHITTEST;
    procedure CMDialogKey(var Message: TCMDialogKey); message CM_DIALOGKEY;
    {$IFDEF DELPHI4}
    procedure CMDockClient(var Message: TCMDockClient); message CM_DOCKCLIENT;
    procedure CMDockNotification(var Message: TCMDockNotification); message CM_DOCKNOTIFICATION;
    procedure CMUnDockClient(var Message: TCMUnDockClient); message CM_UNDOCKCLIENT;
    {$ENDIF}
    procedure CMFontChanged(var Message: TMessage); message CM_FONTCHANGED;
    procedure CMFocuseChanged(var Message: TMessage); message CM_FOCUSCHANGED;
    procedure CMSysColorChange(var Message: TMessage); message CM_SYSCOLORCHANGE;
    procedure CMMouseLeave(var Message: TMessage); message CM_MOUSELEAVE;
    procedure WMGetDlgCode(var Message: TWMGetDlgCode); message WM_GETDLGCODE;
    procedure WMLButtonDown(var Message: TWMLButtonDown); message WM_LBUTTONDOWN;
    procedure WMLButtonUp(var Message: TWMLButtonUp); message WM_LBUTTONUP;
    {$IFDEF DELPHI4}
    procedure WMLButtonDblClk(var Message: TWMLButtonDblClk); message WM_LBUTTONDBLCLK;
    {$ENDIF}
    procedure WMKeyDown(var Message: TWMKeyDown); message WM_KEYDOWN;
    procedure WMSetCursor(var Message: TWMSetCursor); message WM_SETCURSOR;
    procedure WMSize(var Message: TWMSize); message WM_SIZE;
    procedure WMEraseBkgnd(var Message: TWMEraseBkgnd); message WM_ERASEBKGND;
  protected
    procedure CreateHandle; override;
    procedure CreateParams(var Params: TCreateParams); override;
    procedure SetParent(Value: TWinControl); override;
    {$IFDEF DELPHI4}
    procedure AdjustClientRect(var Rect: TRect); override;
    {$ELSE}
    function GetClientRect: TRect; override;
    {$ENDIF}
    procedure CreateButtons;
    procedure RedrawButtons;

    function CanShowTab(TabIndex: Integer): Boolean;
    function CanChange(NewPage: TdxTabSheet): Boolean; dynamic;
    procedure DoChange; dynamic;
    procedure Change;
    {$IFDEF DELPHI4}
    procedure DoAddDockClient(Client: TControl; const ARect: TRect); override;
    procedure DockOver(Source: TDragDockObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean); override;
    procedure DoRemoveDockClient(Client: TControl); override;
    {$ENDIF}
    procedure GetChildren(Proc: TGetChildProc; Root: TComponent); override;
    {$IFDEF DELPHI4}
    function GetPageFromDockClient(Client: TControl): TdxTabSheet;
    procedure GetSiteInfo(Client: TControl; var InfluenceRect: TRect;
      MousePos: TPoint; var CanDock: Boolean); override;
    {$ENDIF}
    procedure Loaded; override;
    procedure SetChildOrder(Child: TComponent; Order: Integer); override;
    procedure ShowControl(AControl: TControl); override;
    procedure UpdateActivePage; virtual;

    property TabIndex: Integer read GetTabIndex write SetTabIndex default -1;
    property Buttons: TdxPageControlButtons read FButtons;
  protected
    property ActivePage: TdxTabSheet read FActivePage write SetActivePage;
    property HideButtons: Boolean read FHideButtons write SetHideButtons;
    property HotTrack: Boolean read FHotTrack write FHotTrack;
    property Images: {$IFNDEF DELPHI4}TImageList{$ELSE}TCustomImageList{$ENDIF} read FImages write SetImages;
    property MultiLine: Boolean read FMultiLine write SetMultiLine;
    property OwnerDraw: Boolean read FOwnerDraw write SetOwnerDraw;
    property RaggedRight: Boolean read FRaggedRight write SetRaggedRight;
    property ScrollOpposite: Boolean read FScrollOpposite write SetScrollOpposite;
    property Style: TdxTabStyle read FStyle write SetStyle default dxtsFlat;
    property TabHeight: Integer read FTabHeight write SetTabHeight;
    property TabPosition: TdxTabPosition read FTabPosition write SetTabPosition;
    property TabWidth: Integer read FTabWidth write SetTabWidth;
    property OnChange: TNotifyEvent read FOnChange write FOnChange;
    property OnChanging: TdxTabChangingEvent read FOnChanging write FOnChanging;
    property OnDrawTab: TdxDrawTabEvent read FOnTabDraw write FOnTabDraw;
    property OnDrawTabEx: TdxDrawTabExEvent read FOnTabDrawEx write FOnTabDrawEx;
    property OnGetImageIndex: TdxTabGetImageEvent read fOnGetImageIndex write FOnGetImageIndex;
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;

    procedure Notification(AComponent: TComponent; Operation: TOperation); override;
    {$IFDEF DELPHI5}
    function CanFocus: Boolean; override;
    {$ENDIF}
    procedure Paint; override;

    function FindNextPage(CurPage: TdxTabSheet;
      GoForward, CheckTabVisible: Boolean): TdxTabSheet;
    procedure SelectNextPage(GoForward: Boolean; CheckTabVisible: Boolean{$IFDEF DELPHI4} = True{$ENDIF});


    property ActivePageIndex: Integer read GetActivePageIndex
      write SetActivePageIndex;
    property Canvas;  
    property PageCount: Integer read GetPageCount;
    property Pages[Index: Integer]: TdxTabSheet read GetPage;
    property TabCount: Integer read GetTabCount;
    property Tabs[Index: Integer]: TdxTabSheet read GetTab;
  published
  end;

  TdxPageControl = class(TdxCustomPageControl)
  published
    property ActivePage;
    property Align;
    {$IFDEF DELPHI4}
    property Anchors;
    property BiDiMode;
    property Constraints;
    property DockSite;
    property DragKind;
    property ParentBiDiMode;
    property OnDockDrop;
    property OnDockOver;
    property OnEndDock;
    property OnStartDock;
    property OnUnDock;
    property OnGetSiteInfo;
    property OnResize;
    {$ENDIF}
    {$IFDEF DELPHI5}    
    property OnContextPopup;
    {$ENDIF}
    property DragCursor;
    property DragMode;
    property Enabled;
    property Font;
    property HideButtons;
    property HotTrack;
    property Images;
    property MultiLine;
    property OwnerDraw;
    property ParentFont;
    property ParentShowHint;
    property PopupMenu;
    property RaggedRight;
    property ScrollOpposite;
    property ShowHint;
    property Style;
    property TabHeight;
    property TabOrder;
    property TabPosition;
    property TabStop default True;
    property TabWidth;
    property Visible;
    property OnChange;
    property OnChanging;
    property OnDragDrop;
    property OnDragOver;
    property OnDrawTab;
    property OnDrawTabEx;    
    property OnGetImageIndex;
    property OnEndDrag;
    property OnEnter;
    property OnExit;
    property OnMouseDown;
    property OnMouseMove;
    property OnMouseUp;
    property OnStartDrag;
  end;

implementation

uses Forms, dxPageControlStrs, CommCtrl;

const StandardBorderWidth = 2;

var
  IsWin98Or2000: Boolean = False;

type
TdxMultiLineRecord = class
   Width: Integer;
   Line: Integer;
end;

//It Changes the rect based on TabPosition and return the new rect.
procedure dxOffsetRect(var NewRect: TRect; OldRect: TRect; Position: TdxTabPosition;
        LeftOffSet, TopOffSet, RightOffSet, BottomOffSet: Integer);
begin
  case Position of
    dxtpTop:
      SetRect(NewRect, OldRect.Left + LeftOffSet, OldRect.Top + TopOffSet,
                OldRect.Right + RightOffSet, OldRect.Bottom + BottomOffSet);
    dxtpBottom:
      SetRect(NewRect, OldRect.Left + LeftOffSet, OldRect.Top - BottomOffSet,
                OldRect.Right + RightOffSet, OldRect.Bottom - TopOffSet);
    dxtpLeft:
      SetRect(NewRect, OldRect.Left + TopOffSet, OldRect.Top + LeftOffSet,
                OldRect.Right + BottomOffSet, OldRect.Bottom + RightOffSet);
    dxtpRight:
      SetRect(NewRect, OldRect.Left - BottomOffSet, OldRect.Top + LeftOffSet,
                OldRect.Right - TopOffSet, OldRect.Bottom + RightOffSet);
  end;
end;

procedure MultiLineAddRecord(AList: TList; AWidth: Integer);
var
  ARecord: TdxMultiLineRecord;
begin
  ARecord := TdxMultiLineRecord.Create;
  AList.Add(ARecord);
  ARecord.Width := AWidth;
  ARecord.Line := -1;
end;

procedure MultiLineClearRecords(AList: TList);
var
  i: Integer;
begin
  for i := 0 to AList.Count - 1 do
    TdxMultiLineRecord(AList[i]).Free;
  AList.Clear;  
end;

function MutiLineCorrectRecords(AList: TList; APageWidth: Integer; ARaggedRight: Boolean): Integer;

  function InternalGetWidth(p: Pointer): Integer;
  begin
    Result := TdxMultiLineRecord(p).Width;
  end;

  procedure InternalSetWidth(p: Pointer; Value: Integer);
  begin
    TdxMultiLineRecord(p).Width := Value;
  end;

  function InternalGetLine(p: Pointer): Integer;
  begin
    Result := TdxMultiLineRecord(p).Line;
  end;

  procedure InternalSetLine(p: Pointer; Value: Integer);
  begin
    TdxMultiLineRecord(p).Line := Value;
  end;

  function GetWidth(Index: Integer): Integer;
  begin
    Result := InternalGetWidth(AList[Index]);
  end;

  procedure SetWidth(Index, Value: Integer);
  begin
    InternalSetWidth(AList[Index], Value);
  end;

  function GetLine(Index: Integer): Integer;
  begin
    Result := InternalGetLine(AList[Index]);
  end;

  procedure SetLine(Index, Value: Integer);
  begin
    InternalSetLine(AList[Index], Value);
  end;

var
  List: TList;

  procedure SetupVariables;
  begin
    List.Clear;
  end;

  function CantBeAddedtoPreviousLine(AIndex: Integer): Boolean;
  begin
    Result := (GetWidth(AIndex) >= APageWidth)
     or ((AIndex > 0) and (GetWidth(AIndex) + GetWidth(AIndex - 1) >= APageWidth));
  end;

  procedure CorrectWidth;
  var
    Numbers: Integer;
    MoveFlag: Boolean;

    function GetLineWidth(ALine: Integer): Integer;
    var
      i: Integer;
    begin
      Result := 0;
      for i := 0 to List.Count - 1 do
        if InternalGetLine(List[i]) = ALine then
          Inc(Result, InternalGetWidth(List[i]));
    end;

    function GetLastInLine(ALine: Integer): Pointer;
    var
      i: Integer;
    begin
      Result := nil;
      for i := 0 to List.Count - 1 do
        if InternalGetLine(List[i]) = ALine then
          Result := List[i];
    end;

    procedure CorrectLineWidth(ALine: Integer);
    var
      Width, i: Integer;
    begin
      Width := GetLineWidth(ALine);
      Width := APageWidth - Width;
      while Width > 0 do
        for i := 0 to List.Count - 1 do
          if InternalGetLine(List[i]) = ALine then
          begin
            InternalSetWidth(List[i], InternalGetWidth(List[i]) + 1);
            Dec(Width);
            if Width = 0 then
              break;
          end;
    end;
    
  var
    AWidth1, AWidth2: Integer;
    ALast_p: Pointer;
    i: Integer;
  begin
    if List.Count = 0 then exit;
    if not ARaggedRight then
    begin
      Numbers := (InternalGetLine(List[List.Count - 1]) - InternalGetLine(List[0])) + 1;
      if Numbers > 1 then
      begin
        MoveFlag := True;
        while MoveFlag do
        begin
          MoveFlag := False;
          for i := InternalGetLine(List[0]) to InternalGetLine(List[List.Count - 1]) - 1 do
          begin
            AWidth1 := GetLineWidth(i);
            AWidth2 := GetLineWidth(i + 1);
            ALast_p := GetLastInLine(i);
            if (AWidth2 <= AWidth1 - InternalGetWidth(ALast_p)) then
            begin
              InternalSetLine(ALast_p, i + 1);
              MoveFlag := True;
            end;
          end;
        end;
      end;
      for i := InternalGetLine(List[0]) to InternalGetLine(List[List.Count - 1]) do
        CorrectLineWidth(i);
    end;    
    SetupVariables;
  end;

var
  dX, i: Integer;
  LinesNumber: Integer;
begin
  if AList.Count = 0 then
  begin
    Result := 0;
    exit;
  end;
  dX := 0;
  List := TList.Create;
  SetupVariables;
  LinesNumber := 1;
  for i := 0 to AList.Count - 1 do
  begin
    if CantBeAddedtoPreviousLine(i) then
      CorrectWidth;
    if (GetWidth(i) >= APageWidth) then
    begin
      SetWidth(i, APageWidth);
      if (dX > 0) then
         Inc(LinesNumber);
      SetLine(i, LinesNumber);
      Inc(LinesNumber);
      dX := 0;
    end else
    begin
      List.Add(AList[i]);
      if (GetWidth(i) + dX > APageWidth) then
      begin
        Inc(LinesNumber);
        dX := GetWidth(i);
      end else Inc(dX, GetWidth(i));
      SetLine(i, LinesNumber);
    end;
  end;
  CorrectWidth;
  List.Free;
  Result := GetLine(AList.Count - 1);
end;

type
TdxPageControlArrowType = (patLeft, patRight);

procedure DrawLargeItemArrow(DC: HDC; R: TRect; ArrowType: TdxPageControlArrowType;
  Size: Integer; Selected: Boolean);
var
  Color: COLORREF;
  X, Y: Integer;
  P: array[1..3] of TPoint;
  Pen: HPEN;
  Brush: HBRUSH;

  procedure DrawEnabled;
  begin
    with R do
      if ArrowType = patLeft then
      begin
        X := (Left + Right - Size) div 2 + 2 * Size;
        Y := (Top + Bottom - (2 * Size - 1)) div 2;
        P[1] := Point(X, Y);
        P[2] := Point(X, Y + 2 * Size - 2);
        P[3] := Point(X - Size + 1, Y + Size - 1);
      end
      else  // atRight
      begin
        X := (Left + Right - Size) div 2;
        Y := (Top + Bottom - (2 * Size - 1)) div 2;
        P[1] := Point(X, Y);
        P[2] := Point(X, Y + 2 * Size - 2);
        P[3] := Point(X + Size - 1, Y + Size - 1);
      end;


    Pen := SelectObject(DC, CreatePen(PS_SOLID, 1, GetSysColor(Color)));
    Brush := SelectObject(DC, GetSysColorBrush(Color));
    Polygon(DC, P, 3);
    SelectObject(DC, Brush);
    DeleteObject(SelectObject(DC, Pen));
  end;

begin
  if Selected then
    Color := COLOR_HIGHLIGHTTEXT
  else Color := COLOR_BTNTEXT;
  DrawEnabled;
end;


procedure DrawItemArrow(DC: HDC; R: TRect; ArrowType: TdxPageControlArrowType;
  Selected: Boolean);
var
  Size: Integer;
begin
  if ArrowType in [patRight, patLeft] then
    Size := R.Bottom - R.Top - 6
  else Size := R.Right - R.Left - 8;
  Size := (Size - 1) div 2 + Byte(Size mod 2 <> 0);
  if Size < 3 then Size := 3;
  DrawLargeItemArrow(DC, R, ArrowType, Size, Selected);
end;


{ TdxTabSheet }

constructor TdxTabSheet.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  Align := alClient;
  ControlStyle := ControlStyle + [csAcceptsControls, csNoDesignVisible];
  Visible := False;
  FTabVisible := True;
  FHighlighted := False;
end;

destructor TdxTabSheet.Destroy;
begin
  if FPageControl <> nil then
  begin
    {$IFDEF DELPHI4}
    if FPageControl.FUndockingPage = Self then FPageControl.FUndockingPage := nil;
    {$ENDIF}
    FPageControl.RemovePage(Self);
  end;
  inherited Destroy;
end;

procedure TdxTabSheet.DoHide;
begin
  if Assigned(FOnHide) then FOnHide(Self);
end;

procedure TdxTabSheet.DoShow;
begin
  if Assigned(FOnShow) then FOnShow(Self);
end;

function TdxTabSheet.GetPageIndex: Integer;
begin
  if FPageControl <> nil then
    Result := FPageControl.FPages.IndexOf(Self) else
    Result := -1;
end;

function TdxTabSheet.GetTabIndex: Integer;
var
  I: Integer;
begin
  Result := 0;
  if not FTabShowing then Dec(Result) else
    for I := 0 to PageIndex - 1 do
      if TdxTabSheet(FPageControl.FPages[I]).FTabShowing then
        Inc(Result);
end;

function TdxTabSheet.GetTabShowing: Boolean;
begin
  Result := FTabShowing or ((FPageControl <> nil) and (FPageControl.ActivePage = self));
end;

procedure TdxTabSheet.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params.WindowClass do
    style := style and not (CS_HREDRAW or CS_VREDRAW);
end;

procedure TdxTabSheet.ReadState(Reader: TReader);
begin
  inherited ReadState(Reader);
  if Reader.Parent is TdxCustomPageControl then
    PageControl := TdxCustomPageControl(Reader.Parent);
end;

procedure TdxTabSheet.SetImageIndex(Value: {$IFDEF DELPHI5}TImageIndex{$ELSE}Integer{$ENDIF});
begin
  if FImageIndex <> Value then
  begin
    FImageIndex := Value;
    if FTabShowing then FPageControl.UpdateTab(Self);
  end;
end;

procedure TdxTabSheet.SetPageControl(APageControl: TdxCustomPageControl);
begin
  if FPageControl <> APageControl then
  begin
    if FPageControl <> nil then FPageControl.RemovePage(Self);
    Parent := APageControl;
    if APageControl <> nil then
    begin
      APageControl.InsertPage(Self);
      if HandleAllocated then 
        SetBounds(0, 0, APageControl.ClientWidth, APageControl.ClientHeight);
      if (APageControl.ActivePage = nil) and not (csLoading in ComponentState) then
        APageControl.ActivePage := self;
    end;  
  end;
end;

procedure TdxTabSheet.SetPageIndex(Value: Integer);
begin
  if FPageControl <> nil then
  begin
    if Value > FPageControl.FPages.Count - 1 then
      raise EListError.CreateFmt(sdxPageIndexError, [Value, FPageControl.FPages.Count - 1]);
    FPageControl.FPages.Move(PageIndex, Value);
    FPageControl.Buttons.MoveButton(self);
  end;
end;

procedure TdxTabSheet.SetTabShowing(Value: Boolean);
begin
  if FTabShowing <> Value then
  begin
    FTabShowing := Value;
    FPageControl.ShowTab(self, FTabShowing);
  end;
end;

procedure TdxTabSheet.SetTabVisible(Value: Boolean);
begin
  if FTabVisible <> Value then
  begin
    FTabVisible := Value;
    UpdateTabShowing;
  end;
end;

procedure TdxTabSheet.UpdateTabShowing;
begin
  if GetParentForm(self) <> nil  then
    SetTabShowing((FPageControl <> nil) and FTabVisible)
  else SetTabShowing(False);
end;

procedure TdxTabSheet.CMTextChanged(var Message: TMessage);
begin
  if FTabShowing then FPageControl.UpdateTab(Self);
end;

procedure TdxTabSheet.CMShowingChanged(var Message: TMessage);
begin
  inherited;
  if Showing then
  begin
    try
      DoShow
    except
      Application.HandleException(Self);
    end;
  end else if not Showing then
  begin
    try
      DoHide;
    except
      Application.HandleException(Self);
    end;
  end;
end;

procedure TdxTabSheet.CMDialogChar(var Message: TCMDialogChar);
begin
  if Enabled and TabVisible and IsAccel(Message.CharCode, Caption) then
  begin
     PageControl.ActivePage := self;
     Message.Result := 1;
  end else inherited;
end;

procedure TdxTabSheet.SetHighlighted(Value: Boolean);
begin
  FHighlighted := Value;
  if not (csReading in ComponentState) then
    PageControl.RedrawButtons;
end;


{ TdxCustomPageControl }
constructor TdxCustomPageControl.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);

  FTabHeight := 0;
  FTabWidth := 0;
  Width := 200;
  Height := 200;
  ControlStyle := [csDoubleClicks, csOpaque];
  FPages := TList.Create;
  TabStop := True;
  fStyle := dxtsFlat;
  FImageChangeLink := TChangeLink.Create;
  FImageChangeLink.OnChange := ImageListChange;
  CreateButtons;
end;

destructor TdxCustomPageControl.Destroy;
var
  I: Integer;
begin
  for I := 0 to FPages.Count - 1 do
    TdxTabSheet(FPages[I]).FPageControl := nil;
  FImageChangeLink.Free;
  FPages.Free;
  FButtons.Free;
  inherited Destroy;
end;

procedure TdxCustomPageControl.Paint;
begin
  if ActivePage = nil then
    inherited Paint;
  Buttons.Paint;
end;

procedure TdxCustomPageControl.Notification(AComponent: TComponent; Operation: TOperation);
begin
  inherited Notification(AComponent, Operation);
  if (Operation = opRemove) and (AComponent = Images) then
    Images := nil;
end;

procedure TdxCustomPageControl.CreateHandle;
begin
  inherited CreateHandle;
  RedrawButtons;
end;

procedure TdxCustomPageControl.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  with Params do
  begin
    style := style or WS_CLIPCHILDREN;
    WindowClass.style := WindowClass.style and not (CS_HREDRAW or CS_VREDRAW) or
      CS_DBLCLKS;
  end;
end;

procedure TdxCustomPageControl.SetParent(Value: TWinControl);
var
  I: Integer;
begin
  inherited SetParent(Value);
  if (Value <> nil) then
    for I := 0 to PageCount - 1 do
      Pages[I].UpdateTabShowing;
end;

{$IFDEF DELPHI4}
procedure TdxCustomPageControl.AdjustClientRect(var Rect: TRect);
begin
  Buttons.CalcClientSize(Rect);
  inherited AdjustClientRect(Rect);
end;
{$ELSE}
function TdxCustomPageControl.GetClientRect: TRect;
begin
  Result := inherited GetClientRect;
  Buttons.CalcClientSize(Result);
end;
{$ENDIF}
{$IFDEF DELPHI5}
function TdxCustomPageControl.CanFocus: Boolean;
begin
  Result := not HideButtons and inherited CanFocus;
end;
{$ENDIF}

procedure TdxCustomPageControl.UpdateTabHighlights;
var
  I: Integer;
begin
  for I := 0 to PageCount - 1 do
    Pages[I].SetHighlighted(Pages[I].FHighlighted);
end;

procedure TdxCustomPageControl.UpdateFontOrientation;
const
  cEscapement: Array [TdxTabPosition] of Integer = (0, 0, 900, -900);
  cOutPrecision: Array [TdxTabPosition] of Integer = (OUT_DEFAULT_PRECIS, OUT_DEFAULT_PRECIS, OUT_TT_ONLY_PRECIS, OUT_TT_ONLY_PRECIS);
var
  LogFont: TLogFont;
begin
  GetObject(Canvas.Font.Handle, SizeOf(LogFont), @LogFont);
  with LogFont do
  begin
    if (cEscapement[TabPosition] <> lfEscapement) then
    begin
      lfEscapement := cEscapement[TabPosition];
      lfOrientation := lfEscapement;
      lfOutPrecision := cOutPrecision[TabPosition];
      Canvas.Font.Handle := CreateFontIndirect(LogFont);
    end;
  end;
end;

procedure TdxCustomPageControl.Loaded;
begin
  inherited Loaded;
  UpdateTabHighlights;
end;


function TdxCustomPageControl.CanShowTab(TabIndex: Integer): Boolean;
begin
  Result := TdxTabSheet(FPages[TabIndex]).Enabled;
end;

function TdxCustomPageControl.CanChange(NewPage: TdxTabSheet): Boolean;
begin
  Result := True;
  if not (csLoading in ComponentState) and Assigned(FOnChanging) then
    FOnChanging(self, NewPage, Result);
end;

procedure TdxCustomPageControl.Change;
var
  Form: TCustomForm;
begin
  if TabIndex >= 0 then
    UpdateActivePage;
  if (csDesigning in ComponentState) and not (csLoading in ComponentState) then
  begin
    Form := GetParentForm(Self);
    if (Form <> nil) and (Form.Designer <> nil) then Form.Designer.Modified;
  end;
end;

procedure TdxCustomPageControl.DoChange;
begin
  Change;
  if  (not (csLoading in ComponentState)) and Assigned(FOnChange) then
    FOnChange(self);
end;

procedure TdxCustomPageControl.ChangeActivePage(Page: TdxTabSheet);
var
  ParentForm: TCustomForm;
begin
  if FActivePage <> Page then
  begin
    ParentForm := GetParentForm(Self);
    if (ParentForm <> nil) and (FActivePage <> nil) and
      FActivePage.ContainsControl(ParentForm.ActiveControl) then
    begin
      ParentForm.ActiveControl := FActivePage;
      if ParentForm.ActiveControl <> FActivePage then
      begin
        TabIndex := FActivePage.TabIndex;
        Change;
        Exit;
      end;
    end;
    if Page <> nil then
    begin
      Page.BringToFront;
      Page.Visible := True;
      if (ParentForm <> nil) and (FActivePage <> nil) and
        (ParentForm.ActiveControl = FActivePage) then
        if Page.CanFocus then
          ParentForm.ActiveControl := Page
        else
          if Self.CanFocus then
            ParentForm.ActiveControl := Self;
    end;
    if FActivePage <> nil then FActivePage.Visible := False;
    FActivePage := Page;
    if (ParentForm <> nil) and (FActivePage <> nil) and
    (ParentForm.ActiveControl = FActivePage) then
       FActivePage.SelectFirst;
    DoChange;
  end;
end;

procedure TdxCustomPageControl.ImageListChange(Sender: TObject);
begin
  RedrawButtons;
end;

{$IFDEF DELPHI4}
procedure TdxCustomPageControl.DoAddDockClient(Client: TControl; const ARect: TRect);
begin
  if FNewDockSheet <> nil then Client.Parent := FNewDockSheet;
end;

procedure TdxCustomPageControl.DockOver(Source: TDragDockObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
var
  R: TRect;
begin
  GetWindowRect(Handle, R);
  Source.DockRect := R;
  DoDockOver(Source, X, Y, State, Accept);
end;

procedure TdxCustomPageControl.DoRemoveDockClient(Client: TControl);
begin
  if (FUndockingPage <> nil) and not (csDestroying in ComponentState) then
  begin
    SelectNextPage(True);
    FUndockingPage.Free;
    FUndockingPage := nil;
  end;
end;
{$ENDIF}

function TdxCustomPageControl.FindNextPage(CurPage: TdxTabSheet;
  GoForward, CheckTabVisible: Boolean): TdxTabSheet;
var
  I, StartIndex: Integer;
begin
  if FPages.Count <> 0 then
  begin
    StartIndex := FPages.IndexOf(CurPage);
    if StartIndex = -1 then
      if GoForward then StartIndex := FPages.Count - 1 else StartIndex := 0;
    I := StartIndex;
    repeat
      if GoForward then
      begin
        Inc(I);
        if I = FPages.Count then I := 0;
      end else
      begin
        if I = 0 then I := FPages.Count;
        Dec(I);
      end;
      Result := FPages[I];
      if not CheckTabVisible or Result.TabVisible then Exit;
    until I = StartIndex;
  end;
  Result := nil;
end;

procedure TdxCustomPageControl.GetChildren(Proc: TGetChildProc; Root: TComponent);
var
  I: Integer;
begin
  for I := 0 to FPages.Count - 1 do Proc(TComponent(FPages[I]));
end;

{$IFDEF DELPHI4}
function TdxCustomPageControl.GetPageFromDockClient(Client: TControl): TdxTabSheet;
var
  I: Integer;
begin
  Result := nil;
  for I := 0 to PageCount - 1 do
  begin
    if (Client.Parent = Pages[I]) and (Client.HostDockSite = Self) then
    begin
      Result := Pages[I];
      Exit;
    end;
  end;
end;
{$ENDIF}

function TdxCustomPageControl.GetPage(Index: Integer): TdxTabSheet;
begin
  Result := FPages[Index];
end;

function TdxCustomPageControl.GetPageCount: Integer;
begin
  Result := FPages.Count;
end;

function TdxCustomPageControl.GetTab(Index: Integer): TdxTabSheet;
var
  i: Integer;
begin
  Result := nil;
  if (Index >= 0) and (Index < TabCount) then
  begin
  for i := 0 to PageCount - 1 do
    if Pages[i].TabShowing and (Index = Pages[i].TabIndex) then
    begin
      Result := Pages[i];
      break;
    end;
  end;
end;

function TdxCustomPageControl.GetTabCount: Integer;
var
  i: Integer;
begin
  Result := 0;
  for i := 0 to PageCount - 1 do
    if Pages[i].TabShowing then
      Inc(Result);
end;

function TdxCustomPageControl.GetTabIndex: Integer;
var
  i: Integer;
begin
  Result := -1;
  if ActivePage <> nil then
  begin
    if ActivePage.TabShowing then
      Result := ActivePage.TabIndex
    else
    begin
      for i := ActivePage.PageIndex + 1 to PageCount - 1 do
        if Pages[i].TabShowing then
        begin
          Result := Pages[i].TabIndex;
          break;
        end;
      if Result = -1 then
      begin
        for i := ActivePage.PageIndex - 1 downto 0 do
          if Pages[i].TabShowing then
          begin
            Result := Pages[i].TabIndex;
            break;
          end;
      end;    
    end;
  end;
end;

{$IFDEF DELPHI4}
procedure TdxCustomPageControl.GetSiteInfo(Client: TControl; var InfluenceRect: TRect;
  MousePos: TPoint; var CanDock: Boolean);
begin
  CanDock := GetPageFromDockClient(Client) = nil;
  inherited GetSiteInfo(Client, InfluenceRect, MousePos, CanDock);
end;
{$ENDIF}

procedure TdxCustomPageControl.InsertPage(Page: TdxTabSheet);
begin
  FPages.Add(Page);
  Page.FPageControl := Self;
  Page.UpdateTabShowing;
end;

procedure TdxCustomPageControl.RemovePage(Page: TdxTabSheet);
var
  NextSheet: TdxTabSheet;
begin
  NextSheet := FindNextPage(Page, True, not (csDesigning in ComponentState));
  if NextSheet = Page then NextSheet := nil;
  Page.FPageControl := nil;
  FPages.Remove(Page);
  SetActivePage(NextSheet);
  Buttons.DeleteButton(Page, True);
end;

procedure TdxCustomPageControl.SelectNextPage(GoForward: Boolean; CheckTabVisible: Boolean{$IFDEF DELPHI4} = True{$ENDIF});
var
  Page: TdxTabSheet;
begin
  Page := FindNextPage(ActivePage, GoForward, CheckTabVisible);
  if (Page <> nil) and (Page <> ActivePage) and CanChange(Page) then
  begin
    SetActivePage(Page);
    Change;
  end;
end;

procedure TdxCustomPageControl.SetActivePage(Page: TdxTabSheet);
begin
  if ((Page <> nil) and (Page.PageControl <> Self))
  or (Page = ActivePage) or not CanChange(Page) then Exit;
  
  ChangeActivePage(Page);
  if Page = nil then
    TabIndex := -1
  else if Page = FActivePage then
    TabIndex := Page.TabIndex;
  if HandleAllocated then
    Buttons.MakeActiveButtonVisible;
  RedrawButtons;  
end;

procedure TdxCustomPageControl.SetChildOrder(Child: TComponent; Order: Integer);
begin
  TdxTabSheet(Child).PageIndex := Order;
end;

procedure TdxCustomPageControl.ShowControl(AControl: TControl);
begin
  if (AControl is TdxTabSheet) and (TdxTabSheet(AControl).PageControl = Self) then
    SetActivePage(TdxTabSheet(AControl));
  inherited ShowControl(AControl);
end;

procedure TdxCustomPageControl.ShowTab(Page: TdxTabSheet; AShow: Boolean);
begin
  HandleNeeded;
  if AShow then
    Buttons.CreateButton(Page, True)
  else
  begin
    Buttons.DeleteButton(Page, True);
    UpdateActivePage;
  end;
end;

procedure TdxCustomPageControl.UpdateTab(Page: TdxTabSheet);
begin
  RedrawButtons;
end;

procedure TdxCustomPageControl.UpdateActivePage;
begin
  if TabIndex >= 0 then
    SetActivePage(Tabs[TabIndex])
  else SetActivePage(nil);
end;

procedure TdxCustomPageControl.CMDesignHitTest(var Message: TCMDesignHitTest);
var
  Button: TdxPageControlButton;
begin
  Button := Buttons.GetButtonAtPt(SmallPointToPoint(Message.Pos));
  if (Button <> nil) and (Button.TabSheet <> ActivePage) then
    Message.Result := 1;
end;

procedure TdxCustomPageControl.CMDialogKey(var Message: TCMDialogKey);

  function IsObtainedKey: Boolean;
  begin
    Result := (Message.CharCode = VK_TAB) and (GetKeyState(VK_CONTROL) < 0);
  end;

  function IsNextPage: Boolean;
  begin
    Result := ((Message.CharCode = VK_TAB) and (GetKeyState(VK_CONTROL) < 0) and (GetKeyState(VK_SHIFT) >= 0))
  end;

begin
  if (Focused or Windows.IsChild(Handle, Windows.GetFocus)) and IsObtainedKey then
  begin
    SelectNextPage(IsNextPage, True);
    Message.Result := 1;
  end else
    inherited;
end;

{$IFDEF DELPHI4}
procedure TdxCustomPageControl.CMDockClient(var Message: TCMDockClient);
var
  IsVisible: Boolean;
  DockCtl: TControl;
begin
  Message.Result := 0;
  FNewDockSheet := TdxTabSheet.Create(Self);
  try
    try
      DockCtl := Message.DockSource.Control;
      if DockCtl is TCustomForm then
        FNewDockSheet.Caption := TCustomForm(DockCtl).Caption;
      FNewDockSheet.PageControl := Self;
      DockCtl.Dock(Self, Message.DockSource.DockRect);
    except
      FNewDockSheet.Free;
      raise;
    end;
    IsVisible := DockCtl.Visible;
    FNewDockSheet.TabVisible := IsVisible;
    if IsVisible then ActivePage := FNewDockSheet;
    DockCtl.Align := alClient;
  finally
    FNewDockSheet := nil;
  end;
end;

procedure TdxCustomPageControl.CMDockNotification(var Message: TCMDockNotification);
var
  I: Integer;
  S: string;
  Page: TdxTabSheet;
begin
  Page := GetPageFromDockClient(Message.Client);
  if Page <> nil then
    case Message.NotifyRec.ClientMsg of
      WM_SETTEXT:
        begin
          S := PChar(Message.NotifyRec.MsgLParam);
          { Search for first CR/LF and end string there }
          for I := 1 to Length(S) do
            if S[I] in [#13, #10] then
            begin
              SetLength(S, I - 1);
              Break;
            end;
          Page.Caption := S;
        end;
      CM_VISIBLECHANGED:
        Page.TabVisible := Boolean(Message.NotifyRec.MsgWParam);
    end;
  inherited;
end;

procedure TdxCustomPageControl.CMUnDockClient(var Message: TCMUnDockClient);
var
  Page: TdxTabSheet;
begin
  Message.Result := 0;
  Page := GetPageFromDockClient(Message.Client);
  if Page <> nil then
  begin
    FUndockingPage := Page;
    Message.Client.Align := alNone;
  end;
end;
{$ENDIF}

procedure TdxCustomPageControl.CMFontChanged(var Message: TMessage);
begin
  inherited;
  Canvas.Font.Assign(Font);
  RedrawButtons;
end;

procedure TdxCustomPageControl.CMSysColorChange(var Message: TMessage);
begin
  inherited;
  RedrawButtons;
end;

procedure TdxCustomPageControl.CMFocuseChanged(var Message: TMessage);
begin
  inherited;
  if Buttons.ActiveButton <> nil then
    InvalidateRect(Handle, @Buttons.ActiveButton.FRect, True);
end;

procedure TdxCustomPageControl.CMMouseLeave(var Message: TMessage);
begin
  inherited;
  Buttons.HotTrack(Point(-1, -1));
end;

procedure TdxCustomPageControl.WMGetDlgCode(var Message: TWMGetDlgCode);
begin
  inherited;
  Message.Result := Message.Result or DLGC_WANTARROWS;
end;

{$IFDEF DELPHI4}
function TdxCustomPageControl.GetDockClientFromMousePos(MousePos: TPoint): TControl;
var
  Page: TdxTabSheet;
  Button: TdxPageControlButton;
begin
  Result := nil;
  if DockSite then
  begin
    Button := Buttons.GetButtonAtPt({ScreenToClient(}MousePos{)});
    if Button <> nil then
    begin
      Page := Button.TabSheet;
      if (Page <> nil) and (Page.ControlCount > 0) then
      begin
        Result := Page.Controls[0];
        if Result.HostDockSite <> Self then Result := nil;
      end;
    end;
  end;
end;

procedure TdxCustomPageControl.WMLButtonDblClk(var Message: TWMLButtonDblClk);
var
  DockCtl: TControl;
begin
  inherited;
  Buttons.LeftButtonDown(Message.Pos.X, Message.Pos.Y);
  DockCtl := GetDockClientFromMousePos(SmallPointToPoint(Message.Pos));
  if DockCtl <> nil then DockCtl.ManualDock(nil, nil, alNone);
end;
{$ENDIF}

procedure TdxCustomPageControl.WMLButtonDown(var Message: TWMLButtonDown);
var
{$IFDEF DELPHI4}
  DockCtl: TControl;
{$ENDIF}
begin
  inherited;
  FOldMouseCapture := SetCapture(Handle);
  Buttons.LeftButtonDown(Message.Pos.X, Message.Pos.Y);
{$IFDEF DELPHI4}
  DockCtl := GetDockClientFromMousePos(SmallPointToPoint(Message.Pos));
  if (DockCtl <> nil) and (Style in [dxtsTabs, dxtsFlat])  then DockCtl.BeginDrag(False);
{$ENDIF}
end;

procedure TdxCustomPageControl.WMLButtonUp(var Message: TWMLButtonUp);
begin
  inherited;
  SetCapture(FOldMouseCapture);
  Buttons.LeftButtonUp(0, 0);
end;

procedure TdxCustomPageControl.WMKeyDown(var Message: TWMKeyDown);
begin
  inherited;
  case Message.CharCode of
    VK_LEFT:
    begin
      SelectNextPage(False, True);
      Message.CharCode := 0;
    end;
    VK_RIGHT:
    begin
      SelectNextPage(True, True);
      Message.CharCode := 0;
    end;
  end;
end;

function TdxCustomPageControl.GetActivePageIndex: Integer;
begin
  if ActivePage <> nil then
    Result := ActivePage.GetPageIndex
  else
    Result := -1;
end;

procedure TdxCustomPageControl.SetTabIndex(const Value: Integer);
var
  APage: TdxTabSheet;
begin
  APage := Tabs[Value];
  if (APage <> nil) and (APage <> ActivePage) then
    ActivePage := APage;
end;

procedure TdxCustomPageControl.SetTabPosition(const Value: TdxTabPosition);
begin
  if (FTabPosition <> Value) then
  begin
    FTabPosition := Value;
    if (FTabPosition in [dxtpLeft, dxtpRight]) then
      FMultiLine := True;
    RedrawButtons;
  end;
end;

procedure TdxCustomPageControl.SetStyle(const Value: TdxTabStyle);
begin
  if (FStyle <> Value) then
  begin
    FStyle := Value;
    CreateButtons;
  end;
end;

procedure TdxCustomPageControl.SetTabHeight(Value: Integer);
begin
  if(Value < 0) then
    Value := 0;
  if (FTabHeight <> Value) then
  begin
    FTabHeight := Value;
    RedrawButtons;
  end;
end;

procedure TdxCustomPageControl.SetTabWidth(Value: Integer);
begin
  if(Value < 0) then
    Value := 0;
  if (FTabWidth <> Value) then
  begin
    FTabWidth := Value;
    RedrawButtons;
  end;
end;

procedure TdxCustomPageControl.SetActivePageIndex(const Value: Integer);
begin
  if (Value > -1) and (Value < PageCount) then
    ActivePage := Pages[Value]
  else
    ActivePage := nil;
end;

procedure TdxCustomPageControl.SetImages(Value: {$IFNDEF DELPHI4}TImageList{$ELSE}TCustomImageList{$ENDIF});
begin
  if (Images = Value) then exit;
  if Images <> nil then
  begin
    Images.UnRegisterChanges(FImageChangeLink);
    {$IFDEF DELPHI5}
    Images.RemoveFreeNotification(self);
    {$ENDIF}
  end;
  FImages := Value;
  if Images <> nil then
  begin
    Images.RegisterChanges(FImageChangeLink);
    Images.FreeNotification(Self);
  end;
  RedrawButtons;
end;

procedure TdxCustomPageControl.SetHideButtons(const Value: Boolean);
begin
  if (FHideButtons <> Value) then
  begin
    FHideButtons := Value;
    RedrawButtons;
  end;
end;

procedure TdxCustomPageControl.SetMultiLine(Value: Boolean);
begin
  if not Value and (TabPosition in [dxtpLeft, dxtpRight]) then
    Value := True;
  if (FMultiLine <> Value) then
  begin
    FMultiLine := Value;
    RedrawButtons;
  end;
end;

procedure TdxCustomPageControl.SetOwnerDraw(const Value: Boolean);
begin
  if (FOwnerDraw <> Value) then
  begin
    FOwnerDraw := Value;
    RedrawButtons;
  end;
end;


procedure TdxCustomPageControl.SetRaggedRight(const Value: Boolean);
begin
  if (FRaggedRight <> Value) then
  begin
    FRaggedRight := Value;
    if MultiLine then
      RedrawButtons;
  end;
end;

procedure TdxCustomPageControl.SetScrollOpposite(const Value: Boolean);
begin
  if (FScrollOpposite <> Value) then
  begin
    FScrollOpposite := Value;
    if MultiLine then
      RedrawButtons;
  end;
end;

procedure TdxCustomPageControl.WMSetCursor(var Message: TWMSetCursor);
var
  p: TPoint;
begin
  inherited;
  GetCursorPos(p);
  p := ScreenToClient(p);
  if PtInRect(FButtons.GetButtonsRect, p) then
    Buttons.HotTrack(p);
end;

procedure TdxCustomPageControl.WMSize(var Message: TWMSize);
begin
  RedrawButtons;
  inherited;
end;

procedure TdxCustomPageControl.WMEraseBkgnd(var Message: TWMEraseBkgnd);
begin
  if ActivePage = nil then
    inherited
  else Message.Result := 0;
end;


{TdxPageControlButton}
constructor TdxPageControlButton.Create(AButtons: TdxPageControlButtons; ATabSheet: TdxTabSheet);
begin
  inherited Create;
  FButtons := AButtons;
  FTabSheet := ATabSheet;
end;

function TdxPageControlButton.DoDrawTab(const ARect: TRect): Boolean;
begin
  Result :=  Buttons.IsCustomDraw;
  if Result then
    Buttons.PageControl.FonTabDraw(Buttons.PageControl, TabSheet.TabIndex, ARect, IsActive);
end;

procedure TdxPageControlButton.Paint;
begin
  InternalPaint;
end;

function TdxPageControlButton.IsInRect(const Point: TPoint): Boolean;
begin
  Result := PtInRect(FRect, Point);
end;

function TdxPageControlButton.Caption: String;
begin
  Result := TabSheet.Caption;
  if Result = '' then
    Result := ' ';
end;

function TdxPageControlButton.IsActive: Boolean;
begin
  Result := TabSheet = Buttons.FPageControl.ActivePage;
end;

function TdxPageControlButton.IsFocused: Boolean;
var
  ParentForm: TCustomForm;
begin
  Result := IsActive;
  if Result then
  begin
    ParentForm := GetParentForm(Buttons.FPageControl);
    Result := ParentForm.ActiveControl = Buttons.FPageControl;
  end;
end;

function TdxPageControlButton.IsHotTrack: Boolean;
begin
  Result := (self = Buttons.HotTrackButton) and not Buttons.NeedHighLight(self);
end;

function TdxPageControlButton.Index: Integer;
begin
  Result := FButtons.FList.IndexOf(self);
end;

function TdxPageControlButton.IsVisible: Boolean;
begin
  Result := (FRect.Right - FRect.Left) > 0;
end;

procedure TdxPageControlButton.Empty;
begin
  SetRect(FRect, 0, 0, 0, 0);
  FWidth := 0;
  FIndex := 1;
end;

function TdxPageControlButton.GetRectHeight: Integer;
begin
  if Buttons.TabPosition in [dxtpTop, dxtpBottom] then
    Result := Rect.Bottom - Rect.Top
  else Result := Rect.Right - Rect.Left;
end;

function TdxPageControlButton.GetRectWidth: Integer;
begin
  if Buttons.TabPosition in [dxtpLeft, dxtpRight] then
    Result := Rect.Bottom - Rect.Top
  else Result := Rect.Right - Rect.Left;
end;

function TdxPageControlButton.GetBorderWidth: Integer;
begin
  Result := Buttons.BorderWidth;
end;

function TdxPageControlButton.GetCaptionRect: TRect;
begin
  dxOffSetRect(Result, Rect, Buttons.TabPosition, ImageWidth, 0, 0, 0);
end;

function TdxPageControlButton.GetImageRect: TRect;
begin
  dxOffSetRect(Result, Rect, Buttons.TabPosition, 0, 0, - GetRectWidth + ImageWidth, 0)
end;

function TdxPageControlButton.GetImageIndex: Integer;
begin
  Result := FTabSheet.ImageIndex;
  if Assigned(Buttons.PageControl.OnGetImageIndex) then
    Buttons.PageControl.OnGetImageIndex(Buttons.PageControl, fTabSheet.PageIndex, Result);
end;

function TdxPageControlButton.CalcButtonTextWidth: Integer;
var
  Size: TSize;
begin
  GetTextExtentPoint32(FButtons.FPageControl.Canvas.Handle, PChar(Caption), Length(Caption), Size);
  Result := Size.cx;
end;

procedure TdxPageControlButton.CalcButtonWidth;
begin
  if Buttons.TabWidth = 0 then
  begin
    FWidth := CalcButtonTextWidth + 10;
    if (Buttons.Images <> nil) then
      Inc(FWidth, ImageWidth);
  end else
  begin
    FWidth := Buttons.TabWidth;
    if (Buttons.Images <> nil) and (FWidth < ImageWidth) then
      FWidth := ImageWidth;
  end;
end;

procedure TdxPageControlButton.DrawCaption(ARect: TRect);
var
  CaptionRect: TRect;
  Format: Integer;
  Size: TSize;
  ClipRgn: HRGN;
  OldTextColor: Integer;

  procedure SetClipRegion;
  begin
    ClipRgn := CreateRectRgn(0, 0, 0, 0);
    GetClipRgn(Canvas.Handle, ClipRgn);
    with ARect do
      IntersectClipRect(Canvas.Handle, Left, Top, Right, Bottom);
  end;

  procedure RestoreClipRegion;
  var
    tempRect: TRect;
  begin
    if ClipRgn <> 0 then
    begin
      tempRect := ARect;
      GetRgnBox(ClipRgn, tempRect);
      if IsRectEmpty(tempRect) then
        SelectClipRgn(Canvas.Handle, 0)
      else
        SelectClipRgn(Canvas.Handle, ClipRgn);
      DeleteObject(ClipRgn);
    end;
  end;

  procedure InternalSetTextColor;
  begin
    if Buttons.NeedHighLight(self) then
      OldTextColor := SetTextColor(Canvas.Handle, GetSysColor(COLOR_HIGHLIGHTTEXT))
    else
    begin
      if IsWin98Or2000 then
        OldTextColor := SetTextColor(Canvas.Handle, GetSysColor({$IFDEF DELPHI5}COLOR_HOTLIGHT{$ELSE}26{$ENDIF}))
      else OldTextColor := SetTextColor(Canvas.Handle, Graphics.ColorToRGB(clBlue));
    end;
  end;

begin
  CaptionRect := ARect;
  SetBkMode(Canvas.Handle, TRANSPARENT);
  Format := DT_SINGLELINE;
  ClipRgn := 0;
  if (Buttons.TabPosition in [dxtpTop, dxtpBottom]) then
   Format := Format or DT_END_ELLIPSIS;
  case Buttons.TabPosition of
    dxtpTop, dxtpBottom: Format := Format or DT_CENTER or DT_VCENTER;
    dxtpLeft, dxtpRight:
      begin
        Format := Format or DT_NOCLIP;
        SetClipRegion;
        GetTextExtentPoint32(Canvas.Handle, PChar(Caption), Length(Caption), Size);
        if Buttons.TabPosition = dxtpLeft then
          OffsetRect(CaptionRect, (CaptionRect.Right - CaptionRect.Left - Size.cy) div 2,
                (CaptionRect.Bottom - CaptionRect.Top + Size.cx) div 2)
        else
          OffsetRect(CaptionRect, (CaptionRect.Right - CaptionRect.Left + Size.cy) div 2,
                (CaptionRect.Bottom - CaptionRect.Top - Size.cx) div 2);
      end;
  end;

  if IsHotTrack or Buttons.NeedHighLight(self) then
    InternalSetTextColor
  else OldTextColor := 0;
  DrawText(Canvas.Handle, pChar(Caption), Length(Caption), CaptionRect, Format);
  if IsHotTrack or Buttons.NeedHighLight(self) then
    SetTextColor(Canvas.Handle, OldTextColor);

  RestoreClipRegion;
end;


procedure TdxPageControlButton.DrawImage(ARect: TRect);

  function GetRGBColor(Value: TColor): DWORD;
  begin
    Result := ColorToRGB(Value);
    case Result of
      clNone: Result := CLR_NONE;
      clDefault: Result := CLR_DEFAULT;
    end;
  end;

const
  DrawingStyles: array[TDrawingStyle] of Longint = (ILD_FOCUS,
    ILD_SELECTED, ILD_NORMAL, ILD_TRANSPARENT);
  Images: array[TImageType] of Longint = (0, ILD_MASK);
var
  X, Y: Integer;
  AImageIndex: Integer;
begin
  if (Buttons.Images = nil) then exit;
  AImageIndex := ImageIndex;
  if (AImageIndex < 0) or (AImageIndex >= Buttons.Images.Count) then
    exit;

  with Buttons.Images do
    if HandleAllocated then
    begin
      X := ARect.Left + (ARect.Right - ARect.Left - Width) div 2;
      Y := ARect.Top + (ARect.Bottom - ARect.Top - Height) div 2;
      ImageList_DrawEx(Handle, AImageIndex, Canvas.Handle, X, Y, 0, 0,
        GetRGBColor(BkColor), GetRGBColor(BlendColor),
        DrawingStyles[DrawingStyle] or Images[ImageType]);
    end;
end;

function TdxPageControlButton.ImageWidth: Integer;
begin
  if (Buttons.Images <> nil) then
    Result := Buttons.Images.Width + 2 * BorderWidth
  else Result := 0;
end;

function TdxPageControlButton.GetCanvas: TCanvas;
begin
  Result := Buttons.Canvas;
end;


{TdxPageControlButtons}

constructor TdxPageControlButtons.Create(APageControl: TdxCustomPageControl);
begin
  inherited Create;
  FList := TList.Create;
  FPageControl := APageControl;
  FLeftButton := 0;
  SetRect(FLeftNavigatorRect, 0, 0, 0, 0);
  SetRect(FRightNavigatorRect, 0, 0, 0, 0);
  FNavigatorState := bnsNone;
  FScrollTimerID := -1;
end;

destructor TdxPageControlButtons.Destroy;
begin
  ClearButtons;
  FList.Free;
  inherited Destroy;
end;


procedure TdxPageControlButtons.CreateButtons;
var
  i: Integer;
begin
  ClearButtons;
  for i := 0 to FPageControl.TabCount - 1 do
     CreateButton(FPageControl.Tabs[i], False);
  FPageControl.RedrawButtons;
end;

function TdxPageControlButtons.GetButton(Index: Integer): TdxPageControlButton;
begin
  Result := TdxPageControlButton(FList[Index]);
end;

function TdxPageControlButtons.GetCount: Integer;
begin
  Result := FList.Count;
end;

function TdxPageControlButtons.GetImages: {$IFNDEF DELPHI4}TImageList{$ELSE}TCustomImageList{$ENDIF};
begin
  Result := FPageControl.Images;
end;

function TdxPageControlButtons.GetIsCustomDraw: Boolean;
begin
  Result := PageControl.OwnerDraw  and Assigned(PageControl.onDrawTab);
end;

function TdxPageControlButtons.GetTabWidth: Integer;
begin
  Result := FPageControl.TabWidth;
end;

function TdxPageControlButtons.GetBorderWidth: Integer;
begin
  Result := StandardBorderWidth;
end;

function TdxPageControlButtons.GetTextHeight: Integer;
var
  Size: TSize;
begin
  GetTextExtentPoint32(FPageControl.Canvas.Handle, 'Wt', 2, Size);
  Result := Size.cy;
end;

function TdxPageControlButtons.GetImageHeight: Integer;
begin
  if Images <> nil then
    Result := Images.Height + 2 * BorderWidth
  else Result := 0;
end;

function TdxPageControlButtons.GetButtonHeight: Integer;
begin
  if PageControl.TabHeight = 0 then
  begin
//    Result := 22;//TODO
    Result := GetTextHeight + 3 * BorderWidth;//Round(GetTextHeight * 1.25);
    if Result < GetImageHeight then
      Result := GetImageHeight;
  end else Result := PageControl.TabHeight;
end;

function TdxPageControlButtons.GetButtonLines: Integer;
begin
  if not FPageControl.MultiLine then
    Result := 1
  else Result := FButtonLines;
end;

function TdxPageControlButtons.GetButtonsHeight: Integer;
begin
  if (Count > 0) and not PageControl.HideButtons then
    Result := GetButtonLines * (GetButtonHeight + BorderWidth)
  else Result := 0;
end;

function TdxPageControlButtons.GetButtonOffSet: Integer;
begin
  Result := BorderWidth;
end;

function TdxPageControlButtons.GetButtonsWidth: Integer;
begin
  Result := GetControlWidth;
  Dec(Result, 2 * GetButtonOffSet);
end;

function TdxPageControlButtons.GetControlWidth: Integer;
begin
  if (TabPosition in [dxtpTop, dxtpBottom]) then
    Result := FPageControl.Width
  else Result := FPageControl.Height;
end;

function TdxPageControlButtons.GetControlHeight: Integer;
begin
  if (TabPosition in [dxtpTop, dxtpBottom]) then
    Result := FPageControl.Height
  else Result := FPageControl.Width;
end;

procedure TdxPageControlButtons.GetBorderOffset(var Left, Top, Right, Bottom: Integer);
begin
  Left := 0;
  Top := 0;
  Right := 0;
  Bottom := 0;
end;

function TdxPageControlButtons.GetCanvas: TCanvas;
begin
  Result := PageControl.Canvas;
end;

function TdxPageControlButtons.GetButtonByPage(ATabSheet: TdxTabSheet): TdxPageControlButton;
var
  i: Integer;
begin
  Result := nil;
  for i := 0 to Count - 1 do
    if (Buttons[i].TabSheet = ATabSheet) then
    begin
      Result := Buttons[i];
      break;
    end;
end;

function TdxPageControlButtons.GetButtonsRect: TRect;
begin
  SetRect(Result, 0, 0, FPageControl.Width, FPageControl.Height);
  dxOffSetRect(Result, Result, TabPosition, 0, 0, 0, GetButtonsHeight - GetControlHeight);
end;

function TdxPageControlButtons.GetButtonAtPt(Pt: TPoint): TdxPageControlButton;
var
  i: Integer;
begin
  Result := nil;
  for i := 0 to Count - 1 do
    if (Buttons[i].IsInRect(Pt)) then
    begin
      Result := Buttons[i];
      break;
    end;
end;

{TdxDrawTabExRecord}
constructor TdxDrawTabExRecord.Create(ATabSheet: TdxTabSheet);
begin
  FTabSheet := ATabSheet;
  FFont := TFont.Create;
end;

destructor TdxDrawTabExRecord.Destroy;
begin
  FFont.Free;
  inherited Destroy;
end;


procedure TdxPageControlButtons.BeforeDrawTabEx(Button: TdxPageControlButton; AFont: TFont);
var
  E: TdxDrawTabExRecord;
begin
  if Assigned(PageControl.OnDrawTabEx) then
  begin
    E := TdxDrawTabExRecord.Create(Button.TabSheet);
    try
      E.Font.Assign(AFont);
      PageControl.OnDrawTabEx(PageControl, E);
      PageControl.Canvas.Font.Assign(E.Font);
      PageControl.UpdateFontOrientation;
    finally
      E.Free;
    end;
  end;
end;

procedure TdxPageControlButtons.InternalPaintButton(Button: TdxPageControlButton; AFont: TFont);
begin
  if AFont <> nil then
    BeforeDrawTabEx(Button, AFont);
  Button.Paint;
  if (AFont <> nil) then
    PageControl.Canvas.Font.Assign(AFont);
end;

procedure TdxPageControlButtons.PaintButtons;
var
  i: Integer;
  SavedFont: TFont;
begin
  if Assigned(PageControl.OnDrawTabEx) then
  begin
    SavedFont := TFont.Create;
    SavedFont.Assign(PageControl.Canvas.Font);
  end else SavedFont := nil;
  for i := 0 to Count - 1 do
    if not Buttons[i].IsActive and Buttons[i].IsVisible then
      InternalPaintButton(Buttons[i], SavedFont);
  if (ActiveButton <> nil) and ActiveButton.IsVisible then
    InternalPaintButton(ActiveButton, SavedFont);
end;

procedure TdxPageControlButtons.FillFreeSpace;
var
  brush: HBRUSH;
  ARect: TRect;
begin
  ARect := GetButtonsRect;
  brush := Windows.CreateSolidBrush(ColorToRGB(FPageControl.Color));
  Windows.FillRect(Canvas.Handle, ARect, brush);
  DeleteObject(brush);
end;

procedure TdxPageControlButtons.DrawFrame;
begin
end;

procedure TdxPageControlButtons.RepaintButton(AButton: TdxPageControlButton);
var
  ARect: TRect;
begin
  if NeedReadrawFullHotTrackButton then
    ARect := AButton.Rect
  else ARect := AButton.CaptionRect;

  InvalidateRect(PageControl.Handle, @ARect, True)
end;

procedure TdxPageControlButtons.RepaintNavigators;
var
  ARect: TRect;
begin
  ARect := FLeftNavigatorRect;
  ARect.Right := FRightNavigatorRect.Right;
  InvalidateRect(PageControl.Handle, @ARect, True);
end;

function TdxPageControlButtons.CanFocus: Boolean;
begin
  Result := True;
end;

function TdxPageControlButtons.NeedButtonsReplace: Boolean;
begin
  Result := True;
end;

function TdxPageControlButtons.NeedReadrawFullHotTrackButton: Boolean;
begin
  Result := False;
end;

function TdxPageControlButtons.NeedNavigatorButtonHotTrack: Boolean;
begin
  Result := False;
end;

function TdxPageControlButtons.NeedHighLight(AButton: TdxPageControlButton) : Boolean;
begin
  Result := False;
end;

procedure TdxPageControlButtons.CalcNavigatorRect;
var
  ARect: TRect;
begin
  if not IsButtonNavigatorVisible then
  begin
    SetRect(FLeftNavigatorRect, 0, 0, 0, 0);
    SetRect(FRightNavigatorRect, 0, 0, 0, 0);
  end else
  begin
    ARect := GetButtonsRect;
    dxOffSetRect(ARect, ARect, TabPosition, 0, GetButtonHeight - GetTextHeight - 2 *BorderWidth, 0, -BorderWidth);
    SetRect(FRightNavigatorRect, ARect.Right - (ARect.Bottom - ARect.Top),
        ARect.Top, ARect.Right, ARect.Bottom);
    SetRect(FLeftNavigatorRect, FRightNavigatorRect.Left - 1 - (ARect.Bottom - ARect.Top),
        ARect.Top, FRightNavigatorRect.Left, ARect.Bottom);
  end;
end;

procedure TdxPageControlButtons.CreateButton(ATabSheet: TdxTabSheet; AInvalidate: Boolean);
var
  AButton: TdxPageControlButton;
  AIndex: Integer;
begin
  AButton := GetPageControlButtonClass.Create(self, ATabSheet);
  AIndex := ATabSheet.TabIndex;
  if AIndex >= FList.Count then
    FList.Add(AButton)
  else FList.Insert(AIndex, AButton);
  if AInvalidate then
    FPageControl.RedrawButtons;
end;

procedure TdxPageControlButtons.DeleteButton(ATabSheet: TdxTabSheet; AInvalidate: Boolean);
var
  AButton: TdxPageControlButton;
begin
  AButton := GetButtonByPage(ATabSheet);
  if AButton <> nil then
  begin
    FList.Remove(AButton);
    AButton.Free;
  end;
  if AInvalidate then
    FPageControl.RedrawButtons;
end;

procedure TdxPageControlButtons.MoveButton(ATabSheet: TdxTabSheet);
begin
  FList.Move(GetButtonByPage(ATabSheet).Index, ATabSheet.TabIndex);
  FPageControl.RedrawButtons;
end;

procedure TdxPageControlButtons.ClearButtons;
var
  i: Integer;
begin
  for i := 0 to Count - 1 do
    Buttons[i].Free;
  FList.Clear;
end;

procedure TdxPageControlButtons.LeftButtonDown(X, Y: Integer);
var
  Pt: TPoint;
  AButton: TdxPageControlButton;
begin
  if not (csDesigning in PageControl.ComponentState) then
  begin
    if IsLeftNavigatorButton(X, Y) then
    begin
      NavigatorState := bnsLeftDown;
      LeftButton := LeftButton - 1;
      exit;
    end;
    if IsRightNavigatorButton(X, Y) then
    begin
      NavigatorState := bnsRIghtDown;
      LeftButton := LeftButton + 1;
      exit;
    end;
  end;  
  Pt := Point(X, Y);
  AButton := self.GetButtonAtPt(pt);
  if (AButton <> nil) then
  begin
    if (AButton.TabSheet <> FPageControl.ActivePage) then
      FPageControl.ActivePage := AButton.TabSheet
    else begin
      if CanFocus and not FPageControl.Focused then
        FPageControl.SetFocus;
    end;
  end;
end;

procedure TdxPageControlButtons.LeftButtonUp(X, Y: Integer);
begin
  NavigatorState := bnsNone;
end;

procedure TdxPageControlButtons.MouseMove(X, Y: Integer);
begin
  if (NavigatorState in [bnsLeftHolding, bnsLeftDown, bnsRightHolding, bnsRightDown]) then
  begin
    if IsLeftNavigatorButton(X, Y) then
    begin
      if (NavigatorState = bnsLeftHolding) then
        NavigatorState := bnsLeftDown;
    end else
    begin
      if (NavigatorState = bnsLeftDown) then
        NavigatorState := bnsLeftHolding;
    end;
      
    if IsRightNavigatorButton(X, Y) then
    begin
      if(NavigatorState = bnsRightHolding) then
        NavigatorState := bnsRightDown;
    end else
    begin
      if (NavigatorState = bnsRightDown) then
        NavigatorState := bnsRightHolding;
    end;
  end;
end;

procedure TdxPageControlButtons.HotTrack(p: TPoint);
begin
  if PageControl.HotTrack and (NavigatorState = bnsNone) then
    HotTrackButton := GetButtonAtPt(p);

  if NeedNavigatorButtonHotTrack and (NavigatorState in [bnsNone, bnsLeftHotTrack, bnsRightHotTrack]) then
  begin
    if IsLeftNavigatorButton(p.X, p.Y) then
      NavigatorState := bnsLeftHotTrack
    else
      if IsRightNavigatorButton(p.X, p.Y) then
        NavigatorState := bnsRightHotTrack
      else NavigatorState := bnsNone;
  end;
end;

procedure TdxPageControlButtons.EmptyButtons;
var
  i: Integer;
begin
  for i := 0 to Count - 1 do
    Buttons[i].Empty;
end;

function TdxPageControlButtons.IsButtonNavigatorVisible: Boolean;
begin
  Result := (Count > 0) and not FPageControl.MultiLine
    and ((not Buttons[0].IsVisible) or (not Buttons[Count - 1].IsVisible)
                or (Buttons[Count - 1].Rect.Right > FPageControl.Width));
end;

function TdxPageControlButtons.IsLeftNavigatorButton(X, Y: Integer): Boolean;
begin
  Result := PtInRect(FLeftNavigatorRect, Point(X, Y));
end;

function TdxPageControlButtons.IsRightNavigatorButton(X, Y: Integer): Boolean;
begin
  Result := PtInRect(FRightNavigatorRect, Point(X, Y));
end;


procedure TdxPageControlButtons.CalcViewInfo;
begin
  FPageControl.Canvas.Font.Assign(FPageControl.Font);
  FPageControl.UpdateFontOrientation;
  CalcButtonsWidth;
  CalcButtonLines;
  CalcNavigatorRect;
  CalcLeftButton;
  CalcNavigatorRect;
  CalcButtonsRects;
end;

procedure TdxPageControlButtons.MakeActiveButtonVisible;
var
  i: Integer;
  dX: Integer;
  ActiveIndex: Integer;
begin
  if FPageControl.MultiLine then exit;

  if (ActiveButton <> nil) then
    ActiveIndex := ActiveButton.Index
  else ActiveIndex := -1;
  if FLeftButton >= ActiveIndex then
  begin
    if ActiveIndex > -1 then
      FLeftButton := ActiveIndex;
  end else
  begin
    dX := 0;
    for i := 0 to Count - 1 do
    begin
      Buttons[i].CalcButtonWidth;
      Inc(dX, Buttons[i].FWidth);
      if (dX > GetButtonsWidth) then
      begin
        dX := -1;
        break;
      end;
    end;

    if (dX < 0) then
    begin
      dX := - 2 * GetButtonsHeight;
    end else dX := 0;

    Inc(dX, GetButtonsWidth);
    i := ActiveIndex;
    while (dX > 0) and (i >= fLeftButton) do
    begin
      Buttons[i].CalcButtonWidth;
      Dec(dX, Buttons[i].FWidth);
      if (dX > 0) then
        Dec(i);
    end;
    if (i >= fLeftButton) then
    begin
      fLeftButton := i;
      if (dX < 0) then
        Inc(fLeftButton);
    end;
    if (fLeftButton > ActiveIndex) then
      fLeftButton := ActiveIndex;
  end;
end;

procedure TdxPageControlButtons.CalcButtonsWidth;
var
  i: Integer;
begin
  EmptyButtons;
  for i := 0 to Count - 1 do
    Buttons[i].CalcButtonWidth;
end;

procedure TdxPageControlButtons.CalcButtonsRects;

  function GetLeft(AButton: TdxPageControlButton): Integer;
  var
    i: Integer;
  begin
    Result := 0;
    for i := FLeftButton to AButton.Index - 1 do
      if (Buttons[i].FIndex = AButton.FIndex) then
        Inc(Result, Buttons[i].FWidth);
  end;

var
  i: Integer;
  ALeft, ATop: Integer;
  AButtonHeight: Integer;
begin
  if Count = 0 then exit;
  AButtonHeight := GetButtonHeight + BorderWidth;
  for i := FLeftButton to Count - 1 do
  begin
    ATop := (Buttons[i].FIndex - 1) * AButtonHeight;
    ALeft := GetLeft(Buttons[i]) + GetButtonOffSet;
    dxOffSetRect(Buttons[i].FRect, GetButtonsRect, TabPosition, ALeft, ATop,
        ALeft + Buttons[i].FWidth - GetButtonsWidth - 2 * GetButtonOffSet, ATop + AButtonHeight - GetButtonsHeight);
    if not FPageControl.MultiLine and (ALeft + Buttons[i].FWidth >= GetButtonsWidth) then
      break;
  end;
end;

procedure TdxPageControlButtons.CalcButtonLines;
var
  i: Integer;
  AList: TList;
  ChangedLines: Integer;
begin
  FButtonLines := 1;
  if not FPageControl.MultiLine then exit;
  FLeftButton := 0;
  AList := TList.Create;
  for i := 0 to Count - 1 do
    MultiLineAddRecord(AList, Buttons[i].FWidth);
  FButtonLines := MutiLineCorrectRecords(AList, GetButtonsWidth, FPageControl.RaggedRight);
  for i := 0 to Count - 1 do
  begin
    Buttons[i].FWidth := TdxMultiLineRecord(AList[i]).Width;
    Buttons[i].FIndex := TdxMultiLineRecord(AList[i]).Line;
  end;
  MultiLineClearRecords(AList);
  if (GetActiveButton <> nil) and NeedButtonsReplace then
  begin
    ChangedLines := FButtonLines - GetActiveButton.FIndex;
    if ChangedLines > 0 then
    begin
      for i := 0 to Count - 1 do
        Buttons[i].FIndex := (Buttons[i].FIndex - 1 + ChangedLines) mod FButtonLines + 1;
    end;
  end;
  AList.Free;
end;

procedure TdxPageControlButtons.CalcLeftButton;
var
  ASpaceWidth, ANavigatorWidth: Integer;
  i: Integer;
begin
  if (FPageControl.MultiLine) or (LeftButton = 0) then exit;
  ANavigatorWidth := FRightNavigatorRect.Right - FLeftNavigatorRect.Left; //TODO check vert.
  ASpaceWidth := GetButtonsWidth - ANavigatorWidth;
  for i := LeftButton to Count - 1 do
    Dec(ASpaceWidth, Buttons[i].FWidth);
  while (LeftButton > 0) and (ASpaceWidth > 0) do
  begin
    if LeftButton = 1 then
      Inc(ASpaceWidth,  ANavigatorWidth);
    Dec(ASpaceWidth, Buttons[LeftButton - 1].FWidth);
    if (ASpaceWidth > 0) then
      Dec(FLeftButton);
  end;
end;

procedure TdxPageControlButtons.CalcClientSize(var ClientRect: TRect);
var
  Rect: TRect;
begin
  GetBorderOffset(Rect.Left, Rect.Top, Rect.Right, Rect.Bottom);
  with  ClientRect do
  begin
    Inc(Left, Rect.Left);
    Inc(Top, Rect.Top);
    Dec(Right, Rect.Right);
    Dec(Bottom, Rect.Bottom);
  end;
  dxOffSetRect(ClientRect, ClientRect, TabPosition, 0, GetButtonsHeight, 0, 0);
end;

function TdxPageControlButtons.ScreenToClient(p: TPoint): TPoint;
begin
  Result := FPageControl.ScreenToClient(p);
  case TabPosition of
    dxtpTop: Inc(Result.Y, GetButtonsHeight);
    dxtpLeft: Inc(Result.X, GetButtonsHeight);
  end;
end;


procedure TdxPageControlButtons.Paint;
begin
  if PageControl.HideButtons or (Count = 0) then
    DrawFrame
  else InternalPaint;
end;

procedure TdxPageControlButtons.InternalPaint;
begin
  FillFreeSpace;
  DrawFrame;
  PaintNavigators;
  PaintButtons;
end;

function TdxPageControlButtons.GetTabPosition: TdxTabPosition;
begin
  Result := PageControl.TabPosition;
end;

function TdxPageControlButtons.GetActiveButton: TdxPageControlButton;
begin
  Result := nil;
  if PageControl.ActivePage <> nil then
    Result := GetButtonByPage(PageControl.ActivePage);
end;

procedure TdxPageControlButtons.SetHotTrackButton(Value: TdxPageControlButton);
var
  OldHotTrackButton: TdxPageControlButton;
begin
  if(FHotTrackButton <> Value) then
  begin
    OldHotTrackButton := FHotTrackButton;
    FHotTrackButton := Value;
    if (FHotTrackButton <> nil) and not FHotTrackButton.IsHotTrack then
      FHotTrackButton := nil;
    if (OldHotTrackButton <> nil) then
      RepaintButton(OldHotTrackButton);
    if (FHotTrackButton <> nil) then
      RepaintButton(FHotTrackButton);
  end;
end;

procedure TdxPageControlButtons.SetLeftButton(Value: Integer);
begin
  if (Value < 0) then
    Value := 0;
  if (Value > Count - 1) then
    Value := Count - 1;
  if (Value > FLeftButton) and Buttons[Count - 1].IsVisible
    and (Buttons[Count - 1].FRect.Right < FLeftNavigatorRect.Left) then
      exit;

  if (FLeftButton <> Value) then
  begin
    FLeftButton := Value;
    FPageControl.RedrawButtons;
  end;
end;

const
  ScrollButtonsTimerDelay = 200;

procedure ScrollButtonsTimerProc(Wnd: HWnd; Msg, TimerID, SysTime: Longint); stdcall;
var
  PageControl: TdxCustomPageControl;
  Buttons: TdxPageControlButtons;
  p: TPoint;
begin
  PageControl := TdxCustomPageControl(FindControl(wnd));
  if PageControl = nil then Exit;

  Buttons := PageControl.Buttons;
  if Buttons.NavigatorState <> bnsNone then
  begin
    GetCursorPos(p);
    p := PageControl.ScreenToClient(p);
    Buttons.MouseMove(p.X, p.Y);
    if Buttons.NavigatorState = bnsLeftDown then
      Buttons.LeftButton := Buttons.LeftButton - 1;
    if Buttons.NavigatorState = bnsRightDown then
      Buttons.LeftButton := Buttons.LeftButton + 1;
  end else begin //!!! Kill itself !!!
    KillTimer(PageControl.Handle, Buttons.FScrollTimerID);
    Buttons.FScrollTimerID := -1;
  end;
end;

procedure TdxPageControlButtons.SetNavigatorState(Value: TdxPageControlButtonNavigatorState);
begin
  if (FNavigatorState <> Value) then
  begin
    FNavigatorState := Value;
    RepaintNavigators;
    if (FScrollTimerID = -1) and (FNavigatorState in [bnsLeftDown, bnsRightDown]) then
      FScrollTimerID := SetTimer(FPageControl.Handle, 1, ScrollButtonsTimerDelay, @ScrollButtonsTimerProc);
    if (FNavigatorState = bnsNone) then
    begin
      KillTimer(FPageControl.Handle, FScrollTimerID);
      FScrollTimerID := -1;
    end;
  end;
end;

//Standard
{TdxPageControlStandardButton}
type
TdxPageControlStandardButton = class(TdxPageControlButton)
public
  procedure InternalPaint; override;
end;

TdxPageControlStandardButtons = class(TdxPageControlButtons)
private
protected
  procedure GetBorderOffset(var Left, Top, Right, Bottom: Integer); override;
  function GetPageControlButtonClass: TdxPageControlButtonClass; override;
  procedure DrawFrame; override;
  function NeedHighLight(AButton: TdxPageControlButton) : Boolean; override;
public
  procedure PaintNavigators; override;
end;

procedure TdxPageControlStandardButton.InternalPaint;
var
  VisibleRect: TRect;

  procedure InternalDrawEdge(dLeft, dTop, dRight, dBottom: Integer; edge: UINT; grfFlags: UINT);
  var
    ARect: TRect;
  begin
    SetRect(ARect, VisibleRect.Left + dLeft, VisibleRect.Top + dTop, VisibleRect.Right + dRight, VisibleRect.Bottom + dBottom);
    DrawEdge(Canvas.Handle, ARect, edge, grfFlags);
  end;

  procedure FillRect;
  var
    brush: HBrush;
    Rect : TRect;
  begin
    if IsActive or TabSheet.Highlighted then
    begin
      if IsActive and not TabSheet.Highlighted then
      begin
        brush := Windows.CreateSolidBrush(ColorToRGB(Buttons.FPageControl.Color));
        Windows.FillRect(Canvas.Handle, VisibleRect, brush);
        DeleteObject(brush);
      end else
      begin
        dxOffSetRect(Rect, VisibleRect, Buttons.TabPosition, 1, 1, -1, 0);
        Windows.FillRect(Canvas.Handle, Rect, GetSysColorBrush(COLOR_HIGHLIGHT));
      end;
    end;
  end;

  procedure DrawSelectedFrame;
  var
    ARect: TRect;
  begin
    if (IsFocused) then
    begin
      ARect := VisibleRect;
      InflateRect(ARect, - BorderWidth - 1, -BorderWidth - 1);
      Windows.DrawFocusRect(Canvas.Handle, ARect);
    end;
  end;

  procedure SetVisibleRect;
  var
    InActiveOffSet, ActiveOffSet: Integer;
  begin
    if Buttons.GetButtonLines > 1 then
    begin
      InActiveOffSet := 0;
      ActiveOffSet := -BorderWidth;
    end else
    begin
      InActiveOffSet := BorderWidth;
      ActiveOffSet := 0;
    end;

    if IsActive then
    begin
      dxOffSetRect(VisibleRect, Rect, Buttons.TabPosition, -BorderWidth, ActiveOffSet, BorderWidth, BorderWidth - 1);
      if Buttons.TabPosition in [dxtpBottom, dxtpRight] then
       dxOffSetRect(VisibleRect, VisibleRect, Buttons.TabPosition, 0, 0, 0, 1);
    end else dxOffSetRect(VisibleRect, Rect, Buttons.TabPosition, 0, InActiveOffSet, 0, 0);
  end;

  procedure InternalDrawCaption;
  var
    ARect: TRect;
  begin
    ARect := CaptionRect;
    if IsActive then
    begin
      dxOffSetRect(ARect, ARect, Buttons.TabPosition, -BorderWidth, -BorderWidth, -BorderWidth, -BorderWidth);
    end;
    DrawCaption(ARect);
  end;

begin

  SetVisibleRect;
  FillRect;

  case Buttons.TabPosition of
    dxtpTop:
      begin
        InternalDrawEdge(0, 2, 0, 0, BDR_RAISEDINNER, BF_LEFT);
        InternalDrawEdge(1, 1, -(VisibleRect.Right - VisibleRect.Left) + 2, 0, BDR_RAISEDINNER, BF_TOP);
        InternalDrawEdge(2, 0, -2,  0, BDR_RAISEDINNER, BF_TOP);
        InternalDrawEdge(0, 2, 0, 0, EDGE_RAISED, BF_RIGHT);
        InternalDrawEdge(VisibleRect.Right - VisibleRect.Left - 2, 1, -1, 0, BDR_SUNKENINNER, BF_TOP);
       end;
    dxtpBottom:
      begin
        InternalDrawEdge(0, 0, 0, -2, BDR_RAISEDINNER, BF_LEFT);
        InternalDrawEdge(0, 0, 0, -2, EDGE_RAISED, BF_RIGHT);
        InternalDrawEdge(1, 1, -(VisibleRect.Right - VisibleRect.Left) + 2, -1, BDR_SUNKENOUTER, BF_BOTTOM);
        InternalDrawEdge(2, 0, -2,  0, EDGE_RAISED, BF_BOTTOM);
        InternalDrawEdge(VisibleRect.Right - VisibleRect.Left - 2, 0, -1, -1, BDR_RAISEDOUTER, BF_BOTTOM);
      end;
    dxtpLeft:
      begin
        InternalDrawEdge(3, 0, 0, 0, EDGE_RAISED, BF_BOTTOM);
        InternalDrawEdge(2, 0, 3 - (VisibleRect.Right - VisibleRect.Left), 0, BDR_RAISEDINNER, BF_BOTTOM);
        InternalDrawEdge(2, 0, 3 - (VisibleRect.Right - VisibleRect.Left),  -1, BDR_RAISEDOUTER, BF_BOTTOM);
        InternalDrawEdge(1, 0, 2 - (VisibleRect.Right - VisibleRect.Left), -1, BDR_RAISEDINNER, BF_BOTTOM);
        InternalDrawEdge(0, 2, 0, -2, BDR_RAISEDINNER, BF_LEFT);
        InternalDrawEdge(1, 1, 0, 2 - (VisibleRect.Bottom - VisibleRect.Top), BDR_RAISEDINNER, BF_LEFT);
        InternalDrawEdge(2, 0, 0, 0, BDR_RAISEDINNER, BF_TOP);
      end;
    dxtpRight:
      begin
        InternalDrawEdge(0, 0, -2, 0, BDR_RAISEDINNER, BF_TOP);
        InternalDrawEdge((VisibleRect.Right - VisibleRect.Left) - 2, 1, -1, 0, BDR_RAISEDINNER, BF_TOP);
        InternalDrawEdge(0, 2, 0, -2, EDGE_RAISED, BF_RIGHT);
        InternalDrawEdge(0, 2, -2, 0, EDGE_RAISED, BF_BOTTOM);
        InternalDrawEdge((VisibleRect.Right - VisibleRect.Left) - 2, 0, -1, -1, BDR_RAISEDOUTER, BF_BOTTOM);
      end;
  end;
  InflateRect(VisibleRect, -1, -1);
  if not DoDrawTab(VisibleRect) then
  begin
    DrawImage(ImageRect);
    InternalDrawCaption;
    DrawSelectedFrame;
  end;
end;

{TdxPageControlStandardButtons}
function TdxPageControlStandardButtons.GetPageControlButtonClass: TdxPageControlButtonClass;
begin
  Result := TdxPageControlStandardButton;
end;

function TdxPageControlStandardButtons.NeedHighLight(AButton: TdxPageControlButton) : Boolean;
begin
  Result := AButton.TabSheet.Highlighted;
end;

procedure TdxPageControlStandardButtons.GetBorderOffset(var Left, Top, Right, Bottom: Integer);
begin
  Left := 1;
  Top := 1;
  Right := 2;
  Bottom := 2;
end;

procedure TdxPageControlStandardButtons.DrawFrame;
var
  ARect: TRect;
begin
  SetRect(ARect, -1, -1, FPageControl.Width, FPageControl.Height);
  dxOffSetRect(ARect, ARect, TabPosition, 0, GetButtonsHeight, 0, 0);
  DrawEdge(Canvas.Handle, ARect, EDGE_RAISED, BF_RECT);
end;

procedure TdxPageControlStandardButtons.PaintNavigators;
const
  ButtonPressed: Array[Boolean] of Integer = (0, DFCS_PUSHED);
var
  ARect: TRect;
begin
  if not IsButtonNavigatorVisible then exit;
  DrawFrameControl(Canvas.Handle, FLeftNavigatorRect, DFC_SCROLL,
        DFCS_SCROLLLEFT or ButtonPressed[NavigatorState = bnsLeftDown]);
  DrawFrameControl(Canvas.Handle, FRightNavigatorRect, DFC_SCROLL,
        DFCS_SCROLLRIGHT or ButtonPressed[NavigatorState = bnsRightDown]);
  ARect := GetButtonsRect;
  ExcludeClipRect(Canvas.Handle, FLeftNavigatorRect.Left, ARect.Top, ARect.Right, ARect.Bottom);
end;

{TdxPageControlLightBrush}
type
TdxPageControlLightBrush = class
private
  FBrush: HBRUSH;

  function GetBrush: HBRUSH;
  procedure CreateBrush;
public
  constructor Create;
  destructor Destroy; override;

  property Brush: HBRUSH read GetBrush;
end;

constructor TdxPageControlLightBrush.Create;
begin
  FBrush := 0;
end;

destructor TdxPageControlLightBrush.Destroy;
begin
  if (FBrush <> 0) then
    DeleteObject(FBrush);
  inherited Destroy;
end;

function TdxPageControlLightBrush.GetBrush: HBRUSH;
begin
  if (FBrush = 0) then
    CreateBrush;
  Result := FBrush;
end;

procedure TdxPageControlLightBrush.CreateBrush;
const
  dxPageColorDelta: Integer = 0;
//SCL  dxPageColorDelta: Integer = 20;
var
  Color: COLORREF;
  R, G, B: Integer;
  DC: HDC;
begin
  Color := $00F3E0D3;
//  Color := GetSysColor(COLOR_BTNFACE);
  R := GetRValue(Color) + dxPageColorDelta;
  if R > 255 then R := 255;
  G := GetGValue(Color) + dxPageColorDelta;
  if G > 255 then G := 255;
  B := GetBValue(Color) + dxPageColorDelta;
  if B > 255 then B := 255;

  DC := GetDC(0);
  Color := RGB(R, G, B);
  FBrush := CreateSolidBrush(Color);
  ReleaseDC(0, DC);
end;

{TdxPageControlNetFlatButtons}
type
TdxPageControlNetFlatButton = class(TdxPageControlButton)
public
  procedure InternalPaint; override;
end;

TdxPageControlNetFlatButtons = class(TdxPageControlButtons)
private
  FLightBrush: TdxPageControlLightBrush;

  procedure DrawBottomLines;
protected
  function GetButtonOffSet: Integer; override;
  function CanFocus: Boolean; override;
  function GetPageControlButtonClass: TdxPageControlButtonClass; override;
  procedure FillFreeSpace; override;
  function NeedNavigatorButtonHotTrack: Boolean; override;
  procedure CalcNavigatorRect; override;
public
  constructor Create(APageControl: TdxCustomPageControl); override;
  destructor Destroy; override;

  function GetButtonHeight: Integer; override;

  procedure PaintNavigators; override;
  procedure DrawFrame; override;
end;

procedure TdxPageControlNetFlatButton.InternalPaint;

  function FillActiveRect: TRect;
  begin
    if IsActive then
    begin
      dxOffSetRect(Result, Rect, Buttons.TabPosition, -1, BorderWidth, 0, 0);
      Windows.FillRect(Canvas.Handle, Result, GetSysColorBrush(COLOR_BTNFACE));
    end else Result := Rect;
  end;

  procedure DrawLines;

    function GetBrush(AFlag: Boolean): HBrush;
    begin
      if AFlag then
        Result := GetStockObject(WHITE_BRUSH)
      else Result := GetSysColorBrush(COLOR_BTNTEXT);
    end;
  var
    ARect: TRect;
    IsLeftTop: Boolean;
  begin
    IsLeftTop := Buttons.TabPosition in [dxtpTop, dxtpLeft];
    if not IsActive then
    begin
      dxOffSetRect(ARect, Rect, Buttons.TabPosition, GetRectWidth - 1, 2, 0, -4);
      Windows.FillRect(Canvas.Handle, ARect, GetSysColorBrush(COLOR_BTNFACE));
    end else
    begin
      //Right line
      dxOffSetRect(ARect, Rect, Buttons.TabPosition, GetRectWidth - 1, 2, 0, -2);
      Windows.FillRect(Canvas.Handle, ARect, GetSysColorBrush(COLOR_BTNTEXT));
      //Left line
      dxOffSetRect(ARect, Rect, Buttons.TabPosition, -1, 2, - GetRectWidth, -2);
      Windows.FillRect(Canvas.Handle, ARect, GetStockObject(WHITE_BRUSH));
      dxOffSetRect(ARect, Rect, Buttons.TabPosition, 0, 2, 0, - GetRectHeight + 3);
      Windows.FillRect(Canvas.Handle, ARect, GetBrush(IsLeftTop));
      dxOffSetRect(ARect, Rect, Buttons.TabPosition, -BorderWidth,
        GetRectHeight - BorderWidth - 1, - FWidth, -BorderWidth);
      Windows.FillRect(Canvas.Handle, ARect, GetBrush(IsLeftTop));
    end;
  end;

  procedure InternalDrawCaption;
  var
    ARect: TRect;
  begin
   dxOffSetRect(ARect, CaptionRect, Buttons.TabPosition, 0, 2 * BorderWidth, 0, -1);
   DrawCaption(ARect);
  end;

var
  AVisibleRect: TRect;
begin
  AVisibleRect := FillActiveRect;
  DrawLines;
  if not DoDrawTab(AVisibleRect) then
  begin
    DrawImage(ImageRect);
    InternalDrawCaption;
  end;
end;

{TdxPageControlNetFlatButtons}
constructor TdxPageControlNetFlatButtons.Create(APageControl: TdxCustomPageControl);
begin
  inherited Create(APageControl);
  FLightBrush := TdxPageControlLightBrush.Create;
end;

destructor TdxPageControlNetFlatButtons.Destroy;
begin
  FLightBrush.Free;
  inherited Destroy;
end;

function TdxPageControlNetFlatButtons.GetButtonHeight: Integer;
begin
  Result := inherited GetButtonHeight;
  if(PageControl.TabHeight = 0) then
    Inc(Result, BorderWidth);
end;

function TdxPageControlNetFlatButtons.GetButtonOffSet: Integer;
begin
  Result := BorderWidth * 3;
end;

function TdxPageControlNetFlatButtons.CanFocus: Boolean;
begin
  Result := False;
end;

function TdxPageControlNetFlatButtons.GetPageControlButtonClass: TdxPageControlButtonClass;
begin
  Result := TdxPageControlNetFlatButton;
end;

procedure TdxPageControlNetFlatButtons.FillFreeSpace;
var
  ARect: TRect;
begin
  ARect := GetButtonsRect;
  Windows.FillRect(Canvas.Handle, ARect, FLightBrush.Brush);
end;


function TdxPageControlNetFlatButtons.NeedNavigatorButtonHotTrack: Boolean;
begin
  Result := True;
end;

procedure TdxPageControlNetFlatButtons.CalcNavigatorRect;
const
  NavigatorHeight = 15;
var
  ARect: TRect;
begin
  if not IsButtonNavigatorVisible then
    inherited CalcNavigatorRect
  else
  begin
    ARect := GetButtonsRect;
    dxOffSetRect(ARect, ARect, TabPosition, 0, GetButtonHeight - NavigatorHeight - 2 * BorderWidth, 0, - 2* BorderWidth);
    SetRect(FRightNavigatorRect, ARect.Right - (ARect.Bottom - ARect.Top),
        ARect.Top, ARect.Right, ARect.Bottom);
    SetRect(FLeftNavigatorRect, FRightNavigatorRect.Left - 2 * BorderWidth - (ARect.Bottom - ARect.Top),
        ARect.Top, FRightNavigatorRect.Left  - 2 * BorderWidth, ARect.Bottom);
  end;
end;

procedure TdxPageControlNetFlatButtons.PaintNavigators;
const
  BorderStyle: Array[Boolean]  of Integer = (BDR_RAISEDOUTER, BDR_SUNKENINNER);
  NavigatorHeight = 9;
var
  ARect: TRect;
begin
  if not IsButtonNavigatorVisible then exit;
  if NavigatorState in [bnsLeftDown, bnsLeftHotTrack] then
  begin
    with FLeftNavigatorRect do
      dxOffSetRect(ARect, FLeftNavigatorRect, TabPosition, (Right - Left) div 3, 0, (Right - Left) div 3, 0);
    InflateRect(ARect, -2, -2);
    DrawEdge(Canvas.Handle, ARect, BorderStyle[NavigatorState = bnsLeftDown], BF_RECT);
  end;
  ARect := FLeftNavigatorRect;
  InflateRect(ARect, -1, -1);
  DrawItemArrow(Canvas.Handle, ARect, patLeft, NavigatorState = bnsLeftDown);

  if NavigatorState in [bnsRightDown, bnsRightHotTrack] then
  begin
    ARect := FRightNavigatorRect;
    InflateRect(ARect, -2, -2);
    DrawEdge(Canvas.Handle, ARect, BorderStyle[NavigatorState = bnsRightDown], BF_RECT);
  end;
  ARect := FRightNavigatorRect;
  InflateRect(ARect, -1, -1);
  DrawItemArrow(Canvas.Handle, ARect, patRight, NavigatorState = bnsRightDown);

  ARect := GetButtonsRect;
  ExcludeClipRect(Canvas.Handle, FLeftNavigatorRect.Left, ARect.Top, ARect.Right, ARect.Bottom);
end;

procedure TdxPageControlNetFlatButtons.DrawFrame;
begin
  DrawBottomLines;
end;

procedure TdxPageControlNetFlatButtons.DrawBottomLines;

  procedure DrawBottomLine(ARect: TRect);
  var
    drawRect: TRect;
  begin
    dxOffSetRect(drawRect, ARect, TabPosition, 0, 1, 0, 0);
    Windows.FillRect(Canvas.Handle, drawRect, GetSysColorBrush(COLOR_BTNFACE));
    dxOffSetRect(drawRect, ARect, TabPosition, 0, 0, 0, -2);
    if TabPosition in [dxtpTop, dxtpLeft] then
      Windows.FillRect(Canvas.Handle, drawRect, GetStockObject(WHITE_BRUSH))
    else Windows.FillRect(Canvas.Handle, drawRect, GetSysColorBrush(COLOR_BTNTEXT));
  end;

var
  i: Integer;
  ARect: TRect;
  AHeight: Integer;
begin
  if Count = 0 then exit;
  for i := 0 to FButtonLines - 1 do
  begin
    AHeight := (FButtonLines - i) * (GetButtonHeight + BorderWidth);
    dxOffSetRect(ARect, GetButtonsRect, TabPosition, 0, AHeight - 3, 0, AHeight - GetButtonsHeight);
    DrawBottomLine(ARect);
  end;
end;

{TdxPageControlBtnButton}
type
TdxPageControlBtnButton = class(TdxPageControlButton)
public
  procedure InternalPaint; override;
end;

{TdxPageControlBtnButtons}
type
TdxPageControlBtnButtons = class(TdxPageControlStandardButtons)
private
  FLightBrush: TdxPageControlLightBrush;
protected
  function NeedButtonsReplace: Boolean; override;
  function GetButtonHeight: Integer; override;
  function GetPageControlButtonClass: TdxPageControlButtonClass; override;
  function GetButtonOffSet: Integer; override;
  procedure GetBorderOffset(var Left, Top, Right, Bottom: Integer); override;
  procedure DrawFrame; override;
  function NeedHighLight(AButton: TdxPageControlButton) : Boolean; override;
public
  constructor Create(APageControl: TdxCustomPageControl); override;
  destructor Destroy; override;
end;

{TdxPageControlBtnButton}
procedure TdxPageControlBtnButton.InternalPaint;
var
  VisibleRect: TRect;

  procedure DrawButton;
  const
    ButtonPressed: Array[Boolean] of Integer = (EDGE_RAISED, EDGE_SUNKEN);
  begin
    DrawEdge(Canvas.Handle, VisibleRect, ButtonPressed[IsActive], BF_RECT);
    if IsActive then
    begin
      InflateRect(VisibleRect, -2, -2);
      Windows.FillRect(Canvas.Handle, VisibleRect, TdxPageControlBtnButtons(Buttons).FLightBrush.Brush);
      if IsFocused then
        Windows.DrawFocusRect(Canvas.Handle, VisibleRect);
    end;
  end;

begin
  VisibleRect := Rect;
  InflateRect(VisibleRect, -1, -1);
  DrawButton;
  if  not DoDrawTab(VisibleRect) then
  begin
    DrawImage(ImageRect);
    DrawCaption(CaptionRect);
  end;
end;

{TdxPageControlStandardButtons}
constructor TdxPageControlBtnButtons.Create(APageControl: TdxCustomPageControl);
begin
  inherited Create(APageControl);
  FLightBrush := TdxPageControlLightBrush.Create;
end;

destructor TdxPageControlBtnButtons.Destroy;
begin
  FLightBrush.Free;
  inherited Destroy;
end;

function TdxPageControlBtnButtons.GetPageControlButtonClass: TdxPageControlButtonClass;
begin
  Result := TdxPageControlBtnButton;
end;

function TdxPageControlBtnButtons.NeedButtonsReplace: Boolean;
begin
  Result := False;
end;

function TdxPageControlBtnButtons.NeedHighLight(AButton: TdxPageControlButton) : Boolean;
begin
  Result := False;
end;

function TdxPageControlBtnButtons.GetButtonOffSet: Integer;
begin
  Result := 0;
end;

procedure TdxPageControlBtnButtons.GetBorderOffset(var Left, Top, Right, Bottom: Integer);
begin
  Left := 0;
  Top := 0;
  Right := 0;
  Bottom := 0;
end;

function TdxPageControlBtnButtons.GetButtonHeight: Integer;
begin
  Result := inherited GetButtonHeight;
  if PageControl.TabHeight = 0 then
    Inc(Result, 2 * BorderWidth);
end;

procedure TdxPageControlBtnButtons.DrawFrame;
begin
end;

{TdxPageControlFlatBtnButton}
type
TdxPageControlFlatBtnButton = class(TdxPageControlButton)
protected
  procedure CalcButtonWidth; override;
public
  procedure InternalPaint; override;
end;

{TdxPageControlFlatBtnButtons}
type
TdxPageControlFlatBtnButtons = class(TdxPageControlBtnButtons)
protected
  function GetPageControlButtonClass: TdxPageControlButtonClass; override;
  function NeedReadrawFullHotTrackButton: Boolean; override;
end;

procedure TdxPageControlFlatBtnButton.CalcButtonWidth;
begin
  inherited CalcButtonWidth;
  if (Buttons.TabWidth = 0) then
    Inc(FWidth, 4 * BorderWidth);
end;

procedure TdxPageControlFlatBtnButton.InternalPaint;
var
  VisibleRect: TRect;
  ACaptionRect, AImageRect, AButtonRect: TRect;

  procedure DrawButton;
  const
    ButtonPressed: Array[Boolean] of Integer = (DFCS_BUTTONPUSH, DFCS_BUTTONPUSH or DFCS_PUSHED);
    TabBorder: Array[TdxTabPosition] of Integer = (BF_RIGHT, BF_RIGHT, BF_TOP, BF_BOTTOM);
  begin
    if IsActive then
    begin
      DrawEdge(Canvas.Handle, AButtonRect, EDGE_SUNKEN, BF_RECT);
      InflateRect(AButtonRect, -2, -2);
      Windows.FillRect(Canvas.Handle, AButtonRect, TdxPageControlBtnButtons(Buttons).FLightBrush.Brush);
      if IsFocused then
        Windows.DrawFocusRect(Canvas.Handle, AButtonRect);
    end else
    begin
      if IsHotTrack then
        DrawEdge(Canvas.Handle, AButtonRect, BDR_RAISEDINNER, BF_RECT);
    end;
    DrawEdge(Canvas.Handle, VisibleRect, EDGE_ETCHED, TabBorder[Buttons.TabPosition]);
  end;
                                    
begin
  VisibleRect := Rect;
  dxOffSetRect(AButtonRect, VisibleRect, Buttons.TabPosition, BorderWidth, 0, - 3 * BorderWidth, 0);
  InflateRect(VisibleRect, -1, -1);
  DrawButton;
  if not DoDrawTab(AButtonRect) then
  begin
    dxOffSetRect(AImageRect, ImageRect, Buttons.TabPosition, BorderWidth, 0, 0, 0);
    dxOffSetRect(ACaptionRect, CaptionRect, Buttons.TabPosition, BorderWidth, 0, - 3 * BorderWidth, 0);
    DrawImage(AImageRect);
    DrawCaption(ACaptionRect);
  end;  
end;

function TdxPageControlFlatBtnButtons.GetPageControlButtonClass: TdxPageControlButtonClass;
begin
  Result := TdxPageControlFlatBtnButton;
end;

function TdxPageControlFlatBtnButtons.NeedReadrawFullHotTrackButton: Boolean;
begin
  Result := True;
end;

{TdxCustomPageControl}
procedure TdxCustomPageControl.CreateButtons;
const
  TabStyleClass: Array [TdxTabStyle] of  TdxPageControlButtonsClass =
        (TdxPageControlStandardButtons, TdxPageControlBtnButtons,
         TdxPageControlFlatBtnButtons, TdxPageControlNetFlatButtons);
begin
  if FButtons <> nil then
    FButtons.Free;
  FButtons := TabStyleClass[Style].Create(self);
  FButtons.CreateButtons;
  Invalidate;
end;

procedure TdxCustomPageControl.RedrawButtons;
begin
  if HandleAllocated then
  begin
    Realign;
    {$IFDEF DELPHI4}
    AdjustSize;
    {$ENDIF}
    FButtons.CalcViewInfo;
    Realign;
    Windows.InvalidateRect(Handle, nil, True);
  end;
end;


procedure RetrieveWindowsVersion;
var
  Info: TOSVersionInfo;
begin
  Info.dwOSVersionInfoSize := SizeOf(Info);
  GetVersionEx(Info);
  IsWin98Or2000 :=
    (Info.dwPlatformId = VER_PLATFORM_WIN32_WINDOWS) and (Info.dwMinorVersion <> 0) or
    (Info.dwPlatformId = VER_PLATFORM_WIN32_NT) and (Info.dwMajorVersion = 5);
end;

initialization
 RetrieveWindowsVersion;
 RegisterClasses([TdxTabSheet]);
end.
