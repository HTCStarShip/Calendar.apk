.class Lcom/htc/calendar/AlertActivity$6;
.super Landroid/content/BroadcastReceiver;
.source "AlertActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/AlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/AlertActivity;


# direct methods
.method constructor <init>(Lcom/htc/calendar/AlertActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 446
    iput-object p1, p0, Lcom/htc/calendar/AlertActivity$6;->this$0:Lcom/htc/calendar/AlertActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 449
    iget-object v0, p0, Lcom/htc/calendar/AlertActivity$6;->this$0:Lcom/htc/calendar/AlertActivity;

    new-instance v1, Lcom/htc/calendar/AlertActivity$6$1;

    invoke-direct {v1, p0}, Lcom/htc/calendar/AlertActivity$6$1;-><init>(Lcom/htc/calendar/AlertActivity$6;)V

    invoke-virtual {v0, v1}, Lcom/htc/calendar/AlertActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 454
    return-void
.end method
