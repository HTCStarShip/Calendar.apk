.class public Lcom/htc/calendar/CalendarCarouselActivity;
.super Lcom/htc/widget/CarouselActivity;
.source "CalendarCarouselActivity.java"

# interfaces
.implements Lcom/htc/calendar/Navigator;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/calendar/CalendarCarouselActivity$CloseCursorThread;,
        Lcom/htc/calendar/CalendarCarouselActivity$BackGroundHandler;,
        Lcom/htc/calendar/CalendarCarouselActivity$CheckUnResponseEASMeetingThread;,
        Lcom/htc/calendar/CalendarCarouselActivity$UIHandler;,
        Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;
    }
.end annotation


# static fields
.field private static final ACTION_HTC_EAS_ALL_SYNC_FINISH:Ljava/lang/String; = "com.htc.eas.intent.all_sync_finish"

.field public static final CALENDAR_INDEX_COLOR:I = 0x2

.field public static final CALENDAR_INDEX_DISPLAY_NAME:I = 0x1

.field public static final CALENDAR_INDEX_ID:I = 0x0

.field public static final CALENDAR_INDEX_OWNER_ACCOUNT:I = 0x7

.field public static final CALENDAR_INDEX_SELECTED:I = 0x3

.field public static final CALENDAR_INDEX_SYNC_ACCOUNT:I = 0x5

.field public static final CALENDAR_INDEX_SYNC_ACCOUNT_TYPE:I = 0x6

.field public static final CALENDAR_INDEX_SYNC_EVENTS:I = 0x4

.field private static final CALENDAR_TAB_GID:I = 0x0

.field private static final MSG_DISMISS_PROGRESS_DIALOG:I = 0x0

.field private static final MSG_DRAW_UNRESPONSE_INVITATION:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final QUERY_TOKEN_CALENDAR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CalendarTabs"


# instance fields
.field private mAllCalendarCheckBox:Landroid/widget/CheckBox;

.field private mAllCalendarLayout:Lcom/htc/widget/HtcListItem;

.field public mCalendarByAccountAdapter:Lcom/htc/calendar/MultiCalendarsByAccountAdapter;

.field private mCalendarQueryHandler:Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;

.field public mCalendarsAdapter:Lcom/htc/calendar/MultiCalendarsAdapter;

.field mCarouselTopPadding:I

.field private mCheckUnResponseEASMeetingThread:Lcom/htc/calendar/CalendarCarouselActivity$CheckUnResponseEASMeetingThread;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

.field private mDropDownListShow:Z

.field private mHeaderAddBtn:Lcom/htc/widget/HeaderBarImage;

.field private mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

.field private mHeaderSrchBtn:Lcom/htc/widget/HeaderBarImage;

.field private mHeaderToday:Lcom/htc/widget/HeaderBarImage;

.field private mHost:Lcom/htc/widget/CarouselHost;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsAllChecked:Z

.field private mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mResources:Landroid/content/res/Resources;

.field private mSelectedCalendars:Lcom/htc/calendar/SyncedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/htc/calendar/SyncedHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mUIHandler:Lcom/htc/calendar/CalendarCarouselActivity$UIHandler;

.field private mUnResponseInvitationCount:I

.field private mbIsReceiverRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 108
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "calendar_displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "visible"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sync_events"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ownerAccount"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/calendar/CalendarCarouselActivity;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 141
    const-string v0, "com.htc.calendar.CalendarTabProvider"

    invoke-direct {p0, v0}, Lcom/htc/widget/CarouselActivity;-><init>(Ljava/lang/String;)V

    .line 68
    iput-object v2, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mContext:Landroid/content/Context;

    .line 70
    iput-object v2, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mCalendarQueryHandler:Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;

    .line 72
    iput-object v2, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mCursor:Landroid/database/Cursor;

    .line 86
    new-instance v0, Lcom/htc/calendar/SyncedHashMap;

    invoke-direct {v0}, Lcom/htc/calendar/SyncedHashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mSelectedCalendars:Lcom/htc/calendar/SyncedHashMap;

    .line 90
    iput-boolean v1, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mDropDownListShow:Z

    .line 134
    iput v1, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mUnResponseInvitationCount:I

    .line 136
    iput-boolean v1, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mbIsReceiverRegistered:Z

    .line 818
    new-instance v0, Lcom/htc/calendar/CalendarCarouselActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/calendar/CalendarCarouselActivity$2;-><init>(Lcom/htc/calendar/CalendarCarouselActivity;)V

    iput-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 142
    return-void
.end method

