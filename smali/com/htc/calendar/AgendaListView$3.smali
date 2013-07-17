.class Lcom/htc/calendar/AgendaListView$3;
.super Ljava/lang/Object;
.source "AgendaListView.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/AgendaListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/AgendaListView;


# direct methods
.method constructor <init>(Lcom/htc/calendar/AgendaListView;)V
    .locals 0
    .parameter

    .prologue
    .line 554
    iput-object p1, p0, Lcom/htc/calendar/AgendaListView$3;->this$0:Lcom/htc/calendar/AgendaListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const/4 v1, 0x1

    .line 557
    const-string v2, "AgendaListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v2, p0, Lcom/htc/calendar/AgendaListView$3;->this$0:Lcom/htc/calendar/AgendaListView;

    #getter for: Lcom/htc/calendar/AgendaListView;->mWindowAdapter:Lcom/htc/calendar/AgendaWindowAdapter;
    invoke-static {v2}, Lcom/htc/calendar/AgendaListView;->access$600(Lcom/htc/calendar/AgendaListView;)Lcom/htc/calendar/AgendaWindowAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/htc/calendar/AgendaWindowAdapter;->getEventByPosition(I)Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;

    move-result-object v0

    .line 560
    .local v0, event:Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;
    iget-object v2, p0, Lcom/htc/calendar/AgendaListView$3;->this$0:Lcom/htc/calendar/AgendaListView;

    #setter for: Lcom/htc/calendar/AgendaListView;->mSelectedEvent:Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;
    invoke-static {v2, v0}, Lcom/htc/calendar/AgendaListView;->access$1002(Lcom/htc/calendar/AgendaListView;Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;)Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;

    .line 562
    iget-object v2, p0, Lcom/htc/calendar/AgendaListView$3;->this$0:Lcom/htc/calendar/AgendaListView;

    #setter for: Lcom/htc/calendar/AgendaListView;->mSelectedPosition:I
    invoke-static {v2, p3}, Lcom/htc/calendar/AgendaListView;->access$402(Lcom/htc/calendar/AgendaListView;I)I

    .line 563
    const-wide/16 v2, -0x1

    cmp-long v2, p4, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/calendar/AgendaListView$3;->this$0:Lcom/htc/calendar/AgendaListView;

    #getter for: Lcom/htc/calendar/AgendaListView;->mMode:I
    invoke-static {v2}, Lcom/htc/calendar/AgendaListView;->access$500(Lcom/htc/calendar/AgendaListView;)I

    move-result v2

    if-nez v2, :cond_0

    .line 564
    if-eqz v0, :cond_2

    .line 565
    const-string v2, "AgendaListView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event.id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v2, p0, Lcom/htc/calendar/AgendaListView$3;->this$0:Lcom/htc/calendar/AgendaListView;

    iget-wide v3, v0, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->id:J

    #setter for: Lcom/htc/calendar/AgendaListView;->mSelectedEventId:J
    invoke-static {v2, v3, v4}, Lcom/htc/calendar/AgendaListView;->access$1202(Lcom/htc/calendar/AgendaListView;J)J

    .line 567
    iget-object v2, p0, Lcom/htc/calendar/AgendaListView$3;->this$0:Lcom/htc/calendar/AgendaListView;

    #getter for: Lcom/htc/calendar/AgendaListView;->mSelectedEventId:J
    invoke-static {v2}, Lcom/htc/calendar/AgendaListView;->access$1200(Lcom/htc/calendar/AgendaListView;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 581
    :cond_0
    :goto_0
    return v1

    .line 570
    :cond_1
    iget-object v1, p0, Lcom/htc/calendar/AgendaListView$3;->this$0:Lcom/htc/calendar/AgendaListView;

    iget-wide v2, v0, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    #setter for: Lcom/htc/calendar/AgendaListView;->mSelectedEventBegin:J
    invoke-static {v1, v2, v3}, Lcom/htc/calendar/AgendaListView;->access$1302(Lcom/htc/calendar/AgendaListView;J)J

    .line 571
    iget-object v1, p0, Lcom/htc/calendar/AgendaListView$3;->this$0:Lcom/htc/calendar/AgendaListView;

    iget-wide v2, v0, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->end:J

    #setter for: Lcom/htc/calendar/AgendaListView;->mSelectedEventEnd:J
    invoke-static {v1, v2, v3}, Lcom/htc/calendar/AgendaListView;->access$1402(Lcom/htc/calendar/AgendaListView;J)J

    .line 573
    iget-object v1, p0, Lcom/htc/calendar/AgendaListView$3;->this$0:Lcom/htc/calendar/AgendaListView;

    invoke-static {p2}, Lcom/htc/calendar/AgendaWindowAdapter;->getViewTitle(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/htc/calendar/AgendaListView;->mSelectedEventTitle:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/htc/calendar/AgendaListView;->access$1702(Lcom/htc/calendar/AgendaListView;Ljava/lang/String;)Ljava/lang/String;

    .line 581
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 576
    :cond_2
    const-string v1, "AgendaListView"

    const-string v2, "event is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
