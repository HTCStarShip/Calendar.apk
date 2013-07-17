.class Lcom/htc/calendar/CalendarSearchActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "CalendarSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/CalendarSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/CalendarSearchActivity;


# direct methods
.method constructor <init>(Lcom/htc/calendar/CalendarSearchActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/htc/calendar/CalendarSearchActivity$2;->this$0:Lcom/htc/calendar/CalendarSearchActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 300
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.htc.calendar.event_changed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/htc/calendar/CalendarSearchActivity$2;->this$0:Lcom/htc/calendar/CalendarSearchActivity;

    new-instance v2, Lcom/htc/calendar/CalendarSearchActivity$2$1;

    invoke-direct {v2, p0}, Lcom/htc/calendar/CalendarSearchActivity$2$1;-><init>(Lcom/htc/calendar/CalendarSearchActivity$2;)V

    invoke-virtual {v1, v2}, Lcom/htc/calendar/CalendarSearchActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 310
    :cond_0
    return-void
.end method
