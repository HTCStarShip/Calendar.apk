.class public Lcom/htc/calendar/EventLoader;
.super Ljava/lang/Object;
.source "EventLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/calendar/EventLoader$1;,
        Lcom/htc/calendar/EventLoader$LoaderThread;,
        Lcom/htc/calendar/EventLoader$LoadEventsRequest;,
        Lcom/htc/calendar/EventLoader$LoadEventDaysRequest;,
        Lcom/htc/calendar/EventLoader$ShutdownRequest;,
        Lcom/htc/calendar/EventLoader$LoadRequest;
    }
.end annotation


# static fields
.field public static final PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "EventLoader"

.field private static mPrefs:Landroid/content/SharedPreferences;

.field private static mRes:Landroid/content/res/Resources;

.field private static mResolver:Landroid/content/ContentResolver;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Lcom/htc/calendar/EventLoader$LoadRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaderThread:Lcom/htc/calendar/EventLoader$LoaderThread;

.field private mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "startDay"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "endDay"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/calendar/EventLoader;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 218
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/EventLoader;->mHandler:Landroid/os/Handler;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/EventLoader;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 219
    iput-object p1, p0, Lcom/htc/calendar/EventLoader;->mContext:Landroid/content/Context;

    .line 221
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/EventLoader;->mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 222
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sput-object v0, Lcom/htc/calendar/EventLoader;->mResolver:Landroid/content/ContentResolver;

    .line 223
    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Landroid/content/res/Resources;Landroid/content/ContentResolver;)V
    .locals 1
    .parameter "prefs"
    .parameter "res"
    .parameter "resolver"

    .prologue
    .line 328
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/EventLoader;->mHandler:Landroid/os/Handler;

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/EventLoader;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 331
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/EventLoader;->mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 334
    sput-object p3, Lcom/htc/calendar/EventLoader;->mResolver:Landroid/content/ContentResolver;

    .line 335
    sput-object p1, Lcom/htc/calendar/EventLoader;->mPrefs:Landroid/content/SharedPreferences;

    .line 336
    sput-object p2, Lcom/htc/calendar/EventLoader;->mRes:Landroid/content/res/Resources;

    .line 337
    return-void
.end method

