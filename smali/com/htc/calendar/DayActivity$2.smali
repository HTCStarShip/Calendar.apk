.class Lcom/htc/calendar/DayActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "DayActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/DayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/DayActivity;


# direct methods
.method constructor <init>(Lcom/htc/calendar/DayActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 496
    iput-object p1, p0, Lcom/htc/calendar/DayActivity$2;->this$0:Lcom/htc/calendar/DayActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 499
    if-nez p2, :cond_1

    .line 522
    :cond_0
    :goto_0
    return-void

    .line 503
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "action.calendars.picker.changed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.htc.calendar.event_changed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 509
    :cond_2
    const-string v2, "DayActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object v2, p0, Lcom/htc/calendar/DayActivity$2;->this$0:Lcom/htc/calendar/DayActivity;

    invoke-virtual {v2}, Lcom/htc/calendar/DayActivity;->clearLastQueryTime()V

    .line 511
    iget-object v2, p0, Lcom/htc/calendar/DayActivity$2;->this$0:Lcom/htc/calendar/DayActivity;

    invoke-virtual {v2}, Lcom/htc/calendar/DayActivity;->renewCursor()V

    goto :goto_0

    .line 513
    :cond_3
    const-string v2, "settingData"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 517
    .local v1, temperatureUnit:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/calendar/DayActivity$2;->this$0:Lcom/htc/calendar/DayActivity;

    #getter for: Lcom/htc/calendar/DayActivity;->mBackgroundHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/calendar/DayActivity;->access$200(Lcom/htc/calendar/DayActivity;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 518
    iget-object v2, p0, Lcom/htc/calendar/DayActivity$2;->this$0:Lcom/htc/calendar/DayActivity;

    #getter for: Lcom/htc/calendar/DayActivity;->mBackgroundHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/calendar/DayActivity;->access$200(Lcom/htc/calendar/DayActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