.method static synthetic access$100(Lcom/htc/calendar/CalendarCarouselActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/htc/calendar/CalendarCarouselActivity;->doingUnResponseInvitationQuery()V

    return-void
.end method

.method static synthetic access$1000(Lcom/htc/calendar/CalendarCarouselActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mUnResponseInvitationCount:I

    return v0
.end method

.method static synthetic access$1002(Lcom/htc/calendar/CalendarCarouselActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput p1, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mUnResponseInvitationCount:I

    return p1
.end method

.method static synthetic access$1100(Lcom/htc/calendar/CalendarCarouselActivity;)Lcom/htc/widget/CarouselHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mHost:Lcom/htc/widget/CarouselHost;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/calendar/CalendarCarouselActivity;)Lcom/htc/calendar/CalendarCarouselActivity$UIHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mUIHandler:Lcom/htc/calendar/CalendarCarouselActivity$UIHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/calendar/CalendarCarouselActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/calendar/CalendarCarouselActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/calendar/CalendarCarouselActivity;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/htc/calendar/CalendarCarouselActivity;->setCalendarNameMap(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/calendar/CalendarCarouselActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/calendar/CalendarCarouselActivity;Lcom/htc/calendar/SyncedHashMap;)Lcom/htc/calendar/SyncedHashMap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mSelectedCalendars:Lcom/htc/calendar/SyncedHashMap;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/calendar/CalendarCarouselActivity;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mAllCalendarCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/calendar/CalendarCarouselActivity;)Lcom/htc/widget/HeaderBarDropDown;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/calendar/CalendarCarouselActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/htc/calendar/CalendarCarouselActivity;->setCalendarTitle()V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/calendar/CalendarCarouselActivity;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method private addUserTab(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Lcom/htc/widget/CarouselHost;IIIII)V
    .locals 9
    .parameter "context"
    .parameter
    .parameter "tag"
    .parameter "host"
    .parameter "labelResource"
    .parameter "iconResouce"
    .parameter "selectedIconResource"
    .parameter "showIconResource"
    .parameter "state"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Lcom/htc/widget/CarouselHost;",
            "IIIII)V"
        }
    .end annotation

    .prologue
    .line 326
    .local p2, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 327
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual {v7, p1, p2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-object v0, p4

    move-object v1, p3

    move-object v2, p1

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v8, p9

    .line 328
    invoke-virtual/range {v0 .. v8}, Lcom/htc/widget/CarouselHost;->addTab(Ljava/lang/String;Landroid/content/Context;IIIILandroid/content/Intent;I)V

    .line 336
    return-void
.end method

.method private createAllCalendarLayout()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 595
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/htc/calendar/CalendarCarouselActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 596
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f03002a

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListItem;

    iput-object v5, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mAllCalendarLayout:Lcom/htc/widget/HtcListItem;

    .line 598
    iget-object v5, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mAllCalendarLayout:Lcom/htc/widget/HtcListItem;

    const v6, 0x7f0d00c7

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListItemColorIcon;

    iget-object v6, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f020002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 599
    iget-object v5, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mAllCalendarLayout:Lcom/htc/widget/HtcListItem;

    const v6, 0x7f0d00c8

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListItemCheckBox;

    iput-object v5, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mAllCalendarCheckBox:Landroid/widget/CheckBox;

    .line 600
    iget-object v5, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mAllCalendarCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 603
    const-wide/16 v0, 0x0

    .line 605
    .local v0, all_calendarTag:J
    iget-object v5, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mAllCalendarLayout:Lcom/htc/widget/HtcListItem;

    const v6, 0x7f0d002d

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    .line 606
    .local v2, displayName:Lcom/htc/widget/HtcListItem2LineText;
    const v5, 0x7f08003a

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 607
    const v5, 0x2030012

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 608
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 609
    iget-object v5, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mAllCalendarLayout:Lcom/htc/widget/HtcListItem;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListItem;->setTag(Ljava/lang/Object;)V

    .line 610
    iget-object v5, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mAllCalendarLayout:Lcom/htc/widget/HtcListItem;

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcListItem;->setVisibility(I)V

    .line 611
    new-instance v4, Lcom/htc/calendar/widget/SimpleHtcListItemSeparable;

    const-string v5, "isHeader"

    invoke-direct {v4, v5}, Lcom/htc/calendar/widget/SimpleHtcListItemSeparable;-><init>(Ljava/lang/String;)V

    .line 612
    .local v4, ssAllCalendar:Lcom/htc/calendar/widget/SimpleHtcListItemSeparable;
    const-wide/16 v5, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/htc/calendar/widget/SimpleHtcListItemSeparable;->setId(J)V

    .line 613
    iget-object v5, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mAllCalendarLayout:Lcom/htc/widget/HtcListItem;

    invoke-virtual {v5, v4}, Lcom/htc/widget/HtcListItem;->setTag(Ljava/lang/Object;)V

    .line 614
    return-void
.end method

.method private dismissDropDownList()V
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarDropDown;->isBubbleWindowShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v0}, Lcom/htc/widget/HeaderBarDropDown;->dismiss()V

    .line 840
    :cond_0
    return-void
.end method

.method private doingUnResponseInvitationQuery()V
    .locals 1

    .prologue
    .line 812
    new-instance v0, Lcom/htc/calendar/CalendarCarouselActivity$CheckUnResponseEASMeetingThread;

    invoke-direct {v0, p0}, Lcom/htc/calendar/CalendarCarouselActivity$CheckUnResponseEASMeetingThread;-><init>(Lcom/htc/calendar/CalendarCarouselActivity;)V

    iput-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mCheckUnResponseEASMeetingThread:Lcom/htc/calendar/CalendarCarouselActivity$CheckUnResponseEASMeetingThread;

    .line 813
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mCheckUnResponseEASMeetingThread:Lcom/htc/calendar/CalendarCarouselActivity$CheckUnResponseEASMeetingThread;

    invoke-virtual {v0}, Lcom/htc/calendar/CalendarCarouselActivity$CheckUnResponseEASMeetingThread;->start()V

    .line 814
    return-void
.end method

