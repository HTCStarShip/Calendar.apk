.class public Lcom/htc/calendar/EventListView;
.super Lcom/htc/calendar/widget/HtcCalListView;
.source "EventListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/calendar/EventListView$CheckEventGotoWhereThread;,
        Lcom/htc/calendar/EventListView$ContextMenuHandler;
    }
.end annotation


# static fields
.field public static final AGENDA_SORT_ORDER:Ljava/lang/String; = "startDay ASC, begin ASC, title ASC"

.field public static final EVENT_INDEX_DESCRIPTION:I = 0x0

.field public static final EVENT_INDEX_DTEND:I = 0x1

.field public static final EVENT_INDEX_DTSTART:I = 0x2

.field public static final EVENT_INDEX_DURATION:I = 0x3

.field public static final EVENT_INDEX_EVENT_LOCATION:I = 0xc

.field public static final EVENT_INDEX_EXDATE:I = 0x9

.field public static final EVENT_INDEX_EXRULE:I = 0x8

.field public static final EVENT_INDEX_HAS_ALARM:I = 0x4

.field public static final EVENT_INDEX_ICALENDAR_UID:I = 0xd

.field public static final EVENT_INDEX_LAST_DATE:I = 0x5

.field public static final EVENT_INDEX_RDATE:I = 0x7

.field public static final EVENT_INDEX_RRULE:I = 0x6

.field public static final EVENT_INDEX_STATUS:I = 0xa

.field public static final EVENT_INDEX_TIMEZONE:I = 0xe

.field public static final EVENT_INDEX_TITLE:I = 0xb

