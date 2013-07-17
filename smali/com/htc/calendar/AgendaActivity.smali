.class public Lcom/htc/calendar/AgendaActivity;
.super Landroid/app/Activity;
.source "AgendaActivity.java"

# interfaces
.implements Lcom/htc/calendar/Navigator;


# static fields
.field protected static final BUNDLE_KEY_RESTORE_TIME:Ljava/lang/String; = "key_restore_time"

.field private static DEBUG:Z = false

.field private static HTCLOG:Z = false

.field private static final INITIAL_HEAP_SIZE:J = 0x400000L

.field private static final TAG:Ljava/lang/String; = "AgendaActivity"


# instance fields
.field private final HIDE_DECLINED_NOT_INIT:I

.field private final HIDE_DECLINED_OFF:I

.field private final HIDE_DECLINED_ON:I

.field private mAgendaListView:Lcom/htc/calendar/AgendaListView;

.field private mBackToAgenda:Z

.field private mContext:Landroid/content/Context;

.field private mIncludeAssociatedNotes:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIntentReceiverCloseOnPause:Landroid/content/BroadcastReceiver;

.field private mIsResumed:Z

.field private mPreHideDeclined:I

.field private mTime:Landroid/text/format/Time;

.field private mUpdateTZ:Ljava/lang/Runnable;

.field private mUriMode:Z

.field private mVCalMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    sput-boolean v0, Lcom/htc/calendar/AgendaActivity;->DEBUG:Z

    .line 363
    const/4 v0, 0x1

    sput-boolean v0, Lcom/htc/calendar/AgendaActivity;->HTCLOG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 95
    new-instance v0, Lcom/htc/calendar/AgendaActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/calendar/AgendaActivity$1;-><init>(Lcom/htc/calendar/AgendaActivity;)V

    iput-object v0, p0, Lcom/htc/calendar/AgendaActivity;->mUpdateTZ:Ljava/lang/Runnable;

    .line 106
    new-instance v0, Lcom/htc/calendar/AgendaActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/calendar/AgendaActivity$2;-><init>(Lcom/htc/calendar/AgendaActivity;)V

    iput-object v0, p0, Lcom/htc/calendar/AgendaActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 364
    iput-boolean v1, p0, Lcom/htc/calendar/AgendaActivity;->mVCalMode:Z

    .line 365
    iput-boolean v1, p0, Lcom/htc/calendar/AgendaActivity;->mUriMode:Z

    .line 366
    iput-boolean v3, p0, Lcom/htc/calendar/AgendaActivity;->mIncludeAssociatedNotes:Z

    .line 368
    iput-boolean v1, p0, Lcom/htc/calendar/AgendaActivity;->mBackToAgenda:Z

    .line 369
    iput-boolean v1, p0, Lcom/htc/calendar/AgendaActivity;->mIsResumed:Z

    .line 370
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/calendar/AgendaActivity;->mContext:Landroid/content/Context;

    .line 372
    iput v2, p0, Lcom/htc/calendar/AgendaActivity;->HIDE_DECLINED_NOT_INIT:I

    .line 373
    iput v1, p0, Lcom/htc/calendar/AgendaActivity;->HIDE_DECLINED_OFF:I

    .line 374
    iput v3, p0, Lcom/htc/calendar/AgendaActivity;->HIDE_DECLINED_ON:I

    .line 375
    iput v2, p0, Lcom/htc/calendar/AgendaActivity;->mPreHideDeclined:I

    .line 446
    new-instance v0, Lcom/htc/calendar/AgendaActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/calendar/AgendaActivity$3;-><init>(Lcom/htc/calendar/AgendaActivity;)V

    iput-object v0, p0, Lcom/htc/calendar/AgendaActivity;->mIntentReceiverCloseOnPause:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/calendar/AgendaActivity;)Landroid/text/format/Time;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/calendar/AgendaActivity;Landroid/text/format/Time;)Landroid/text/format/Time;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/htc/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/calendar/AgendaActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/calendar/AgendaActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/calendar/AgendaActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/htc/calendar/AgendaActivity;->setHtcTitle()V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/calendar/AgendaActivity;)Lcom/htc/calendar/AgendaListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/htc/calendar/AgendaActivity;->mAgendaListView:Lcom/htc/calendar/AgendaListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/calendar/AgendaActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/htc/calendar/AgendaActivity;->mIsResumed:Z

    return v0