.method public static getBackgroundHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 851
    invoke-static {}, Lcom/htc/calendar/CalendarCarouselActivity$BackGroundHandler;->getInstance()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method private initHeaderBtn()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 257
    const v0, 0x7f0d000d

    invoke-virtual {p0, v0}, Lcom/htc/calendar/CalendarCarouselActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarMiddle;

    iput-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    .line 258
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    iget-object v1, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarMiddle;->addCenterView(Landroid/view/View;)V

    .line 259
    new-instance v0, Lcom/htc/widget/HeaderBarImage;

    iget-object v1, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HeaderBarImage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mHeaderAddBtn:Lcom/htc/widget/HeaderBarImage;

    .line 260
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mHeaderAddBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 261
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    iget-object v1, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mHeaderAddBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarMiddle;->addView(Landroid/view/View;)V

    .line 262
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mHeaderAddBtn:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x208087c

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 263
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mHeaderAddBtn:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x7f080032

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 264
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mHeaderAddBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    new-instance v0, Lcom/htc/widget/HeaderBarImage;

    iget-object v1, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HeaderBarImage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mHeaderSrchBtn:Lcom/htc/widget/HeaderBarImage;

    .line 267
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    iget-object v1, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mHeaderSrchBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarMiddle;->addView(Landroid/view/View;)V

    .line 268
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mHeaderSrchBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 269
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mHeaderSrchBtn:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x2080954

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 270
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mHeaderSrchBtn:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x7f080021

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 271
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mHeaderSrchBtn:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    new-instance v0, Lcom/htc/widget/HeaderBarImage;

    iget-object v1, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HeaderBarImage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mHeaderToday:Lcom/htc/widget/HeaderBarImage;

    .line 274
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mHeaderToday:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 275
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mHeaderToday:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x208098a

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 276
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mHeaderToday:Lcom/htc/widget/HeaderBarImage;

    const v1, 0x7f080082

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 277
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mHeaderBar:Lcom/htc/widget/HeaderBarMiddle;

    iget-object v1, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mHeaderToday:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarMiddle;->addView(Landroid/view/View;)V

    .line 278
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mHeaderToday:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    return-void
.end method

.method private initReceiver()V
    .locals 2

    .prologue
    .line 830
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 831
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.htc.eas.intent.all_sync_finish"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 832
    iget-object v1, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/calendar/CalendarCarouselActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 833
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mbIsReceiverRegistered:Z

    .line 834
    return-void
.end method

.method private initTabs()V
    .locals 12

    .prologue
    const/16 v9, 0x65

    .line 344
    iget-object v1, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/htc/calendar/MonthActivity;

    const-string v3, "Month"

    iget-object v4, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mHost:Lcom/htc/widget/CarouselHost;

    const v5, 0x7f08007e

    const v6, 0x2080ab1

    const v7, 0x2080ab0

    const v8, 0x2080ac9

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/htc/calendar/CalendarCarouselActivity;->addUserTab(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Lcom/htc/widget/CarouselHost;IIIII)V

    .line 355
    iget-object v1, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/htc/calendar/DayActivity;

    const-string v3, "Day"

    iget-object v4, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mHost:Lcom/htc/widget/CarouselHost;

    const v5, 0x7f08007c

    const v6, 0x208083a

    const v7, 0x2080839

    const v8, 0x2080ab9

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/htc/calendar/CalendarCarouselActivity;->addUserTab(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Lcom/htc/widget/CarouselHost;IIIII)V

    .line 366
    iget-object v1, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/htc/calendar/AgendaActivity;

    const-string v3, "Agenda"

    iget-object v4, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mHost:Lcom/htc/widget/CarouselHost;

    const v5, 0x7f08007b

    const v6, 0x2080827

    const v7, 0x2080826

    const v8, 0x2080ab5

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/htc/calendar/CalendarCarouselActivity;->addUserTab(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Lcom/htc/widget/CarouselHost;IIIII)V

    .line 377
    iget-object v1, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/htc/calendar/MeetingInvitationActivity;

    const-string v3, "Invitation"

    iget-object v4, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mHost:Lcom/htc/widget/CarouselHost;

    const v5, 0x7f08006b

    const v6, 0x2080305

    const v7, 0x2080304

    const v8, 0x208039e

    const/16 v9, 0x63

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/htc/calendar/CalendarCarouselActivity;->addUserTab(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Lcom/htc/widget/CarouselHost;IIIII)V

    .line 388
    iget-object v1, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mContext:Landroid/content/Context;

    const-class v2, Lcom/htc/calendar/WeekActivity;

    const-string v3, "Week"

    iget-object v4, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mHost:Lcom/htc/widget/CarouselHost;

    const v5, 0x7f08007d

    const v6, 0x2080aec

    const v7, 0x2080aeb

    const v8, 0x2080ad6

    const/16 v9, 0x64

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/htc/calendar/CalendarCarouselActivity;->addUserTab(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Lcom/htc/widget/CarouselHost;IIIII)V

    .line 398
    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/calendar/CalendarContext;->getStartActivity()Ljava/lang/String;

    move-result-object v10

    .line 399
    .local v10, initTabTag:Ljava/lang/String;
    const v0, 0x1020011

    invoke-virtual {p0, v0}, Lcom/htc/calendar/CalendarCarouselActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    .line 400
    .local v11, tabcontent:Landroid/widget/FrameLayout;
    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    iput v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mCarouselTopPadding:I

    .line 401
    const-string v0, "CalendarTabs"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initTabTag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const-string v0, ""

    if-eq v10, v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v0, v10}, Lcom/htc/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 405
    :cond_0
    return-void
