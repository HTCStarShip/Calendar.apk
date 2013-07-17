.class Lcom/htc/calendar/CalendarView$UpdateCurrentTime;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpdateCurrentTime"
.end annotation


# instance fields
.field private mRefCalendarView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/calendar/CalendarView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4567
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4568
    return-void
.end method

.method public constructor <init>(Lcom/htc/calendar/CalendarView;)V
    .locals 1
    .parameter "cv"

    .prologue
    .line 4563
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4564
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/calendar/CalendarView$UpdateCurrentTime;->mRefCalendarView:Ljava/lang/ref/WeakReference;

    .line 4565
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const-wide/32 v7, 0x493e0

    .line 4571
    iget-object v4, p0, Lcom/htc/calendar/CalendarView$UpdateCurrentTime;->mRefCalendarView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/calendar/CalendarView;

    .line 4572
    .local v2, cv:Lcom/htc/calendar/CalendarView;
    if-nez v2, :cond_0

    .line 4573
    const-string v4, "CalendarView"

    const-string v5, "mRefCalendarView is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4590
    :goto_0
    return-void

    .line 4578
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4579
    .local v0, currentTime:J
    #getter for: Lcom/htc/calendar/CalendarView;->mCurrentTime:Landroid/text/format/Time;
    invoke-static {v2}, Lcom/htc/calendar/CalendarView;->access$100(Lcom/htc/calendar/CalendarView;)Landroid/text/format/Time;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 4581
    #getter for: Lcom/htc/calendar/CalendarView;->mUpdateCurrentTime:Lcom/htc/calendar/CalendarView$UpdateCurrentTime;
    invoke-static {v2}, Lcom/htc/calendar/CalendarView;->access$2200(Lcom/htc/calendar/CalendarView;)Lcom/htc/calendar/CalendarView$UpdateCurrentTime;

    move-result-object v4

    const-wide/32 v5, 0x493e0

    rem-long v5, v0, v5

    sub-long v5, v7, v5

    invoke-virtual {v2, v4, v5, v6}, Lcom/htc/calendar/CalendarView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4583
    #getter for: Lcom/htc/calendar/CalendarView;->mCurrentTime:Landroid/text/format/Time;
    invoke-static {v2}, Lcom/htc/calendar/CalendarView;->access$100(Lcom/htc/calendar/CalendarView;)Landroid/text/format/Time;

    move-result-object v4

    iget-wide v4, v4, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v4

    #setter for: Lcom/htc/calendar/CalendarView;->mTodayJulianDay:I
    invoke-static {v2, v4}, Lcom/htc/calendar/CalendarView;->access$2302(Lcom/htc/calendar/CalendarView;I)I

    .line 4584
    const/4 v4, 0x1

    #setter for: Lcom/htc/calendar/CalendarView;->mRedrawScreen:Z
    invoke-static {v2, v4}, Lcom/htc/calendar/CalendarView;->access$802(Lcom/htc/calendar/CalendarView;Z)Z

    .line 4585
    invoke-virtual {v2}, Lcom/htc/calendar/CalendarView;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4586
    .end local v0           #currentTime:J
    :catch_0
    move-exception v3

    .line 4587
    .local v3, e:Ljava/lang/Exception;
    const-string v4, "CalendarView"

    const-string v5, "UpdateCurrentTime failed!"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
