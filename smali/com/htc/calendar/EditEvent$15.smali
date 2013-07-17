.class Lcom/htc/calendar/EditEvent$15;
.super Landroid/content/BroadcastReceiver;
.source "EditEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/EditEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/EditEvent;


# direct methods
.method constructor <init>(Lcom/htc/calendar/EditEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 4917
    iput-object p1, p0, Lcom/htc/calendar/EditEvent$15;->this$0:Lcom/htc/calendar/EditEvent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 4920
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4921
    .local v0, action:Ljava/lang/String;
    const-string v1, "intent.eas.meeting_invitation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4922
    iget-object v1, p0, Lcom/htc/calendar/EditEvent$15;->this$0:Lcom/htc/calendar/EditEvent;

    invoke-virtual {v1}, Lcom/htc/calendar/EditEvent;->finish()V

    .line 4924
    :cond_0
    return-void
.end method
