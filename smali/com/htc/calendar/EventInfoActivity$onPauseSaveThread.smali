.class Lcom/htc/calendar/EventInfoActivity$onPauseSaveThread;
.super Ljava/lang/Thread;
.source "EventInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/EventInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "onPauseSaveThread"
.end annotation


# instance fields
.field private mRefEventInfoActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/calendar/EventInfoActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/calendar/EventInfoActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 2525
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2523
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/calendar/EventInfoActivity$onPauseSaveThread;->mRefEventInfoActivity:Ljava/lang/ref/WeakReference;

    .line 2526
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/calendar/EventInfoActivity$onPauseSaveThread;->mRefEventInfoActivity:Ljava/lang/ref/WeakReference;

    .line 2527
    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    .line 2531
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EventInfoActivity$onPauseSaveThread;->mRefEventInfoActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/calendar/EventInfoActivity;

    .line 2532
    .local v13, refEventInfoActivity:Lcom/htc/calendar/EventInfoActivity;
    if-nez v13, :cond_1

    .line 2533
    const-string v2, "EventInfoActivity"

    const-string v3, "refEventInfoActivity is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2586
    :cond_0
    :goto_0
    return-void

    .line 2538
    :cond_1
    const/16 v2, 0xa

    :try_start_0
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2539
    invoke-virtual {v13}, Lcom/htc/calendar/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 2540
    .local v8, cr:Landroid/content/ContentResolver;
    #getter for: Lcom/htc/calendar/EventInfoActivity;->mReminderItems:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/htc/calendar/EventInfoActivity;->access$1800(Lcom/htc/calendar/EventInfoActivity;)Ljava/util/ArrayList;

    move-result-object v2

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mReminderValues:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/htc/calendar/EventInfoActivity;->access$1900(Lcom/htc/calendar/EventInfoActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/calendar/EditEvent;->reminderItemsToMinutes(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 2542
    .local v4, reminderMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 2543
    .local v1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    #getter for: Lcom/htc/calendar/EventInfoActivity;->mEventId:J
    invoke-static {v13}, Lcom/htc/calendar/EventInfoActivity;->access$1000(Lcom/htc/calendar/EventInfoActivity;)J

    move-result-wide v2

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mOriginalMinutes:Ljava/util/ArrayList;
    invoke-static {v13}, Lcom/htc/calendar/EventInfoActivity;->access$2000(Lcom/htc/calendar/EventInfoActivity;)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/htc/calendar/EditEvent;->saveReminders(Ljava/util/ArrayList;JLjava/util/ArrayList;Ljava/util/ArrayList;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 2547
    .local v7, changed:Z
    :try_start_1
    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 2549
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mEventId:J
    invoke-static {v13}, Lcom/htc/calendar/EventInfoActivity;->access$1000(Lcom/htc/calendar/EventInfoActivity;)J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    .line 2552
    .local v15, uri:Landroid/net/Uri;
    const/4 v11, 0x0

    .line 2553
    .local v11, hasReminder:Z
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 2554
    .local v14, reminder:Ljava/lang/Integer;
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_2

    .line 2555
    const/4 v11, 0x1

    .line 2560
    .end local v14           #reminder:Ljava/lang/Integer;
    :cond_3
    move v10, v11

    .line 2561
    .local v10, hasAlarm:Z
    #getter for: Lcom/htc/calendar/EventInfoActivity;->mOriginalHasAlarm:Z
    invoke-static {v13}, Lcom/htc/calendar/EventInfoActivity;->access$2100(Lcom/htc/calendar/EventInfoActivity;)Z

    move-result v2

    if-eq v10, v2, :cond_4

    .line 2562
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 2563
    .local v16, values:Landroid/content/ContentValues;
    const-string v3, "hasAlarm"

    if-eqz v10, :cond_6

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2564
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v8, v15, v0, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2566
    .end local v16           #values:Landroid/content/ContentValues;
    :cond_4
    #setter for: Lcom/htc/calendar/EventInfoActivity;->mOriginalHasAlarm:Z
    invoke-static {v13, v10}, Lcom/htc/calendar/EventInfoActivity;->access$2102(Lcom/htc/calendar/EventInfoActivity;Z)Z

    .line 2568
    if-eqz v7, :cond_5

    .line 2569
    #setter for: Lcom/htc/calendar/EventInfoActivity;->mOriginalMinutes:Ljava/util/ArrayList;
    invoke-static {v13, v4}, Lcom/htc/calendar/EventInfoActivity;->access$2002(Lcom/htc/calendar/EventInfoActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2577
    .end local v10           #hasAlarm:Z
    .end local v11           #hasReminder:Z
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v15           #uri:Landroid/net/Uri;
    :cond_5
    :goto_2
    :try_start_2
    #calls: Lcom/htc/calendar/EventInfoActivity;->saveResponse(Landroid/content/ContentResolver;)Z
    invoke-static {v13, v8}, Lcom/htc/calendar/EventInfoActivity;->access$2200(Lcom/htc/calendar/EventInfoActivity;Landroid/content/ContentResolver;)Z

    move-result v2

    or-int/2addr v7, v2

    .line 2578
    if-eqz v7, :cond_0

    .line 2579
    #getter for: Lcom/htc/calendar/EventInfoActivity;->mUIHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/htc/calendar/EventInfoActivity;->access$2300(Lcom/htc/calendar/EventInfoActivity;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2580
    #getter for: Lcom/htc/calendar/EventInfoActivity;->mUIHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/htc/calendar/EventInfoActivity;->access$2300(Lcom/htc/calendar/EventInfoActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 2583
    .end local v1           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v4           #reminderMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7           #changed:Z
    .end local v8           #cr:Landroid/content/ContentResolver;
    :catch_0
    move-exception v9

    .line 2584
    .local v9, e:Ljava/lang/Exception;
    const-string v2, "EventInfoActivity"

    const-string v3, "onPauseSaveThread error"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 2563
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v1       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v4       #reminderMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v7       #changed:Z
    .restart local v8       #cr:Landroid/content/ContentResolver;
    .restart local v10       #hasAlarm:Z
    .restart local v11       #hasReminder:Z
    .restart local v12       #i$:Ljava/util/Iterator;
    .restart local v15       #uri:Landroid/net/Uri;
    .restart local v16       #values:Landroid/content/ContentValues;
    :cond_6
    const/4 v2, 0x0

    goto :goto_1

    .line 2571
    .end local v10           #hasAlarm:Z
    .end local v11           #hasReminder:Z
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v15           #uri:Landroid/net/Uri;
    .end local v16           #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v9

    .line 2572
    .local v9, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v2, "EventInfoActivity"

    const-string v3, "Ignoring exception: "

    invoke-static {v2, v3, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2573
    .end local v9           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v9

    .line 2574
    .local v9, e:Landroid/content/OperationApplicationException;
    const-string v2, "EventInfoActivity"

    const-string v3, "Ignoring exception: "

    invoke-static {v2, v3, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method
