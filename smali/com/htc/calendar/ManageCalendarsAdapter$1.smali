.class Lcom/htc/calendar/ManageCalendarsAdapter$1;
.super Landroid/os/Handler;
.source "ManageCalendarsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/ManageCalendarsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/ManageCalendarsAdapter;


# direct methods
.method constructor <init>(Lcom/htc/calendar/ManageCalendarsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/calendar/ManageCalendarsAdapter$1;->this$0:Lcom/htc/calendar/ManageCalendarsAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v0, 0x1

    .line 53
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v0, :cond_2

    .line 55
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 56
    .local v1, nNeedCloseDialog:I
    if-ne v1, v0, :cond_1

    .line 57
    .local v0, bNeedCloseDialog:Z
    :goto_0
    new-instance v2, Lcom/htc/calendar/ManageCalendarsAdapter$UpdateAllCalendarThread;

    iget-object v3, p0, Lcom/htc/calendar/ManageCalendarsAdapter$1;->this$0:Lcom/htc/calendar/ManageCalendarsAdapter;

    invoke-direct {v2, v3, v0}, Lcom/htc/calendar/ManageCalendarsAdapter$UpdateAllCalendarThread;-><init>(Lcom/htc/calendar/ManageCalendarsAdapter;Z)V

    .line 58
    .local v2, thread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 63
    .end local v0           #bNeedCloseDialog:Z
    .end local v1           #nNeedCloseDialog:I
    .end local v2           #thread:Ljava/lang/Thread;
    :cond_0
    :goto_1
    return-void

    .line 56
    .restart local v1       #nNeedCloseDialog:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 59
    .end local v1           #nNeedCloseDialog:I
    :cond_2
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 61
    iget-object v3, p0, Lcom/htc/calendar/ManageCalendarsAdapter$1;->this$0:Lcom/htc/calendar/ManageCalendarsAdapter;

    #calls: Lcom/htc/calendar/ManageCalendarsAdapter;->msg_send_to_calendar_widget()V
    invoke-static {v3}, Lcom/htc/calendar/ManageCalendarsAdapter;->access$000(Lcom/htc/calendar/ManageCalendarsAdapter;)V

    goto :goto_1
.end method