.end method

.method static synthetic access$502(Lcom/htc/calendar/AgendaActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/htc/calendar/AgendaActivity;->mBackToAgenda:Z

    return p1
.end method

.method private setHtcTitle()V
    .locals 13

    .prologue
    const/4 v11, 0x0

    .line 416
    invoke-virtual {p0}, Lcom/htc/calendar/AgendaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 419
    .local v7, res:Landroid/content/res/Resources;
    new-instance v9, Ljava/lang/StringBuilder;

    const v0, 0x7f08007b

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 420
    .local v9, title:Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/htc/calendar/AgendaActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/calendar/AgendaActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v0, v3}, Lcom/htc/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v10

    .line 421
    .local v10, tz:Ljava/lang/String;
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 422
    const/4 v5, 0x1

    .line 423
    .local v5, flags:I
    iget-object v0, p0, Lcom/htc/calendar/AgendaActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    or-int/lit16 v5, v5, 0x80

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->isDst:I

    if-eqz v0, :cond_2

    const/4 v6, 0x1

    .line 427
    .local v6, isDST:Z
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 428
    .local v1, start:J
    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    .line 429
    .local v8, timeZone:Ljava/util/TimeZone;
    const-string v0, " ("

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v0, p0, Lcom/htc/calendar/AgendaActivity;->mContext:Landroid/content/Context;

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v8, v6, v11, v3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .end local v1           #start:J
    .end local v5           #flags:I
    .end local v6           #isDST:Z
    .end local v8           #timeZone:Ljava/util/TimeZone;
    :cond_1
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/htc/calendar/HtcUtils;->setHtc_Title_21(Landroid/app/Activity;Ljava/lang/String;)V

    .line 436
    return-void

    .restart local v5       #flags:I
    :cond_2
    move v6, v11

    .line 426
    goto :goto_0
.end method


# virtual methods
.method public getAllDay()Z
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x0

    return v0
.end method

.method public getSelectedTime()J
    .locals 5

    .prologue
    .line 341
    iget-object v2, p0, Lcom/htc/calendar/AgendaActivity;->mAgendaListView:Lcom/htc/calendar/AgendaListView;

    invoke-virtual {v2}, Lcom/htc/calendar/AgendaListView;->getSelectedTime()J

    move-result-wide v0

    .line 342
    .local v0, selectedTime:J
    sget-boolean v2, Lcom/htc/calendar/AgendaActivity;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 343
    const-string v2, "AgendaActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectedTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const-string v2, "AgendaActivity"

    const-string v3, "getSelectedTime"

    invoke-static {v2, v3, v0, v1}, Lcom/htc/calendar/Utils;->debugLongTime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 346
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 347
    iget-object v2, p0, Lcom/htc/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 349
    :cond_1
    return-wide v0
.end method

.method public goTo(Landroid/text/format/Time;Z)V
    .locals 2
    .parameter "time"
    .parameter "animate"

    .prologue
    .line 337
    iget-object v0, p0, Lcom/htc/calendar/AgendaActivity;->mAgendaListView:Lcom/htc/calendar/AgendaListView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/htc/calendar/AgendaListView;->goTo(Landroid/text/format/Time;Z)V

    .line 338
    return-void
.end method

.method public goTo(Landroid/text/format/Time;ZLandroid/text/format/Time;)V
    .locals 0
    .parameter "time"
    .parameter "animate"
    .parameter "focusOn"

    .prologue
    .line 439
    return-void
.end method

