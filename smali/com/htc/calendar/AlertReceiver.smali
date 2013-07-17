.class public Lcom/htc/calendar/AlertReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlertReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/calendar/AlertReceiver$BeginStartingService;
    }
.end annotation


# static fields
.field private static final DELETE_ACTION:Ljava/lang/String; = "delete"

.field private static final TAG:Ljava/lang/String; = "AlertReceiver"

.field static mStartingService:Landroid/os/PowerManager$WakeLock;

.field static final mStartingServiceSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/htc/calendar/AlertReceiver;->mStartingServiceSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 190
    return-void
.end method

.method public static beginStartingService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 94
    sget-object v2, Lcom/htc/calendar/AlertReceiver;->mStartingServiceSync:Ljava/lang/Object;

    monitor-enter v2

    .line 95
    :try_start_0
    sget-object v1, Lcom/htc/calendar/AlertReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    .line 96
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 98
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v3, "StartingAlertService"

    invoke-virtual {v0, v1, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/htc/calendar/AlertReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    .line 100
    sget-object v1, Lcom/htc/calendar/AlertReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 102
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    sget-object v1, Lcom/htc/calendar/AlertReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 103
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 104
    monitor-exit v2

    .line 105
    return-void

    .line 104
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static finishStartingService(Landroid/app/Service;I)V
    .locals 2
    .parameter "service"
    .parameter "startId"

    .prologue
    .line 112
    sget-object v1, Lcom/htc/calendar/AlertReceiver;->mStartingServiceSync:Ljava/lang/Object;

    monitor-enter v1

    .line 113
    :try_start_0
    sget-object v0, Lcom/htc/calendar/AlertReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0, p1}, Landroid/app/Service;->stopSelfResult(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    sget-object v0, Lcom/htc/calendar/AlertReceiver;->mStartingService:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 118
    :cond_0
    monitor-exit v1

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static makeNewAlertNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/htc/wrap/android/app/HtcWrapNotification;
    .locals 1
    .parameter "context"
    .parameter "title"
    .parameter "location"
    .parameter "numReminders"

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/htc/calendar/AlertReceiver;->makeNewAlertNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/htc/wrap/android/app/HtcWrapNotification;

    move-result-object v0

    return-object v0
.end method

.method public static makeNewAlertNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/htc/wrap/android/app/HtcWrapNotification;
    .locals 11
    .parameter "context"
    .parameter "title"
    .parameter "location"
    .parameter "numReminders"
    .parameter "highPriority"

    .prologue
    .line 134
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 137
    .local v6, res:Landroid/content/res/Resources;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 138
    .local v0, clickIntent:Landroid/content/Intent;
    const-class v7, Lcom/htc/calendar/AlertActivity;

    invoke-virtual {v0, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 139
    const/high16 v7, 0x1000

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 142
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 143
    .local v1, deleteIntent:Landroid/content/Intent;
    const-class v7, Lcom/htc/calendar/AlertReceiver;

    invoke-virtual {v1, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 144
    const-string v7, "delete"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 147
    :cond_0
    const v7, 0x7f080078

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 151
    :cond_1
    const/4 v7, 0x1

    if-le p3, v7, :cond_4

    .line 153
    const/4 v7, 0x2

    if-ne p3, v7, :cond_3

    .line 154
    const v7, 0x7f080094

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, format:Ljava/lang/String;
    :goto_0
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    add-int/lit8 v10, p3, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v2, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 163
    .end local v2           #format:Ljava/lang/String;
    .local v3, helperString:Ljava/lang/String;
    :goto_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {p0, v7, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 165
    .local v5, pendingClickIntent:Landroid/app/PendingIntent;
    new-instance v4, Lcom/htc/wrap/android/app/HtcWrapNotification;

    const v7, 0x7f020087

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-direct {v4, v7, v8, v9, v10}, Lcom/htc/wrap/android/app/HtcWrapNotification;-><init>(ILjava/lang/CharSequence;J)V

    .line 169
    .local v4, notification:Lcom/htc/wrap/android/app/HtcWrapNotification;
    invoke-virtual {v4, p0, p1, v3, v5}, Lcom/htc/wrap/android/app/HtcWrapNotification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 174
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {p0, v7, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v4, Lcom/htc/wrap/android/app/HtcWrapNotification;->deleteIntent:Landroid/app/PendingIntent;

    .line 176
    if-eqz p4, :cond_2

    .line 177
    iput-object v5, v4, Lcom/htc/wrap/android/app/HtcWrapNotification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 180
    :cond_2
    return-object v4

    .line 156
    .end local v3           #helperString:Ljava/lang/String;
    .end local v4           #notification:Lcom/htc/wrap/android/app/HtcWrapNotification;
    .end local v5           #pendingClickIntent:Landroid/app/PendingIntent;
    :cond_3
    const v7, 0x7f080095

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #format:Ljava/lang/String;
    goto :goto_0

    .line 160
    .end local v2           #format:Ljava/lang/String;
    :cond_4
    move-object v3, p2

    .restart local v3       #helperString:Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 59
    const-string v4, "delete"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 65
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/htc/calendar/DismissAllAlarmsService;

    invoke-direct {v1, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .local v1, serviceIntent:Landroid/content/Intent;
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 87
    .end local v1           #serviceIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 67
    :cond_0
    const-string v4, "android.intent.action.TIMEFORMAT_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 68
    const-string v4, "AlertReceiver"

    const-string v5, "ACTION_TIME_FORMAT_CHANGED"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-static {p1}, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->fetchSystemDateFormat(Landroid/content/Context;)V

    goto :goto_0

    .line 71
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 72
    .local v0, i:Landroid/content/Intent;
    const-class v4, Lcom/htc/calendar/AlertService;

    invoke-virtual {v0, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 73
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 74
    const-string v4, "action"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 78
    .local v3, uri:Landroid/net/Uri;
    if-eqz v3, :cond_2

    .line 79
    const-string v4, "uri"

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    :cond_2
    new-instance v2, Lcom/htc/calendar/AlertReceiver$BeginStartingService;

    invoke-direct {v2, p0, p1, v0}, Lcom/htc/calendar/AlertReceiver$BeginStartingService;-><init>(Lcom/htc/calendar/AlertReceiver;Landroid/content/Context;Landroid/content/Intent;)V

    .line 84
    .local v2, thread:Lcom/htc/calendar/AlertReceiver$BeginStartingService;
    invoke-virtual {v2}, Lcom/htc/calendar/AlertReceiver$BeginStartingService;->start()V

    goto :goto_0
.end method
