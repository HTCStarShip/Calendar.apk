.class public Lcom/htc/calendar/AlertActivity;
.super Landroid/app/Activity;
.source "AlertActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/calendar/AlertActivity$QueryHandler;
    }
.end annotation


# static fields
.field public static final INDEX_ALARM_TIME:I = 0xb

.field public static final INDEX_ALL_DAY:I = 0x3

.field public static final INDEX_BEGIN:I = 0x4

.field public static final INDEX_COLOR:I = 0x7

.field public static final INDEX_END:I = 0x5

.field public static final INDEX_EVENT_ID:I = 0x6

.field public static final INDEX_EVENT_LOCATION:I = 0x2

.field public static final INDEX_HAS_ALARM:I = 0x9

.field public static final INDEX_ROW_ID:I = 0x0

.field public static final INDEX_RRULE:I = 0x8

.field public static final INDEX_STATE:I = 0xa

.field public static final INDEX_TITLE:I = 0x1

.field public static final NOTIFICATION_ID:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String; = null

.field public static final SNOOZE_DELAY:J = 0xdbba0L

.field private static final TAG:Ljava/lang/String; = "AlertActivity"


# instance fields
.field private mAdapter:Lcom/htc/calendar/AlertAdapter;

.field private mCursor:Landroid/database/Cursor;

.field private mDismissAllButton:Lcom/htc/widget/HtcFooterButton;

.field private mDismissAllListener:Landroid/view/View$OnClickListener;

.field private mHtcFooter:Lcom/htc/widget/HtcFooter;

.field private mListView:Lcom/htc/widget/HtcListView;

.field private mQueryHandler:Lcom/htc/calendar/AlertActivity$QueryHandler;

.field private mRemoveAllAlarmReceiver:Landroid/content/BroadcastReceiver;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSnoozeAllButton:Lcom/htc/widget/HtcFooterButton;

.field private mSnoozeAllListener:Landroid/view/View$OnClickListener;

.field private mViewListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 75
    const/16 v0, 0xc

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

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "end"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "eventColor"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "state"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "alarmTime"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/calendar/AlertActivity;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 231
    new-instance v0, Lcom/htc/calendar/AlertActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/calendar/AlertActivity$1;-><init>(Lcom/htc/calendar/AlertActivity;)V

    iput-object v0, p0, Lcom/htc/calendar/AlertActivity;->mViewListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 362
    new-instance v0, Lcom/htc/calendar/AlertActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/calendar/AlertActivity$4;-><init>(Lcom/htc/calendar/AlertActivity;)V

    iput-object v0, p0, Lcom/htc/calendar/AlertActivity;->mSnoozeAllListener:Landroid/view/View$OnClickListener;

    .line 397
    new-instance v0, Lcom/htc/calendar/AlertActivity$5;

    invoke-direct {v0, p0}, Lcom/htc/calendar/AlertActivity$5;-><init>(Lcom/htc/calendar/AlertActivity;)V

    iput-object v0, p0, Lcom/htc/calendar/AlertActivity;->mDismissAllListener:Landroid/view/View$OnClickListener;

    .line 446
    new-instance v0, Lcom/htc/calendar/AlertActivity$6;

    invoke-direct {v0, p0}, Lcom/htc/calendar/AlertActivity$6;-><init>(Lcom/htc/calendar/AlertActivity;)V

    iput-object v0, p0, Lcom/htc/calendar/AlertActivity;->mRemoveAllAlarmReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/calendar/AlertActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/calendar/AlertActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 70
    iput-object p1, p0, Lcom/htc/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/calendar/AlertActivity;)Lcom/htc/calendar/AlertAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/calendar/AlertActivity;->mAdapter:Lcom/htc/calendar/AlertAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/calendar/AlertActivity;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/calendar/AlertActivity;->mListView:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/calendar/AlertActivity;)Lcom/htc/widget/HtcFooterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/calendar/AlertActivity;->mSnoozeAllButton:Lcom/htc/widget/HtcFooterButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/calendar/AlertActivity;)Lcom/htc/widget/HtcFooterButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/calendar/AlertActivity;->mDismissAllButton:Lcom/htc/widget/HtcFooterButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/calendar/AlertActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/htc/calendar/AlertActivity;->doQuery()V

    return-void
