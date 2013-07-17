.class public Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;
.super Landroid/content/BroadcastReceiver;
.source "CalendarAppWidgetService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;
.implements Landroid/content/Loader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/app/widget/CalendarAppWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalendarFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/BroadcastReceiver;",
        "Landroid/widget/RemoteViewsService$RemoteViewsFactory;",
        "Landroid/content/Loader$OnLoadCompleteListener",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field private static final DECLINED_EVENT_ALPHA:I = 0x66000000

.field private static final LOGD:Z

.field private static mCursor:Landroid/database/Cursor;

.field private static volatile mLock:Ljava/lang/Integer;

.field private static mModel:Lcom/htc/calendar/app/widget/CalendarAppWidgetModel;

.field private static sLastUpdateTime:J


# instance fields
.field private isFirstLaunch:Z

.field private mAppWidgetId:I

.field private mContext:Landroid/content/Context;

.field private mDeclinedColor:I

.field private mHandler:Landroid/os/Handler;

.field private mLastLock:I

.field private mLoader:Landroid/content/CursorLoader;

.field private mResources:Landroid/content/res/Resources;

.field private mStandardColor:I

.field private mTimezoneChanged:Ljava/lang/Runnable;

.field private mUpdateLoader:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 123
    const-wide/32 v0, 0x1499700

    sput-wide v0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->sLastUpdateTime:J

    .line 129
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mLock:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 173
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mHandler:Landroid/os/Handler;

    .line 137
    new-instance v0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory$1;

    invoke-direct {v0, p0}, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory$1;-><init>(Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;)V

    iput-object v0, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mTimezoneChanged:Ljava/lang/Runnable;

    .line 146
    new-instance v0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory$2;

    invoke-direct {v0, p0}, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory$2;-><init>(Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;)V

    iput-object v0, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mUpdateLoader:Ljava/lang/Runnable;

    .line 551
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->isFirstLaunch:Z

    .line 176
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 163
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mHandler:Landroid/os/Handler;

    .line 137
    new-instance v0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory$1;

    invoke-direct {v0, p0}, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory$1;-><init>(Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;)V

    iput-object v0, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mTimezoneChanged:Ljava/lang/Runnable;

    .line 146
    new-instance v0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory$2;

    invoke-direct {v0, p0}, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory$2;-><init>(Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;)V

    iput-object v0, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mUpdateLoader:Ljava/lang/Runnable;

    .line 551
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->isFirstLaunch:Z

    .line 164
    iput-object p1, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mResources:Landroid/content/res/Resources;

    .line 166
    const-string v0, "appWidgetId"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mAppWidgetId:I

    .line 169
    iget-object v0, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f07002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mDeclinedColor:I

    .line 170
    iget-object v0, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f07002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mStandardColor:I

    .line 171
    return-void
.end method