.method public goToToday()V
    .locals 3

    .prologue
    .line 327
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 328
    .local v0, now:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 330
    iget-object v1, p0, Lcom/htc/calendar/AgendaActivity;->mAgendaListView:Lcom/htc/calendar/AgendaListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/htc/calendar/AgendaListView;->goTo(Landroid/text/format/Time;Z)V

    .line 332
    invoke-static {}, Lcom/htc/calendar/Utils;->isSupportJogball()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    iget-object v1, p0, Lcom/htc/calendar/AgendaActivity;->mAgendaListView:Lcom/htc/calendar/AgendaListView;

    invoke-virtual {v1}, Lcom/htc/calendar/AgendaListView;->setSelectionAfterHeaderView()V

    .line 334
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 463
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 464
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/calendar/AgendaActivity;->requestWindowFeature(I)Z

    .line 146
    invoke-virtual {p0}, Lcom/htc/calendar/AgendaActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 149
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    const-wide/32 v3, 0x400000

    invoke-virtual {v2, v3, v4}, Ldalvik/system/VMRuntime;->setMinimumHeapSize(J)J

    .line 150
    invoke-virtual {p0}, Lcom/htc/calendar/AgendaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/calendar/AgendaActivity;->mContext:Landroid/content/Context;

    .line 153
    const v2, 0x7f030001

    invoke-virtual {p0, v2}, Lcom/htc/calendar/AgendaActivity;->setContentView(I)V

    .line 154
    const v2, 0x7f0d0004

    invoke-virtual {p0, v2}, Lcom/htc/calendar/AgendaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/calendar/AgendaListView;

    iput-object v2, p0, Lcom/htc/calendar/AgendaActivity;->mAgendaListView:Lcom/htc/calendar/AgendaListView;

    .line 155
    iget-object v2, p0, Lcom/htc/calendar/AgendaActivity;->mAgendaListView:Lcom/htc/calendar/AgendaListView;

    invoke-virtual {v2, p0}, Lcom/htc/calendar/AgendaListView;->initWindowAdapter(Landroid/app/Activity;)V

    .line 156
    iget-object v2, p0, Lcom/htc/calendar/AgendaActivity;->mAgendaListView:Lcom/htc/calendar/AgendaListView;

    iget-object v3, p0, Lcom/htc/calendar/AgendaActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020099

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/calendar/AgendaListView;->setListBackground(Landroid/graphics/drawable/Drawable;)V

    .line 159
    new-instance v2, Landroid/text/format/Time;

    iget-object v3, p0, Lcom/htc/calendar/AgendaActivity;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/calendar/AgendaActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v3, v4}, Lcom/htc/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/htc/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    .line 163
    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/calendar/CalendarContext;->getCurrentSelectedTimeInMillis()J

    move-result-wide v0

    .line 166
    .local v0, millis:J
    iget-object v2, p0, Lcom/htc/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 167
    sget-boolean v2, Lcom/htc/calendar/AgendaActivity;->HTCLOG:Z

    if-eqz v2, :cond_0

    .line 168
    const-string v2, "AgendaActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OnCreate to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v4}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 385
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 393
    iget-object v1, p0, Lcom/htc/calendar/AgendaActivity;->mIntentReceiverCloseOnPause:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 395
    :try_start_0
    iget-object v1, p0, Lcom/htc/calendar/AgendaActivity;->mIntentReceiverCloseOnPause:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/calendar/AgendaActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/calendar/AgendaActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 403
    :try_start_1
    iget-object v1, p0, Lcom/htc/calendar/AgendaActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/calendar/AgendaActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 413
    :cond_1
    :goto_1
    return-void

    .line 396
    :catch_0
    move-exception v0

    .line 397
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AgendaActivity"

    const-string v2, "mIntentReceiverCloseOnPause not registered"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 404
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 405
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "AgendaActivity"

    const-string v2, "mIntentReceiver not registered"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 316
    packed-switch p1, :pswitch_data_0

    .line 322
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 319
    :pswitch_0
    iget-object v0, p0, Lcom/htc/calendar/AgendaActivity;->mAgendaListView:Lcom/htc/calendar/AgendaListView;

    invoke-virtual {v0}, Lcom/htc/calendar/AgendaListView;->deleteSelectedEvent()V

    goto :goto_0

    .line 316
    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 179
    .local v0, time:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 180
    iget-object v2, p0, Lcom/htc/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 181
    iget-object v2, p0, Lcom/htc/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/htc/calendar/AgendaActivity;->goTo(Landroid/text/format/Time;Z)V

    .line 184
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/calendar/AgendaActivity;->setIntent(Landroid/content/Intent;)V

    .line 186
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 297
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 299
    iget-object v0, p0, Lcom/htc/calendar/AgendaActivity;->mAgendaListView:Lcom/htc/calendar/AgendaListView;

    invoke-virtual {v0}, Lcom/htc/calendar/AgendaListView;->onPause()V

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/calendar/AgendaActivity;->mIsResumed:Z

    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/calendar/AgendaActivity;->mBackToAgenda:Z

    .line 312
    return-void
