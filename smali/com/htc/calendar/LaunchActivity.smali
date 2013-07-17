.class public Lcom/htc/calendar/LaunchActivity;
.super Landroid/app/Activity;
.source "LaunchActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/calendar/LaunchActivity$checkSyncOnOpenThread;
    }
.end annotation


# static fields
.field static final KEY_DETAIL_VIEW:Ljava/lang/String; = "DETAIL_VIEW"

.field private static final TAG:Ljava/lang/String; = "LaunchActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 136
    return-void
.end method

.method private loadHtcCalendar()V
    .locals 12

    .prologue
    .line 45
    const-string v8, "LaunchActivity"

    const-string v9, ">> loadHtcCalendar"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p0}, Lcom/htc/calendar/LaunchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 49
    .local v4, myIntent:Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 54
    .local v3, myData:Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 55
    .local v2, intent:Landroid/content/Intent;
    if-eqz v3, :cond_0

    .line 56
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 66
    :cond_0
    invoke-virtual {v2, v4}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 69
    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.htc.calendar.ACTION_CUSTOMIZATION"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 70
    .local v5, settingIntent:Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/htc/calendar/LaunchActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 96
    new-instance v8, Landroid/os/Handler;

    invoke-direct {v8}, Landroid/os/Handler;-><init>()V

    new-instance v9, Lcom/htc/calendar/LaunchActivity$1;

    invoke-direct {v9, p0}, Lcom/htc/calendar/LaunchActivity$1;-><init>(Lcom/htc/calendar/LaunchActivity;)V

    const-wide/16 v10, 0x3e8

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 105
    if-eqz v0, :cond_1

    const-string v8, "com.htc.calendar.action.finish_immediate"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 106
    const-string v8, "LaunchActivity"

    const-string v9, "boot first launch Calendar"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p0}, Lcom/htc/calendar/LaunchActivity;->finish()V

    .line 134
    :goto_0
    return-void

    .line 112
    :cond_1
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    invoke-static {v8}, Lcom/htc/calendar/HtcUtils;->isLaunchingEventInfo(Landroid/net/Uri;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 113
    const-string v8, "LaunchActivity"

    const-string v9, "go to EventInfoActivity"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-class v8, Lcom/htc/calendar/EventInfoActivity;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, p0, v8}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0, v4}, Lcom/htc/calendar/LaunchActivity;->startActivity(Landroid/content/Intent;)V

    .line 116
    invoke-virtual {p0}, Lcom/htc/calendar/LaunchActivity;->finish()V

    goto :goto_0

    .line 123
    :cond_2
    :try_start_0
    const-string v8, "beginTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v2, v8, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 125
    .local v6, whenToGo:J
    const-class v8, Lcom/htc/calendar/CalendarCarouselActivity;

    invoke-virtual {v2, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 126
    const-string v8, "beginTime"

    invoke-virtual {v2, v8, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 127
    const/high16 v8, 0x2002

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0, v2}, Lcom/htc/calendar/LaunchActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v6           #whenToGo:J
    :goto_1
    invoke-virtual {p0}, Lcom/htc/calendar/LaunchActivity;->finish()V

    .line 133
    const-string v8, "LaunchActivity"

    const-string v9, "<< loadHtcCalendar"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 129
    :catch_0
    move-exception v1

    .line 130
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "LaunchActivity"

    const-string v9, "startActivity with CalendarCarouselActivity error!"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "icicle"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-direct {p0}, Lcom/htc/calendar/LaunchActivity;->loadHtcCalendar()V

    .line 41
    return-void
.end method
