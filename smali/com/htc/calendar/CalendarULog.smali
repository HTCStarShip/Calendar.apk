.class public Lcom/htc/calendar/CalendarULog;
.super Ljava/lang/Object;
.source "CalendarULog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CalendarULog"

.field private static final mApp_Id:Ljava/lang/String; = "com.htc.calendar"

.field private static final mCategory:Ljava/lang/String; = "view_switch"

.field private static final mData_Key:Ljava/lang/String; = "view_type"

.field private static final mTimeStamp:Ljava/lang/String; = "auto-generate"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static printSwitchToAgenda()V
    .locals 3

    .prologue
    .line 47
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v0

    .line 48
    .local v0, ULogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v1, "com.htc.calendar"

    invoke-virtual {v0, v1}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 49
    const-string v1, "view_switch"

    invoke-virtual {v0, v1}, Lcom/htc/utils/ulog/ReusableULogData;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 50
    const-string v1, "view_type"

    sget-object v2, Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;->agenda:Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;

    invoke-virtual {v2}, Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 51
    invoke-static {v0}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 52
    invoke-virtual {v0}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 53
    return-void
.end method

.method public static printSwitchToDay()V
    .locals 3

    .prologue
    .line 20
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v0

    .line 21
    .local v0, ULogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v1, "com.htc.calendar"

    invoke-virtual {v0, v1}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 22
    const-string v1, "view_switch"

    invoke-virtual {v0, v1}, Lcom/htc/utils/ulog/ReusableULogData;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 23
    const-string v1, "view_type"

    sget-object v2, Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;->day:Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;

    invoke-virtual {v2}, Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 24
    invoke-static {v0}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 25
    invoke-virtual {v0}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 26
    return-void
.end method

.method public static printSwitchToInvite()V
    .locals 3

    .prologue
    .line 56
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v0

    .line 57
    .local v0, ULogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v1, "com.htc.calendar"

    invoke-virtual {v0, v1}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 58
    const-string v1, "view_switch"

    invoke-virtual {v0, v1}, Lcom/htc/utils/ulog/ReusableULogData;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 59
    const-string v1, "view_type"

    sget-object v2, Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;->invite:Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;

    invoke-virtual {v2}, Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 60
    invoke-static {v0}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 61
    invoke-virtual {v0}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 62
    return-void
.end method

.method public static printSwitchToMonth()V
    .locals 3

    .prologue
    .line 38
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v0

    .line 39
    .local v0, ULogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v1, "com.htc.calendar"

    invoke-virtual {v0, v1}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 40
    const-string v1, "view_switch"

    invoke-virtual {v0, v1}, Lcom/htc/utils/ulog/ReusableULogData;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 41
    const-string v1, "view_type"

    sget-object v2, Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;->month:Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;

    invoke-virtual {v2}, Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 42
    invoke-static {v0}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 43
    invoke-virtual {v0}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 44
    return-void
.end method

.method public static printSwitchToWeek()V
    .locals 3

    .prologue
    .line 29
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v0

    .line 30
    .local v0, ULogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v1, "com.htc.calendar"

    invoke-virtual {v0, v1}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 31
    const-string v1, "view_switch"

    invoke-virtual {v0, v1}, Lcom/htc/utils/ulog/ReusableULogData;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 32
    const-string v1, "view_type"

    sget-object v2, Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;->week:Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;

    invoke-virtual {v2}, Lcom/htc/calendar/CalendarULog$eDATA_KEY_VALUE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 33
    invoke-static {v0}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 34
    invoke-virtual {v0}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    .line 35
    return-void
.end method
