.class public Lcom/htc/calendar/AgendaWindowAdapter;
.super Landroid/widget/BaseAdapter;
.source "AgendaWindowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;,
        Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;,
        Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;,
        Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;
    }
.end annotation


# static fields
.field private static final AGENDA_SORT_ORDER:Ljava/lang/String; = "startDay ASC, begin ASC, title ASC"

.field static final BASICLOG:Z = false

.field static final DEBUGLOG:Z = false

.field static final DEBUG_HTC:Z = false

.field private static END_TIME_QUERY_CRITERIA:I = 0x0

.field private static final IDEAL_NUM_OF_EVENTS:I = 0x32

.field public static final INDEX_ALL_DAY:I = 0x3

.field public static final INDEX_BEGIN:I = 0x7

.field public static final INDEX_COLOR:I = 0x5

.field public static final INDEX_END:I = 0x8

.field public static final INDEX_END_DAY:I = 0xb

.field public static final INDEX_EVENT_ID:I = 0x9

.field public static final INDEX_EVENT_LOCATION:I = 0x2

.field public static final INDEX_FB_AVATAR_LOCAL:I = 0x10

.field public static final INDEX_FB_AVATAR_SMALL:I = 0xf

.field public static final INDEX_FB_SOURCE_ID:I = 0xd

.field public static final INDEX_FB_TYPE:I = 0xe

.field public static final INDEX_HAS_ALARM:I = 0x4

.field public static final INDEX_ICALENDAR_UID:I = 0x12

.field public static final INDEX_RRULE:I = 0x6

.field public static final INDEX_SELF_ATTENDEE_STATUS:I = 0xc

.field public static final INDEX_START_DAY:I = 0xa

.field public static final INDEX_SYNC_ACCOUNT_TYPE:I = 0x11

.field public static final INDEX_TITLE:I = 0x1

.field private static final MAX_NUM_OF_ADAPTERS:I = 0xa

.field private static final MAX_QUERY_DURATION:I = 0x5a

.field private static final MIN_QUERY_DURATION:I = 0x7

.field private static final OFF_BY_ONE_BUG:I = 0x1

.field private static final PREFETCH_BOUNDARY:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final QUERY_TYPE_CLEAN:I = 0x2

.field private static final QUERY_TYPE_NEWER:I = 0x1

.field private static final QUERY_TYPE_OLDER:I = 0x0

.field private static final RETRIES_ON_NO_DATA:I = 0x1

.field private static START_TIME_QUERY_CRITERIA:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mAdapterInfos:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAgendaListView:Lcom/htc/calendar/AgendaListView;

.field private mContext:Landroid/content/Context;

.field private mDoneSettingUpHeaderFooter:Z

.field private mEmptyCursorCount:I

.field mFlFooter:Lcom/htc/widget/HtcListItem;

.field mFlHeader:Lcom/htc/widget/HtcListItem;

.field private mFooterView:Lcom/htc/widget/HtcListItemSingleText;

.field private mHeaderView:Lcom/htc/widget/HtcListItemSingleText;

.field private mHideDeclined:Z

.field private mLastUsedInfo:Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;

.field private mNewerRequests:I

.field private mNewerRequestsProcessed:I

.field private mOlderRequests:I

.field private mOlderRequestsProcessed:I

.field private mQueryHandler:Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;

.field private mQueryNewerCount:I

.field private mQueryOlderCount:I

.field private mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;",
            ">;"
        }
    .end annotation
.end field

.field private mRowCount:I

.field private mShuttingDown:Z

