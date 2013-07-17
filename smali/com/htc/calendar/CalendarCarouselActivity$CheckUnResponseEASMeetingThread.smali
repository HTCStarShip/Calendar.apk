.class Lcom/htc/calendar/CalendarCarouselActivity$CheckUnResponseEASMeetingThread;
.super Ljava/lang/Thread;
.source "CalendarCarouselActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/CalendarCarouselActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckUnResponseEASMeetingThread"
.end annotation


# instance fields
.field private mRefActivity:Ljava/lang/ref/WeakReference;
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
.method public constructor <init>(Lcom/htc/calendar/CalendarCarouselActivity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 772
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 770
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity$CheckUnResponseEASMeetingThread;->mRefActivity:Ljava/lang/ref/WeakReference;

    .line 773
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity$CheckUnResponseEASMeetingThread;->mRefActivity:Ljava/lang/ref/WeakReference;

    .line 774
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 778
    iget-object v4, p0, Lcom/htc/calendar/CalendarCarouselActivity$CheckUnResponseEASMeetingThread;->mRefActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/calendar/CalendarCarouselActivity;

    .line 779
    .local v3, refActivity:Lcom/htc/calendar/CalendarCarouselActivity;
    if-nez v3, :cond_0

    .line 780
    const-string v4, "CalendarTabs"

    const-string v5, "refActivity in CalendarCarouselActivity is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :goto_0
    return-void

    .line 785
    :cond_0
    const/16 v4, 0xa

    :try_start_0
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 786
    const-string v4, "CalendarTabs"

    const-string v5, "CheckUnResponseEASMeetingThread"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    invoke-static {v3}, Lcom/htc/calendar/Utils;->getExchangeLoginName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 790
    .local v1, exchangeAcnt:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 791
    const-string v4, "CalendarTabs"

    const-string v5, "has EAS account"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    invoke-static {v3}, Lcom/htc/calendar/EASMailUtils;->queryUnResponseEAS(Landroid/content/Context;)I

    move-result v4

    #setter for: Lcom/htc/calendar/CalendarCarouselActivity;->mUnResponseInvitationCount:I
    invoke-static {v3, v4}, Lcom/htc/calendar/CalendarCarouselActivity;->access$1002(Lcom/htc/calendar/CalendarCarouselActivity;I)I

    .line 794
    #getter for: Lcom/htc/calendar/CalendarCarouselActivity;->mUIHandler:Lcom/htc/calendar/CalendarCarouselActivity$UIHandler;
    invoke-static {v3}, Lcom/htc/calendar/CalendarCarouselActivity;->access$1200(Lcom/htc/calendar/CalendarCarouselActivity;)Lcom/htc/calendar/CalendarCarouselActivity$UIHandler;

    move-result-object v4

    const/4 v5, 0x1

    #getter for: Lcom/htc/calendar/CalendarCarouselActivity;->mUnResponseInvitationCount:I
    invoke-static {v3}, Lcom/htc/calendar/CalendarCarouselActivity;->access$1000(Lcom/htc/calendar/CalendarCarouselActivity;)I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7, v3}, Lcom/htc/calendar/CalendarCarouselActivity$UIHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 796
    .local v2, msg:Landroid/os/Message;
    #getter for: Lcom/htc/calendar/CalendarCarouselActivity;->mUIHandler:Lcom/htc/calendar/CalendarCarouselActivity$UIHandler;
    invoke-static {v3}, Lcom/htc/calendar/CalendarCarouselActivity;->access$1200(Lcom/htc/calendar/CalendarCarouselActivity;)Lcom/htc/calendar/CalendarCarouselActivity$UIHandler;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/htc/calendar/CalendarCarouselActivity$UIHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 804
    .end local v1           #exchangeAcnt:Ljava/lang/String;
    .end local v2           #msg:Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 805
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "CalendarTabs"

    const-string v5, "CheckEasAccountThread() failed"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 798
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #exchangeAcnt:Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v4, "CalendarTabs"

    const-string v5, "no EAS account"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    #getter for: Lcom/htc/calendar/CalendarCarouselActivity;->mUIHandler:Lcom/htc/calendar/CalendarCarouselActivity$UIHandler;
    invoke-static {v3}, Lcom/htc/calendar/CalendarCarouselActivity;->access$1200(Lcom/htc/calendar/CalendarCarouselActivity;)Lcom/htc/calendar/CalendarCarouselActivity$UIHandler;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7, p0}, Lcom/htc/calendar/CalendarCarouselActivity$UIHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 801
    .restart local v2       #msg:Landroid/os/Message;
    #getter for: Lcom/htc/calendar/CalendarCarouselActivity;->mUIHandler:Lcom/htc/calendar/CalendarCarouselActivity$UIHandler;
    invoke-static {v3}, Lcom/htc/calendar/CalendarCarouselActivity;->access$1200(Lcom/htc/calendar/CalendarCarouselActivity;)Lcom/htc/calendar/CalendarCarouselActivity$UIHandler;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/htc/calendar/CalendarCarouselActivity$UIHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
