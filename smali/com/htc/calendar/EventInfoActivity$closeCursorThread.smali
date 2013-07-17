.class Lcom/htc/calendar/EventInfoActivity$closeCursorThread;
.super Ljava/lang/Thread;
.source "EventInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/EventInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "closeCursorThread"
.end annotation


# instance fields
.field private mAttendeesCursor:Landroid/database/Cursor;

.field private mCalendarsCursor:Landroid/database/Cursor;

.field private mEventCursor:Landroid/database/Cursor;

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
.method public constructor <init>(Lcom/htc/calendar/EventInfoActivity;Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 1
    .parameter "activity"
    .parameter "eventCursor"
    .parameter "attendeesCursor"
    .parameter "calendarCursor"

    .prologue
    .line 2746
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2739
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/calendar/EventInfoActivity$closeCursorThread;->mRefEventInfoActivity:Ljava/lang/ref/WeakReference;

    .line 2747
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/calendar/EventInfoActivity$closeCursorThread;->mRefEventInfoActivity:Ljava/lang/ref/WeakReference;

    .line 2749
    iput-object p2, p0, Lcom/htc/calendar/EventInfoActivity$closeCursorThread;->mEventCursor:Landroid/database/Cursor;

    .line 2750
    iput-object p3, p0, Lcom/htc/calendar/EventInfoActivity$closeCursorThread;->mAttendeesCursor:Landroid/database/Cursor;

    .line 2751
    iput-object p4, p0, Lcom/htc/calendar/EventInfoActivity$closeCursorThread;->mCalendarsCursor:Landroid/database/Cursor;

    .line 2752
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 2756
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity$closeCursorThread;->mRefEventInfoActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/calendar/EventInfoActivity;

    .line 2757
    .local v1, refEventInfoActivity:Lcom/htc/calendar/EventInfoActivity;
    if-nez v1, :cond_0

    .line 2758
    const-string v2, "EventInfoActivity"

    const-string v3, "refEventInfoActivity is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2773
    :goto_0
    return-void

    .line 2763
    :cond_0
    const/16 v2, 0xa

    :try_start_0
    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2765
    const-string v2, "EventInfoActivity"

    const-string v3, "closeCursorThread START"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2766
    const/4 v2, 0x1

    #setter for: Lcom/htc/calendar/EventInfoActivity;->mDirtyCheckCursorClosed:Z
    invoke-static {v1, v2}, Lcom/htc/calendar/EventInfoActivity;->access$3302(Lcom/htc/calendar/EventInfoActivity;Z)Z

    .line 2768
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity$closeCursorThread;->mEventCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/htc/calendar/EventInfoActivity$closeCursorThread;->mAttendeesCursor:Landroid/database/Cursor;

    iget-object v4, p0, Lcom/htc/calendar/EventInfoActivity$closeCursorThread;->mCalendarsCursor:Landroid/database/Cursor;

    #calls: Lcom/htc/calendar/EventInfoActivity;->closeAllCursorLocked(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;)V
    invoke-static {v1, v2, v3, v4}, Lcom/htc/calendar/EventInfoActivity;->access$3400(Lcom/htc/calendar/EventInfoActivity;Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2770
    :catch_0
    move-exception v0

    .line 2771
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "EventInfoActivity"

    const-string v3, "closeCursorThread error"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