.end method

.method static synthetic access$600(Lcom/htc/calendar/AlertActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/htc/calendar/AlertActivity;->dismissFiredAlarms()V

    return-void
.end method

.method static synthetic access$700(JJJJI)Landroid/content/ContentValues;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 70
    invoke-static/range {p0 .. p8}, Lcom/htc/calendar/AlertActivity;->makeContentValues(JJJJI)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/calendar/AlertActivity;)Lcom/htc/calendar/AlertActivity$QueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/htc/calendar/AlertActivity;->mQueryHandler:Lcom/htc/calendar/AlertActivity$QueryHandler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/calendar/AlertActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/htc/calendar/AlertActivity;->dismissAllAlarms()V

    return-void
.end method

.method private dismissAlarm(J)V
    .locals 7
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 142
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 143
    .local v4, values:Landroid/content/ContentValues;
    sget-object v0, Lcom/htc/calendar/AlertActivity;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 145
    .local v5, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/calendar/AlertActivity;->mQueryHandler:Lcom/htc/calendar/AlertActivity$QueryHandler;

    const/4 v1, 0x0

    sget-object v3, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/htc/calendar/AlertActivity$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method private dismissAllAlarms()V
    .locals 3

    .prologue
    .line 136
    const-string v1, "AlertActivity"

    const-string v2, "dismissAllAlarms"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/htc/calendar/DismissAllAlarmsService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 138
    .local v0, serviceIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/htc/calendar/AlertActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 139
    return-void
.end method

.method private dismissFiredAlarms()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 119
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 120
    .local v4, values:Landroid/content/ContentValues;
    sget-object v0, Lcom/htc/calendar/AlertActivity;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 121
    const-string v5, "state=1"

    .line 123
    .local v5, selection:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR minutes=0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 125
    iget-object v0, p0, Lcom/htc/calendar/AlertActivity;->mQueryHandler:Lcom/htc/calendar/AlertActivity$QueryHandler;

    const/4 v1, 0x0

    sget-object v3, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/htc/calendar/AlertActivity$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 129
    new-instance v7, Landroid/content/Intent;

    const-string v0, "Intent.action.remove.pendings"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .local v7, clearIntent:Landroid/content/Intent;
    const-string v0, "PKG_NAME"

    const-string v1, "com.htc.calendar"

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    invoke-virtual {p0, v7}, Lcom/htc/calendar/AlertActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 133
    return-void
.end method