.method static synthetic access$000(Lcom/htc/calendar/EventLoader;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/calendar/EventLoader;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/htc/calendar/EventLoader;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$200()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/htc/calendar/EventLoader;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$300()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/htc/calendar/EventLoader;->mRes:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/calendar/EventLoader;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/htc/calendar/EventLoader;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method


# virtual methods
.method clear(Ljava/lang/String;)V
    .locals 4
    .parameter "tag"

    .prologue
    .line 313
    const-string v1, "Cal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - Clear EventLoader"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v1, p0, Lcom/htc/calendar/EventLoader;->mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v1, :cond_1

    .line 315
    iget-object v2, p0, Lcom/htc/calendar/EventLoader;->mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v2

    .line 316
    :try_start_0
    iget-object v1, p0, Lcom/htc/calendar/EventLoader;->mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 318
    :try_start_1
    iget-object v1, p0, Lcom/htc/calendar/EventLoader;->mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 323
    :cond_0
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/htc/calendar/EventLoader;->mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 324
    monitor-exit v2

    .line 326
    :cond_1
    return-void

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "Cal"

    const-string v3, "clear mLoaderQuery fail"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 324
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method loadEventDaysInBackground(II[ZLjava/lang/Runnable;)V
    .locals 4
    .parameter "startDay"
    .parameter "numDays"
    .parameter "eventDays"
    .parameter "uiCallback"

    .prologue
    .line 296
    new-instance v1, Lcom/htc/calendar/EventLoader$LoadEventDaysRequest;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/htc/calendar/EventLoader$LoadEventDaysRequest;-><init>(II[ZLjava/lang/Runnable;)V

    .line 299
    .local v1, request:Lcom/htc/calendar/EventLoader$LoadEventDaysRequest;
    :try_start_0
    iget-object v2, p0, Lcom/htc/calendar/EventLoader;->mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v0

    .line 304
    .local v0, ex:Ljava/lang/InterruptedException;
    const-string v2, "Cal"

    const-string v3, "loadEventDaysInBackground() interrupted!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method loadEventsInBackground(ILjava/util/ArrayList;JLjava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 8
    .parameter "numDays"
    .parameter
    .parameter "start"
    .parameter "successCallback"
    .parameter "cancelCallback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/calendar/Event;",
            ">;J",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 251
    .local p2, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/Event;>;"
    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/htc/calendar/EventLoader;->loadEventsInBackground(ILjava/util/ArrayList;JLjava/lang/Runnable;Ljava/lang/Runnable;Z)V

    .line 252
    return-void
.end method

.method loadEventsInBackground(ILjava/util/ArrayList;JLjava/lang/Runnable;Ljava/lang/Runnable;Z)V
    .locals 11
    .parameter "numDays"
    .parameter
    .parameter "start"
    .parameter "successCallback"
    .parameter "cancelCallback"
    .parameter "isCheckCrossDayEvent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/calendar/Event;",
            ">;J",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p2, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/Event;>;"
    iget-object v2, p0, Lcom/htc/calendar/EventLoader;->mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-nez v2, :cond_0

    .line 280
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v10, p0, Lcom/htc/calendar/EventLoader;->mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    monitor-enter v10

    .line 260
    :try_start_0
    iget-object v2, p0, Lcom/htc/calendar/EventLoader;->mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    if-nez v2, :cond_1

    monitor-exit v10

    goto :goto_0

    .line 279
    :catchall_0
    move-exception v2

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 265
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/htc/calendar/EventLoader;->mSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1

    .line 268
    .local v1, id:I
    new-instance v0, Lcom/htc/calendar/EventLoader$LoadEventsRequest;

    move-wide v2, p3

    move v4, p1

    move-object v5, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/htc/calendar/EventLoader$LoadEventsRequest;-><init>(IJILjava/util/ArrayList;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 272
    .local v0, request:Lcom/htc/calendar/EventLoader$LoadEventsRequest;
    :try_start_2
    iget-object v2, p0, Lcom/htc/calendar/EventLoader;->mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 279
    :goto_1
    :try_start_3
    monitor-exit v10

    goto :goto_0

    .line 273
    :catch_0
    move-exception v9

    .line 277
    .local v9, ex:Ljava/lang/InterruptedException;
    const-string v2, "Cal"

    const-string v3, "loadEventsInBackground() interrupted!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 340
    sput-object v0, Lcom/htc/calendar/EventLoader;->mResolver:Landroid/content/ContentResolver;

    .line 341
    sput-object v0, Lcom/htc/calendar/EventLoader;->mPrefs:Landroid/content/SharedPreferences;

    .line 342
    sput-object v0, Lcom/htc/calendar/EventLoader;->mRes:Landroid/content/res/Resources;

    .line 343
    return-void
.end method

.method public startBackgroundThread()V
    .locals 2

    .prologue
    .line 229
    new-instance v0, Lcom/htc/calendar/EventLoader$LoaderThread;

    iget-object v1, p0, Lcom/htc/calendar/EventLoader;->mLoaderQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v1, p0}, Lcom/htc/calendar/EventLoader$LoaderThread;-><init>(Ljava/util/concurrent/LinkedBlockingQueue;Lcom/htc/calendar/EventLoader;)V

    iput-object v0, p0, Lcom/htc/calendar/EventLoader;->mLoaderThread:Lcom/htc/calendar/EventLoader$LoaderThread;

    .line 230
    iget-object v0, p0, Lcom/htc/calendar/EventLoader;->mLoaderThread:Lcom/htc/calendar/EventLoader$LoaderThread;

    invoke-virtual {v0}, Lcom/htc/calendar/EventLoader$LoaderThread;->start()V

    .line 231
    return-void
.end method

.method public stopBackgroundThread()V
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/htc/calendar/EventLoader;->mLoaderThread:Lcom/htc/calendar/EventLoader$LoaderThread;

    invoke-virtual {v0}, Lcom/htc/calendar/EventLoader$LoaderThread;->shutdown()V

    .line 238
    return-void
.end method