.method static synthetic access$000(Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/content/CursorLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->createLoaderUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mLock:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    sput-object p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mLock:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$402(Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput p1, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mLastLock:I

    return p1
.end method

.method static synthetic access$500(Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->doOnReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method protected static buildAppWidgetModel(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Lcom/htc/calendar/app/widget/CalendarAppWidgetModel;
    .locals 1
    .parameter "context"
    .parameter "cursor"
    .parameter "timeZone"

    .prologue
    .line 406
    new-instance v0, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel;

    invoke-direct {v0, p0, p2}, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 407
    .local v0, model:Lcom/htc/calendar/app/widget/CalendarAppWidgetModel;
    invoke-virtual {v0, p1, p2}, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel;->buildFromCursor(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 408
    return-object v0
.end method

.method private calculateUpdateTime(Lcom/htc/calendar/app/widget/CalendarAppWidgetModel;JLjava/lang/String;)J
    .locals 9
    .parameter "model"
    .parameter "now"
    .parameter "timeZone"

    .prologue
    .line 416
    invoke-static {p4}, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->getNextMidnightTimeMillis(Ljava/lang/String;)J

    move-result-wide v4

    .line 417
    .local v4, minUpdateTime:J
    iget-object v8, p1, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel;->mEventInfos:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel$EventInfo;

    .line 420
    .local v2, event:Lcom/htc/calendar/app/widget/CalendarAppWidgetModel$EventInfo;
    iget-wide v6, v2, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel$EventInfo;->start:J

    .line 421
    .local v6, start:J
    iget-wide v0, v2, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel$EventInfo;->end:J

    .line 424
    .local v0, end:J
    cmp-long v8, p2, v6

    if-gez v8, :cond_1

    .line 425
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_0

    .line 426
    :cond_1
    cmp-long v8, p2, v0

    if-gez v8, :cond_0

    .line 427
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    goto :goto_0

    .line 430
    .end local v0           #end:J
    .end local v2           #event:Lcom/htc/calendar/app/widget/CalendarAppWidgetModel$EventInfo;
    .end local v6           #start:J
    :cond_2
    return-wide v4
.end method

.method private createLoaderUri()Landroid/net/Uri;
    .locals 11

    .prologue
    const-wide/32 v9, 0x5265c00

    .line 394
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 396
    .local v4, now:J
    sub-long v0, v4, v9

    .line 397
    .local v0, begin:J
    const-wide/32 v7, 0x240c8400

    add-long/2addr v7, v4

    add-long v2, v7, v9

    .line 399
    .local v2, end:J
    sget-object v7, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 400
    .local v6, uri:Landroid/net/Uri;
    return-object v6
.end method

.method private doOnReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 555
    iput-object p1, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    .line 556
    iget-object v0, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;

    if-nez v0, :cond_0

    .line 557
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mAppWidgetId:I

    .line 558
    invoke-virtual {p0}, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->initLoader()V

    .line 564
    :goto_0
    return-void

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mHandler:Landroid/os/Handler;

    .line 561
    :cond_1
    iget-object v0, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mUpdateLoader:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 562
    iget-object v0, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mUpdateLoader:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private static getNextMidnightTimeMillis(Ljava/lang/String;)J
    .locals 8
    .parameter "timezone"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 434
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 435
    .local v4, time:Landroid/text/format/Time;
    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    .line 436
    iget v5, v4, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/text/format/Time;->monthDay:I

    .line 437
    iput v6, v4, Landroid/text/format/Time;->hour:I

    .line 438
    iput v6, v4, Landroid/text/format/Time;->minute:I

    .line 439
    iput v6, v4, Landroid/text/format/Time;->second:I

    .line 440
    invoke-virtual {v4, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 442
    .local v0, midnightDeviceTz:J
    iput-object p0, v4, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 443
    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    .line 444
    iget v5, v4, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Landroid/text/format/Time;->monthDay:I

    .line 445
    iput v6, v4, Landroid/text/format/Time;->hour:I

    .line 446
    iput v6, v4, Landroid/text/format/Time;->minute:I

    .line 447
    iput v6, v4, Landroid/text/format/Time;->second:I

    .line 448
    invoke-virtual {v4, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 450
    .local v2, midnightHomeTz:J
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    return-wide v5
.end method

.method static updateTextView(Landroid/widget/RemoteViews;IILjava/lang/String;)V
    .locals 0
    .parameter "views"
    .parameter "id"
    .parameter "visibility"
    .parameter "string"

    .prologue
    .line 454
    invoke-virtual {p0, p1, p2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 455
    if-nez p2, :cond_0

    .line 456
    invoke-virtual {p0, p1, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 458
    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 314
    sget-object v1, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/htc/calendar/app/widget/CalendarAppWidgetModel;

    if-nez v1, :cond_0

    .line 317
    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/htc/calendar/app/widget/CalendarAppWidgetModel;

    iget-object v1, v1, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel;->mRowInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 14
    .parameter "position"

    .prologue
    .line 322
    sget-object v7, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/htc/calendar/app/widget/CalendarAppWidgetModel;

    if-eqz v7, :cond_0

    sget-object v7, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/htc/calendar/app/widget/CalendarAppWidgetModel;

    iget-object v7, v7, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel;->mRowInfos:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 323
    :cond_0
    const-wide/16 v4, 0x0

    .line 347
    :goto_0
    return-wide v4

    .line 326
    :cond_1
    sget-object v7, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/htc/calendar/app/widget/CalendarAppWidgetModel;

    iget-object v7, v7, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel;->mRowInfos:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lt p1, v7, :cond_2

    .line 328
    const-string v7, "CalendarWidget"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "position = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">= mModel.mRowInfos.size() =  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/htc/calendar/app/widget/CalendarAppWidgetModel;

    iget-object v9, v9, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel;->mRowInfos:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 333
    :cond_2
    :try_start_0
    sget-object v7, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/htc/calendar/app/widget/CalendarAppWidgetModel;

    iget-object v7, v7, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel;->mRowInfos:Ljava/util/List;

    invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel$RowInfo;

    .line 334
    .local v6, rowInfo:Lcom/htc/calendar/app/widget/CalendarAppWidgetModel$RowInfo;
    iget v7, v6, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel$RowInfo;->mType:I

    if-nez v7, :cond_3

    .line 335
    iget v7, v6, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel$RowInfo;->mIndex:I

    int-to-long v4, v7

    goto :goto_0

    .line 337
    :cond_3
    sget-object v7, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/htc/calendar/app/widget/CalendarAppWidgetModel;

    iget-object v7, v7, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel;->mEventInfos:Ljava/util/List;

    iget v8, v6, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel$RowInfo;->mIndex:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel$EventInfo;

    .line 338
    .local v1, eventInfo:Lcom/htc/calendar/app/widget/CalendarAppWidgetModel$EventInfo;
    const-wide/16 v2, 0x1f

    .line 339
    .local v2, prime:J
    const-wide/16 v4, 0x1

    .line 340
    .local v4, result:J
    mul-long v7, v2, v4

    iget-wide v9, v1, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel$EventInfo;->id:J

    iget-wide v11, v1, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel$EventInfo;->id:J

    const/16 v13, 0x20

    ushr-long/2addr v11, v13

    xor-long/2addr v9, v11

    long-to-int v9, v9

    int-to-long v9, v9

    add-long v4, v7, v9

    .line 341
    mul-long v7, v2, v4

    iget-wide v9, v1, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel$EventInfo;->start:J

    iget-wide v11, v1, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel$EventInfo;->start:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v13, 0x20

    ushr-long/2addr v11, v13

    xor-long/2addr v9, v11

    long-to-int v9, v9

    int-to-long v9, v9

    add-long v4, v7, v9

    .line 342
    goto :goto_0

    .line 344
    .end local v1           #eventInfo:Lcom/htc/calendar/app/widget/CalendarAppWidgetModel$EventInfo;
    .end local v2           #prime:J
    .end local v4           #result:J
    .end local v6           #rowInfo:Lcom/htc/calendar/app/widget/CalendarAppWidgetModel$RowInfo;
    :catch_0
    move-exception v0

    .line 346
    .local v0, e:Ljava/lang/Exception;
    const-string v7, "CalendarWidget"

    const-string v8, "Exception : "

    invoke-static {v7, v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    const-wide/16 v4, 0x0

    goto/16 :goto_0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 3

    .prologue
    .line 200
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03000c

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 202
    .local v0, views:Landroid/widget/RemoteViews;
    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 20
    .parameter "position"

    .prologue
    .line 208
    if-ltz p1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->getCount()I

    move-result v1

    move/from16 v0, p1

    if-lt v0, v1, :cond_1

    .line 209
    :cond_0
    const/16 v19, 0x0

    .line 301
    :goto_0
    return-object v19

    .line 212
    :cond_1
    sget-object v1, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/htc/calendar/app/widget/CalendarAppWidgetModel;

    if-nez v1, :cond_2

    .line 213
    new-instance v19, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03000c

    move-object/from16 v0, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 215
    .local v19, views:Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-static/range {v1 .. v7}, Lcom/htc/calendar/app/widget/CalendarAppWidgetProvider;->getLaunchFillInIntent(Landroid/content/Context;JJJ)Landroid/content/Intent;

    move-result-object v12

    .line 217
    .local v12, intent:Landroid/content/Intent;
    const v1, 0x7f0d001d

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v12}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    goto :goto_0

    .line 221
    .end local v12           #intent:Landroid/content/Intent;
    .end local v19           #views:Landroid/widget/RemoteViews;
    :cond_2
    sget-object v1, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/htc/calendar/app/widget/CalendarAppWidgetModel;

    iget-object v1, v1, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel;->mEventInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/htc/calendar/app/widget/CalendarAppWidgetModel;

    iget-object v1, v1, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel;->mRowInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 222
    :cond_3
    new-instance v19, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03000d

    move-object/from16 v0, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 224
    .restart local v19       #views:Landroid/widget/RemoteViews;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-static/range {v1 .. v7}, Lcom/htc/calendar/app/widget/CalendarAppWidgetProvider;->getLaunchFillInIntent(Landroid/content/Context;JJJ)Landroid/content/Intent;

    move-result-object v12

    .line 226
    .restart local v12       #intent:Landroid/content/Intent;
    const v1, 0x7f0d001f

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v12}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    goto :goto_0

    .line 230
    .end local v12           #intent:Landroid/content/Intent;
    .end local v19           #views:Landroid/widget/RemoteViews;
    :cond_4
    sget-object v1, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/htc/calendar/app/widget/CalendarAppWidgetModel;

    iget-object v1, v1, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel;->mRowInfos:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel$RowInfo;

    .line 231
    .local v16, rowInfo:Lcom/htc/calendar/app/widget/CalendarAppWidgetModel$RowInfo;
    move-object/from16 v0, v16

    iget v1, v0, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel$RowInfo;->mType:I

    if-nez v1, :cond_5

    .line 232
    new-instance v19, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03000b

    move-object/from16 v0, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 234
    .restart local v19       #views:Landroid/widget/RemoteViews;
    sget-object v1, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/htc/calendar/app/widget/CalendarAppWidgetModel;

    iget-object v1, v1, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel;->mDayInfos:Ljava/util/List;

    move-object/from16 v0, v16

    iget v2, v0, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel$RowInfo;->mIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel$DayInfo;

    .line 235
    .local v8, dayInfo:Lcom/htc/calendar/app/widget/CalendarAppWidgetModel$DayInfo;
    const v1, 0x7f0d0007

    const/4 v2, 0x0

    iget-object v3, v8, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel$DayInfo;->mDayLabel:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-static {v0, v1, v2, v3}, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->updateTextView(Landroid/widget/RemoteViews;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 239
    .end local v8           #dayInfo:Lcom/htc/calendar/app/widget/CalendarAppWidgetModel$DayInfo;
    .end local v19           #views:Landroid/widget/RemoteViews;
    :cond_5
    sget-object v1, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/htc/calendar/app/widget/CalendarAppWidgetModel;

    iget-object v1, v1, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel;->mEventInfos:Ljava/util/List;

    move-object/from16 v0, v16

    iget v2, v0, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel$RowInfo;->mIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel$EventInfo;

    .line 240
    .local v10, eventInfo:Lcom/htc/calendar/app/widget/CalendarAppWidgetModel$EventInfo;
    iget-boolean v1, v10, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel$EventInfo;->allDay:Z

    if-eqz v1, :cond_7

    .line 241
    new-instance v19, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030040

    move-object/from16 v0, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 246
    .restart local v19       #views:Landroid/widget/RemoteViews;
    :goto_1
    iget v1, v10, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel$EventInfo;->color:I

    invoke-static {v1}, Lcom/htc/calendar/Utils;->getDisplayColorFromColor(I)I

    move-result v9

    .line 248
    .local v9, displayColor:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 249
    .local v13, now:J
    iget-boolean v1, v10, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel$EventInfo;->allDay:Z

    if-nez v1, :cond_8

    iget-wide v1, v10, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel$EventInfo;->start:J

    cmp-long v1, v1, v13

    if-gtz v1, :cond_8

    iget-wide v1, v10, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel$EventInfo;->end:J

    cmp-long v1, v13, v1

    if-gtz v1, :cond_8

    .line 250
    const v1, 0x7f0d0115

    const-string v2, "setBackgroundResource"

    const v3, 0x7f020001

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 257
    :goto_2
    const v1, 0x7f0d0009

    iget v2, v10, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel$EventInfo;->visibWhen:I

    iget-object v3, v10, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel$EventInfo;->when:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-static {v0, v1, v2, v3}, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->updateTextView(Landroid/widget/RemoteViews;IILjava/lang/String;)V

    .line 258
    const v1, 0x7f0d000a

    iget v2, v10, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel$EventInfo;->visibWhere:I

    iget-object v3, v10, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel$EventInfo;->where:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-static {v0, v1, v2, v3}, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->updateTextView(Landroid/widget/RemoteViews;IILjava/lang/String;)V

    .line 259
    const v1, 0x7f0d0008

    iget v2, v10, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel$EventInfo;->visibTitle:I

    iget-object v3, v10, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel$EventInfo;->title:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-static {v0, v1, v2, v3}, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->updateTextView(Landroid/widget/RemoteViews;IILjava/lang/String;)V

    .line 261
    const v1, 0x7f0d0116

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 263
    iget v0, v10, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel$EventInfo;->selfAttendeeStatus:I

    move/from16 v17, v0

    .line 264
    .local v17, selfAttendeeStatus:I
    const/4 v1, 0x2

    move/from16 v0, v17

    if-ne v0, v1, :cond_9

    .line 265
    const v1, 0x7f0d0008

    const-string v2, "setTextColor"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mDeclinedColor:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 266
    const v1, 0x7f0d0009

    const-string v2, "setTextColor"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mDeclinedColor:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 267
    const v1, 0x7f0d000a

    const-string v2, "setTextColor"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mDeclinedColor:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 270
    const v1, 0x7f0d0116

    const-string v2, "setImageResource"

    const v3, 0x7f020090

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 273
    const v1, 0x7f0d0116

    const-string v2, "setColorFilter"

    invoke-static {v9}, Lcom/htc/calendar/Utils;->getDeclinedColorFromColor(I)I

    move-result v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 289
    :goto_3
    iget-wide v4, v10, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel$EventInfo;->start:J

    .line 290
    .local v4, start:J
    iget-wide v6, v10, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel$EventInfo;->end:J

    .line 292
    .local v6, end:J
    iget-boolean v1, v10, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel$EventInfo;->allDay:Z

    if-eqz v1, :cond_6

    .line 293
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v18

    .line 294
    .local v18, tz:Ljava/lang/String;
    new-instance v15, Landroid/text/format/Time;

    invoke-direct {v15}, Landroid/text/format/Time;-><init>()V

    .line 295
    .local v15, recycle:Landroid/text/format/Time;
    move-object/from16 v0, v18

    invoke-static {v15, v4, v5, v0}, Lcom/htc/calendar/Utils;->convertAlldayLocalToUTC(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v4

    .line 296
    move-object/from16 v0, v18

    invoke-static {v15, v6, v7, v0}, Lcom/htc/calendar/Utils;->convertAlldayLocalToUTC(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v6

    .line 298
    .end local v15           #recycle:Landroid/text/format/Time;
    .end local v18           #tz:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    iget-wide v2, v10, Lcom/htc/calendar/app/widget/CalendarAppWidgetModel$EventInfo;->id:J

    invoke-static/range {v1 .. v7}, Lcom/htc/calendar/app/widget/CalendarAppWidgetProvider;->getLaunchFillInIntent(Landroid/content/Context;JJJ)Landroid/content/Intent;

    move-result-object v11

    .line 300
    .local v11, fillInIntent:Landroid/content/Intent;
    const v1, 0x7f0d0115

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v11}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    goto/16 :goto_0

    .line 244
    .end local v4           #start:J
    .end local v6           #end:J
    .end local v9           #displayColor:I
    .end local v11           #fillInIntent:Landroid/content/Intent;
    .end local v13           #now:J
    .end local v17           #selfAttendeeStatus:I
    .end local v19           #views:Landroid/widget/RemoteViews;
    :cond_7
    new-instance v19, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030041

    move-object/from16 v0, v19

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local v19       #views:Landroid/widget/RemoteViews;
    goto/16 :goto_1

    .line 253
    .restart local v9       #displayColor:I
    .restart local v13       #now:J
    :cond_8
    const v1, 0x7f0d0115

    const-string v2, "setBackgroundResource"

    const/high16 v3, 0x7f02

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_2

    .line 276
    .restart local v17       #selfAttendeeStatus:I
    :cond_9
    const v1, 0x7f0d0008

    const-string v2, "setTextColor"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mStandardColor:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 277
    const v1, 0x7f0d0009

    const-string v2, "setTextColor"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mStandardColor:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 278
    const v1, 0x7f0d000a

    const-string v2, "setTextColor"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mStandardColor:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 279
    const/4 v1, 0x3

    move/from16 v0, v17

    if-ne v0, v1, :cond_a

    .line 280
    const v1, 0x7f0d0116

    const-string v2, "setImageResource"

    const v3, 0x7f02008f

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 286
    :goto_4
    const v1, 0x7f0d0116

    const-string v2, "setColorFilter"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2, v9}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_3

    .line 283
    :cond_a
    const v1, 0x7f0d0116

    const-string v2, "setImageResource"

    const v3, 0x7f020090

    move-object/from16 v0, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_4
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x4

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x1

    return v0
.end method

.method public initLoader()V
    .locals 7

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->createLoaderUri()Landroid/net/Uri;

    move-result-object v2

    .line 377
    .local v2, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/calendar/Utils;->getHideDeclinedEvents(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v4, "visible=1 AND selfAttendeeStatus!=2"

    .line 379
    .local v4, selection:Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/content/CursorLoader;

    iget-object v1, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/htc/calendar/app/widget/CalendarAppWidgetService;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "startDay ASC, startMinute ASC, endDay ASC, endMinute ASC LIMIT 503"

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;

    .line 381
    iget-object v0, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;

    const-wide/16 v5, 0x1f4

    invoke-virtual {v0, v5, v6}, Landroid/content/CursorLoader;->setUpdateThrottle(J)V

    .line 382
    sget-object v1, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mLock:Ljava/lang/Integer;

    monitor-enter v1

    .line 383
    :try_start_0
    sget-object v0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mLock:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mLock:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mLastLock:I

    .line 384
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    iget-object v0, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;

    iget v1, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mAppWidgetId:I

    invoke-virtual {v0, v1, p0}, Landroid/content/CursorLoader;->registerListener(ILandroid/content/Loader$OnLoadCompleteListener;)V

    .line 386
    iget-object v0, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->startLoading()V

    .line 388
    return-void

    .line 377
    .end local v4           #selection:Ljava/lang/String;
    :cond_0
    const-string v4, "visible=1 AND "

    goto :goto_0

    .line 384
    .restart local v4       #selection:Ljava/lang/String;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->initLoader()V

    .line 181
    return-void
.end method

.method public onDataSetChanged()V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 190
    sget-object v0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0, p0}, Landroid/content/CursorLoader;->unregisterListener(Landroid/content/Loader$OnLoadCompleteListener;)V

    .line 194
    iget-object v0, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mLoader:Landroid/content/CursorLoader;

    invoke-virtual {v0}, Landroid/content/CursorLoader;->reset()V

    .line 196
    :cond_1
    return-void
.end method

.method public onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 22
    .parameter
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 468
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    if-nez p2, :cond_0

    .line 549
    :goto_0
    return-void

    .line 473
    :cond_0
    sget-object v17, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mLock:Ljava/lang/Integer;

    monitor-enter v17

    .line 476
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mLastLock:I

    move/from16 v16, v0

    sget-object v18, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mLock:Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 477
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :try_start_1
    monitor-exit v17

    goto :goto_0

    .line 548
    :catchall_0
    move-exception v16

    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v16

    .line 481
    :cond_1
    :try_start_2
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->isClosed()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 482
    const-string v16, "CalendarWidget"

    const-string v18, "the cursor is closed."

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 483
    :try_start_3
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 487
    :cond_2
    :try_start_4
    invoke-static/range {p2 .. p2}, Lcom/htc/calendar/Utils;->matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v5

    .line 488
    .local v5, matrixCursor:Landroid/database/MatrixCursor;
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->close()V

    .line 490
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 491
    .local v6, now:J
    sget-object v16, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mCursor:Landroid/database/Cursor;

    if-eqz v16, :cond_3

    .line 492
    sget-object v16, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mCursor:Landroid/database/Cursor;

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 494
    :cond_3
    sput-object v5, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mCursor:Landroid/database/Cursor;

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mTimezoneChanged:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/htc/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v13

    .line 496
    .local v13, tz:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    sget-object v18, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1, v13}, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->buildAppWidgetModel(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Lcom/htc/calendar/app/widget/CalendarAppWidgetModel;

    move-result-object v16

    sput-object v16, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/htc/calendar/app/widget/CalendarAppWidgetModel;

    .line 502
    sget-object v16, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mModel:Lcom/htc/calendar/app/widget/CalendarAppWidgetModel;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v6, v7, v13}, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->calculateUpdateTime(Lcom/htc/calendar/app/widget/CalendarAppWidgetModel;JLjava/lang/String;)J

    move-result-wide v11

    .line 507
    .local v11, triggerTime:J
    cmp-long v16, v11, v6

    if-gez v16, :cond_4

    .line 508
    const-string v16, "CalendarWidget"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Encountered bad trigger time "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-static {v11, v12, v6, v7}, Lcom/htc/calendar/app/widget/CalendarAppWidgetService;->formatDebugTime(JJ)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    const-wide/32 v18, 0x1499700

    add-long v11, v6, v18

    .line 512
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const-string v18, "alarm"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 514
    .local v2, alertManager:Landroid/app/AlarmManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/htc/calendar/app/widget/CalendarAppWidgetProvider;->getUpdateIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 517
    .local v8, pendingUpdate:Landroid/app/PendingIntent;
    invoke-virtual {v2, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 518
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v2, v0, v11, v12, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 519
    new-instance v9, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/htc/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 520
    .local v9, time:Landroid/text/format/Time;
    invoke-virtual {v9}, Landroid/text/format/Time;->setToNow()V

    .line 522
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v18

    sget-wide v20, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->sLastUpdateTime:J

    cmp-long v16, v18, v20

    if-eqz v16, :cond_7

    .line 523
    new-instance v10, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/htc/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v10, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 524
    .local v10, time2:Landroid/text/format/Time;
    sget-wide v18, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->sLastUpdateTime:J

    move-wide/from16 v0, v18

    invoke-virtual {v10, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 525
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 526
    iget v0, v9, Landroid/text/format/Time;->year:I

    move/from16 v16, v0

    iget v0, v10, Landroid/text/format/Time;->year:I

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    iget v0, v9, Landroid/text/format/Time;->yearDay:I

    move/from16 v16, v0

    iget v0, v10, Landroid/text/format/Time;->yearDay:I

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    .line 527
    :cond_5
    new-instance v14, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/htc/calendar/Utils;->getWidgetUpdateAction(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 529
    .local v14, updateIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 532
    .end local v14           #updateIntent:Landroid/content/Intent;
    :cond_6
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    sput-wide v18, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->sLastUpdateTime:J

    .line 535
    .end local v10           #time2:Landroid/text/format/Time;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v15

    .line 536
    .local v15, widgetManager:Landroid/appwidget/AppWidgetManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mAppWidgetId:I

    move/from16 v16, v0

    const/16 v18, -0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/htc/calendar/app/widget/CalendarAppWidgetProvider;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v4

    .line 540
    .local v4, ids:[I
    const v16, 0x7f0d001b

    move/from16 v0, v16

    invoke-virtual {v15, v4, v0}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged([II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 548
    .end local v2           #alertManager:Landroid/app/AlarmManager;
    .end local v4           #ids:[I
    .end local v5           #matrixCursor:Landroid/database/MatrixCursor;
    .end local v6           #now:J
    .end local v8           #pendingUpdate:Landroid/app/PendingIntent;
    .end local v9           #time:Landroid/text/format/Time;
    .end local v11           #triggerTime:J
    .end local v13           #tz:Ljava/lang/String;
    .end local v15           #widgetManager:Landroid/appwidget/AppWidgetManager;
    :goto_1
    :try_start_5
    monitor-exit v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 542
    .restart local v2       #alertManager:Landroid/app/AlarmManager;
    .restart local v5       #matrixCursor:Landroid/database/MatrixCursor;
    .restart local v6       #now:J
    .restart local v8       #pendingUpdate:Landroid/app/PendingIntent;
    .restart local v9       #time:Landroid/text/format/Time;
    .restart local v11       #triggerTime:J
    .restart local v13       #tz:Ljava/lang/String;
    .restart local v15       #widgetManager:Landroid/appwidget/AppWidgetManager;
    :cond_8
    :try_start_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->mAppWidgetId:I

    move/from16 v16, v0

    const v18, 0x7f0d001b

    move/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/appwidget/AppWidgetManager;->notifyAppWidgetViewDataChanged(II)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    .line 545
    .end local v2           #alertManager:Landroid/app/AlarmManager;
    .end local v5           #matrixCursor:Landroid/database/MatrixCursor;
    .end local v6           #now:J
    .end local v8           #pendingUpdate:Landroid/app/PendingIntent;
    .end local v9           #time:Landroid/text/format/Time;
    .end local v11           #triggerTime:J
    .end local v13           #tz:Ljava/lang/String;
    .end local v15           #widgetManager:Landroid/appwidget/AppWidgetManager;
    :catch_0
    move-exception v3

    .line 546
    .local v3, e:Ljava/lang/Exception;
    :try_start_7
    const-string v16, "CalendarWidget"

    const-string v18, "Exception : "

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1
.end method

.method public bridge synthetic onLoadComplete(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->onLoadComplete(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 567
    iget-boolean v2, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->isFirstLaunch:Z

    if-eqz v2, :cond_0

    .line 568
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->isFirstLaunch:Z

    .line 569
    move-object v0, p1

    .line 570
    .local v0, c:Landroid/content/Context;
    move-object v1, p2

    .line 571
    .local v1, i:Landroid/content/Intent;
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v2

    new-instance v3, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory$3;-><init>(Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {v2, v3}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 588
    .end local v0           #c:Landroid/content/Context;
    .end local v1           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 586
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/htc/calendar/app/widget/CalendarAppWidgetService$CalendarFactory;->doOnReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method
