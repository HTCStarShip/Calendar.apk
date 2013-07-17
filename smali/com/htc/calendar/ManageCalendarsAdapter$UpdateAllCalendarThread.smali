.class Lcom/htc/calendar/ManageCalendarsAdapter$UpdateAllCalendarThread;
.super Ljava/lang/Thread;
.source "ManageCalendarsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/ManageCalendarsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateAllCalendarThread"
.end annotation


# instance fields
.field bNeedCloseDialog:Z

.field final synthetic this$0:Lcom/htc/calendar/ManageCalendarsAdapter;


# direct methods
.method public constructor <init>(Lcom/htc/calendar/ManageCalendarsAdapter;Z)V
    .locals 0
    .parameter
    .parameter "needCloseDialog"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/htc/calendar/ManageCalendarsAdapter$UpdateAllCalendarThread;->this$0:Lcom/htc/calendar/ManageCalendarsAdapter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 110
    iput-boolean p2, p0, Lcom/htc/calendar/ManageCalendarsAdapter$UpdateAllCalendarThread;->bNeedCloseDialog:Z

    .line 111
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 116
    const/16 v1, 0xa

    :try_start_0
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 117
    iget-object v1, p0, Lcom/htc/calendar/ManageCalendarsAdapter$UpdateAllCalendarThread;->this$0:Lcom/htc/calendar/ManageCalendarsAdapter;

    iget-boolean v2, p0, Lcom/htc/calendar/ManageCalendarsAdapter$UpdateAllCalendarThread;->bNeedCloseDialog:Z

    #calls: Lcom/htc/calendar/ManageCalendarsAdapter;->msg_update_all_calendars(Z)V
    invoke-static {v1, v2}, Lcom/htc/calendar/ManageCalendarsAdapter;->access$100(Lcom/htc/calendar/ManageCalendarsAdapter;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ManageCalendars"

    const-string v2, "UpdateAllCalendarThread failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