.method private doQuery()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 429
    sget-object v0, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI_BY_INSTANCE:Landroid/net/Uri;

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 430
    .local v3, uri:Landroid/net/Uri;
    const-string v5, "state=1 AND state!=3"

    .line 432
    .local v5, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/calendar/AlertActivity;->mQueryHandler:Lcom/htc/calendar/AlertActivity$QueryHandler;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/htc/calendar/AlertActivity;->mQueryHandler:Lcom/htc/calendar/AlertActivity$QueryHandler;

    const/4 v1, 0x0

    sget-object v4, Lcom/htc/calendar/AlertActivity;->PROJECTION:[Ljava/lang/String;

    const-string v7, "begin ASC,title ASC"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/calendar/AlertActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :cond_0
    return-void
.end method

.method private static makeContentValues(JJJJI)Landroid/content/ContentValues;
    .locals 6
    .parameter "eventId"
    .parameter "begin"
    .parameter "end"
    .parameter "alarmTime"
    .parameter "minutes"

    .prologue
    const/4 v5, 0x0

    .line 217
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 218
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "event_id"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 219
    const-string v3, "begin"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 220
    const-string v3, "end"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 221
    const-string v3, "alarmTime"

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 223
    .local v0, currentTime:J
    const-string v3, "creationTime"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 224
    const-string v3, "receivedTime"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 225
    const-string v3, "notifyTime"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 226
    const-string v3, "state"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 227
    const-string v3, "minutes"

    invoke-static {p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 228
    return-object v2
.end method


# virtual methods
.method public getItemForView(Landroid/view/View;)Landroid/database/Cursor;
    .locals 2
    .parameter "view"

    .prologue
    .line 415
    iget-object v1, p0, Lcom/htc/calendar/AlertActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1, p1}, Lcom/htc/widget/HtcListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 416
    .local v0, index:I
    if-gez v0, :cond_0

    .line 417
    const/4 v1, 0x0

    .line 419
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/htc/calendar/AlertActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v1}, Lcom/htc/widget/HtcListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/htc/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 260
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 261
    invoke-virtual {p0, v9}, Lcom/htc/calendar/AlertActivity;->requestWindowFeature(I)Z

    .line 263
    const v5, 0x7f030007

    invoke-virtual {p0, v5}, Lcom/htc/calendar/AlertActivity;->setContentView(I)V

    .line 266
    invoke-virtual {p0}, Lcom/htc/calendar/AlertActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/calendar/AlertActivity;->mResolver:Landroid/content/ContentResolver;

    .line 267
    new-instance v5, Lcom/htc/calendar/AlertActivity$QueryHandler;

    iget-object v6, p0, Lcom/htc/calendar/AlertActivity;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {v5, p0, v6}, Lcom/htc/calendar/AlertActivity$QueryHandler;-><init>(Lcom/htc/calendar/AlertActivity;Landroid/content/ContentResolver;)V

    iput-object v5, p0, Lcom/htc/calendar/AlertActivity;->mQueryHandler:Lcom/htc/calendar/AlertActivity$QueryHandler;

    .line 269
    new-instance v5, Lcom/htc/calendar/AlertAdapter;

    const v6, 0x7f030012

    invoke-direct {v5, p0, v6}, Lcom/htc/calendar/AlertAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/htc/calendar/AlertActivity;->mAdapter:Lcom/htc/calendar/AlertAdapter;

    .line 271
    const v5, 0x7f0d0011

    invoke-virtual {p0, v5}, Lcom/htc/calendar/AlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListView;

    iput-object v5, p0, Lcom/htc/calendar/AlertActivity;->mListView:Lcom/htc/widget/HtcListView;

    .line 272
    iget-object v5, p0, Lcom/htc/calendar/AlertActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {p0}, Lcom/htc/calendar/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x2080700

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 274
    iget-object v5, p0, Lcom/htc/calendar/AlertActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v5, v9}, Lcom/htc/widget/HtcListView;->setItemsCanFocus(Z)V

    .line 275
    iget-object v5, p0, Lcom/htc/calendar/AlertActivity;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v6, p0, Lcom/htc/calendar/AlertActivity;->mAdapter:Lcom/htc/calendar/AlertAdapter;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 276
    iget-object v5, p0, Lcom/htc/calendar/AlertActivity;->mListView:Lcom/htc/widget/HtcListView;

    iget-object v6, p0, Lcom/htc/calendar/AlertActivity;->mViewListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 277
    const v5, 0x7f0d000d

    invoke-virtual {p0, v5}, Lcom/htc/calendar/AlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HeaderBarMiddle;

    .line 278
    .local v1, headerBar:Lcom/htc/widget/HeaderBarMiddle;
    new-instance v2, Lcom/htc/widget/HeaderBarText;

    invoke-virtual {p0}, Lcom/htc/calendar/AlertActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/htc/widget/HeaderBarText;-><init>(Landroid/content/Context;)V

    .line 279
    .local v2, mHeaderText:Lcom/htc/widget/HeaderBarText;
    invoke-virtual {v1, v2}, Lcom/htc/widget/HeaderBarMiddle;->addCenterView(Landroid/view/View;)V

    .line 280
    invoke-virtual {p0}, Lcom/htc/calendar/AlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 281
    .local v3, res:Landroid/content/res/Resources;
    const v5, 0x7f080093

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 282
    .local v4, strTitle:Ljava/lang/String;
    invoke-virtual {v2, v4}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v2, v8}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 284
    const v5, 0x7f0d000e

    invoke-virtual {p0, v5}, Lcom/htc/calendar/AlertActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcFooter;

    iput-object v5, p0, Lcom/htc/calendar/AlertActivity;->mHtcFooter:Lcom/htc/widget/HtcFooter;

    .line 285
    iget-object v5, p0, Lcom/htc/calendar/AlertActivity;->mHtcFooter:Lcom/htc/widget/HtcFooter;

    const v6, 0x7f0d000f

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcFooterButton;

    iput-object v5, p0, Lcom/htc/calendar/AlertActivity;->mSnoozeAllButton:Lcom/htc/widget/HtcFooterButton;

    .line 286
    iget-object v5, p0, Lcom/htc/calendar/AlertActivity;->mSnoozeAllButton:Lcom/htc/widget/HtcFooterButton;

    iget-object v6, p0, Lcom/htc/calendar/AlertActivity;->mSnoozeAllListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v5, p0, Lcom/htc/calendar/AlertActivity;->mSnoozeAllButton:Lcom/htc/widget/HtcFooterButton;

    const v6, 0x7f0800b4

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 288
    iget-object v5, p0, Lcom/htc/calendar/AlertActivity;->mHtcFooter:Lcom/htc/widget/HtcFooter;

    const v6, 0x7f0d0010

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcFooterButton;

    iput-object v5, p0, Lcom/htc/calendar/AlertActivity;->mDismissAllButton:Lcom/htc/widget/HtcFooterButton;

    .line 289
    iget-object v5, p0, Lcom/htc/calendar/AlertActivity;->mDismissAllButton:Lcom/htc/widget/HtcFooterButton;

    iget-object v6, p0, Lcom/htc/calendar/AlertActivity;->mDismissAllListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v5, p0, Lcom/htc/calendar/AlertActivity;->mDismissAllButton:Lcom/htc/widget/HtcFooterButton;

    const v6, 0x7f0800b5

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 293
    iget-object v5, p0, Lcom/htc/calendar/AlertActivity;->mSnoozeAllButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 294
    iget-object v5, p0, Lcom/htc/calendar/AlertActivity;->mDismissAllButton:Lcom/htc/widget/HtcFooterButton;

    invoke-virtual {v5, v8}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 296
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 297
    .local v0, filterEventChanged:Landroid/content/IntentFilter;
    const-string v5, "Intent.action.remove.pendings"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    iget-object v5, p0, Lcom/htc/calendar/AlertActivity;->mRemoveAllAlarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v0}, Lcom/htc/calendar/AlertActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 299
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 341
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 342
    iget-object v0, p0, Lcom/htc/calendar/AlertActivity;->mRemoveAllAlarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/calendar/AlertActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 343
    iget-object v0, p0, Lcom/htc/calendar/AlertActivity;->mQueryHandler:Lcom/htc/calendar/AlertActivity$QueryHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/calendar/AlertActivity$QueryHandler;->cancelOperation(I)V

    .line 344
    iget-object v0, p0, Lcom/htc/calendar/AlertActivity;->mQueryHandler:Lcom/htc/calendar/AlertActivity$QueryHandler;

    invoke-virtual {v0, v2}, Lcom/htc/calendar/AlertActivity$QueryHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 345
    iput-object v2, p0, Lcom/htc/calendar/AlertActivity;->mQueryHandler:Lcom/htc/calendar/AlertActivity$QueryHandler;

    .line 347
    iget-object v0, p0, Lcom/htc/calendar/AlertActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 349
    iget-object v0, p0, Lcom/htc/calendar/AlertActivity;->mAdapter:Lcom/htc/calendar/AlertAdapter;

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/htc/calendar/AlertActivity;->mAdapter:Lcom/htc/calendar/AlertAdapter;

    invoke-virtual {v0, v2}, Lcom/htc/calendar/AlertAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 352
    :cond_0
    iput-object v2, p0, Lcom/htc/calendar/AlertActivity;->mAdapter:Lcom/htc/calendar/AlertAdapter;

    .line 354
    iget-object v0, p0, Lcom/htc/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/htc/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/htc/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 359
    :cond_1
    iput-object v2, p0, Lcom/htc/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    .line 360
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 303
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 304
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    new-instance v1, Lcom/htc/calendar/AlertActivity$2;

    invoke-direct {v1, p0}, Lcom/htc/calendar/AlertActivity$2;-><init>(Lcom/htc/calendar/AlertActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 323
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 425
    const/4 v0, 0x1

    return v0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 327
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 328
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/calendar/AlertActivity$3;

    invoke-direct {v1, p0}, Lcom/htc/calendar/AlertActivity$3;-><init>(Lcom/htc/calendar/AlertActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 334
    iget-object v0, p0, Lcom/htc/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/htc/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 337
    :cond_0
    return-void
.end method
