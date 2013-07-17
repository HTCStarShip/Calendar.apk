.class Lcom/htc/calendar/MonthActivity$3;
.super Ljava/lang/Object;
.source "MonthActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/MonthActivity;->setHtcTitle(Landroid/text/format/Time;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/MonthActivity;

.field final synthetic val$time:Landroid/text/format/Time;


# direct methods
.method constructor <init>(Lcom/htc/calendar/MonthActivity;Landroid/text/format/Time;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 514
    iput-object p1, p0, Lcom/htc/calendar/MonthActivity$3;->this$0:Lcom/htc/calendar/MonthActivity;

    iput-object p2, p0, Lcom/htc/calendar/MonthActivity$3;->val$time:Landroid/text/format/Time;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v11, 0x0

    .line 518
    new-instance v8, Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/htc/calendar/MonthActivity$3;->this$0:Lcom/htc/calendar/MonthActivity;

    iget-object v3, p0, Lcom/htc/calendar/MonthActivity$3;->val$time:Landroid/text/format/Time;

    invoke-static {v0, v3}, Lcom/htc/calendar/Utils;->formatMonthYear(Landroid/content/Context;Landroid/text/format/Time;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 520
    .local v8, timeString:Ljava/lang/StringBuffer;
    iget-object v0, p0, Lcom/htc/calendar/MonthActivity$3;->this$0:Lcom/htc/calendar/MonthActivity;

    #getter for: Lcom/htc/calendar/MonthActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/calendar/MonthActivity;->access$100(Lcom/htc/calendar/MonthActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/calendar/MonthActivity$3;->this$0:Lcom/htc/calendar/MonthActivity;

    #getter for: Lcom/htc/calendar/MonthActivity;->mUpdateTZ:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/htc/calendar/MonthActivity;->access$300(Lcom/htc/calendar/MonthActivity;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 521
    const/4 v5, 0x1

    .line 522
    .local v5, flags:I
    iget-object v0, p0, Lcom/htc/calendar/MonthActivity$3;->this$0:Lcom/htc/calendar/MonthActivity;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    or-int/lit16 v5, v5, 0x80

    .line 525
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 526
    .local v1, start:J
    iget-object v0, p0, Lcom/htc/calendar/MonthActivity$3;->this$0:Lcom/htc/calendar/MonthActivity;

    #getter for: Lcom/htc/calendar/MonthActivity;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/calendar/MonthActivity;->access$100(Lcom/htc/calendar/MonthActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/calendar/MonthActivity$3;->this$0:Lcom/htc/calendar/MonthActivity;

    #getter for: Lcom/htc/calendar/MonthActivity;->mUpdateTZ:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/htc/calendar/MonthActivity;->access$300(Lcom/htc/calendar/MonthActivity;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/htc/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v10

    .line 527
    .local v10, tz:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/calendar/MonthActivity$3;->val$time:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->isDst:I

    if-eqz v0, :cond_2

    const/4 v6, 0x1

    .line 528
    .local v6, isDST:Z
    :goto_0
    invoke-static {v10}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v9

    .line 529
    .local v9, timeZone:Ljava/util/TimeZone;
    const-string v0, " ("

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    iget-object v0, p0, Lcom/htc/calendar/MonthActivity$3;->this$0:Lcom/htc/calendar/MonthActivity;

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v9, v6, v11, v3}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 535
    .end local v1           #start:J
    .end local v5           #flags:I
    .end local v6           #isDST:Z
    .end local v9           #timeZone:Ljava/util/TimeZone;
    .end local v10           #tz:Ljava/lang/String;
    :cond_1
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 537
    .local v7, timeStr:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/calendar/MonthActivity$3;->this$0:Lcom/htc/calendar/MonthActivity;

    new-instance v3, Lcom/htc/calendar/MonthActivity$3$1;

    invoke-direct {v3, p0, v7}, Lcom/htc/calendar/MonthActivity$3$1;-><init>(Lcom/htc/calendar/MonthActivity$3;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/htc/calendar/MonthActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 542
    return-void

    .end local v7           #timeStr:Ljava/lang/String;
    .restart local v1       #start:J
    .restart local v5       #flags:I
    .restart local v10       #tz:Ljava/lang/String;
    :cond_2
    move v6, v11

    .line 527
    goto :goto_0
.end method
