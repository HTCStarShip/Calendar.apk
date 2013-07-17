.class public Lcom/htc/calendar/DayActivity;
.super Lcom/htc/calendar/CalendarActivity;
.source "DayActivity.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/calendar/DayActivity$LoadEventsWeatherHandler;
    }
.end annotation


# static fields
.field private static final MSG_EXIST:I = 0x1

.field private static final MSG_UI_UPDATE_WEATHER:I = 0x1

.field private static final MSG_WEATHER_REQUEST_CITY_CODE_FOR_SHOW_WEATHER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DayActivity"

.field private static final VIEW_ID:I = 0x1


# instance fields
.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field protected mCurrentTime:Landroid/text/format/Time;

.field private mHandler:Landroid/os/Handler;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsPreview:Z

.field protected mIsReceiverRegistered:Z

.field private mIsShowWeather:Z

.field protected mLastQueryTime:Landroid/text/format/Time;

.field protected mStartMillis:J

.field private mWeatherBar:Lcom/htc/calendar/widget/WeatherBar;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0}, Lcom/htc/calendar/CalendarActivity;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/calendar/DayActivity;->mWeatherBar:Lcom/htc/calendar/widget/WeatherBar;

    .line 74
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/DayActivity;->mLastQueryTime:Landroid/text/format/Time;

    .line 76
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/DayActivity;->mCurrentTime:Landroid/text/format/Time;

    .line 78
    iput-boolean v1, p0, Lcom/htc/calendar/DayActivity;->mIsReceiverRegistered:Z

    .line 153
    iput-boolean v1, p0, Lcom/htc/calendar/DayActivity;->mIsPreview:Z

    .line 350
    new-instance v0, Lcom/htc/calendar/DayActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/calendar/DayActivity$1;-><init>(Lcom/htc/calendar/DayActivity;)V

    iput-object v0, p0, Lcom/htc/calendar/DayActivity;->mHandler:Landroid/os/Handler;

    .line 496
    new-instance v0, Lcom/htc/calendar/DayActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/calendar/DayActivity$2;-><init>(Lcom/htc/calendar/DayActivity;)V

    iput-object v0, p0, Lcom/htc/calendar/DayActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/calendar/DayActivity;)Lcom/htc/calendar/widget/WeatherBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/calendar/DayActivity;->mWeatherBar:Lcom/htc/calendar/widget/WeatherBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/calendar/DayActivity;)Landroid/os/HandlerThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/calendar/DayActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/calendar/DayActivity;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/htc/calendar/DayActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic access$200(Lcom/htc/calendar/DayActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/calendar/DayActivity;->mBackgroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/htc/calendar/DayActivity;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/htc/calendar/DayActivity;->mBackgroundHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$300(Lcom/htc/calendar/DayActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/htc/calendar/DayActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private initLoadEventWeatherHandler()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 306
    iget-object v2, p0, Lcom/htc/calendar/DayActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    if-nez v2, :cond_2

    .line 307
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "LoadEventsBgThread"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/htc/calendar/DayActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 309
    iget-object v2, p0, Lcom/htc/calendar/DayActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 311
    iget-object v2, p0, Lcom/htc/calendar/DayActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/calendar/DayActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 312
    iget-object v2, p0, Lcom/htc/calendar/DayActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 313
    .local v1, myLooper:Landroid/os/Looper;
    if-eqz v1, :cond_0

    .line 314
    new-instance v2, Lcom/htc/calendar/DayActivity$LoadEventsWeatherHandler;

    invoke-direct {v2, p0, v1}, Lcom/htc/calendar/DayActivity$LoadEventsWeatherHandler;-><init>(Lcom/htc/calendar/DayActivity;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/htc/calendar/DayActivity;->mBackgroundHandler:Landroid/os/Handler;

    .line 344
    .end local v1           #myLooper:Landroid/os/Looper;
    :goto_0
    return-void

    .line 316
    .restart local v1       #myLooper:Landroid/os/Looper;
    :cond_0
    const-string v2, "DayActivity"

    const-string v3, "get Looper is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iput-object v5, p0, Lcom/htc/calendar/DayActivity;->mBackgroundHandler:Landroid/os/Handler;

    goto :goto_0

    .line 320
    .end local v1           #myLooper:Landroid/os/Looper;
    :cond_1
    const-string v2, "DayActivity"

    const-string v3, "mBackgroundThread is null or mBackgroundThread is not alive"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 323
    :cond_2
    iget-object v2, p0, Lcom/htc/calendar/DayActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_3

    .line 325
    :try_start_0
    iget-object v2, p0, Lcom/htc/calendar/DayActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/htc/calendar/DayActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_4

    .line 332
    iput-object v5, p0, Lcom/htc/calendar/DayActivity;->mBackgroundHandler:Landroid/os/Handler;

    .line 333
    const-string v2, "DayActivity"

    const-string v3, "mBackgroundThread still can\'t start it, so set mBackgroundHandler to null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DayActivity"

    const-string v3, "mBackgroundThread is not alive, and can\'t start it"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 335
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    iget-object v2, p0, Lcom/htc/calendar/DayActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 336
    .restart local v1       #myLooper:Landroid/os/Looper;
    if-eqz v1, :cond_5

    .line 337
    new-instance v2, Lcom/htc/calendar/DayActivity$LoadEventsWeatherHandler;

    invoke-direct {v2, p0, v1}, Lcom/htc/calendar/DayActivity$LoadEventsWeatherHandler;-><init>(Lcom/htc/calendar/DayActivity;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/htc/calendar/DayActivity;->mBackgroundHandler:Landroid/os/Handler;

    goto :goto_0

    .line 339
    :cond_5
    const-string v2, "DayActivity"

    const-string v3, "get Looper is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iput-object v5, p0, Lcom/htc/calendar/DayActivity;->mBackgroundHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method private initPreviewEvent(Landroid/content/Intent;)Lcom/htc/calendar/Event;
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 267
    new-instance v0, Lcom/htc/calendar/Event;

    invoke-direct {v0}, Lcom/htc/calendar/Event;-><init>()V

    .line 269
    .local v0, e:Lcom/htc/calendar/Event;
    const-string v2, "title"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/calendar/Event;->title:Ljava/lang/CharSequence;

    .line 270
    const-string v2, "location"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/calendar/Event;->location:Ljava/lang/CharSequence;

    .line 271
    const-string v2, "allDay"

    invoke-virtual {p1, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/htc/calendar/Event;->allDay:Z

    .line 272
    const-string v2, "fake_calendar_preview"

    iput-object v2, v0, Lcom/htc/calendar/Event;->organizer:Ljava/lang/String;

    .line 273
    iput-boolean v6, v0, Lcom/htc/calendar/Event;->guestsCanModify:Z

    .line 275
    iget-object v2, v0, Lcom/htc/calendar/Event;->title:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/htc/calendar/DayActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080078

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/calendar/Event;->title:Ljava/lang/CharSequence;

    .line 279
    :cond_0
    const-string v2, "color"

    const v3, -0x4ebbf2

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/htc/calendar/Event;->color:I

    .line 281
    const-string v2, "dtStart"

    const-wide v3, 0x12a5ff2c580L

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/htc/calendar/Event;->startMillis:J

    .line 282
    const-string v2, "dtEnd"

    const-wide v3, 0x12a6029b400L

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/htc/calendar/Event;->endMillis:J

    .line 284
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 286
    .local v1, local:Landroid/text/format/Time;
    iget-wide v2, v0, Lcom/htc/calendar/Event;->startMillis:J

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 287
    iget-wide v2, v0, Lcom/htc/calendar/Event;->startMillis:J

    iget-wide v4, v1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    iput v2, v0, Lcom/htc/calendar/Event;->startDay:I

    .line 288
    iget v2, v1, Landroid/text/format/Time;->hour:I

    mul-int/lit8 v2, v2, 0x3c

    iget v3, v1, Landroid/text/format/Time;->minute:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/htc/calendar/Event;->startTime:I

    .line 290
    iget-wide v2, v0, Lcom/htc/calendar/Event;->endMillis:J

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 291
    iget-wide v2, v0, Lcom/htc/calendar/Event;->endMillis:J

    iget-wide v4, v1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    iput v2, v0, Lcom/htc/calendar/Event;->endDay:I

    .line 292
    iget v2, v1, Landroid/text/format/Time;->hour:I

    mul-int/lit8 v2, v2, 0x3c

    iget v3, v1, Landroid/text/format/Time;->minute:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/htc/calendar/Event;->endTime:I

    .line 294
    iput-boolean v6, v0, Lcom/htc/calendar/Event;->hasAlarm:Z

    .line 296
    iput-boolean v6, v0, Lcom/htc/calendar/Event;->isRepeating:Z

    .line 297
    iput v6, v0, Lcom/htc/calendar/Event;->selfAttendeeStatus:I

    .line 298
    iput-boolean v6, v0, Lcom/htc/calendar/Event;->mIsEventEditable:Z

    .line 300
    invoke-virtual {v0}, Lcom/htc/calendar/Event;->dump()V

    .line 301
    return-object v0
.end method

.method private processIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 243
    if-eqz p1, :cond_0

    .line 244
    const-string v1, "isPreview"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/calendar/DayActivity;->mIsPreview:Z

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/htc/calendar/DayActivity;->getCurrentView()Lcom/htc/calendar/CalendarView;

    move-result-object v4

    iget-boolean v1, p0, Lcom/htc/calendar/DayActivity;->mIsPreview:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/htc/calendar/CalendarView;->setMode(I)V

    .line 249
    invoke-virtual {p0}, Lcom/htc/calendar/DayActivity;->getNextView()Lcom/htc/calendar/CalendarView;

    move-result-object v1

    iget-boolean v4, p0, Lcom/htc/calendar/DayActivity;->mIsPreview:Z

    if-eqz v4, :cond_2

    :goto_1
    invoke-virtual {v1, v2}, Lcom/htc/calendar/CalendarView;->setMode(I)V

    .line 251
    iget-boolean v1, p0, Lcom/htc/calendar/DayActivity;->mIsPreview:Z

    if-eqz v1, :cond_3

    .line 252
    invoke-direct {p0, p1}, Lcom/htc/calendar/DayActivity;->initPreviewEvent(Landroid/content/Intent;)Lcom/htc/calendar/Event;

    move-result-object v0

    .line 253
    .local v0, e:Lcom/htc/calendar/Event;
    iget-object v1, p0, Lcom/htc/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    iget-wide v2, v0, Lcom/htc/calendar/Event;->startMillis:J

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 254
    iget-object v1, p0, Lcom/htc/calendar/DayActivity;->mCurrentTime:Landroid/text/format/Time;

    iget-object v2, p0, Lcom/htc/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 255
    invoke-virtual {p0}, Lcom/htc/calendar/DayActivity;->getCurrentView()Lcom/htc/calendar/CalendarView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/calendar/CalendarView;->initPreviewEvent(Lcom/htc/calendar/Event;)Z

    .line 256
    invoke-virtual {p0}, Lcom/htc/calendar/DayActivity;->getNextView()Lcom/htc/calendar/CalendarView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/htc/calendar/CalendarView;->initPreviewEvent(Lcom/htc/calendar/Event;)Z

    .line 263
    .end local v0           #e:Lcom/htc/calendar/Event;
    :goto_2
    return-void

    :cond_1
    move v1, v3

    .line 248
    goto :goto_0

    :cond_2
    move v2, v3

    .line 249
    goto :goto_1

    .line 258
    :cond_3
    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/calendar/CalendarContext;->getCurrentSelectedTime()Landroid/text/format/Time;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    .line 259
    iget-object v1, p0, Lcom/htc/calendar/DayActivity;->mCurrentTime:Landroid/text/format/Time;

    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/calendar/CalendarContext;->getCurrentSelectedTime()Landroid/text/format/Time;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    goto :goto_2
.end method

.method private safeCreateViewSwitcher()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    if-nez v0, :cond_0

    .line 163
    const v0, 0x7f0d0045

    invoke-virtual {p0, v0}, Lcom/htc/calendar/DayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    .line 165
    iget-object v0, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 166
    iget-object v0, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 168
    :cond_0
    return-void
.end method


# virtual methods
.method protected checkShowWeather(J)V
    .locals 2
    .parameter "millis"

    .prologue
    .line 528
    iget-object v0, p0, Lcom/htc/calendar/DayActivity;->mLastQueryTime:Landroid/text/format/Time;

    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 529
    iget-object v0, p0, Lcom/htc/calendar/DayActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/calendar/DayActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 530
    :cond_0
    return-void
.end method

.method protected clearLastQueryTime()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 410
    iget-object v0, p0, Lcom/htc/calendar/DayActivity;->mLastQueryTime:Landroid/text/format/Time;

    iput v1, v0, Landroid/text/format/Time;->year:I

    .line 411
    iget-object v0, p0, Lcom/htc/calendar/DayActivity;->mLastQueryTime:Landroid/text/format/Time;

    iput v1, v0, Landroid/text/format/Time;->month:I

    .line 412
    iget-object v0, p0, Lcom/htc/calendar/DayActivity;->mLastQueryTime:Landroid/text/format/Time;

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    .line 413
    iget-object v0, p0, Lcom/htc/calendar/DayActivity;->mLastQueryTime:Landroid/text/format/Time;

    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 414
    iget-object v0, p0, Lcom/htc/calendar/DayActivity;->mLastQueryTime:Landroid/text/format/Time;

    iput v1, v0, Landroid/text/format/Time;->minute:I

    .line 415
    return-void
.end method

.method public goTo(Landroid/text/format/Time;Z)V
    .locals 2
    .parameter "time"
    .parameter "animate"

    .prologue
    .line 554
    invoke-super {p0, p1, p2}, Lcom/htc/calendar/CalendarActivity;->goTo(Landroid/text/format/Time;Z)V

    .line 556
    invoke-static {p0}, Lcom/htc/calendar/CalendarPreferenceActivity;->showWeatherInfo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/calendar/DayActivity;->checkShowWeather(J)V

    .line 558
    :cond_0
    return-void
.end method

.method public goToToday()V
    .locals 2

    .prologue
    .line 563
    invoke-super {p0}, Lcom/htc/calendar/CalendarActivity;->goToToday()V

    .line 565
    invoke-static {p0}, Lcom/htc/calendar/CalendarPreferenceActivity;->showWeatherInfo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/htc/calendar/DayActivity;->checkShowWeather(J)V

    .line 567
    :cond_0
    return-void
.end method

.method protected initReceiver()V
    .locals 5

    .prologue
    .line 451
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 452
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 453
    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 454
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 455
    const-string v2, "action.calendars.picker.changed"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 456
    const-string v2, "com.htc.calendar.event_changed"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 459
    iget-object v2, p0, Lcom/htc/calendar/DayActivity;->mWeatherBar:Lcom/htc/calendar/widget/WeatherBar;

    if-eqz v2, :cond_2

    .line 460
    iget-object v2, p0, Lcom/htc/calendar/DayActivity;->mWeatherBar:Lcom/htc/calendar/widget/WeatherBar;

    invoke-virtual {v2}, Lcom/htc/calendar/widget/WeatherBar;->isUsingCurrentLocation()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 462
    const-string v2, "com.htc.sync.provider.weather.result"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 463
    invoke-static {}, Lcom/htc/util/weather/WSPUtility;->generateWSPReqestForCurrentLocation()Lcom/htc/util/weather/WSPRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 465
    const-string v2, "com.htc.sync.provider.weather.SETTINGS_UPDATED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 466
    const-string v2, "com.htc.sync.provider.weather.setting.temperatureunit"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 486
    :goto_0
    invoke-virtual {p0}, Lcom/htc/calendar/DayActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_3

    .line 487
    iget-object v2, p0, Lcom/htc/calendar/DayActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/htc/calendar/DayActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 488
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/htc/calendar/DayActivity;->mIsReceiverRegistered:Z

    .line 489
    const-string v2, "DayActivity"

    const-string v3, "Receiver registered."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :goto_1
    return-void

    .line 467
    :cond_0
    iget-object v2, p0, Lcom/htc/calendar/DayActivity;->mWeatherBar:Lcom/htc/calendar/widget/WeatherBar;

    invoke-virtual {v2}, Lcom/htc/calendar/widget/WeatherBar;->isCleanBoot()Z

    move-result v2

    if-nez v2, :cond_1

    .line 469
    const-string v2, "com.htc.sync.provider.weather.result"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 471
    :try_start_0
    iget-object v2, p0, Lcom/htc/calendar/DayActivity;->mWeatherBar:Lcom/htc/calendar/widget/WeatherBar;

    invoke-virtual {v2}, Lcom/htc/calendar/widget/WeatherBar;->getCurrentCityCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/util/weather/WSPUtility;->generateWSPRequestForLocCode(Ljava/lang/String;)Lcom/htc/util/weather/WSPRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPRequest;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    :goto_2
    const-string v2, "com.htc.sync.provider.weather.SETTINGS_UPDATED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 477
    const-string v2, "com.htc.sync.provider.weather.setting.temperatureunit"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_0

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DayActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "City code exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 480
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    const-string v2, "DayActivity"

    const-string v3, "Can\'t get city code from WeatherUtility, don\'t add category in receiver"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 483
    :cond_2
    const-string v2, "DayActivity"

    const-string v3, "mWeatherBar == null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 491
    :cond_3
    const-string v2, "DayActivity"

    const-string v3, "Try to register receiver but activity is finishing, do not register!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public makeView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 110
    new-instance v0, Lcom/htc/calendar/DayView;

    invoke-direct {v0, p0}, Lcom/htc/calendar/DayView;-><init>(Lcom/htc/calendar/CalendarActivity;)V

    .line 111
    .local v0, view:Lcom/htc/calendar/DayView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/calendar/DayView;->setId(I)V

    .line 112
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/htc/calendar/DayView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    iget-object v1, p0, Lcom/htc/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Lcom/htc/calendar/DayView;->setSelectedDay(Landroid/text/format/Time;)V

    .line 115
    return-object v0
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    .line 571
    const-string v3, "DayActivity"

    const-string v4, "onBackPressed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    invoke-virtual {p0}, Lcom/htc/calendar/DayActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/CarouselActivity;

    .line 575
    .local v0, carouselActivity:Lcom/htc/widget/CarouselActivity;
    if-eqz v0, :cond_1

    .line 576
    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/calendar/CalendarContext;->getMonthToDay()Z

    move-result v1

    .line 577
    .local v1, isMonthToDay:Z
    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/calendar/CalendarContext;->getWeekToDay()Z

    move-result v2

    .line 579
    .local v2, isWeekToDay:Z
    if-eqz v1, :cond_0

    .line 580
    invoke-virtual {v0}, Lcom/htc/widget/CarouselActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v3

    const-string v4, "Month"

    invoke-virtual {v3, v4}, Lcom/htc/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 592
    .end local v1           #isMonthToDay:Z
    .end local v2           #isWeekToDay:Z
    :goto_0
    return-void

    .line 585
    .restart local v1       #isMonthToDay:Z
    .restart local v2       #isWeekToDay:Z
    :cond_0
    if-eqz v2, :cond_1

    .line 586
    invoke-virtual {v0}, Lcom/htc/widget/CarouselActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v3

    const-string v4, "Week"

    invoke-virtual {v3, v4}, Lcom/htc/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_0

    .line 591
    .end local v1           #isMonthToDay:Z
    .end local v2           #isWeekToDay:Z
    :cond_1
    invoke-super {p0}, Lcom/htc/calendar/CalendarActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/htc/calendar/CalendarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lcom/htc/calendar/DayActivity;->setContentView(I)V

    .line 90
    const v0, 0x7f0d0101

    invoke-virtual {p0, v0}, Lcom/htc/calendar/DayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/widget/WeatherBar;

    iput-object v0, p0, Lcom/htc/calendar/DayActivity;->mWeatherBar:Lcom/htc/calendar/widget/WeatherBar;

    .line 106
    invoke-direct {p0}, Lcom/htc/calendar/DayActivity;->initLoadEventWeatherHandler()V

    .line 107
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 534
    invoke-super {p0}, Lcom/htc/calendar/CalendarActivity;->onDestroy()V

    .line 535
    iget-object v0, p0, Lcom/htc/calendar/DayActivity;->mBackgroundHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/htc/calendar/DayActivity;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/DayActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 540
    iget-object v0, p0, Lcom/htc/calendar/DayActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 541
    iput-object v2, p0, Lcom/htc/calendar/DayActivity;->mHandler:Landroid/os/Handler;

    .line 544
    :cond_1
    iget-object v0, p0, Lcom/htc/calendar/DayActivity;->mWeatherBar:Lcom/htc/calendar/widget/WeatherBar;

    if-eqz v0, :cond_2

    .line 545
    iget-object v0, p0, Lcom/htc/calendar/DayActivity;->mWeatherBar:Lcom/htc/calendar/widget/WeatherBar;

    invoke-virtual {v0}, Lcom/htc/calendar/widget/WeatherBar;->release()V

    .line 546
    iput-object v2, p0, Lcom/htc/calendar/DayActivity;->mWeatherBar:Lcom/htc/calendar/widget/WeatherBar;

    .line 548
    :cond_2
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/htc/calendar/CalendarActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 158
    invoke-virtual {p0, p1}, Lcom/htc/calendar/DayActivity;->setIntent(Landroid/content/Intent;)V

    .line 159
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 120
    invoke-super {p0}, Lcom/htc/calendar/CalendarActivity;->onPause()V

    .line 122
    iget-object v2, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/calendar/CalendarView;

    .line 123
    .local v1, view:Lcom/htc/calendar/CalendarView;
    invoke-virtual {v1}, Lcom/htc/calendar/CalendarView;->getSelectedDay()Landroid/text/format/Time;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    .line 124
    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/htc/calendar/CalendarContext;->setMonthToDay(Z)V

    .line 125
    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/htc/calendar/CalendarContext;->setWeekToDay(Z)V

    .line 131
    iget-boolean v2, p0, Lcom/htc/calendar/DayActivity;->mIsReceiverRegistered:Z

    if-eqz v2, :cond_0

    .line 132
    iput-boolean v3, p0, Lcom/htc/calendar/DayActivity;->mIsReceiverRegistered:Z

    .line 134
    :try_start_0
    iget-object v2, p0, Lcom/htc/calendar/DayActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/htc/calendar/DayActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 135
    const-string v2, "DayActivity"

    const-string v3, "Unregister receiver"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "DayActivity"

    const-string v3, "Unable to unregister receiver"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 140
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v2, "DayActivity"

    const-string v3, "No receiver register."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 181
    invoke-direct {p0}, Lcom/htc/calendar/DayActivity;->safeCreateViewSwitcher()V

    .line 183
    invoke-super {p0}, Lcom/htc/calendar/CalendarActivity;->onResume()V

    .line 187
    invoke-static {p0, v3}, Lcom/htc/calendar/Utils;->setDefaultView(Landroid/content/Context;I)V

    .line 200
    invoke-virtual {p0}, Lcom/htc/calendar/DayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/calendar/DayActivity;->processIntent(Landroid/content/Intent;)V

    .line 203
    iget-object v2, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/DayView;

    .line 204
    .local v0, view1:Lcom/htc/calendar/DayView;
    iget-object v2, p0, Lcom/htc/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0, v2}, Lcom/htc/calendar/DayView;->setSelectedDay(Landroid/text/format/Time;)V

    .line 205
    invoke-virtual {v0}, Lcom/htc/calendar/DayView;->reloadEvents()V

    .line 207
    iget-object v2, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/calendar/DayView;

    .line 208
    .local v1, view2:Lcom/htc/calendar/DayView;
    iget-object v2, p0, Lcom/htc/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v1, v2}, Lcom/htc/calendar/DayView;->setSelectedDay(Landroid/text/format/Time;)V

    .line 209
    invoke-virtual {v1}, Lcom/htc/calendar/DayView;->reloadEvents()V

    .line 213
    iget-object v2, p0, Lcom/htc/calendar/DayActivity;->mWeatherBar:Lcom/htc/calendar/widget/WeatherBar;

    if-eqz v2, :cond_2

    .line 214
    iget-object v2, p0, Lcom/htc/calendar/DayActivity;->mWeatherBar:Lcom/htc/calendar/widget/WeatherBar;

    invoke-virtual {v2}, Lcom/htc/calendar/widget/WeatherBar;->checkIsShowWeather()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 215
    iget-object v2, p0, Lcom/htc/calendar/DayActivity;->mBackgroundHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 216
    iget-object v2, p0, Lcom/htc/calendar/DayActivity;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-object v2, p0, Lcom/htc/calendar/DayActivity;->mWeatherBar:Lcom/htc/calendar/widget/WeatherBar;

    invoke-virtual {v2}, Lcom/htc/calendar/widget/WeatherBar;->clearWeatherInfo()V

    goto :goto_0

    .line 222
    :cond_2
    const-string v2, "DayActivity"

    const-string v3, "mWeatherBar == null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/htc/calendar/DayActivity;->safeCreateViewSwitcher()V

    .line 175
    invoke-super {p0}, Lcom/htc/calendar/CalendarActivity;->onStart()V

    .line 176
    return-void
.end method

.method protected renewCursor()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 418
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%d/%d/%d %d:%d"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/htc/calendar/DayActivity;->mLastQueryTime:Landroid/text/format/Time;

    iget v7, v7, Landroid/text/format/Time;->year:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/htc/calendar/DayActivity;->mLastQueryTime:Landroid/text/format/Time;

    iget v7, v7, Landroid/text/format/Time;->month:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    iget-object v7, p0, Lcom/htc/calendar/DayActivity;->mLastQueryTime:Landroid/text/format/Time;

    iget v7, v7, Landroid/text/format/Time;->monthDay:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    iget-object v7, p0, Lcom/htc/calendar/DayActivity;->mLastQueryTime:Landroid/text/format/Time;

    iget v7, v7, Landroid/text/format/Time;->hour:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    iget-object v7, p0, Lcom/htc/calendar/DayActivity;->mLastQueryTime:Landroid/text/format/Time;

    iget v7, v7, Landroid/text/format/Time;->minute:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v12

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 419
    .local v2, strLast:Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%d/%d/%d %d:%d"

    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/htc/calendar/DayActivity;->mCurrentTime:Landroid/text/format/Time;

    iget v7, v7, Landroid/text/format/Time;->year:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/htc/calendar/DayActivity;->mCurrentTime:Landroid/text/format/Time;

    iget v7, v7, Landroid/text/format/Time;->month:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    iget-object v7, p0, Lcom/htc/calendar/DayActivity;->mCurrentTime:Landroid/text/format/Time;

    iget v7, v7, Landroid/text/format/Time;->monthDay:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    iget-object v7, p0, Lcom/htc/calendar/DayActivity;->mCurrentTime:Landroid/text/format/Time;

    iget v7, v7, Landroid/text/format/Time;->hour:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    iget-object v7, p0, Lcom/htc/calendar/DayActivity;->mCurrentTime:Landroid/text/format/Time;

    iget v7, v7, Landroid/text/format/Time;->minute:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v12

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, strCurr:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/calendar/DayActivity;->mLastQueryTime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->month:I

    iget-object v5, p0, Lcom/htc/calendar/DayActivity;->mCurrentTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->month:I

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/htc/calendar/DayActivity;->mLastQueryTime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->year:I

    iget-object v5, p0, Lcom/htc/calendar/DayActivity;->mCurrentTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->year:I

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/htc/calendar/DayActivity;->mLastQueryTime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->monthDay:I

    iget-object v5, p0, Lcom/htc/calendar/DayActivity;->mCurrentTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->monthDay:I

    if-ne v4, v5, :cond_0

    .line 447
    :goto_0
    return-void

    .line 429
    :cond_0
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 430
    .local v3, time:Landroid/text/format/Time;
    iget-object v4, p0, Lcom/htc/calendar/DayActivity;->mCurrentTime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->year:I

    iput v4, v3, Landroid/text/format/Time;->year:I

    .line 431
    iget-object v4, p0, Lcom/htc/calendar/DayActivity;->mCurrentTime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->month:I

    iput v4, v3, Landroid/text/format/Time;->month:I

    .line 432
    iget-object v4, p0, Lcom/htc/calendar/DayActivity;->mCurrentTime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->monthDay:I

    iput v4, v3, Landroid/text/format/Time;->monthDay:I

    .line 433
    iput v8, v3, Landroid/text/format/Time;->hour:I

    .line 434
    iput v8, v3, Landroid/text/format/Time;->minute:I

    .line 435
    iput v8, v3, Landroid/text/format/Time;->second:I

    .line 436
    invoke-virtual {v3, v9}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    iget-wide v6, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v4, v5, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 442
    .local v0, julian_day:I
    iget-object v4, p0, Lcom/htc/calendar/DayActivity;->mLastQueryTime:Landroid/text/format/Time;

    iget-object v5, p0, Lcom/htc/calendar/DayActivity;->mCurrentTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->month:I

    iput v5, v4, Landroid/text/format/Time;->month:I

    .line 443
    iget-object v4, p0, Lcom/htc/calendar/DayActivity;->mLastQueryTime:Landroid/text/format/Time;

    iget-object v5, p0, Lcom/htc/calendar/DayActivity;->mCurrentTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->year:I

    iput v5, v4, Landroid/text/format/Time;->year:I

    .line 444
    iget-object v4, p0, Lcom/htc/calendar/DayActivity;->mLastQueryTime:Landroid/text/format/Time;

    iget-object v5, p0, Lcom/htc/calendar/DayActivity;->mCurrentTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->monthDay:I

    iput v5, v4, Landroid/text/format/Time;->monthDay:I

    .line 445
    iget-object v4, p0, Lcom/htc/calendar/DayActivity;->mLastQueryTime:Landroid/text/format/Time;

    iget-object v5, p0, Lcom/htc/calendar/DayActivity;->mCurrentTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->hour:I

    iput v5, v4, Landroid/text/format/Time;->hour:I

    .line 446
    iget-object v4, p0, Lcom/htc/calendar/DayActivity;->mLastQueryTime:Landroid/text/format/Time;

    iget-object v5, p0, Lcom/htc/calendar/DayActivity;->mCurrentTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->minute:I

    iput v5, v4, Landroid/text/format/Time;->minute:I

    goto :goto_0
.end method
