.class Lcom/htc/calendar/EventInfoActivity$8;
.super Ljava/lang/Object;
.source "EventInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/EventInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/EventInfoActivity;


# direct methods
.method constructor <init>(Lcom/htc/calendar/EventInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2633
    iput-object p1, p0, Lcom/htc/calendar/EventInfoActivity$8;->this$0:Lcom/htc/calendar/EventInfoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 2635
    const-string v0, "EventInfoActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To snooze event id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity$8;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mEventId:J
    invoke-static {v2}, Lcom/htc/calendar/EventInfoActivity;->access$1000(Lcom/htc/calendar/EventInfoActivity;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2636
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity$8;->this$0:Lcom/htc/calendar/EventInfoActivity;

    iget-object v1, p0, Lcom/htc/calendar/EventInfoActivity$8;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mEventId:J
    invoke-static {v1}, Lcom/htc/calendar/EventInfoActivity;->access$1000(Lcom/htc/calendar/EventInfoActivity;)J

    move-result-wide v1

    #calls: Lcom/htc/calendar/EventInfoActivity;->doSnoozeEvent(J)V
    invoke-static {v0, v1, v2}, Lcom/htc/calendar/EventInfoActivity;->access$3000(Lcom/htc/calendar/EventInfoActivity;J)V

    .line 2637
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity$8;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mNeedFinishAfterViewd:Z
    invoke-static {v0}, Lcom/htc/calendar/EventInfoActivity;->access$3100(Lcom/htc/calendar/EventInfoActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2638
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity$8;->this$0:Lcom/htc/calendar/EventInfoActivity;

    invoke-virtual {v0}, Lcom/htc/calendar/EventInfoActivity;->finish()V

    .line 2642
    :goto_0
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity$8;->this$0:Lcom/htc/calendar/EventInfoActivity;

    invoke-static {v0}, Lcom/htc/calendar/AlertService;->updateAlertNotification(Landroid/content/Context;)Z

    .line 2643
    return-void

    .line 2640
    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity$8;->this$0:Lcom/htc/calendar/EventInfoActivity;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #calls: Lcom/htc/calendar/EventInfoActivity;->updateSnoozeDismissBtn(Ljava/lang/Boolean;)V
    invoke-static {v0, v1}, Lcom/htc/calendar/EventInfoActivity;->access$2900(Lcom/htc/calendar/EventInfoActivity;Ljava/lang/Boolean;)V

    goto :goto_0
.end method
