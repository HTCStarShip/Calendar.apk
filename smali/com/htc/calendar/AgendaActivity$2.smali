.class Lcom/htc/calendar/AgendaActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "AgendaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/AgendaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/AgendaActivity;


# direct methods
.method constructor <init>(Lcom/htc/calendar/AgendaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/htc/calendar/AgendaActivity$2;->this$0:Lcom/htc/calendar/AgendaActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 109
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 110
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

    .line 114
    :cond_0
    iget-object v2, p0, Lcom/htc/calendar/AgendaActivity$2;->this$0:Lcom/htc/calendar/AgendaActivity;

    #getter for: Lcom/htc/calendar/AgendaActivity;->mAgendaListView:Lcom/htc/calendar/AgendaListView;
    invoke-static {v2}, Lcom/htc/calendar/AgendaActivity;->access$300(Lcom/htc/calendar/AgendaActivity;)Lcom/htc/calendar/AgendaListView;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/calendar/AgendaListView;->refresh(Z)V

    .line 124
    :cond_1
    :goto_0
    return-void

    .line 115
    :cond_2
    const-string v2, "android.intent.action.TIMEFORMAT_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 116
    const-string v2, "AgendaActivity"

    const-string v3, "ACTION_TIME_FORMAT_CHANGED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {p1}, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->fetchSystemDateFormat(Landroid/content/Context;)V

    goto :goto_0

    .line 118
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

    .line 120
    :cond_4
    const-string v2, "AgendaActivity"

    const-string v3, "ACTION_HTC_MAIL_CHANGE || HTC_ACTION_EAS_ACNT_REMOVED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v1, Lcom/htc/calendar/QueryExchangeLogin;

    invoke-direct {v1, p1}, Lcom/htc/calendar/QueryExchangeLogin;-><init>(Landroid/content/Context;)V

    .line 122
    .local v1, thread:Lcom/htc/calendar/QueryExchangeLogin;
    invoke-virtual {v1}, Lcom/htc/calendar/QueryExchangeLogin;->start()V

    goto :goto_0
.end method