.field public static final EVENT_PROJECTION:[Ljava/lang/String; = null

.field public static final INDEX_ACCESS_LEVEL:I = 0x11

.field public static final INDEX_ALL_DAY:I = 0x3

.field public static final INDEX_BEGIN:I = 0x7

.field public static final INDEX_CALENDAR_ID:I = 0xe

.field public static final INDEX_COLOR:I = 0x5

.field public static final INDEX_END:I = 0x8

.field public static final INDEX_END_DAY:I = 0xb

.field public static final INDEX_EVENT_ID:I = 0x9

.field public static final INDEX_EVENT_LOCATION:I = 0x2

.field public static final INDEX_FB_AVATAR_LOCAL:I = 0x17

.field public static final INDEX_FB_AVATAR_SMALL:I = 0x16

.field public static final INDEX_FB_SOURCE_ID:I = 0x14

.field public static final INDEX_FB_TYPE:I = 0x15

.field public static final INDEX_GUESTS_CAN_MODIFY:I = 0x10

.field public static final INDEX_HAS_ALARM:I = 0x4

.field public static final INDEX_ICALENDAR_UID:I = 0xd

.field public static final INDEX_ORGANIZER:I = 0xf

.field public static final INDEX_OWNER_ACCOUNT:I = 0x12

.field public static final INDEX_RRULE:I = 0x6

.field public static final INDEX_SELF_ATTENDEE_STATUS:I = 0xc

.field public static final INDEX_START_DAY:I = 0xa

.field public static final INDEX_SYNC_ACCOUNT_TYPE:I = 0x13

.field public static final INDEX_TITLE:I = 0x1

.field public static final PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "EventListView"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAdapter:Lcom/htc/calendar/EventAdapter;

.field private mContext:Landroid/content/Context;

.field private mContextMenuHandler:Lcom/htc/calendar/EventListView$ContextMenuHandler;

.field private mCursor:Landroid/database/Cursor;

.field private mDayAdapter:Lcom/htc/calendar/EventByDayAdapter;

.field private mDeleteEventHelper:Lcom/htc/calendar/DeleteEventHelper;

.field private mHandler:Landroid/os/Handler;

.field private mMode:I

.field private mOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

.field private mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mSelectedEventBegin:J

.field private mSelectedEventEditable:Z

.field private mSelectedEventEnd:J

.field private mSelectedEventId:J

.field private mSelectedEventTitle:Ljava/lang/String;

.field private mSelectedGUID:Ljava/lang/String;

.field private mShowDayInfo:Z

.field private mUpdate:Z

.field private onCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    const/16 v0, 0x18

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "eventLocation"

    aput-object v1, v0, v5

    const-string v1, "allDay"

    aput-object v1, v0, v6

    const-string v1, "hasAlarm"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "end"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "startDay"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "endDay"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "selfAttendeeStatus"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "iCalGUID"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "organizer"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "guestsCanModify"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "calendar_access_level"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "ownerAccount"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "facebook_source_id"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "facebook_type"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "facebook_avatar_small"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "facebook_avatar_local"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/calendar/EventListView;->PROJECTION:[Ljava/lang/String;

    .line 96
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "description"

    aput-object v1, v0, v3

    const-string v1, "dtend"

    aput-object v1, v0, v4

    const-string v1, "dtstart"

    aput-object v1, v0, v5

    const-string v1, "duration"

    aput-object v1, v0, v6

    const-string v1, "hasAlarm"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "lastDate"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "rdate"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "exrule"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "exdate"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "eventStatus"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "iCalGUID"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "calendar_timezone"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/calendar/EventListView;->EVENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 153
    invoke-direct {p0, p1}, Lcom/htc/calendar/widget/HtcCalListView;-><init>(Landroid/content/Context;)V

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/calendar/EventListView;->mShowDayInfo:Z

    .line 139
    iput-boolean v1, p0, Lcom/htc/calendar/EventListView;->mUpdate:Z

    .line 142
    iput-wide v3, p0, Lcom/htc/calendar/EventListView;->mSelectedEventId:J

    .line 143
    iput-wide v3, p0, Lcom/htc/calendar/EventListView;->mSelectedEventBegin:J

    .line 144
    iput-wide v3, p0, Lcom/htc/calendar/EventListView;->mSelectedEventEnd:J

    .line 145
    iput-boolean v1, p0, Lcom/htc/calendar/EventListView;->mSelectedEventEditable:Z

    .line 146
    iput-object v2, p0, Lcom/htc/calendar/EventListView;->mSelectedEventTitle:Ljava/lang/String;

    .line 147
    iput-object v2, p0, Lcom/htc/calendar/EventListView;->mSelectedGUID:Ljava/lang/String;

    .line 150
    iput v1, p0, Lcom/htc/calendar/EventListView;->mMode:I

    .line 242
    new-instance v0, Lcom/htc/calendar/EventListView$1;

    invoke-direct {v0, p0}, Lcom/htc/calendar/EventListView$1;-><init>(Lcom/htc/calendar/EventListView;)V

    iput-object v0, p0, Lcom/htc/calendar/EventListView;->mOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 339
    new-instance v0, Lcom/htc/calendar/EventListView$ContextMenuHandler;

    invoke-direct {v0, p0, v2}, Lcom/htc/calendar/EventListView$ContextMenuHandler;-><init>(Lcom/htc/calendar/EventListView;Lcom/htc/calendar/EventListView$1;)V

    iput-object v0, p0, Lcom/htc/calendar/EventListView;->mContextMenuHandler:Lcom/htc/calendar/EventListView$ContextMenuHandler;

    .line 402
    new-instance v0, Lcom/htc/calendar/EventListView$2;

    invoke-direct {v0, p0}, Lcom/htc/calendar/EventListView$2;-><init>(Lcom/htc/calendar/EventListView;)V

    iput-object v0, p0, Lcom/htc/calendar/EventListView;->onCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 455
    new-instance v0, Lcom/htc/calendar/EventListView$3;

    invoke-direct {v0, p0}, Lcom/htc/calendar/EventListView$3;-><init>(Lcom/htc/calendar/EventListView;)V

    iput-object v0, p0, Lcom/htc/calendar/EventListView;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    .line 573
    new-instance v0, Lcom/htc/calendar/EventListView$4;

    invoke-direct {v0, p0}, Lcom/htc/calendar/EventListView$4;-><init>(Lcom/htc/calendar/EventListView;)V

    iput-object v0, p0, Lcom/htc/calendar/EventListView;->mHandler:Landroid/os/Handler;

    .line 154
    invoke-virtual {p0, p1}, Lcom/htc/calendar/EventListView;->init(Landroid/content/Context;)V

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 163
    invoke-direct {p0, p1, p2}, Lcom/htc/calendar/widget/HtcCalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/calendar/EventListView;->mShowDayInfo:Z

    .line 139
    iput-boolean v1, p0, Lcom/htc/calendar/EventListView;->mUpdate:Z

    .line 142
    iput-wide v3, p0, Lcom/htc/calendar/EventListView;->mSelectedEventId:J

    .line 143
    iput-wide v3, p0, Lcom/htc/calendar/EventListView;->mSelectedEventBegin:J

    .line 144
    iput-wide v3, p0, Lcom/htc/calendar/EventListView;->mSelectedEventEnd:J

    .line 145
    iput-boolean v1, p0, Lcom/htc/calendar/EventListView;->mSelectedEventEditable:Z

    .line 146
    iput-object v2, p0, Lcom/htc/calendar/EventListView;->mSelectedEventTitle:Ljava/lang/String;

    .line 147
    iput-object v2, p0, Lcom/htc/calendar/EventListView;->mSelectedGUID:Ljava/lang/String;

    .line 150
    iput v1, p0, Lcom/htc/calendar/EventListView;->mMode:I

    .line 242
    new-instance v0, Lcom/htc/calendar/EventListView$1;

    invoke-direct {v0, p0}, Lcom/htc/calendar/EventListView$1;-><init>(Lcom/htc/calendar/EventListView;)V

    iput-object v0, p0, Lcom/htc/calendar/EventListView;->mOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 339
    new-instance v0, Lcom/htc/calendar/EventListView$ContextMenuHandler;

    invoke-direct {v0, p0, v2}, Lcom/htc/calendar/EventListView$ContextMenuHandler;-><init>(Lcom/htc/calendar/EventListView;Lcom/htc/calendar/EventListView$1;)V

    iput-object v0, p0, Lcom/htc/calendar/EventListView;->mContextMenuHandler:Lcom/htc/calendar/EventListView$ContextMenuHandler;

    .line 402
    new-instance v0, Lcom/htc/calendar/EventListView$2;

    invoke-direct {v0, p0}, Lcom/htc/calendar/EventListView$2;-><init>(Lcom/htc/calendar/EventListView;)V

    iput-object v0, p0, Lcom/htc/calendar/EventListView;->onCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 455
    new-instance v0, Lcom/htc/calendar/EventListView$3;

    invoke-direct {v0, p0}, Lcom/htc/calendar/EventListView$3;-><init>(Lcom/htc/calendar/EventListView;)V

    iput-object v0, p0, Lcom/htc/calendar/EventListView;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    .line 573
    new-instance v0, Lcom/htc/calendar/EventListView$4;

    invoke-direct {v0, p0}, Lcom/htc/calendar/EventListView$4;-><init>(Lcom/htc/calendar/EventListView;)V

    iput-object v0, p0, Lcom/htc/calendar/EventListView;->mHandler:Landroid/os/Handler;

    .line 164
    invoke-virtual {p0, p1}, Lcom/htc/calendar/EventListView;->init(Landroid/content/Context;)V

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 158
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/calendar/widget/HtcCalListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 138
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/calendar/EventListView;->mShowDayInfo:Z

    .line 139
    iput-boolean v1, p0, Lcom/htc/calendar/EventListView;->mUpdate:Z

    .line 142
    iput-wide v3, p0, Lcom/htc/calendar/EventListView;->mSelectedEventId:J

    .line 143
    iput-wide v3, p0, Lcom/htc/calendar/EventListView;->mSelectedEventBegin:J

    .line 144
    iput-wide v3, p0, Lcom/htc/calendar/EventListView;->mSelectedEventEnd:J

    .line 145
    iput-boolean v1, p0, Lcom/htc/calendar/EventListView;->mSelectedEventEditable:Z

    .line 146
    iput-object v2, p0, Lcom/htc/calendar/EventListView;->mSelectedEventTitle:Ljava/lang/String;

    .line 147
    iput-object v2, p0, Lcom/htc/calendar/EventListView;->mSelectedGUID:Ljava/lang/String;

    .line 150
    iput v1, p0, Lcom/htc/calendar/EventListView;->mMode:I

    .line 242
    new-instance v0, Lcom/htc/calendar/EventListView$1;

    invoke-direct {v0, p0}, Lcom/htc/calendar/EventListView$1;-><init>(Lcom/htc/calendar/EventListView;)V

    iput-object v0, p0, Lcom/htc/calendar/EventListView;->mOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 339
    new-instance v0, Lcom/htc/calendar/EventListView$ContextMenuHandler;

    invoke-direct {v0, p0, v2}, Lcom/htc/calendar/EventListView$ContextMenuHandler;-><init>(Lcom/htc/calendar/EventListView;Lcom/htc/calendar/EventListView$1;)V

    iput-object v0, p0, Lcom/htc/calendar/EventListView;->mContextMenuHandler:Lcom/htc/calendar/EventListView$ContextMenuHandler;

    .line 402
    new-instance v0, Lcom/htc/calendar/EventListView$2;

    invoke-direct {v0, p0}, Lcom/htc/calendar/EventListView$2;-><init>(Lcom/htc/calendar/EventListView;)V

    iput-object v0, p0, Lcom/htc/calendar/EventListView;->onCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 455
    new-instance v0, Lcom/htc/calendar/EventListView$3;

    invoke-direct {v0, p0}, Lcom/htc/calendar/EventListView$3;-><init>(Lcom/htc/calendar/EventListView;)V

    iput-object v0, p0, Lcom/htc/calendar/EventListView;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    .line 573
    new-instance v0, Lcom/htc/calendar/EventListView$4;

    invoke-direct {v0, p0}, Lcom/htc/calendar/EventListView$4;-><init>(Lcom/htc/calendar/EventListView;)V

    iput-object v0, p0, Lcom/htc/calendar/EventListView;->mHandler:Landroid/os/Handler;

    .line 159
    invoke-virtual {p0, p1}, Lcom/htc/calendar/EventListView;->init(Landroid/content/Context;)V

    .line 160
    return-void
.end method

.method static synthetic access$000(Lcom/htc/calendar/EventListView;)Lcom/htc/calendar/EventByDayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/calendar/EventListView;->mDayAdapter:Lcom/htc/calendar/EventByDayAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/calendar/EventListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/htc/calendar/EventListView;->mShowDayInfo:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/calendar/EventListView;)Lcom/htc/calendar/DeleteEventHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/calendar/EventListView;->mDeleteEventHelper:Lcom/htc/calendar/DeleteEventHelper;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/calendar/EventListView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/calendar/EventListView;->mSelectedEventTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/htc/calendar/EventListView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/htc/calendar/EventListView;->mSelectedEventTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/htc/calendar/EventListView;)Lcom/htc/calendar/EventListView$ContextMenuHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/calendar/EventListView;->mContextMenuHandler:Lcom/htc/calendar/EventListView$ContextMenuHandler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/calendar/EventListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/htc/calendar/EventListView;->mSelectedEventEditable:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/htc/calendar/EventListView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/htc/calendar/EventListView;->mSelectedEventEditable:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/htc/calendar/EventListView;Landroid/database/Cursor;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/htc/calendar/EventListView;->isEventEditable(Landroid/database/Cursor;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/htc/calendar/EventListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/htc/calendar/EventListView;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/calendar/EventListView;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/calendar/EventListView;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/calendar/EventListView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/calendar/EventListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/calendar/EventListView;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/calendar/EventListView;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/calendar/EventListView;Lcom/htc/app/HtcProgressDialog;)Lcom/htc/app/HtcProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/htc/calendar/EventListView;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/calendar/EventListView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/htc/calendar/EventListView;->mSelectedEventId:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/htc/calendar/EventListView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/htc/calendar/EventListView;->mSelectedEventId:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/htc/calendar/EventListView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/htc/calendar/EventListView;->mSelectedEventBegin:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/htc/calendar/EventListView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/htc/calendar/EventListView;->mSelectedEventBegin:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/htc/calendar/EventListView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 42
    iget-wide v0, p0, Lcom/htc/calendar/EventListView;->mSelectedEventEnd:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/htc/calendar/EventListView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-wide p1, p0, Lcom/htc/calendar/EventListView;->mSelectedEventEnd:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/htc/calendar/EventListView;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/htc/calendar/EventListView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private dismissProgressDialog()V
    .locals 3

    .prologue
    .line 567
    :try_start_0
    iget-object v1, p0, Lcom/htc/calendar/EventListView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    :goto_0
    return-void

    .line 568
    :catch_0
    move-exception v0

    .line 569
    .local v0, iae:Ljava/lang/IllegalArgumentException;
    const-string v1, "EventListView"

    const-string v2, "dismiss dialog error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isEventEditable(Landroid/database/Cursor;)Z
    .locals 14
    .parameter "cursor"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 497
    const/4 v8, 0x0

    .line 498
    .local v8, visibility:I
    const/4 v7, 0x2

    .line 500
    .local v7, relationship:I
    const/16 v11, 0xe

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 501
    .local v0, calId:J
    const/16 v11, 0xf

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 502
    .local v6, organizer:Ljava/lang/String;
    const/16 v11, 0x10

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-eqz v11, :cond_0

    move v4, v9

    .line 504
    .local v4, guestsCanModify:Z
    :goto_0
    const/4 v2, 0x0

    .line 505
    .local v2, calendarOwnerAccount:Ljava/lang/String;
    invoke-static {}, Landroid/provider/HtcExCalendar;->getGoogleAccountType()Ljava/lang/String;

    move-result-object v3

    .line 507
    .local v3, eventCalendar_syncAccountType:Ljava/lang/String;
    const/16 v11, 0x13

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 508
    const/16 v11, 0x11

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 509
    const/16 v11, 0x12

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 511
    const/16 v11, 0x1f4

    if-ge v8, v11, :cond_1

    .line 512
    const-string v9, "EventListView"

    const-string v11, "isEventEditable false (visibility < Calendars.CONTRIBUTOR_ACCESS) "

    invoke-static {v9, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :goto_1
    return v10

    .end local v2           #calendarOwnerAccount:Ljava/lang/String;
    .end local v3           #eventCalendar_syncAccountType:Ljava/lang/String;
    .end local v4           #guestsCanModify:Z
    :cond_0
    move v4, v10

    .line 502
    goto :goto_0

    .line 516
    .restart local v2       #calendarOwnerAccount:Ljava/lang/String;
    .restart local v3       #eventCalendar_syncAccountType:Ljava/lang/String;
    .restart local v4       #guestsCanModify:Z
    :cond_1
    if-eqz v4, :cond_2

    move v10, v9

    .line 517
    goto :goto_1

    .line 520
    :cond_2
    const-string v11, "EventListView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "calendarOwnerAccount: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " organizer: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const/4 v5, 0x0

    .line 522
    .local v5, isEditable:Z
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    :cond_3
    invoke-static {v3}, Lcom/htc/calendar/HtcUtils;->isHTCExchangeEvent(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-static {v3}, Lcom/htc/calendar/HtcUtils;->isHTCPCSyncEvent(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    move v5, v9

    :goto_2
    move v10, v5

    .line 525
    goto :goto_1

    :cond_5
    move v5, v10

    .line 522
    goto :goto_2
.end method


# virtual methods
.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/htc/calendar/EventListView;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getDayAdapter()Lcom/htc/calendar/EventByDayAdapter;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/htc/calendar/EventListView;->mDayAdapter:Lcom/htc/calendar/EventByDayAdapter;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 168
    invoke-virtual {p0}, Lcom/htc/calendar/EventListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2080700

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/calendar/EventListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 170
    iget-object v0, p0, Lcom/htc/calendar/EventListView;->mOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {p0, v0}, Lcom/htc/calendar/EventListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/htc/calendar/EventListView;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    invoke-virtual {p0, v0}, Lcom/htc/calendar/EventListView;->setOnItemLongClickListener(Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;)V

    .line 172
    iget-object v0, p0, Lcom/htc/calendar/EventListView;->onCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {p0, v0}, Lcom/htc/calendar/EventListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 173
    invoke-virtual {p0, v2}, Lcom/htc/calendar/EventListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 174
    invoke-virtual {p0, v2}, Lcom/htc/calendar/EventListView;->setFastScrollEnabled(Z)V

    .line 177
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/htc/wrap/android/view/HtcWrapView;->setRoundedCornerEnabled(Landroid/view/View;Z)V

    .line 180
    invoke-virtual {p0, v2}, Lcom/htc/calendar/EventListView;->setCacheColorHint(I)V

    .line 181
    new-instance v0, Lcom/htc/calendar/EventAdapter;

    const v1, 0x7f030012

    invoke-direct {v0, p1, v1}, Lcom/htc/calendar/EventAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/htc/calendar/EventListView;->mAdapter:Lcom/htc/calendar/EventAdapter;

    .line 182
    new-instance v0, Lcom/htc/calendar/EventByDayAdapter;

    iget-object v1, p0, Lcom/htc/calendar/EventListView;->mAdapter:Lcom/htc/calendar/EventAdapter;

    invoke-direct {v0, p1, v1}, Lcom/htc/calendar/EventByDayAdapter;-><init>(Landroid/content/Context;Lcom/htc/calendar/EventAdapter;)V

    iput-object v0, p0, Lcom/htc/calendar/EventListView;->mDayAdapter:Lcom/htc/calendar/EventByDayAdapter;

    .line 183
    iput-object p1, p0, Lcom/htc/calendar/EventListView;->mContext:Landroid/content/Context;

    .line 184
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 235
    invoke-super {p0}, Lcom/htc/calendar/widget/HtcCalListView;->onDetachedFromWindow()V

    .line 236
    const-string v0, "EventListView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/htc/calendar/EventListView;->mAdapter:Lcom/htc/calendar/EventAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/calendar/EventAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 238
    invoke-direct {p0}, Lcom/htc/calendar/EventListView;->dismissProgressDialog()V

    .line 239
    iget-object v0, p0, Lcom/htc/calendar/EventListView;->mDeleteEventHelper:Lcom/htc/calendar/DeleteEventHelper;

    invoke-virtual {v0}, Lcom/htc/calendar/DeleteEventHelper;->cancel()V

    .line 240
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 589
    iget-object v0, p0, Lcom/htc/calendar/EventListView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    const/4 v0, 0x1

    .line 592
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/calendar/widget/HtcCalListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 191
    iput-object p1, p0, Lcom/htc/calendar/EventListView;->mActivity:Landroid/app/Activity;

    .line 192
    new-instance v0, Lcom/htc/calendar/DeleteEventHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/htc/calendar/DeleteEventHelper;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/htc/calendar/EventListView;->mDeleteEventHelper:Lcom/htc/calendar/DeleteEventHelper;

    .line 194
    return-void
.end method

.method public setCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 222
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/htc/calendar/EventListView;->setCursor(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public setCursor(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 2
    .parameter "cursor"
    .parameter "highLight"

    .prologue
    const/4 v1, 0x1

    .line 204
    iput-object p1, p0, Lcom/htc/calendar/EventListView;->mCursor:Landroid/database/Cursor;

    .line 205
    iget-object v0, p0, Lcom/htc/calendar/EventListView;->mDayAdapter:Lcom/htc/calendar/EventByDayAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/calendar/EventByDayAdapter;->calculateDays(Landroid/database/Cursor;)V

    .line 206
    iget-object v0, p0, Lcom/htc/calendar/EventListView;->mAdapter:Lcom/htc/calendar/EventAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/calendar/EventAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 208
    iget v0, p0, Lcom/htc/calendar/EventListView;->mMode:I

    if-ne v0, v1, :cond_0

    .line 209
    iget-object v0, p0, Lcom/htc/calendar/EventListView;->mAdapter:Lcom/htc/calendar/EventAdapter;

    invoke-virtual {v0, p2}, Lcom/htc/calendar/EventAdapter;->setHightLight(Ljava/lang/String;)V

    .line 212
    :cond_0
    iget-boolean v0, p0, Lcom/htc/calendar/EventListView;->mShowDayInfo:Z

    if-eqz v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/htc/calendar/EventListView;->mDayAdapter:Lcom/htc/calendar/EventByDayAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/calendar/EventListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 219
    :cond_1
    :goto_0
    return-void

    .line 215
    :cond_2
    iget-boolean v0, p0, Lcom/htc/calendar/EventListView;->mUpdate:Z

    if-nez v0, :cond_1

    .line 216
    iput-boolean v1, p0, Lcom/htc/calendar/EventListView;->mUpdate:Z

    .line 217
    iget-object v0, p0, Lcom/htc/calendar/EventListView;->mAdapter:Lcom/htc/calendar/EventAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/calendar/EventListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public setMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 197
    iput p1, p0, Lcom/htc/calendar/EventListView;->mMode:I

    .line 198
    iget-object v0, p0, Lcom/htc/calendar/EventListView;->mAdapter:Lcom/htc/calendar/EventAdapter;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/htc/calendar/EventListView;->mAdapter:Lcom/htc/calendar/EventAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/calendar/EventAdapter;->setMode(I)V

    .line 201
    :cond_0
    return-void
.end method

.method public setShowDayInfo(Z)V
    .locals 0
    .parameter "showDayInfo"

    .prologue
    .line 187
    iput-boolean p1, p0, Lcom/htc/calendar/EventListView;->mShowDayInfo:Z

    .line 188
    return-void
.end method
