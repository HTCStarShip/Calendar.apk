.class Lcom/htc/calendar/CalendarView$3;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/CalendarView;->reloadEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/CalendarView;

.field final synthetic val$events:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/htc/calendar/CalendarView;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1652
    iput-object p1, p0, Lcom/htc/calendar/CalendarView$3;->this$0:Lcom/htc/calendar/CalendarView;

    iput-object p2, p0, Lcom/htc/calendar/CalendarView$3;->val$events:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1654
    iget-object v0, p0, Lcom/htc/calendar/CalendarView$3;->this$0:Lcom/htc/calendar/CalendarView;

    iget-object v1, p0, Lcom/htc/calendar/CalendarView$3;->val$events:Ljava/util/ArrayList;

    #setter for: Lcom/htc/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/htc/calendar/CalendarView;->access$602(Lcom/htc/calendar/CalendarView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1655
    iget-object v0, p0, Lcom/htc/calendar/CalendarView$3;->this$0:Lcom/htc/calendar/CalendarView;

    #setter for: Lcom/htc/calendar/CalendarView;->mRemeasure:Z
    invoke-static {v0, v2}, Lcom/htc/calendar/CalendarView;->access$702(Lcom/htc/calendar/CalendarView;Z)Z

    .line 1656
    iget-object v0, p0, Lcom/htc/calendar/CalendarView$3;->this$0:Lcom/htc/calendar/CalendarView;

    #setter for: Lcom/htc/calendar/CalendarView;->mRedrawScreen:Z
    invoke-static {v0, v2}, Lcom/htc/calendar/CalendarView;->access$802(Lcom/htc/calendar/CalendarView;Z)Z

    .line 1657
    iget-object v0, p0, Lcom/htc/calendar/CalendarView$3;->this$0:Lcom/htc/calendar/CalendarView;

    #setter for: Lcom/htc/calendar/CalendarView;->mComputeSelectedEvents:Z
    invoke-static {v0, v2}, Lcom/htc/calendar/CalendarView;->access$902(Lcom/htc/calendar/CalendarView;Z)Z

    .line 1658
    iget-object v0, p0, Lcom/htc/calendar/CalendarView$3;->this$0:Lcom/htc/calendar/CalendarView;

    #setter for: Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;
    invoke-static {v0, v3}, Lcom/htc/calendar/CalendarView;->access$1002(Lcom/htc/calendar/CalendarView;Lcom/htc/calendar/Event;)Lcom/htc/calendar/Event;

    .line 1659
    iget-object v0, p0, Lcom/htc/calendar/CalendarView$3;->this$0:Lcom/htc/calendar/CalendarView;

    #setter for: Lcom/htc/calendar/CalendarView;->mPrevSelectedEvent:Lcom/htc/calendar/Event;
    invoke-static {v0, v3}, Lcom/htc/calendar/CalendarView;->access$1102(Lcom/htc/calendar/CalendarView;Lcom/htc/calendar/Event;)Lcom/htc/calendar/Event;

    .line 1660
    iget-object v0, p0, Lcom/htc/calendar/CalendarView$3;->this$0:Lcom/htc/calendar/CalendarView;

    #getter for: Lcom/htc/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/htc/calendar/CalendarView;->access$1200(Lcom/htc/calendar/CalendarView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1662
    iget-object v0, p0, Lcom/htc/calendar/CalendarView$3;->this$0:Lcom/htc/calendar/CalendarView;

    #calls: Lcom/htc/calendar/CalendarView;->recalc()V
    invoke-static {v0}, Lcom/htc/calendar/CalendarView;->access$1300(Lcom/htc/calendar/CalendarView;)V

    .line 1666
    iget-object v0, p0, Lcom/htc/calendar/CalendarView$3;->this$0:Lcom/htc/calendar/CalendarView;

    invoke-virtual {v0}, Lcom/htc/calendar/CalendarView;->invalidate()V

    .line 1667
    return-void
.end method
