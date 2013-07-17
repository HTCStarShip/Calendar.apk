.class Lcom/htc/calendar/CalendarView$1;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/CalendarView;


# direct methods
.method constructor <init>(Lcom/htc/calendar/CalendarView;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/htc/calendar/CalendarView$1;->this$0:Lcom/htc/calendar/CalendarView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 135
    iget-object v3, p0, Lcom/htc/calendar/CalendarView$1;->this$0:Lcom/htc/calendar/CalendarView;

    #getter for: Lcom/htc/calendar/CalendarView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/calendar/CalendarView;->access$000(Lcom/htc/calendar/CalendarView;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/htc/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, tz:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/calendar/CalendarView$1;->this$0:Lcom/htc/calendar/CalendarView;

    iget-object v3, v3, Lcom/htc/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iput-object v2, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 138
    iget-object v3, p0, Lcom/htc/calendar/CalendarView$1;->this$0:Lcom/htc/calendar/CalendarView;

    iget-object v3, v3, Lcom/htc/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->normalize(Z)J

    .line 141
    iget-object v3, p0, Lcom/htc/calendar/CalendarView$1;->this$0:Lcom/htc/calendar/CalendarView;

    #getter for: Lcom/htc/calendar/CalendarView;->mCurrentTime:Landroid/text/format/Time;
    invoke-static {v3}, Lcom/htc/calendar/CalendarView;->access$100(Lcom/htc/calendar/CalendarView;)Landroid/text/format/Time;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 142
    iget-object v3, p0, Lcom/htc/calendar/CalendarView$1;->this$0:Lcom/htc/calendar/CalendarView;

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    #setter for: Lcom/htc/calendar/CalendarView;->mTimeZone:Ljava/util/TimeZone;
    invoke-static {v3, v4}, Lcom/htc/calendar/CalendarView;->access$202(Lcom/htc/calendar/CalendarView;Ljava/util/TimeZone;)Ljava/util/TimeZone;

    .line 152
    :try_start_0
    iget-object v3, p0, Lcom/htc/calendar/CalendarView$1;->this$0:Lcom/htc/calendar/CalendarView;

    invoke-virtual {v3}, Lcom/htc/calendar/CalendarView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 153
    .local v1, handler:Landroid/os/Handler;
    if-eqz v1, :cond_0

    .line 154
    iget-object v3, p0, Lcom/htc/calendar/CalendarView$1;->this$0:Lcom/htc/calendar/CalendarView;

    #getter for: Lcom/htc/calendar/CalendarView;->mUpdateUIFromBackgroundHandler:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/htc/calendar/CalendarView;->access$300(Lcom/htc/calendar/CalendarView;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .end local v1           #handler:Landroid/os/Handler;
    :cond_0
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
