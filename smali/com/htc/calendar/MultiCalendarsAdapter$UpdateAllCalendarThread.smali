.class Lcom/htc/calendar/MultiCalendarsAdapter$UpdateAllCalendarThread;
.super Ljava/lang/Thread;
.source "MultiCalendarsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/MultiCalendarsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateAllCalendarThread"
.end annotation


# instance fields
.field bNeedCloseDialog:Z

.field final synthetic this$0:Lcom/htc/calendar/MultiCalendarsAdapter;


# direct methods
.method public constructor <init>(Lcom/htc/calendar/MultiCalendarsAdapter;Z)V
    .locals 0
    .parameter
    .parameter "needCloseDialog"

    .prologue
    .line 134
    iput-object p1, p0, Lcom/htc/calendar/MultiCalendarsAdapter$UpdateAllCalendarThread;->this$0:Lcom/htc/calendar/MultiCalendarsAdapter;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 135
    iput-boolean p2, p0, Lcom/htc/calendar/MultiCalendarsAdapter$UpdateAllCalendarThread;->bNeedCloseDialog:Z

    .line 136
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 141
    const/16 v1, 0xa

    :try_start_0
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 142
    invoke-static {}, Lcom/htc/calendar/MultiCalendarsAdapter;->access$100()Lcom/htc/calendar/SyncedHashMap;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :try_start_1
    iget-object v1, p0, Lcom/htc/calendar/MultiCalendarsAdapter$UpdateAllCalendarThread;->this$0:Lcom/htc/calendar/MultiCalendarsAdapter;

    iget-boolean v3, p0, Lcom/htc/calendar/MultiCalendarsAdapter$UpdateAllCalendarThread;->bNeedCloseDialog:Z

    #calls: Lcom/htc/calendar/MultiCalendarsAdapter;->msg_update_all_calendars(Z)V
    invoke-static {v1, v3}, Lcom/htc/calendar/MultiCalendarsAdapter;->access$200(Lcom/htc/calendar/MultiCalendarsAdapter;Z)V

    .line 144
    monitor-exit v2

    .line 148
    :goto_0
    return-void

    .line 144
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MultiCalendarsAdapter"

    const-string v2, "UpdateAllCalendarThread failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
