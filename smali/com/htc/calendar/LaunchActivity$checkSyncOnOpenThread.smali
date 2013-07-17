.class Lcom/htc/calendar/LaunchActivity$checkSyncOnOpenThread;
.super Ljava/lang/Thread;
.source "LaunchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/LaunchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "checkSyncOnOpenThread"
.end annotation


# instance fields
.field private mWeakContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/calendar/LaunchActivity$checkSyncOnOpenThread;->mWeakContext:Ljava/lang/ref/WeakReference;

    .line 140
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/calendar/LaunchActivity$checkSyncOnOpenThread;->mWeakContext:Ljava/lang/ref/WeakReference;

    .line 141
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 147
    :try_start_0
    iget-object v8, p0, Lcom/htc/calendar/LaunchActivity$checkSyncOnOpenThread;->mWeakContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 148
    .local v2, context:Landroid/content/Context;
    if-eqz v2, :cond_0

    .line 149
    invoke-static {v2}, Lcom/htc/calendar/CalendarPreferenceActivity;->getLastSyncOnOpen(Landroid/content/Context;)J

    move-result-wide v4

    .line 151
    .local v4, lastsynctime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 152
    .local v6, now:J
    const-wide/32 v0, 0xdbba0

    .line 153
    .local v0, _15mins:J
    sub-long v8, v6, v4

    cmp-long v8, v8, v0

    if-gtz v8, :cond_1

    .line 154
    const-string v8, "LaunchActivity"

    const-string v9, "sync when open not be triggered."

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .end local v0           #_15mins:J
    .end local v2           #context:Landroid/content/Context;
    .end local v4           #lastsynctime:J
    .end local v6           #now:J
    :cond_0
    :goto_0
    return-void

    .line 157
    .restart local v0       #_15mins:J
    .restart local v2       #context:Landroid/content/Context;
    .restart local v4       #lastsynctime:J
    .restart local v6       #now:J
    :cond_1
    invoke-static {v2, v6, v7}, Lcom/htc/calendar/CalendarPreferenceActivity;->saveLastSyncOnOpen(Landroid/content/Context;J)V

    .line 158
    invoke-static {v2}, Lcom/htc/calendar/EASMailUtils;->checkSyncOnOpen(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    .end local v0           #_15mins:J
    .end local v2           #context:Landroid/content/Context;
    .end local v4           #lastsynctime:J
    .end local v6           #now:J
    :catch_0
    move-exception v3

    .line 162
    .local v3, e:Ljava/lang/Exception;
    const-string v8, "LaunchActivity"

    const-string v9, "checkSyncOnOpen error"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