.end method

.method private processIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const-wide/16 v3, 0x0

    .line 497
    if-nez p1, :cond_0

    .line 498
    const-string v2, "CalendarTabs"

    const-string v3, "intent == null, Load start activity from SharedPreference"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/calendar/CalendarContext;->loadStartActivity()V

    .line 514
    :goto_0
    return-void

    .line 506
    :cond_0
    const-string v2, "beginTime"

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 507
    .local v0, beginTime:J
    cmp-long v2, v0, v3

    if-eqz v2, :cond_1

    .line 508
    const-string v2, "CalendarTabs"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_BEGIN_TIME is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/calendar/CalendarContext;->setCurrentSelectedTime(Ljava/lang/Long;)V

    .line 513
    :cond_1
    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/calendar/HtcUtils;->analysis(Lcom/htc/calendar/CalendarContext;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private setCalendarNameMap(Landroid/database/Cursor;)V
    .locals 5
    .parameter "c"

    .prologue
    .line 696
    const/4 v3, -0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 697
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 698
    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 699
    .local v0, calendarId:J
    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 701
    .local v2, calendarName:Ljava/lang/String;
    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/htc/calendar/CalendarContext;->setCalendarMap(Ljava/lang/Long;Ljava/lang/String;)V

    goto :goto_0

    .line 703
    .end local v0           #calendarId:J
    .end local v2           #calendarName:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setCalendarTitle()V
    .locals 5

    .prologue
    const/high16 v4, 0x41a0

    .line 282
    const v2, 0x2020260

    invoke-virtual {p0, v2}, Lcom/htc/calendar/CalendarCarouselActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 283
    .local v1, title:Landroid/widget/TextView;
    invoke-static {}, Lcom/htc/calendar/HtcUtils;->isCalendarTitleTooLong()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 284
    .local v0, isCalendarTitletooLong:Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mCalendarsAdapter:Lcom/htc/calendar/MultiCalendarsAdapter;

    invoke-virtual {v2}, Lcom/htc/calendar/MultiCalendarsAdapter;->isAllCalendarsChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 285
    const v2, 0x7f08003a

    invoke-direct {p0, v2}, Lcom/htc/calendar/CalendarCarouselActivity;->setCalendarTitle(I)V

    .line 286
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 287
    const/high16 v2, 0x4180

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    iget-object v2, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mCalendarsAdapter:Lcom/htc/calendar/MultiCalendarsAdapter;

    invoke-virtual {v2}, Lcom/htc/calendar/MultiCalendarsAdapter;->getCheckedCalendarCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 290
    const v2, 0x7f080071

    invoke-direct {p0, v2}, Lcom/htc/calendar/CalendarCarouselActivity;->setCalendarTitle(I)V

    .line 291
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 292
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 294
    :cond_2
    iget-object v2, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mCalendarsAdapter:Lcom/htc/calendar/MultiCalendarsAdapter;

    invoke-virtual {v2}, Lcom/htc/calendar/MultiCalendarsAdapter;->getCheckedCalendarCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 295
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarCarouselActivity;->getCalendarName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/calendar/CalendarCarouselActivity;->setCalendarTitle(Ljava/lang/String;)V

    .line 296
    invoke-static {}, Lcom/htc/calendar/HtcUtils;->isCalendarTitleTooLong()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 297
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0

    .line 300
    :cond_3
    const v2, 0x7f080069

    invoke-direct {p0, v2}, Lcom/htc/calendar/CalendarCarouselActivity;->setCalendarTitle(I)V

    .line 301
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 302
    const/high16 v2, 0x4160

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_0
.end method

.method private setCalendarTitle(I)V
    .locals 2
    .parameter "res_id"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarDropDown;->setPrimaryText(I)V

    .line 309
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setPrimaryVisibility(I)V

    .line 310
    return-void
.end method

.method private setCalendarTitle(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    .line 313
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v0, p1}, Lcom/htc/widget/HeaderBarDropDown;->setPrimaryText(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->setPrimaryVisibility(I)V

    .line 315
    return-void
.end method

.method private startCalendarMetafeedSync()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 843
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 844
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "force"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 845
    const-string v1, "metafeedonly"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 846
    const/4 v1, 0x0

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 848
    return-void
.end method


# virtual methods
.method public checkWhetherSaveAllCalendars()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 667
    :try_start_0
    iget-object v2, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mSelectedCalendars:Lcom/htc/calendar/SyncedHashMap;

    iget-object v3, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mCalendarsAdapter:Lcom/htc/calendar/MultiCalendarsAdapter;

    invoke-virtual {v3}, Lcom/htc/calendar/MultiCalendarsAdapter;->getSelectedCalendarHashMap()Lcom/htc/calendar/SyncedHashMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/calendar/SyncedHashMap;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 677
    :goto_0
    return v1

    .line 667
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 669
    :catch_0
    move-exception v0

    .line 670
    .local v0, e:Ljava/lang/Exception;
    iget-object v2, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mSelectedCalendars:Lcom/htc/calendar/SyncedHashMap;

    if-nez v2, :cond_1

    .line 671
    const-string v2, "CalendarTabs"

    const-string v3, "mSelectedCalendars is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_1
    iget-object v2, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mCalendarsAdapter:Lcom/htc/calendar/MultiCalendarsAdapter;

    if-nez v2, :cond_2

    .line 674
    const-string v2, "CalendarTabs"

    const-string v3, "mCalendarsAdapter is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public dismissProgressDialog()V
    .locals 3

    .prologue
    .line 731
    :try_start_0
    iget-object v1, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mUIHandler:Lcom/htc/calendar/CalendarCarouselActivity$UIHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/calendar/CalendarCarouselActivity$UIHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 735
    :goto_0
    return-void

    .line 732
    :catch_0
    move-exception v0

    .line 733
    .local v0, iae:Ljava/lang/IllegalArgumentException;
    const-string v1, "CalendarTabs"

    const-string v2, "dismiss dialog error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected editTab()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 951
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarCarouselActivity;->enterEditMode()V

    .line 952
    const v1, 0x1020011

    invoke-virtual {p0, v1}, Lcom/htc/calendar/CalendarCarouselActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 953
    .local v0, tabcontent:Landroid/widget/FrameLayout;
    iget v1, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mCarouselTopPadding:I

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 954
    return-void
.end method

.method public getAllDay()Z
    .locals 1

    .prologue
    .line 408
    const/4 v0, 0x0

    return v0
.end method

.method public getCalendarName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 682
    iget-object v2, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mSelectedCalendars:Lcom/htc/calendar/SyncedHashMap;

    invoke-virtual {v2}, Lcom/htc/calendar/SyncedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 684
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 685
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 687
    .local v0, id:Ljava/lang/Long;
    iget-object v2, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mSelectedCalendars:Lcom/htc/calendar/SyncedHashMap;

    invoke-virtual {v2, v0}, Lcom/htc/calendar/SyncedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 688
    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/calendar/CalendarContext;->getCalendarName(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    .line 692
    .end local v0           #id:Ljava/lang/Long;
    :goto_0
    return-object v2

    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method public getSelectedTime()J
    .locals 2

    .prologue
    .line 412
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public goTo(Landroid/text/format/Time;Z)V
    .locals 1
    .parameter "time"
    .parameter "animate"

    .prologue
    .line 424
    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/calendar/CalendarContext;->setCurrentSelectedTime(Landroid/text/format/Time;)V

    .line 425
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarCarouselActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/Navigator;

    invoke-interface {v0, p1, p2}, Lcom/htc/calendar/Navigator;->goTo(Landroid/text/format/Time;Z)V

    .line 426
    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/calendar/CalendarContext;->setCurrentSelectedTime(Landroid/text/format/Time;)V

    .line 427
    return-void
.end method

.method public goTo(Landroid/text/format/Time;ZLandroid/text/format/Time;)V
    .locals 1
    .parameter "time"
    .parameter "animate"
    .parameter "forcusOn"

    .prologue
    .line 417
    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/htc/calendar/CalendarContext;->setCurrentSelectedTime(Landroid/text/format/Time;)V

    .line 418
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarCarouselActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/Navigator;

    invoke-interface {v0, p1, p2, p3}, Lcom/htc/calendar/Navigator;->goTo(Landroid/text/format/Time;ZLandroid/text/format/Time;)V

    .line 419
    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/calendar/CalendarContext;->setCurrentSelectedTime(Landroid/text/format/Time;)V

    .line 420
    return-void
.end method

.method public goToToday()V
    .locals 0

    .prologue
    .line 430
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 433
    iget-object v6, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mHeaderAddBtn:Lcom/htc/widget/HeaderBarImage;

    if-ne p1, v6, :cond_1

    .line 434
    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/calendar/CalendarContext;->getCurrentSelectedTimeInMillis()J

    move-result-wide v4

    .line 435
    .local v4, startMillis:J
    const/4 v6, 0x0

    invoke-static {v6, v4, v5}, Lcom/htc/calendar/HtcUtils;->correctNewEventStartTime(ZJ)J

    move-result-wide v4

    .line 437
    const-wide/32 v6, 0x36ee80

    add-long v1, v4, v6

    .line 438
    .local v1, endMillis:J
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.EDIT"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 439
    .local v3, intent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mContext:Landroid/content/Context;

    const-class v7, Lcom/htc/calendar/EditEvent;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    const-string v6, "beginTime"

    invoke-virtual {v3, v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 441
    const-string v6, "endTime"

    invoke-virtual {v3, v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 442
    const-string v6, "allDay"

    invoke-virtual {p0}, Lcom/htc/calendar/CalendarCarouselActivity;->getAllDay()Z

    move-result v7

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 443
    invoke-virtual {p0, v3}, Lcom/htc/calendar/CalendarCarouselActivity;->startActivity(Landroid/content/Intent;)V

    .line 453
    .end local v1           #endMillis:J
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #startMillis:J
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    iget-object v6, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mHeaderSrchBtn:Lcom/htc/widget/HeaderBarImage;

    if-ne p1, v6, :cond_2

    .line 445
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarCarouselActivity;->onSearchRequested()Z

    goto :goto_0

    .line 446
    :cond_2
    iget-object v6, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    if-ne p1, v6, :cond_3

    .line 447
    iget-object v6, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v6}, Lcom/htc/widget/HeaderBarDropDown;->show()V

    goto :goto_0

    .line 448
    :cond_3
    iget-object v6, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mHeaderToday:Lcom/htc/widget/HeaderBarImage;

    if-ne p1, v6, :cond_0

    .line 449
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarCarouselActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/Navigator;

    .line 450
    .local v0, currActivity:Lcom/htc/calendar/Navigator;
    if-eqz v0, :cond_0

    .line 451
    invoke-interface {v0}, Lcom/htc/calendar/Navigator;->goToToday()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 464
    invoke-super {p0, p1}, Lcom/htc/widget/CarouselActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 466
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarCarouselActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 467
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarCarouselActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 469
    :cond_0
    iget-object v1, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/htc/calendar/HtcUtils;->getAppBackground(Landroid/content/Context;)I

    move-result v0

    .line 470
    .local v0, bkgId:I
    if-eqz v0, :cond_1

    .line 471
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarCarouselActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 473
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/calendar/CalendarCarouselActivity;->setGId(I)V

    .line 147
    invoke-super {p0, p1}, Lcom/htc/widget/CarouselActivity;->onCreate(Landroid/os/Bundle;)V

    .line 149
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/calendar/CalendarCarouselActivity;->requestWindowFeature(I)Z

    .line 150
    const v0, 0x7f030011

    invoke-virtual {p0, v0}, Lcom/htc/calendar/CalendarCarouselActivity;->setContentView(I)V

    .line 152
    invoke-static {}, Lcom/htc/calendar/Utils;->isSupportHWKeyBoard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/htc/calendar/CalendarCarouselActivity;->setDefaultKeyMode(I)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarCarouselActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mContext:Landroid/content/Context;

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mResources:Landroid/content/res/Resources;

    .line 161
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarCarouselActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mHost:Lcom/htc/widget/CarouselHost;

    .line 162
    new-instance v0, Lcom/htc/widget/HeaderBarDropDown;

    iget-object v1, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    .line 163
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HeaderBarDropDown;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HeaderBarDropDown;->setOnDismissListener(Lcom/htc/widget/PopupBubbleWindow$OnDismissListener;)V

    .line 167
    invoke-direct {p0}, Lcom/htc/calendar/CalendarCarouselActivity;->createAllCalendarLayout()V

    .line 168
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    iget-object v1, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mAllCalendarLayout:Lcom/htc/widget/HtcListItem;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarDropDown;->addHeaderView(Landroid/view/View;)V

    .line 170
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarCarouselActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/calendar/CalendarCarouselActivity;->processIntent(Landroid/content/Intent;)V

    .line 172
    invoke-direct {p0}, Lcom/htc/calendar/CalendarCarouselActivity;->initHeaderBtn()V

    .line 173
    invoke-direct {p0}, Lcom/htc/calendar/CalendarCarouselActivity;->initTabs()V

    .line 175
    new-instance v0, Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;

    invoke-virtual {p0}, Lcom/htc/calendar/CalendarCarouselActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;-><init>(Lcom/htc/calendar/CalendarCarouselActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mCalendarQueryHandler:Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;

    .line 176
    new-instance v0, Lcom/htc/calendar/CalendarCarouselActivity$UIHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/calendar/CalendarCarouselActivity$UIHandler;-><init>(Lcom/htc/calendar/CalendarCarouselActivity;Lcom/htc/calendar/CalendarCarouselActivity$1;)V

    iput-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mUIHandler:Lcom/htc/calendar/CalendarCarouselActivity$UIHandler;

    .line 177
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 477
    invoke-static {p1}, Lcom/htc/calendar/MenuHelper;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 478
    invoke-super {p0, p1}, Lcom/htc/widget/CarouselActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onCurrentTabChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "currentTab"

    .prologue
    .line 887
    invoke-super {p0, p1}, Lcom/htc/widget/CarouselActivity;->onCurrentTabChanged(Ljava/lang/String;)V

    .line 888
    const-string v0, "Agenda"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Invitation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mHeaderToday:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_1

    .line 890
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mHeaderToday:Lcom/htc/widget/HeaderBarImage;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 897
    :cond_1
    :goto_0
    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v0

    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/htc/calendar/CalendarContext;->convertTabString(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/calendar/CalendarContext;->updateStartActivity(I)V

    .line 898
    return-void

    .line 893
    :cond_2
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mHeaderToday:Lcom/htc/widget/HeaderBarImage;

    if-eqz v0, :cond_1

    .line 894
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mHeaderToday:Lcom/htc/widget/HeaderBarImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 212
    invoke-super {p0}, Lcom/htc/widget/CarouselActivity;->onDestroy()V

    .line 214
    iget-object v1, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mUIHandler:Lcom/htc/calendar/CalendarCarouselActivity$UIHandler;

    invoke-virtual {v1, v3}, Lcom/htc/calendar/CalendarCarouselActivity$UIHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 215
    iput-object v3, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mUIHandler:Lcom/htc/calendar/CalendarCarouselActivity$UIHandler;

    .line 217
    iget-object v1, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mCalendarQueryHandler:Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;->cancelOperation(I)V

    .line 218
    iput-object v3, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mCalendarQueryHandler:Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;

    .line 220
    iget-object v1, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mHost:Lcom/htc/widget/CarouselHost;

    if-eqz v1, :cond_0

    .line 221
    iget-object v1, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mHost:Lcom/htc/widget/CarouselHost;

    invoke-virtual {v1}, Lcom/htc/widget/CarouselHost;->removeAllViews()V

    .line 222
    iput-object v3, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mHost:Lcom/htc/widget/CarouselHost;

    .line 225
    :cond_0
    iput-object v3, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mContext:Landroid/content/Context;

    .line 226
    iput-object v3, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mDropDownList:Lcom/htc/widget/HeaderBarDropDown;

    .line 228
    iget-object v1, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mCalendarsAdapter:Lcom/htc/calendar/MultiCalendarsAdapter;

    if-eqz v1, :cond_1

    .line 229
    iget-object v1, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mCalendarsAdapter:Lcom/htc/calendar/MultiCalendarsAdapter;

    invoke-virtual {v1, v3}, Lcom/htc/calendar/MultiCalendarsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 230
    iput-object v3, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mCalendarsAdapter:Lcom/htc/calendar/MultiCalendarsAdapter;

    .line 233
    :cond_1
    iget-object v1, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mCalendarByAccountAdapter:Lcom/htc/calendar/MultiCalendarsByAccountAdapter;

    if-eqz v1, :cond_2

    .line 234
    iput-object v3, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mCalendarByAccountAdapter:Lcom/htc/calendar/MultiCalendarsByAccountAdapter;

    .line 237
    :cond_2
    new-instance v0, Lcom/htc/calendar/CalendarCarouselActivity$CloseCursorThread;

    iget-object v1, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mCursor:Landroid/database/Cursor;

    invoke-direct {v0, p0, v1}, Lcom/htc/calendar/CalendarCarouselActivity$CloseCursorThread;-><init>(Lcom/htc/calendar/CalendarCarouselActivity;Landroid/database/Cursor;)V

    .line 238
    .local v0, thread:Lcom/htc/calendar/CalendarCarouselActivity$CloseCursorThread;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "OnDestroy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/calendar/CalendarCarouselActivity$CloseCursorThread;->setName(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0}, Lcom/htc/calendar/CalendarCarouselActivity$CloseCursorThread;->start()V

    .line 241
    iget-object v1, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mSelectedCalendars:Lcom/htc/calendar/SyncedHashMap;

    invoke-virtual {v1}, Lcom/htc/calendar/SyncedHashMap;->clear()V

    .line 242
    iput-object v3, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mSelectedCalendars:Lcom/htc/calendar/SyncedHashMap;

    .line 244
    iput-object v3, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mResources:Landroid/content/res/Resources;

    .line 245
    return-void
.end method

.method public onDismiss()V
    .locals 1

    .prologue
    .line 716
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mDropDownListShow:Z

    .line 717
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/calendar/CalendarCarouselActivity;->saveAllCalendars(Z)V

    .line 718
    return-void
.end method

.method onEditDrawerCompleteClose()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 947
    const v1, 0x1020011

    invoke-virtual {p0, v1}, Lcom/htc/calendar/CalendarCarouselActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 948
    .local v0, tabcontent:Landroid/widget/FrameLayout;
    iget v1, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mCarouselTopPadding:I

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 949
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x0

    .line 617
    if-nez p2, :cond_0

    .line 618
    const-string v3, "CalendarTabs"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "view is null at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :goto_0
    return-void

    .line 622
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 623
    .local v2, obj:Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 624
    const-string v3, "CalendarTabs"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "position:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " no tag object"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 629
    :cond_1
    check-cast v2, Lcom/htc/calendar/widget/SimpleHtcListItemSeparable;

    .end local v2           #obj:Ljava/lang/Object;
    invoke-virtual {v2}, Lcom/htc/calendar/widget/SimpleHtcListItemSeparable;->getId()J

    move-result-wide v0

    .line 631
    .local v0, calendar_id:J
    const-string v3, "CalendarTabs"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onItemClick calendar_id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_3

    .line 634
    iget-object v3, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mAllCalendarCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 635
    iput-boolean v6, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mIsAllChecked:Z

    .line 640
    :goto_1
    iget-object v3, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mCalendarsAdapter:Lcom/htc/calendar/MultiCalendarsAdapter;

    iget-boolean v4, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mIsAllChecked:Z

    invoke-virtual {v3, v4}, Lcom/htc/calendar/MultiCalendarsAdapter;->checkAllCalendars(Z)V

    .line 641
    iget-object v3, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mCalendarsAdapter:Lcom/htc/calendar/MultiCalendarsAdapter;

    invoke-virtual {v3}, Lcom/htc/calendar/MultiCalendarsAdapter;->notifyDataSetChanged()V

    .line 642
    iget-object v3, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mCalendarByAccountAdapter:Lcom/htc/calendar/MultiCalendarsByAccountAdapter;

    invoke-virtual {v3}, Lcom/htc/calendar/MultiCalendarsByAccountAdapter;->notifyDataSetChanged()V

    .line 650
    :goto_2
    iget-object v3, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mAllCalendarCheckBox:Landroid/widget/CheckBox;

    iget-boolean v4, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mIsAllChecked:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 637
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mIsAllChecked:Z

    goto :goto_1

    .line 644
    :cond_3
    iget-object v3, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mCalendarsAdapter:Lcom/htc/calendar/MultiCalendarsAdapter;

    invoke-virtual {v3, p2}, Lcom/htc/calendar/MultiCalendarsAdapter;->setIntoCalendarDB(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 645
    iput-boolean v6, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mIsAllChecked:Z

    goto :goto_2

    .line 647
    :cond_4
    iget-object v3, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mCalendarsAdapter:Lcom/htc/calendar/MultiCalendarsAdapter;

    invoke-virtual {v3}, Lcom/htc/calendar/MultiCalendarsAdapter;->isAllCalendarsChecked()Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mIsAllChecked:Z

    goto :goto_2
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 249
    invoke-super {p0, p1}, Lcom/htc/widget/CarouselActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 251
    invoke-virtual {p0, p1}, Lcom/htc/calendar/CalendarCarouselActivity;->setIntent(Landroid/content/Intent;)V

    .line 252
    invoke-direct {p0, p1}, Lcom/htc/calendar/CalendarCarouselActivity;->processIntent(Landroid/content/Intent;)V

    .line 253
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 491
    invoke-static {p0, p1, p0}, Lcom/htc/calendar/MenuHelper;->onOptionsItemSelected(Landroid/app/Activity;Landroid/view/MenuItem;Lcom/htc/calendar/Navigator;)Z

    .line 492
    invoke-super {p0, p1}, Lcom/htc/widget/CarouselActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 202
    invoke-super {p0}, Lcom/htc/widget/CarouselActivity;->onPause()V

    .line 203
    invoke-direct {p0}, Lcom/htc/calendar/CalendarCarouselActivity;->dismissDropDownList()V

    .line 204
    iget-boolean v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mbIsReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/calendar/CalendarCarouselActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mbIsReceiverRegistered:Z

    .line 208
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 483
    invoke-direct {p0}, Lcom/htc/calendar/CalendarCarouselActivity;->dismissDropDownList()V

    .line 485
    invoke-static {p0, p1}, Lcom/htc/calendar/MenuHelper;->onPrepareOptionsMenu(Landroid/app/Activity;Landroid/view/Menu;)V

    .line 486
    invoke-super {p0, p1}, Lcom/htc/widget/CarouselActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 181
    invoke-super {p0}, Lcom/htc/widget/CarouselActivity;->onResume()V

    .line 182
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcom/htc/calendar/CalendarCarouselActivity$1;

    invoke-direct {v1, p0}, Lcom/htc/calendar/CalendarCarouselActivity$1;-><init>(Lcom/htc/calendar/CalendarCarouselActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 197
    invoke-direct {p0}, Lcom/htc/calendar/CalendarCarouselActivity;->initReceiver()V

    .line 198
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 457
    invoke-direct {p0}, Lcom/htc/calendar/CalendarCarouselActivity;->dismissDropDownList()V

    .line 459
    invoke-static {p0}, Lcom/htc/calendar/Utils;->onSearchRequestedLocked(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public onShow()V
    .locals 1

    .prologue
    .line 709
    iget-boolean v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mDropDownListShow:Z

    if-nez v0, :cond_0

    .line 710
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarCarouselActivity;->startQueryCalendars()V

    .line 711
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mDropDownListShow:Z

    .line 713
    :cond_0
    return-void
.end method

.method public onTabEndSliding(Ljava/lang/String;)V
    .locals 3
    .parameter "endTag"

    .prologue
    const/4 v2, 0x0

    .line 938
    const v1, 0x1020011

    invoke-virtual {p0, v1}, Lcom/htc/calendar/CalendarCarouselActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 939
    .local v0, tabcontent:Landroid/widget/FrameLayout;
    iget v1, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mCarouselTopPadding:I

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 940
    return-void
.end method

.method public onTabStartSliding(Ljava/lang/String;)V
    .locals 3
    .parameter "startTag"

    .prologue
    const/4 v2, 0x0

    .line 943
    const v1, 0x1020011

    invoke-virtual {p0, v1}, Lcom/htc/calendar/CalendarCarouselActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 944
    .local v0, tabcontent:Landroid/widget/FrameLayout;
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 945
    return-void
.end method

.method public saveAllCalendars(Z)V
    .locals 1
    .parameter "bNeedCloseProgressDialog"

    .prologue
    .line 654
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarCarouselActivity;->checkWhetherSaveAllCalendars()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarCarouselActivity;->showProgressDialog()V

    .line 656
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mCalendarsAdapter:Lcom/htc/calendar/MultiCalendarsAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/calendar/MultiCalendarsAdapter;->saveAllCalendars(Z)V

    .line 657
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mCalendarsAdapter:Lcom/htc/calendar/MultiCalendarsAdapter;

    invoke-virtual {v0}, Lcom/htc/calendar/MultiCalendarsAdapter;->getSelectedCalendarHashMap()Lcom/htc/calendar/SyncedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mSelectedCalendars:Lcom/htc/calendar/SyncedHashMap;

    .line 658
    invoke-direct {p0}, Lcom/htc/calendar/CalendarCarouselActivity;->setCalendarTitle()V

    .line 660
    :cond_0
    return-void
.end method

.method public showProgressDialog()V
    .locals 4

    .prologue
    .line 721
    iget-object v2, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f080084

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 722
    .local v1, title:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f08003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 723
    .local v0, msg:Ljava/lang/CharSequence;
    new-instance v2, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v2, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 724
    iget-object v2, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2, v1}, Lcom/htc/app/HtcProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 725
    iget-object v2, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2, v0}, Lcom/htc/app/HtcProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 726
    iget-object v2, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->show()V

    .line 727
    return-void
.end method

.method public startQueryCalendars()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 521
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mCalendarQueryHandler:Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;->cancelOperation(I)V

    .line 522
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity;->mCalendarQueryHandler:Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/htc/calendar/CalendarCarouselActivity;->PROJECTION:[Ljava/lang/String;

    const-string v7, "_id,displayOrder,calendar_displayName,account_name"

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/calendar/CalendarCarouselActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    return-void
.end method
