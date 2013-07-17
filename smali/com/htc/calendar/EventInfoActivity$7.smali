.class Lcom/htc/calendar/EventInfoActivity$7;
.super Landroid/content/BroadcastReceiver;
.source "EventInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/EventInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/EventInfoActivity;


# direct methods
.method constructor <init>(Lcom/htc/calendar/EventInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2390
    iput-object p1, p0, Lcom/htc/calendar/EventInfoActivity$7;->this$0:Lcom/htc/calendar/EventInfoActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2393
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 2394
    .local v2, action:Ljava/lang/String;
    const-string v6, "com.htc.intent.lockscreen.ClearCalendarReminder"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 2395
    if-eqz p2, :cond_0

    .line 2396
    const-string v1, "event_id"

    .line 2397
    .local v1, EVENT_ID:Ljava/lang/String;
    const-string v0, "calendar_action"

    .line 2398
    .local v0, CALENDAR_ACTION:Ljava/lang/String;
    const-string v6, "event_id"

    const-wide/16 v7, -0x1

    invoke-virtual {p2, v6, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 2399
    .local v4, eventId:J
    const-string v6, "calendar_action"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2400
    .local v3, eventAction:Ljava/lang/String;
    const-string v6, "EventInfoActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current mEventId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/calendar/EventInfoActivity$7;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mEventId:J
    invoke-static {v8}, Lcom/htc/calendar/EventInfoActivity;->access$1000(Lcom/htc/calendar/EventInfoActivity;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " [Id, action]=["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2402
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 2403
    const-string v6, "snooze"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2404
    iget-object v6, p0, Lcom/htc/calendar/EventInfoActivity$7;->this$0:Lcom/htc/calendar/EventInfoActivity;

    invoke-virtual {v6}, Lcom/htc/calendar/EventInfoActivity;->finish()V

    .line 2421
    .end local v0           #CALENDAR_ACTION:Ljava/lang/String;
    .end local v1           #EVENT_ID:Ljava/lang/String;
    .end local v3           #eventAction:Ljava/lang/String;
    .end local v4           #eventId:J
    :cond_0
    :goto_0
    return-void

    .line 2405
    .restart local v0       #CALENDAR_ACTION:Ljava/lang/String;
    .restart local v1       #EVENT_ID:Ljava/lang/String;
    .restart local v3       #eventAction:Ljava/lang/String;
    .restart local v4       #eventId:J
    :cond_1
    const-string v6, "screen_off_snooze"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/htc/calendar/EventInfoActivity$7;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mEventId:J
    invoke-static {v6}, Lcom/htc/calendar/EventInfoActivity;->access$1000(Lcom/htc/calendar/EventInfoActivity;)J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    .line 2406
    :cond_2
    const-string v6, "snooze_automatic"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/htc/calendar/EventInfoActivity$7;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mEventId:J
    invoke-static {v6}, Lcom/htc/calendar/EventInfoActivity;->access$1000(Lcom/htc/calendar/EventInfoActivity;)J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-nez v6, :cond_3

    .line 2407
    iget-object v6, p0, Lcom/htc/calendar/EventInfoActivity$7;->this$0:Lcom/htc/calendar/EventInfoActivity;

    invoke-virtual {v6}, Lcom/htc/calendar/EventInfoActivity;->finish()V

    goto :goto_0

    .line 2408
    :cond_3
    const-string v6, "dismiss"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2410
    const-string v6, "EventInfoActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mEventId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/htc/calendar/EventInfoActivity$7;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mEventId:J
    invoke-static {v8}, Lcom/htc/calendar/EventInfoActivity;->access$1000(Lcom/htc/calendar/EventInfoActivity;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " eventAction: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2413
    :cond_4
    const-string v6, "EventInfoActivity"

    const-string v7, "eventAction is null or empty"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2416
    .end local v0           #CALENDAR_ACTION:Ljava/lang/String;
    .end local v1           #EVENT_ID:Ljava/lang/String;
    .end local v3           #eventAction:Ljava/lang/String;
    .end local v4           #eventId:J
    :cond_5
    const-string v6, "android.intent.action.UPDATE_NOTE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2418
    iget-object v6, p0, Lcom/htc/calendar/EventInfoActivity$7;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #calls: Lcom/htc/calendar/EventInfoActivity;->checkIsAssociatedNote()V
    invoke-static {v6}, Lcom/htc/calendar/EventInfoActivity;->access$1700(Lcom/htc/calendar/EventInfoActivity;)V

    goto :goto_0
.end method