.end method

.method protected onResume()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 190
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 191
    invoke-static {}, Lcom/htc/calendar/CalendarULog;->printSwitchToAgenda()V

    .line 192
    sget-boolean v5, Lcom/htc/calendar/AgendaActivity;->HTCLOG:Z

    if-eqz v5, :cond_0

    .line 193
    const-string v5, "AgendaActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "OnResume to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v9}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mBackToAgenda: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/htc/calendar/AgendaActivity;->mBackToAgenda:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/htc/calendar/AgendaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 198
    .local v0, _intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    .line 200
    .local v3, mimeType:Ljava/lang/String;
    if-eqz v3, :cond_4

    const-string v5, "text/event-url"

    invoke-virtual {v3, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_4

    .line 201
    iput-boolean v6, p0, Lcom/htc/calendar/AgendaActivity;->mUriMode:Z

    .line 202
    const-string v5, "IncludeAssociatedNotes"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/calendar/AgendaActivity;->mIncludeAssociatedNotes:Z

    .line 216
    :goto_0
    iget-boolean v5, p0, Lcom/htc/calendar/AgendaActivity;->mVCalMode:Z

    if-eqz v5, :cond_6

    .line 217
    iget-object v5, p0, Lcom/htc/calendar/AgendaActivity;->mAgendaListView:Lcom/htc/calendar/AgendaListView;

    const/4 v8, 0x3

    invoke-virtual {v5, v8}, Lcom/htc/calendar/AgendaListView;->setMode(I)V

    .line 229
    :goto_1
    invoke-virtual {p0}, Lcom/htc/calendar/AgendaActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 231
    .local v4, prefs:Landroid/content/SharedPreferences;
    const-string v5, "preferences_hide_declined"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 234
    .local v2, hideDeclined:Z
    iget v5, p0, Lcom/htc/calendar/AgendaActivity;->mPreHideDeclined:I

    const/4 v8, -0x1

    if-eq v5, v8, :cond_1

    .line 235
    iget v5, p0, Lcom/htc/calendar/AgendaActivity;->mPreHideDeclined:I

    if-ne v5, v6, :cond_9

    move v5, v6

    :goto_2
    if-eq v2, v5, :cond_1

    .line 236
    iput-boolean v7, p0, Lcom/htc/calendar/AgendaActivity;->mBackToAgenda:Z

    .line 239
    :cond_1
    if-eqz v2, :cond_a

    move v5, v6

    :goto_3
    iput v5, p0, Lcom/htc/calendar/AgendaActivity;->mPreHideDeclined:I

    .line 241
    iget-object v5, p0, Lcom/htc/calendar/AgendaActivity;->mAgendaListView:Lcom/htc/calendar/AgendaListView;

    invoke-virtual {v5, v2}, Lcom/htc/calendar/AgendaListView;->setHideDeclinedEvents(Z)V

    .line 243
    iget-boolean v5, p0, Lcom/htc/calendar/AgendaActivity;->mBackToAgenda:Z

    if-nez v5, :cond_2

    .line 244
    iget-object v8, p0, Lcom/htc/calendar/AgendaActivity;->mAgendaListView:Lcom/htc/calendar/AgendaListView;

    iget-object v9, p0, Lcom/htc/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    iget-boolean v5, p0, Lcom/htc/calendar/AgendaActivity;->mBackToAgenda:Z

    if-nez v5, :cond_b

    move v5, v6

    :goto_4
    invoke-virtual {v8, v9, v5}, Lcom/htc/calendar/AgendaListView;->goTo(Landroid/text/format/Time;Z)V

    .line 246
    :cond_2
    iget-object v5, p0, Lcom/htc/calendar/AgendaActivity;->mAgendaListView:Lcom/htc/calendar/AgendaListView;

    invoke-virtual {v5}, Lcom/htc/calendar/AgendaListView;->onResume()V

    .line 248
    iput-boolean v6, p0, Lcom/htc/calendar/AgendaActivity;->mIsResumed:Z

    .line 249
    iget-boolean v5, p0, Lcom/htc/calendar/AgendaActivity;->mBackToAgenda:Z

    if-eqz v5, :cond_3

    .line 250
    iput-boolean v7, p0, Lcom/htc/calendar/AgendaActivity;->mBackToAgenda:Z

    .line 267
    :cond_3
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 268
    .local v1, filterCloseOnPause:Landroid/content/IntentFilter;
    const-string v5, "com.htc.calendar.event_changed"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    iget-object v5, p0, Lcom/htc/calendar/AgendaActivity;->mIntentReceiverCloseOnPause:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v1}, Lcom/htc/calendar/AgendaActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 271
    iget-object v5, p0, Lcom/htc/calendar/AgendaActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 275
    invoke-direct {p0}, Lcom/htc/calendar/AgendaActivity;->setHtcTitle()V

    .line 278
    return-void

    .line 203
    .end local v1           #filterCloseOnPause:Landroid/content/IntentFilter;
    .end local v2           #hideDeclined:Z
    .end local v4           #prefs:Landroid/content/SharedPreferences;
    :cond_4
    if-eqz v3, :cond_5

    const-string v5, "text/x-vCalendar"

    invoke-virtual {v3, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_5

    .line 205
    const-string v5, "vCalendar"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/calendar/AgendaActivity;->mVCalMode:Z

    .line 206
    const-string v5, "GetEventUri"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/calendar/AgendaActivity;->mUriMode:Z

    goto :goto_0

    .line 211
    :cond_5
    const-string v5, "vCalendar"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/calendar/AgendaActivity;->mVCalMode:Z

    .line 212
    const-string v5, "GetEventUri"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/calendar/AgendaActivity;->mUriMode:Z

    .line 213
    const-string v5, "IncludeAssociatedNotes"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/calendar/AgendaActivity;->mIncludeAssociatedNotes:Z

    goto/16 :goto_0

    .line 218
    :cond_6
    iget-boolean v5, p0, Lcom/htc/calendar/AgendaActivity;->mUriMode:Z

    if-eqz v5, :cond_8

    .line 219
    iget-boolean v5, p0, Lcom/htc/calendar/AgendaActivity;->mIncludeAssociatedNotes:Z

    if-eqz v5, :cond_7

    .line 220
    iget-object v5, p0, Lcom/htc/calendar/AgendaActivity;->mAgendaListView:Lcom/htc/calendar/AgendaListView;

    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Lcom/htc/calendar/AgendaListView;->setMode(I)V

    goto/16 :goto_1

    .line 222
    :cond_7
    iget-object v5, p0, Lcom/htc/calendar/AgendaActivity;->mAgendaListView:Lcom/htc/calendar/AgendaListView;

    const/4 v8, 0x5

    invoke-virtual {v5, v8}, Lcom/htc/calendar/AgendaListView;->setMode(I)V

    goto/16 :goto_1

    .line 225
    :cond_8
    iget-object v5, p0, Lcom/htc/calendar/AgendaActivity;->mAgendaListView:Lcom/htc/calendar/AgendaListView;

    invoke-virtual {v5, v7}, Lcom/htc/calendar/AgendaListView;->setMode(I)V

    goto/16 :goto_1

    .restart local v2       #hideDeclined:Z
    .restart local v4       #prefs:Landroid/content/SharedPreferences;
    :cond_9
    move v5, v7

    .line 235
    goto/16 :goto_2

    :cond_a
    move v5, v7

    .line 239
    goto/16 :goto_3

    :cond_b
    move v5, v7

    .line 244
    goto/16 :goto_4
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "outState"

    .prologue
    .line 282
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 286
    .local v0, firstVisibleTime:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 287
    iget-object v2, p0, Lcom/htc/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 288
    const-string v2, "key_restore_time"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 289
    sget-boolean v2, Lcom/htc/calendar/AgendaActivity;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 290
    const-string v2, "AgendaActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSaveInstanceState "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/calendar/AgendaActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v4}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 443
    invoke-static {p0}, Lcom/htc/calendar/Utils;->onSearchRequestedLocked(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 379
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 381
    return-void
.end method
