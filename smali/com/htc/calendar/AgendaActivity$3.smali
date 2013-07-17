.class Lcom/htc/calendar/AgendaActivity$3;
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
    .line 446
    iput-object p1, p0, Lcom/htc/calendar/AgendaActivity$3;->this$0:Lcom/htc/calendar/AgendaActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 449
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 450
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.htc.calendar.event_changed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    const-string v1, "AgendaActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action : ACTION_EVENT_CHANGED mIsResumed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/calendar/AgendaActivity$3;->this$0:Lcom/htc/calendar/AgendaActivity;

    #getter for: Lcom/htc/calendar/AgendaActivity;->mIsResumed:Z
    invoke-static {v3}, Lcom/htc/calendar/AgendaActivity;->access$400(Lcom/htc/calendar/AgendaActivity;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v1, p0, Lcom/htc/calendar/AgendaActivity$3;->this$0:Lcom/htc/calendar/AgendaActivity;

    #getter for: Lcom/htc/calendar/AgendaActivity;->mIsResumed:Z
    invoke-static {v1}, Lcom/htc/calendar/AgendaActivity;->access$400(Lcom/htc/calendar/AgendaActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 453
    iget-object v1, p0, Lcom/htc/calendar/AgendaActivity$3;->this$0:Lcom/htc/calendar/AgendaActivity;

    #getter for: Lcom/htc/calendar/AgendaActivity;->mAgendaListView:Lcom/htc/calendar/AgendaListView;
    invoke-static {v1}, Lcom/htc/calendar/AgendaActivity;->access$300(Lcom/htc/calendar/AgendaActivity;)Lcom/htc/calendar/AgendaListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/calendar/AgendaListView;->refresh(Z)V

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    iget-object v1, p0, Lcom/htc/calendar/AgendaActivity$3;->this$0:Lcom/htc/calendar/AgendaActivity;

    const/4 v2, 0x0

    #setter for: Lcom/htc/calendar/AgendaActivity;->mBackToAgenda:Z
    invoke-static {v1, v2}, Lcom/htc/calendar/AgendaActivity;->access$502(Lcom/htc/calendar/AgendaActivity;Z)Z

    goto :goto_0
.end method
