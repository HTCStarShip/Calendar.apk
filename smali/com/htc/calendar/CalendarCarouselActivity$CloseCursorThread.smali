.class Lcom/htc/calendar/CalendarCarouselActivity$CloseCursorThread;
.super Ljava/lang/Thread;
.source "CalendarCarouselActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/CalendarCarouselActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CloseCursorThread"
.end annotation


# instance fields
.field private mCalendarsCursor:Landroid/database/Cursor;

.field private mRefCalendarCarouselActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/htc/calendar/CalendarCarouselActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/htc/calendar/CalendarCarouselActivity;Landroid/database/Cursor;)V
    .locals 1
    .parameter "activity"
    .parameter "calendarCursor"

    .prologue
    .line 904
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 901
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity$CloseCursorThread;->mRefCalendarCarouselActivity:Ljava/lang/ref/WeakReference;

    .line 905
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity$CloseCursorThread;->mRefCalendarCarouselActivity:Ljava/lang/ref/WeakReference;

    .line 906
    iput-object p2, p0, Lcom/htc/calendar/CalendarCarouselActivity$CloseCursorThread;->mCalendarsCursor:Landroid/database/Cursor;

    .line 907
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 911
    iget-object v2, p0, Lcom/htc/calendar/CalendarCarouselActivity$CloseCursorThread;->mRefCalendarCarouselActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/calendar/CalendarCarouselActivity;

    .line 912
    .local v1, refCalendarCarouselActivity:Lcom/htc/calendar/CalendarCarouselActivity;
    if-nez v1, :cond_0

    .line 913
    const-string v2, "CalendarTabs"

    const-string v3, "refCalendarTabActivity is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    :goto_0
    return-void

    .line 918
    :cond_0
    const/16 v2, 0xa

    :try_start_0
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 920
    const-string v2, "CalendarTabs"

    const-string v3, "closeCursorThread START"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    const-class v3, Lcom/htc/calendar/CalendarCarouselActivity;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 923
    :try_start_1
    iget-object v2, p0, Lcom/htc/calendar/CalendarCarouselActivity$CloseCursorThread;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_2

    .line 924
    iget-object v2, p0, Lcom/htc/calendar/CalendarCarouselActivity$CloseCursorThread;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 925
    iget-object v2, p0, Lcom/htc/calendar/CalendarCarouselActivity$CloseCursorThread;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 927
    :cond_1
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/calendar/CalendarCarouselActivity$CloseCursorThread;->mCalendarsCursor:Landroid/database/Cursor;

    .line 929
    :cond_2
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 931
    :catch_0
    move-exception v0

    .line 932
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "CalendarTabs"

    const-string v3, "closeCursorThread error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
