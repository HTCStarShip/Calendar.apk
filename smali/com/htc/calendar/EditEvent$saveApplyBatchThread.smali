.class Lcom/htc/calendar/EditEvent$saveApplyBatchThread;
.super Ljava/lang/Thread;
.source "EditEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/EditEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "saveApplyBatchThread"
.end annotation


# instance fields
.field mOps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private mRefEditEvent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/calendar/EditEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mSaveEventId:J


# direct methods
.method public constructor <init>(Lcom/htc/calendar/EditEvent;Ljava/util/ArrayList;)V
    .locals 2
    .parameter "activity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/calendar/EditEvent;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4768
    .local p2, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4765
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/calendar/EditEvent$saveApplyBatchThread;->mSaveEventId:J

    .line 4766
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/calendar/EditEvent$saveApplyBatchThread;->mRefEditEvent:Ljava/lang/ref/WeakReference;

    .line 4769
    iput-object p2, p0, Lcom/htc/calendar/EditEvent$saveApplyBatchThread;->mOps:Ljava/util/ArrayList;

    .line 4770
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/calendar/EditEvent$saveApplyBatchThread;->mRefEditEvent:Ljava/lang/ref/WeakReference;

    .line 4771
    return-void
.end method

.method private getEventId(Landroid/net/Uri;)J
    .locals 8
    .parameter "uri"

    .prologue
    const-wide/16 v4, -0x1

    .line 4774
    if-eqz p1, :cond_3

    .line 4775
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    const-string v6, "com.android.calendar"

    invoke-static {v3, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4776
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    .line 4777
    .local v2, pathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 4779
    .local v0, li:I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 4780
    const-string v6, "events"

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v6, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4782
    :try_start_0
    const-string v6, "EditEvent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pathSegments.get(1): "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4783
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 4805
    .end local v0           #li:I
    .end local v2           #pathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-wide v3

    .line 4784
    .restart local v0       #li:I
    .restart local v2       #pathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .local v1, nfe:Ljava/lang/NumberFormatException;
    move-wide v3, v4

    .line 4785
    goto :goto_0

    .line 4789
    .end local v1           #nfe:Ljava/lang/NumberFormatException;
    :cond_0
    const-string v3, "EditEvent"

    const-string v6, "not event uri"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v3, v4

    .line 4790
    goto :goto_0

    .line 4794
    :cond_1
    const-string v3, "EditEvent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "the Uri was not match what we need - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " li:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v3, v4

    .line 4795
    goto :goto_0

    .line 4799
    .end local v0           #li:I
    .end local v2           #pathSegments:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const-string v3, "EditEvent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Authority was not match with Calendar - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v3, v4

    .line 4800
    goto :goto_0

    .line 4804
    :cond_3
    const-string v3, "EditEvent"

    const-string v6, "uri is null"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v3, v4

    .line 4805
    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    .line 4811
    const-class v5, Lcom/htc/calendar/EditEvent$saveApplyBatchThread;

    monitor-enter v5

    .line 4812
    :try_start_0
    iget-object v4, p0, Lcom/htc/calendar/EditEvent$saveApplyBatchThread;->mRefEditEvent:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/calendar/EditEvent;

    .line 4813
    .local v2, refEditEvent:Lcom/htc/calendar/EditEvent;
    if-nez v2, :cond_0

    .line 4814
    const-string v4, "EditEvent"

    const-string v6, "refEditEvent is null"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4815
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4849
    :goto_0
    return-void

    .line 4819
    :cond_0
    :try_start_1
    invoke-static {v2}, Lcom/htc/calendar/CalendarWakeLock;->acquire(Landroid/content/Context;)V

    .line 4820
    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 4821
    invoke-virtual {v2}, Lcom/htc/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "com.android.calendar"

    iget-object v7, p0, Lcom/htc/calendar/EditEvent$saveApplyBatchThread;->mOps:Ljava/util/ArrayList;

    invoke-virtual {v4, v6, v7}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v3

    .line 4824
    .local v3, results:[Landroid/content/ContentProviderResult;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 4825
    const-string v4, "EditEvent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "results = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v1

    invoke-virtual {v7}, Landroid/content/ContentProviderResult;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Uri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v1

    iget-object v7, v7, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4826
    iget-wide v6, p0, Lcom/htc/calendar/EditEvent$saveApplyBatchThread;->mSaveEventId:J

    cmp-long v4, v6, v8

    if-nez v4, :cond_1

    .line 4827
    aget-object v4, v3, v1

    iget-object v4, v4, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-direct {p0, v4}, Lcom/htc/calendar/EditEvent$saveApplyBatchThread;->getEventId(Landroid/net/Uri;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/htc/calendar/EditEvent$saveApplyBatchThread;->mSaveEventId:J

    .line 4824
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4831
    :cond_2
    iget-wide v6, p0, Lcom/htc/calendar/EditEvent$saveApplyBatchThread;->mSaveEventId:J

    cmp-long v4, v6, v8

    if-nez v4, :cond_3

    .line 4832
    #getter for: Lcom/htc/calendar/EditEvent;->mEventId:J
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$5500(Lcom/htc/calendar/EditEvent;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/htc/calendar/EditEvent$saveApplyBatchThread;->mSaveEventId:J

    .line 4835
    :cond_3
    const-string v4, "EditEvent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveApplyBatchThread mSyncAccountType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    #getter for: Lcom/htc/calendar/EditEvent;->mSyncAccountType:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$1700(Lcom/htc/calendar/EditEvent;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mSaveEventId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/htc/calendar/EditEvent$saveApplyBatchThread;->mSaveEventId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4836
    #getter for: Lcom/htc/calendar/EditEvent;->mSyncAccountType:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$1700(Lcom/htc/calendar/EditEvent;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/calendar/HtcUtils;->isHTCExchangeEvent(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4837
    #getter for: Lcom/htc/calendar/EditEvent;->mSyncAccount:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$2300(Lcom/htc/calendar/EditEvent;)Ljava/lang/String;

    move-result-object v4

    iget-wide v6, p0, Lcom/htc/calendar/EditEvent$saveApplyBatchThread;->mSaveEventId:J

    invoke-static {v2, v4, v6, v7}, Lcom/htc/calendar/EASMailUtils;->syncEASCalendar(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 4846
    :cond_4
    :try_start_2
    const-string v4, "release on event already saved"

    invoke-static {v4}, Lcom/htc/calendar/CalendarWakeLock;->release(Ljava/lang/String;)V

    .line 4848
    .end local v1           #i:I
    .end local v3           #results:[Landroid/content/ContentProviderResult;
    :goto_2
    monitor-exit v5

    goto/16 :goto_0

    .end local v2           #refEditEvent:Lcom/htc/calendar/EditEvent;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 4839
    .restart local v2       #refEditEvent:Lcom/htc/calendar/EditEvent;
    :catch_0
    move-exception v0

    .line 4840
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "EditEvent"

    const-string v6, "Ignoring unexpected remote exception"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4846
    :try_start_4
    const-string v4, "release on event already saved"

    invoke-static {v4}, Lcom/htc/calendar/CalendarWakeLock;->release(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 4841
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 4842
    .local v0, e:Landroid/content/OperationApplicationException;
    :try_start_5
    const-string v4, "EditEvent"

    const-string v6, "Ignoring OperationApplicationException exception"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4846
    :try_start_6
    const-string v4, "release on event already saved"

    invoke-static {v4}, Lcom/htc/calendar/CalendarWakeLock;->release(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 4843
    .end local v0           #e:Landroid/content/OperationApplicationException;
    :catch_2
    move-exception v0

    .line 4844
    .local v0, e:Ljava/lang/Exception;
    :try_start_7
    const-string v4, "EditEvent"

    const-string v6, "Ignoring unexpected exception"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 4846
    :try_start_8
    const-string v4, "release on event already saved"

    invoke-static {v4}, Lcom/htc/calendar/CalendarWakeLock;->release(Ljava/lang/String;)V

    goto :goto_2

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v4

    const-string v6, "release on event already saved"

    invoke-static {v6}, Lcom/htc/calendar/CalendarWakeLock;->release(Ljava/lang/String;)V

    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method
