.class Lcom/htc/calendar/MonthActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "MonthActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/MonthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/MonthActivity;


# direct methods
.method constructor <init>(Lcom/htc/calendar/MonthActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/htc/calendar/MonthActivity$2;->this$0:Lcom/htc/calendar/MonthActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 204
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "action.calendars.picker.changed"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 209
    :cond_0
    iget-object v2, p0, Lcom/htc/calendar/MonthActivity$2;->this$0:Lcom/htc/calendar/MonthActivity;

    invoke-virtual {v2}, Lcom/htc/calendar/MonthActivity;->eventsChanged()V

    .line 210
    iget-object v2, p0, Lcom/htc/calendar/MonthActivity$2;->this$0:Lcom/htc/calendar/MonthActivity;

    invoke-virtual {v2}, Lcom/htc/calendar/MonthActivity;->goToToday()V

    .line 220
    :cond_1
    :goto_0
    return-void

    .line 211
    :cond_2
    const-string v2, "android.intent.action.TIMEFORMAT_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 212
    const-string v2, "MonthActivity"

    const-string v3, "ACTION_TIME_FORMAT_CHANGED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-static {p1}, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->fetchSystemDateFormat(Landroid/content/Context;)V

    goto :goto_0

    .line 214
    :cond_3
    const-string v2, "com.htc.android.mail.intent.change"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "android.intent.action.EAS_ACCOUNT_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    :cond_4
    const-string v2, "MonthActivity"

    const-string v3, "ACTION_HTC_MAIL_CHANGE || HTC_ACTION_EAS_ACNT_REMOVED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v1, Lcom/htc/calendar/QueryExchangeLogin;

    invoke-direct {v1, p1}, Lcom/htc/calendar/QueryExchangeLogin;-><init>(Landroid/content/Context;)V

    .line 218
    .local v1, thread:Lcom/htc/calendar/QueryExchangeLogin;
    invoke-virtual {v1}, Lcom/htc/calendar/QueryExchangeLogin;->start()V

    goto :goto_0
.end method
