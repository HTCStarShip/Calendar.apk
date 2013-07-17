.class Lcom/htc/calendar/MonthActivity$5;
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
    .line 614
    iput-object p1, p0, Lcom/htc/calendar/MonthActivity$5;->this$0:Lcom/htc/calendar/MonthActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 617
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 618
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.htc.calendar.event_changed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 619
    iget-object v1, p0, Lcom/htc/calendar/MonthActivity$5;->this$0:Lcom/htc/calendar/MonthActivity;

    invoke-virtual {v1}, Lcom/htc/calendar/MonthActivity;->eventsChanged()V

    .line 621
    :cond_0
    return-void
.end method
