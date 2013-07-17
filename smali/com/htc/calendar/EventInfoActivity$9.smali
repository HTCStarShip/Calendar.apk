.class Lcom/htc/calendar/EventInfoActivity$9;
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
    .line 2646
    iput-object p1, p0, Lcom/htc/calendar/EventInfoActivity$9;->this$0:Lcom/htc/calendar/EventInfoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2648
    const-string v0, "EventInfoActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "To dismiss event id:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/htc/calendar/EventInfoActivity$9;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mEventId:J
    invoke-static {v6}, Lcom/htc/calendar/EventInfoActivity;->access$1000(Lcom/htc/calendar/EventInfoActivity;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2649
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 2650
    .local v4, values:Landroid/content/ContentValues;
    const-string v0, "state"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/calendar/EventInfoActivity$9;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mEventId:J
    invoke-static {v3}, Lcom/htc/calendar/EventInfoActivity;->access$1000(Lcom/htc/calendar/EventInfoActivity;)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2652
    .local v5, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity$9;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mQueryHandler:Lcom/htc/calendar/EventInfoActivity$QueryHandler;
    invoke-static {v0}, Lcom/htc/calendar/EventInfoActivity;->access$3200(Lcom/htc/calendar/EventInfoActivity;)Lcom/htc/calendar/EventInfoActivity$QueryHandler;

    move-result-object v0

    sget-object v3, Landroid/provider/CalendarContract$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Lcom/htc/calendar/EventInfoActivity$QueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2654
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity$9;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mNeedFinishAfterViewd:Z
    invoke-static {v0}, Lcom/htc/calendar/EventInfoActivity;->access$3100(Lcom/htc/calendar/EventInfoActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2655
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity$9;->this$0:Lcom/htc/calendar/EventInfoActivity;

    invoke-virtual {v0}, Lcom/htc/calendar/EventInfoActivity;->finish()V

    .line 2659
    :goto_0
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity$9;->this$0:Lcom/htc/calendar/EventInfoActivity;

    invoke-static {v0}, Lcom/htc/calendar/AlertService;->updateAlertNotification(Landroid/content/Context;)Z

    .line 2660
    return-void

    .line 2657
    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity$9;->this$0:Lcom/htc/calendar/EventInfoActivity;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #calls: Lcom/htc/calendar/EventInfoActivity;->updateSnoozeDismissBtn(Ljava/lang/Boolean;)V
    invoke-static {v0, v1}, Lcom/htc/calendar/EventInfoActivity;->access$2900(Lcom/htc/calendar/EventInfoActivity;Ljava/lang/Boolean;)V

    goto :goto_0
.end method