.field private mUpdateTZ:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 76
    const-string v0, "AgendaWindowAdapter"

    sput-object v0, Lcom/htc/calendar/AgendaWindowAdapter;->TAG:Ljava/lang/String;

    .line 98
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

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

    const-string v2, "facebook_source_id"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "facebook_type"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "facebook_avatar_small"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "facebook_avatar_local"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "iCalGUID"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/calendar/AgendaWindowAdapter;->PROJECTION:[Ljava/lang/String;

    .line 142
    const v0, 0x253d8c

    sput v0, Lcom/htc/calendar/AgendaWindowAdapter;->START_TIME_QUERY_CRITERIA:I

    .line 143
    const v0, 0x259493

    sput v0, Lcom/htc/calendar/AgendaWindowAdapter;->END_TIME_QUERY_CRITERIA:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/htc/calendar/AgendaListView;)V
    .locals 10
    .parameter "activity"
    .parameter "agendaListView"

    .prologue
    const v9, 0x7f0d00c6

    const v8, 0x7f030029

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 315
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 162
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    .line 164
    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v3, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 170
    iput-boolean v5, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mDoneSettingUpHeaderFooter:Z

    .line 201
    iput-object v7, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mUpdateTZ:Ljava/lang/Runnable;

    .line 430
    iput v5, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mQueryOlderCount:I

    .line 431
    iput v5, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mQueryNewerCount:I

    .line 316
    iput-object p1, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    .line 317
    iput-object p2, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mAgendaListView:Lcom/htc/calendar/AgendaListView;

    .line 318
    new-instance v3, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;-><init>(Lcom/htc/calendar/AgendaWindowAdapter;Landroid/content/ContentResolver;)V

    iput-object v3, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mQueryHandler:Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;

    .line 320
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 322
    .local v2, inflater:Landroid/view/LayoutInflater;
    invoke-virtual {v2, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem;

    iput-object v3, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mFlHeader:Lcom/htc/widget/HtcListItem;

    .line 323
    invoke-virtual {v2, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem;

    iput-object v3, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mFlFooter:Lcom/htc/widget/HtcListItem;

    .line 325
    iget-object v3, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mFlHeader:Lcom/htc/widget/HtcListItem;

    invoke-virtual {v3, v9}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemSingleText;

    iput-object v3, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mHeaderView:Lcom/htc/widget/HtcListItemSingleText;

    .line 326
    iget-object v3, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mFlFooter:Lcom/htc/widget/HtcListItem;

    invoke-virtual {v3, v9}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemSingleText;

    iput-object v3, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mFooterView:Lcom/htc/widget/HtcListItemSingleText;

    .line 347
    iget-object v3, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mHeaderView:Lcom/htc/widget/HtcListItemSingleText;

    const v4, 0x7f0800ab

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItemSingleText;->setText(I)V

    .line 348
    iget-object v3, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mFlHeader:Lcom/htc/widget/HtcListItem;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    .line 349
    iget-object v3, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mFlFooter:Lcom/htc/widget/HtcListItem;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    .line 350
    new-instance v1, Lcom/htc/widget/HtcListItemSeparableType;

    invoke-direct {v1, v5, v6}, Lcom/htc/widget/HtcListItemSeparableType;-><init>(ZZ)V

    .line 351
    .local v1, htcItemTagHeader:Lcom/htc/widget/HtcListItemSeparableType;
    new-instance v0, Lcom/htc/widget/HtcListItemSeparableType;

    invoke-direct {v0, v6, v6}, Lcom/htc/widget/HtcListItemSeparableType;-><init>(ZZ)V

    .line 352
    .local v0, htcItemTagFooter:Lcom/htc/widget/HtcListItemSeparableType;
    iget-object v3, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mFlHeader:Lcom/htc/widget/HtcListItem;

    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcListItem;->setTag(Ljava/lang/Object;)V

    .line 353
    iget-object v3, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mFlFooter:Lcom/htc/widget/HtcListItem;

    invoke-virtual {v3, v0}, Lcom/htc/widget/HtcListItem;->setTag(Ljava/lang/Object;)V

    .line 354
    iget-object v3, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mAgendaListView:Lcom/htc/calendar/AgendaListView;

    iget-object v4, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mFlHeader:Lcom/htc/widget/HtcListItem;

    invoke-virtual {v3, v4}, Lcom/htc/calendar/AgendaListView;->addHeaderView(Landroid/view/View;)V

    .line 356
    invoke-direct {p0}, Lcom/htc/calendar/AgendaWindowAdapter;->setQueryCreiteria()V

    .line 358
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/htc/calendar/AgendaWindowAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/calendar/AgendaWindowAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mShuttingDown:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/calendar/AgendaWindowAdapter;)Lcom/htc/widget/HtcListItemSingleText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mFooterView:Lcom/htc/widget/HtcListItemSingleText;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/htc/calendar/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/htc/calendar/AgendaWindowAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mEmptyCursorCount:I

    return p1
.end method

.method static synthetic access$1204(Lcom/htc/calendar/AgendaWindowAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mEmptyCursorCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mEmptyCursorCount:I

    return v0
.end method

.method static synthetic access$1308(Lcom/htc/calendar/AgendaWindowAdapter;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mNewerRequestsProcessed:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mNewerRequestsProcessed:I

    return v0
.end method

.method static synthetic access$1408(Lcom/htc/calendar/AgendaWindowAdapter;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mOlderRequestsProcessed:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mOlderRequestsProcessed:I

    return v0
.end method

.method static synthetic access$1500()I
    .locals 1

    .prologue
    .line 72
    sget v0, Lcom/htc/calendar/AgendaWindowAdapter;->START_TIME_QUERY_CRITERIA:I

    return v0
.end method

.method static synthetic access$1600()I
    .locals 1

    .prologue
    .line 72
    sget v0, Lcom/htc/calendar/AgendaWindowAdapter;->END_TIME_QUERY_CRITERIA:I

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/calendar/AgendaWindowAdapter;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/htc/calendar/AgendaWindowAdapter;->updateHeaderFooter(II)V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/calendar/AgendaWindowAdapter;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/htc/calendar/AgendaWindowAdapter;->isInRange(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/htc/calendar/AgendaWindowAdapter;Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/htc/calendar/AgendaWindowAdapter;->doQuery(Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;)V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/calendar/AgendaWindowAdapter;I)Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/htc/calendar/AgendaWindowAdapter;->pruneAdapterInfo(I)Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/htc/calendar/AgendaWindowAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/calendar/AgendaWindowAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mRowCount:I

    return v0
.end method

.method static synthetic access$2202(Lcom/htc/calendar/AgendaWindowAdapter;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput p1, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mRowCount:I

    return p1
.end method

.method static synthetic access$2212(Lcom/htc/calendar/AgendaWindowAdapter;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iget v0, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mRowCount:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mRowCount:I

    return v0
.end method

.method static synthetic access$2302(Lcom/htc/calendar/AgendaWindowAdapter;Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;)Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mLastUsedInfo:Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/calendar/AgendaWindowAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mQueryNewerCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/calendar/AgendaWindowAdapter;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mQueryOlderCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/htc/calendar/AgendaWindowAdapter;)Lcom/htc/calendar/AgendaListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mAgendaListView:Lcom/htc/calendar/AgendaListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/calendar/AgendaWindowAdapter;Landroid/text/format/Time;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/htc/calendar/AgendaWindowAdapter;->findDayPositionNearestTime(Landroid/text/format/Time;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/htc/calendar/AgendaWindowAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mDoneSettingUpHeaderFooter:Z

    return v0
.end method

.method static synthetic access$702(Lcom/htc/calendar/AgendaWindowAdapter;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mDoneSettingUpHeaderFooter:Z

    return p1
.end method

.method static synthetic access$800(Lcom/htc/calendar/AgendaWindowAdapter;)Lcom/htc/widget/HtcListItemSingleText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mHeaderView:Lcom/htc/widget/HtcListItemSingleText;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/calendar/AgendaWindowAdapter;Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/htc/calendar/AgendaWindowAdapter;->queueQuery(Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;)Z

    move-result v0

    return v0
.end method

.method private buildQuerySelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 671
    iget-boolean v0, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mHideDeclined:Z

    if-eqz v0, :cond_0

    .line 672
    const-string v0, "visible=1 AND selfAttendeeStatus!=2"

    .line 676
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "visible=1"

    goto :goto_0
.end method

.method private buildQueryUri(II)Landroid/net/Uri;
    .locals 5
    .parameter "start"
    .parameter "end"

    .prologue
    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 682
    .local v0, path:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 683
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 684
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 685
    sget-object v2, Landroid/provider/CalendarContract$Instances;->CONTENT_BY_DAY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 686
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mAgendaListView:Lcom/htc/calendar/AgendaListView;

    invoke-virtual {v2}, Lcom/htc/calendar/AgendaListView;->excludeNotes()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 688
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "EXCLUDE_ASSOCIATE_NOTES_V2"

    const-string v4, "true"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 693
    :cond_0
    return-object v1
.end method

.method private calculateQueryDuration(II)I
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    .line 706
    const/16 v0, 0x5a

    .line 707
    .local v0, queryDuration:I
    iget v1, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mRowCount:I

    if-eqz v1, :cond_0

    .line 708
    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x32

    iget v2, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mRowCount:I

    div-int v0, v1, v2

    .line 711
    :cond_0
    const/16 v1, 0x5a

    if-le v0, v1, :cond_2

    .line 712
    const/16 v0, 0x5a

    .line 717
    :cond_1
    :goto_0
    return v0

    .line 713
    :cond_2
    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    .line 714
    const/4 v0, 0x7

    goto :goto_0
.end method

.method private doQuery(Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;)V
    .locals 11
    .parameter "queryData"

    .prologue
    const/4 v1, 0x0

    .line 743
    iget-object v0, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v10, v0, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    .line 745
    .local v10, start:I
    iget-object v0, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v8, v0, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    .line 746
    .local v8, end:I
    invoke-direct {p0, v10, v8}, Lcom/htc/calendar/AgendaWindowAdapter;->calculateQueryDuration(II)I

    move-result v9

    .line 747
    .local v9, queryDuration:I
    iget v0, p1, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->queryType:I

    packed-switch v0, :pswitch_data_0

    .line 768
    .end local v8           #end:I
    .end local v9           #queryDuration:I
    .end local v10           #start:I
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mQueryHandler:Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->cancelOperation(I)V

    .line 769
    invoke-direct {p0, p1}, Lcom/htc/calendar/AgendaWindowAdapter;->reSetValidDate(Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;)V

    .line 771
    iget-object v0, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mQueryHandler:Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;

    iget v2, p1, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    iget v3, p1, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    invoke-direct {p0, v2, v3}, Lcom/htc/calendar/AgendaWindowAdapter;->buildQueryUri(II)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/htc/calendar/AgendaWindowAdapter;->PROJECTION:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/htc/calendar/AgendaWindowAdapter;->buildQuerySelection()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "startDay ASC, begin ASC, title ASC"

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    return-void

    .line 749
    .restart local v8       #end:I
    .restart local v9       #queryDuration:I
    .restart local v10       #start:I
    :pswitch_0
    add-int/lit8 v0, v10, -0x1

    iput v0, p1, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    .line 750
    iget v0, p1, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    sub-int/2addr v0, v9

    iput v0, p1, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    goto :goto_0

    .line 753
    :pswitch_1
    add-int/lit8 v0, v8, 0x1

    iput v0, p1, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    .line 754
    iget v0, p1, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    add-int/2addr v0, v9

    iput v0, p1, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    goto :goto_0

    .line 747
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private findDayPositionNearestTime(Landroid/text/format/Time;)I
    .locals 3
    .parameter "time"

    .prologue
    .line 487
    invoke-direct {p0, p1}, Lcom/htc/calendar/AgendaWindowAdapter;->getAdapterInfoByTime(Landroid/text/format/Time;)Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 488
    .local v0, info:Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_0

    .line 489
    iget v1, v0, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    iget-object v2, v0, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/htc/calendar/AgendaByDayAdapter;

    invoke-virtual {v2, p1}, Lcom/htc/calendar/AgendaByDayAdapter;->findDayPositionNearestTime(Landroid/text/format/Time;)I

    move-result v2

    add-int/2addr v1, v2

    .line 491
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private formatDateString(I)Ljava/lang/String;
    .locals 7
    .parameter "julianDay"

    .prologue
    .line 791
    new-instance v6, Landroid/text/format/Time;

    iget-object v0, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v0, v3}, Lcom/htc/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 792
    .local v6, time:Landroid/text/format/Time;
    invoke-virtual {v6, p1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 793
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    .line 800
    .local v1, millis:J
    const v5, 0x10014

    .line 802
    .local v5, flags:I
    iget-object v0, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAdapterInfoByPosition(I)Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .locals 5
    .parameter "position"

    .prologue
    .line 496
    iget-object v3, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v3

    .line 497
    :try_start_0
    iget-object v2, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mLastUsedInfo:Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mLastUsedInfo:Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v2, v2, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    if-gt v2, p1, :cond_0

    iget-object v2, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mLastUsedInfo:Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v2, v2, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    iget-object v4, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mLastUsedInfo:Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v4, v4, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    add-int/2addr v2, v4

    if-ge p1, v2, :cond_0

    .line 499
    iget-object v1, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mLastUsedInfo:Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;

    monitor-exit v3

    .line 509
    :goto_0
    return-object v1

    .line 501
    :cond_0
    iget-object v2, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .line 502
    .local v1, info:Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;
    iget v2, v1, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    if-gt v2, p1, :cond_1

    iget v2, v1, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    iget v4, v1, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    add-int/2addr v2, v4

    if-ge p1, v2, :cond_1

    .line 504
    iput-object v1, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mLastUsedInfo:Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .line 505
    monitor-exit v3

    goto :goto_0

    .line 508
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 509
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getAdapterInfoByTime(Landroid/text/format/Time;)Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .locals 8
    .parameter "time"

    .prologue
    .line 515
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5, p1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 516
    .local v5, tmpTime:Landroid/text/format/Time;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    .line 517
    .local v3, timeInMillis:J
    iget-wide v6, v5, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v3, v4, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 518
    .local v0, day:I
    iget-object v7, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v7

    .line 519
    :try_start_0
    iget-object v6, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .line 520
    .local v2, info:Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;
    iget v6, v2, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    if-gt v6, v0, :cond_0

    iget v6, v2, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    if-ge v0, v6, :cond_0

    .line 521
    monitor-exit v7

    .line 525
    .end local v2           #info:Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;
    :goto_0
    return-object v2

    .line 524
    :cond_1
    monitor-exit v7

    .line 525
    const/4 v2, 0x0

    goto :goto_0

    .line 524
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method static getViewTitle(Landroid/view/View;)Ljava/lang/String;
    .locals 5
    .parameter "x"

    .prologue
    .line 1078
    const-string v1, ""

    .line 1079
    .local v1, title:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 1080
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 1081
    .local v3, yy:Ljava/lang/Object;
    instance-of v4, v3, Lcom/htc/calendar/AgendaAdapter$ViewHolder;

    if-eqz v4, :cond_1

    .line 1082
    check-cast v3, Lcom/htc/calendar/AgendaAdapter$ViewHolder;

    .end local v3           #yy:Ljava/lang/Object;
    iget-object v2, v3, Lcom/htc/calendar/AgendaAdapter$ViewHolder;->title:Lcom/htc/widget/HtcListItem2LineText;

    .line 1083
    .local v2, tv:Lcom/htc/widget/HtcListItem2LineText;
    if-eqz v2, :cond_0

    .line 1084
    invoke-virtual {v2}, Lcom/htc/widget/HtcListItem2LineText;->getPrimaryText()Ljava/lang/String;

    move-result-object v1

    .line 1093
    .end local v2           #tv:Lcom/htc/widget/HtcListItem2LineText;
    :cond_0
    :goto_0
    return-object v1

    .line 1086
    .restart local v3       #yy:Ljava/lang/Object;
    :cond_1
    if-eqz v3, :cond_0

    .line 1087
    check-cast v3, Lcom/htc/calendar/AgendaByDayAdapter$ViewHolder;

    .end local v3           #yy:Ljava/lang/Object;
    iget-object v0, v3, Lcom/htc/calendar/AgendaByDayAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    .line 1088
    .local v0, dateView:Landroid/widget/TextView;
    if-eqz v0, :cond_0

    .line 1089
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1           #title:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1       #title:Ljava/lang/String;
    goto :goto_0
.end method

.method private isInRange(II)Z
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v1, 0x0

    .line 697
    iget-object v2, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v2

    .line 698
    :try_start_0
    iget-object v0, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    monitor-exit v2

    move v0, v1

    .line 701
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v0, v0, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    if-gt v0, p1, :cond_1

    iget-object v0, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v0, v0, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    if-gt p2, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    monitor-exit v2

    goto :goto_0

    .line 702
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    .line 701
    goto :goto_1
.end method

.method private pruneAdapterInfo(I)Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .locals 8
    .parameter "queryType"

    .prologue
    .line 622
    iget-object v6, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    monitor-enter v6

    .line 623
    const/4 v3, 0x0

    .line 624
    .local v3, recycleMe:Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;
    :try_start_0
    iget-object v5, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    .line 625
    iget-object v5, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    const/16 v7, 0xa

    if-lt v5, v7, :cond_3

    .line 626
    const/4 v5, 0x1

    if-ne p1, v5, :cond_2

    .line 627
    iget-object v5, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-object v3, v0

    .line 633
    :cond_0
    :goto_0
    if-eqz v3, :cond_3

    .line 634
    iget-object v5, v3, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    if-eqz v5, :cond_1

    .line 635
    iget-object v5, v3, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_1

    .line 636
    iget-object v5, v3, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 639
    :cond_1
    monitor-exit v6

    move-object v4, v3

    .line 664
    .end local v3           #recycleMe:Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .local v4, recycleMe:Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;
    :goto_1
    return-object v4

    .line 628
    .end local v4           #recycleMe:Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .restart local v3       #recycleMe:Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;
    :cond_2
    if-nez p1, :cond_0

    .line 629
    iget-object v5, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-object v3, v0

    .line 631
    const/4 v5, 0x0

    iput v5, v3, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    goto :goto_0

    .line 665
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 643
    :cond_3
    :try_start_1
    iget v5, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mRowCount:I

    if-eqz v5, :cond_4

    const/4 v5, 0x2

    if-ne p1, v5, :cond_8

    .line 644
    :cond_4
    const/4 v5, 0x0

    iput v5, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mRowCount:I

    .line 645
    const/4 v1, 0x0

    .line 648
    .local v1, deletedRows:I
    :cond_5
    iget-object v5, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .line 649
    .local v2, info:Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v2, :cond_7

    .line 650
    iget-object v5, v2, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_6

    .line 651
    iget-object v5, v2, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 653
    :cond_6
    iget v5, v2, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    add-int/2addr v1, v5

    .line 654
    move-object v3, v2

    .line 656
    :cond_7
    if-nez v2, :cond_5

    .line 658
    if-eqz v3, :cond_8

    .line 659
    const/4 v5, 0x0

    iput-object v5, v3, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    .line 660
    iput v1, v3, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    .line 664
    .end local v1           #deletedRows:I
    .end local v2           #info:Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;
    :cond_8
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v3

    .end local v3           #recycleMe:Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .restart local v4       #recycleMe:Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;
    goto :goto_1
.end method

.method private queueQuery(IILandroid/text/format/Time;I)Z
    .locals 2
    .parameter "start"
    .parameter "end"
    .parameter "goToTime"
    .parameter "queryType"

    .prologue
    .line 721
    new-instance v0, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;

    invoke-direct {v0, p4}, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;-><init>(I)V

    .line 722
    .local v0, queryData:Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;
    iput-object p3, v0, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    .line 723
    iput p1, v0, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    .line 724
    iput p2, v0, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    .line 725
    invoke-direct {p0, v0}, Lcom/htc/calendar/AgendaWindowAdapter;->queueQuery(Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;)Z

    move-result v1

    return v1
.end method

.method private queueQuery(Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;)Z
    .locals 4
    .parameter "queryData"

    .prologue
    .line 730
    iget-object v3, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v3

    .line 731
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 732
    .local v1, queuedQuery:Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 733
    .local v0, doQueryNow:Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 734
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 735
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 736
    invoke-direct {p0, p1}, Lcom/htc/calendar/AgendaWindowAdapter;->doQuery(Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;)V

    .line 738
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 739
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 738
    .end local v0           #doQueryNow:Ljava/lang/Boolean;
    .end local v1           #queuedQuery:Ljava/lang/Boolean;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private reSetValidDate(Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;)V
    .locals 2
    .parameter "queryData"

    .prologue
    .line 778
    sget-object v0, Lcom/htc/calendar/AgendaWindowAdapter;->TAG:Ljava/lang/String;

    const-string v1, "reSetValidDate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    iget v0, p1, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    sget v1, Lcom/htc/calendar/AgendaWindowAdapter;->START_TIME_QUERY_CRITERIA:I

    if-ge v0, v1, :cond_0

    .line 781
    sget v0, Lcom/htc/calendar/AgendaWindowAdapter;->START_TIME_QUERY_CRITERIA:I

    iput v0, p1, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    .line 784
    :cond_0
    iget v0, p1, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    sget v1, Lcom/htc/calendar/AgendaWindowAdapter;->END_TIME_QUERY_CRITERIA:I

    if-le v0, v1, :cond_1

    .line 785
    sget v0, Lcom/htc/calendar/AgendaWindowAdapter;->END_TIME_QUERY_CRITERIA:I

    iput v0, p1, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    .line 787
    :cond_1
    return-void
.end method

.method private setQueryCreiteria()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 1122
    const/16 v0, 0x7d0

    invoke-static {v0, v1, v1}, Lcom/htc/calendar/HtcUtils;->convertToJulianByDate(III)I

    move-result v0

    sput v0, Lcom/htc/calendar/AgendaWindowAdapter;->START_TIME_QUERY_CRITERIA:I

    .line 1123
    const/16 v0, 0x7ee

    const/16 v1, 0xc

    const/16 v2, 0x1f

    invoke-static {v0, v1, v2}, Lcom/htc/calendar/HtcUtils;->convertToJulianByDate(III)I

    move-result v0

    sput v0, Lcom/htc/calendar/AgendaWindowAdapter;->END_TIME_QUERY_CRITERIA:I

    .line 1124
    return-void
.end method

.method private updateHeaderFooter(II)V
    .locals 9
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 807
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Lcom/htc/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 808
    .local v0, time:Landroid/text/format/Time;
    invoke-virtual {v0, p1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 809
    invoke-static {v0, v7, v6}, Lcom/htc/calendar/HtcUtils;->IsNextViewValid(Landroid/text/format/Time;FI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 810
    iget-object v1, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mHeaderView:Lcom/htc/widget/HtcListItemSingleText;

    iget-object v2, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0800ac

    new-array v4, v8, [Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/htc/calendar/AgendaWindowAdapter;->formatDateString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemSingleText;->setText(Ljava/lang/CharSequence;)V

    .line 814
    :cond_0
    invoke-virtual {v0, p2}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 816
    invoke-static {v0, v7, v6}, Lcom/htc/calendar/HtcUtils;->IsNextViewValid(Landroid/text/format/Time;FI)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 817
    iget-object v1, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mFooterView:Lcom/htc/widget/HtcListItemSingleText;

    iget-object v2, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    const v3, 0x7f0800ad

    new-array v4, v8, [Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/htc/calendar/AgendaWindowAdapter;->formatDateString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/widget/HtcListItemSingleText;->setText(Ljava/lang/CharSequence;)V

    .line 821
    :cond_1
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 369
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 614
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mShuttingDown:Z

    .line 615
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/htc/calendar/AgendaWindowAdapter;->pruneAdapterInfo(I)Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .line 616
    iget-object v0, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mQueryHandler:Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mQueryHandler:Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->cancelOperation(I)V

    .line 619
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 396
    iget v0, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mRowCount:I

    return v0
.end method

.method public getEventByPosition(I)Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;
    .locals 10
    .parameter "position"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 531
    add-int/lit8 p1, p1, -0x1

    .line 532
    invoke-direct {p0, p1}, Lcom/htc/calendar/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v2

    .line 533
    .local v2, info:Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;
    if-nez v2, :cond_1

    .line 588
    :cond_0
    :goto_0
    return-object v1

    .line 537
    :cond_1
    iget-object v6, v2, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/htc/calendar/AgendaByDayAdapter;

    iget v7, v2, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v7, p1, v7

    invoke-virtual {v6, v7}, Lcom/htc/calendar/AgendaByDayAdapter;->getCursorPosition(I)I

    move-result p1

    .line 538
    const/high16 v6, -0x8000

    if-eq p1, v6, :cond_0

    .line 542
    const/4 v3, 0x0

    .line 543
    .local v3, isDayHeader:Z
    if-gez p1, :cond_2

    .line 544
    neg-int p1, p1

    .line 545
    const/4 v3, 0x1

    .line 548
    :cond_2
    iget-object v6, v2, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    if-eqz v6, :cond_0

    iget-object v6, v2, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_0

    .line 552
    iget-object v6, v2, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-ge p1, v6, :cond_0

    .line 554
    new-instance v1, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;

    invoke-direct {v1}, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;-><init>()V

    .line 556
    .local v1, event:Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;
    iget-object v6, v2, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v6, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 557
    iget-object v6, v2, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/4 v7, 0x7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    .line 560
    iget-object v6, v2, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/16 v7, 0x11

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->sync_account_type:Ljava/lang/String;

    .line 561
    iget-object v6, v2, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/16 v7, 0xd

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->data1:Ljava/lang/String;

    .line 562
    iget-object v6, v2, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/16 v7, 0xe

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->data2:Ljava/lang/String;

    .line 563
    iget-object v6, v2, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->title:Ljava/lang/String;

    .line 564
    iget-object v6, v2, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/16 v7, 0x12

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->iCalGUID:Ljava/lang/String;

    .line 566
    iget-object v6, v2, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/4 v7, 0x3

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_4

    .line 569
    .local v0, allDay:Z
    :goto_1
    if-eqz v0, :cond_5

    .line 570
    new-instance v4, Landroid/text/format/Time;

    iget-object v6, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v6, v7}, Lcom/htc/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 571
    .local v4, time:Landroid/text/format/Time;
    iget-wide v6, v1, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v8, v9}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 572
    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    .line 582
    .end local v4           #time:Landroid/text/format/Time;
    :cond_3
    :goto_2
    if-nez v3, :cond_0

    .line 583
    iget-object v5, v2, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/16 v6, 0x8

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->end:J

    .line 584
    iget-object v5, v2, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    const/16 v6, 0x9

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->id:J

    goto/16 :goto_0

    .end local v0           #allDay:Z
    :cond_4
    move v0, v5

    .line 566
    goto :goto_1

    .line 573
    .restart local v0       #allDay:Z
    :cond_5
    if-eqz v3, :cond_3

    .line 574
    new-instance v4, Landroid/text/format/Time;

    iget-object v6, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v6, v7}, Lcom/htc/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 575
    .restart local v4       #time:Landroid/text/format/Time;
    iget-wide v6, v1, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    invoke-virtual {v4, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 576
    iput v5, v4, Landroid/text/format/Time;->hour:I

    .line 577
    iput v5, v4, Landroid/text/format/Time;->minute:I

    .line 578
    iput v5, v4, Landroid/text/format/Time;->second:I

    .line 579
    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    iput-wide v5, v1, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    goto :goto_2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 401
    invoke-direct {p0, p1}, Lcom/htc/calendar/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 402
    .local v0, info:Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_0

    .line 403
    iget-object v1, v0, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/htc/calendar/AgendaByDayAdapter;

    iget v2, v0, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/htc/calendar/AgendaByDayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 405
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 417
    invoke-direct {p0, p1}, Lcom/htc/calendar/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 418
    .local v0, info:Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_0

    .line 419
    iget v1, v0, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v1, p1, v1

    shl-int/lit8 v1, v1, 0x14

    iget v2, v0, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    add-int/2addr v1, v2

    int-to-long v1, v1

    .line 421
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 3
    .parameter "position"

    .prologue
    .line 375
    invoke-direct {p0, p1}, Lcom/htc/calendar/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 376
    .local v0, info:Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_0

    .line 377
    iget-object v1, v0, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/htc/calendar/AgendaByDayAdapter;

    iget v2, v0, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/htc/calendar/AgendaByDayAdapter;->getItemViewType(I)I

    move-result v1

    .line 379
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 435
    iget v3, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mRowCount:I

    add-int/lit8 v3, v3, -0x1

    if-lt p1, v3, :cond_0

    iget v3, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mNewerRequests:I

    iget v4, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mNewerRequestsProcessed:I

    if-gt v3, v4, :cond_0

    .line 438
    iget v3, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mQueryNewerCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mQueryNewerCount:I

    .line 439
    new-instance v3, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;-><init>(I)V

    invoke-direct {p0, v3}, Lcom/htc/calendar/AgendaWindowAdapter;->queueQuery(Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;)Z

    .line 445
    :cond_0
    if-gtz p1, :cond_1

    iget v3, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mOlderRequests:I

    iget v4, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mOlderRequestsProcessed:I

    if-gt v3, v4, :cond_1

    .line 449
    iget v3, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mQueryOlderCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mQueryOlderCount:I

    .line 450
    new-instance v3, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;-><init>(I)V

    invoke-direct {p0, v3}, Lcom/htc/calendar/AgendaWindowAdapter;->queueQuery(Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;)Z

    .line 456
    :cond_1
    invoke-direct {p0, p1}, Lcom/htc/calendar/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 460
    .local v0, info:Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_3

    .line 461
    iget-object v3, v0, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/htc/calendar/AgendaByDayAdapter;

    iget v4, v0, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v4, p1, v4

    invoke-virtual {v3, v4, p2, p3}, Lcom/htc/calendar/AgendaByDayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 463
    .local v2, v:Landroid/view/View;
    if-nez v2, :cond_2

    .line 464
    sget-object v3, Lcom/htc/calendar/AgendaWindowAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getView position: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " info.offset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    sget-object v3, Lcom/htc/calendar/AgendaWindowAdapter;->TAG:Ljava/lang/String;

    const-string v4, "v is null in getView, so use Header View instead it."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    iget-object v2, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mHeaderView:Lcom/htc/widget/HtcListItemSingleText;

    .line 481
    :cond_2
    :goto_0
    return-object v2

    .line 472
    .end local v2           #v:Landroid/view/View;
    :cond_3
    sget-object v3, Lcom/htc/calendar/AgendaWindowAdapter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "BUG: getAdapterInfoByPosition returned null!!! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 474
    .local v1, tv:Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bug! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    move-object v2, v1

    .restart local v2       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lcom/htc/calendar/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 387
    .local v0, info:Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_0

    .line 388
    iget-object v1, v0, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/htc/calendar/AgendaByDayAdapter;

    iget v2, v0, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/htc/calendar/AgendaByDayAdapter;->isEnabled(I)Z

    move-result v1

    .line 390
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public lookMore(I)V
    .locals 2
    .parameter "older"

    .prologue
    const/4 v1, 0x1

    .line 1114
    if-ne p1, v1, :cond_0

    .line 1115
    new-instance v0, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/htc/calendar/AgendaWindowAdapter;->queueQuery(Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;)Z

    .line 1119
    :goto_0
    return-void

    .line 1117
    :cond_0
    new-instance v0, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;

    invoke-direct {v0, v1}, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/htc/calendar/AgendaWindowAdapter;->queueQuery(Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;)Z

    goto :goto_0
.end method

.method public onClickHeaderFooter(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 1106
    iget-object v0, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mHeaderView:Lcom/htc/widget/HtcListItemSingleText;

    if-ne p1, v0, :cond_0

    .line 1107
    new-instance v0, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/htc/calendar/AgendaWindowAdapter;->queueQuery(Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;)Z

    .line 1111
    :goto_0
    return-void

    .line 1109
    :cond_0
    new-instance v0, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/htc/calendar/AgendaWindowAdapter;->queueQuery(Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;)Z

    goto :goto_0
.end method

.method public refresh(Landroid/text/format/Time;Z)V
    .locals 6
    .parameter "goToTime"
    .parameter "forced"

    .prologue
    .line 593
    sget-object v3, Lcom/htc/calendar/AgendaWindowAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "refresh "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p2, :cond_0

    const-string v2, " forced"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iget-wide v4, p1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    .line 597
    .local v1, startDay:I
    if-nez p2, :cond_1

    invoke-direct {p0, v1, v1}, Lcom/htc/calendar/AgendaWindowAdapter;->isInRange(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 599
    iget-object v2, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mAgendaListView:Lcom/htc/calendar/AgendaListView;

    invoke-direct {p0, p1}, Lcom/htc/calendar/AgendaWindowAdapter;->findDayPositionNearestTime(Landroid/text/format/Time;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/calendar/AgendaListView;->setSelection(I)V

    .line 601
    sget-object v2, Lcom/htc/calendar/AgendaWindowAdapter;->TAG:Ljava/lang/String;

    const-string v3, "refresh !forced"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :goto_1
    return-void

    .line 593
    .end local v1           #startDay:I
    :cond_0
    const-string v2, " not forced"

    goto :goto_0

    .line 606
    .restart local v1       #startDay:I
    :cond_1
    add-int/lit8 v0, v1, 0x7

    .line 610
    .local v0, endDay:I
    const/4 v2, 0x2

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/htc/calendar/AgendaWindowAdapter;->queueQuery(IILandroid/text/format/Time;I)Z

    goto :goto_1
.end method

.method public setHideDeclinedEvents(Z)V
    .locals 0
    .parameter "hideDeclined"

    .prologue
    .line 1101
    iput-boolean p1, p0, Lcom/htc/calendar/AgendaWindowAdapter;->mHideDeclined:Z

    .line 1102
    return-void
.end method
