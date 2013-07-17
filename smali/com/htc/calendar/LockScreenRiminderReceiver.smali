.class public Lcom/htc/calendar/LockScreenRiminderReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LockScreenRiminderReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LockScreenRiminderReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private startEventInfoActivity(Landroid/content/Context;JJJ)V
    .locals 4
    .parameter "context"
    .parameter "eventId"
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 25
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 26
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 27
    .local v0, intentDetailsView:Landroid/content/Intent;
    const-string v2, "beginTime"

    invoke-virtual {v0, v2, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 28
    const-string v2, "endTime"

    invoke-virtual {v0, v2, p6, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 29
    const-string v2, "need_show_snooze_dismiss"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 30
    const/high16 v2, 0x1400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 32
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 37
    const-string v1, "LockScreenRiminderReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive intent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    if-eqz p2, :cond_0

    .line 39
    const-string v18, "event_id"

    .line 40
    .local v18, EVENT_ID:Ljava/lang/String;
    const-string v17, "calendar_action"

    .line 41
    .local v17, CALENDAR_ACTION:Ljava/lang/String;
    const-string v1, "event_id"

    const-wide/16 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 42
    .local v2, eventId:J
    const-string v1, "calendar_action"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 43
    .local v19, eventAction:Ljava/lang/String;
    const-string v1, "beginTime"

    const-wide/16 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 44
    .local v6, startTime:J
    const-string v1, "endTime"

    const-wide/16 v4, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    .line 45
    .local v8, endTime:J
    const-string v1, "LockScreenRiminderReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Id, action, startTime, endTime]=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 48
    const-string v1, "snooze"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    const-wide/16 v4, -0x1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v9}, Lcom/htc/calendar/HtcUtils;->doSnoozeEvent(Landroid/content/Context;JJJJ)V

    .line 53
    invoke-static/range {p1 .. p1}, Lcom/htc/calendar/HtcUtils;->cancelNotification(Landroid/content/Context;)V

    .line 74
    .end local v2           #eventId:J
    .end local v6           #startTime:J
    .end local v8           #endTime:J
    .end local v17           #CALENDAR_ACTION:Ljava/lang/String;
    .end local v18           #EVENT_ID:Ljava/lang/String;
    .end local v19           #eventAction:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 54
    .restart local v2       #eventId:J
    .restart local v6       #startTime:J
    .restart local v8       #endTime:J
    .restart local v17       #CALENDAR_ACTION:Ljava/lang/String;
    .restart local v18       #EVENT_ID:Ljava/lang/String;
    .restart local v19       #eventAction:Ljava/lang/String;
    :cond_1
    const-string v1, "screen_off_snooze"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 55
    const-wide/16 v4, -0x1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v9}, Lcom/htc/calendar/HtcUtils;->doSnoozeEvent(Landroid/content/Context;JJJJ)V

    goto :goto_0

    .line 57
    :cond_2
    const-string v1, "snooze_automatic"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 58
    const-wide/16 v4, -0x1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v9}, Lcom/htc/calendar/HtcUtils;->doSnoozeEvent(Landroid/content/Context;JJJJ)V

    goto :goto_0

    .line 59
    :cond_3
    const-string v1, "dismiss"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 60
    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/htc/calendar/HtcUtils;->doDismissEvent(Landroid/content/Context;J)V

    .line 63
    invoke-static/range {p1 .. p1}, Lcom/htc/calendar/HtcUtils;->cancelNotification(Landroid/content/Context;)V

    goto :goto_0

    .line 64
    :cond_4
    const-string v1, "htc_remove_event_icon_alarm"

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object/from16 v10, p1

    move-wide v11, v2

    move-wide v13, v6

    move-wide v15, v8

    .line 65
    invoke-static/range {v10 .. v16}, Lcom/htc/calendar/HtcUtils;->doDismissOneEvent(Landroid/content/Context;JJJ)V

    .line 66
    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lcom/htc/calendar/HtcUtils;->removeLockscreemReminder(Landroid/content/Context;J)V

    goto :goto_0

    .line 68
    :cond_5
    const-string v1, "LockScreenRiminderReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " eventAction: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 71
    :cond_6
    const-string v1, "LockScreenRiminderReceiver"

    const-string v4, "eventAction is null or empty"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
