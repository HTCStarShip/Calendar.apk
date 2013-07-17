.class Lcom/htc/calendar/MonthView$3;
.super Ljava/lang/Object;
.source "MonthView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/MonthView;->reloadEvents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/MonthView;

.field final synthetic val$events:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/htc/calendar/MonthView;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 741
    iput-object p1, p0, Lcom/htc/calendar/MonthView$3;->this$0:Lcom/htc/calendar/MonthView;

    iput-object p2, p0, Lcom/htc/calendar/MonthView$3;->val$events:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/16 v8, 0x1f

    .line 743
    iget-object v6, p0, Lcom/htc/calendar/MonthView$3;->this$0:Lcom/htc/calendar/MonthView;

    iget-object v7, p0, Lcom/htc/calendar/MonthView$3;->val$events:Ljava/util/ArrayList;

    #setter for: Lcom/htc/calendar/MonthView;->mEvents:Ljava/util/ArrayList;
    invoke-static {v6, v7}, Lcom/htc/calendar/MonthView;->access$2102(Lcom/htc/calendar/MonthView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 746
    iget-object v6, p0, Lcom/htc/calendar/MonthView$3;->this$0:Lcom/htc/calendar/MonthView;

    invoke-virtual {v6}, Lcom/htc/calendar/MonthView;->invalidate()V

    .line 747
    iget-object v6, p0, Lcom/htc/calendar/MonthView$3;->val$events:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 750
    .local v4, numEvents:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-static {}, Lcom/htc/calendar/MonthView;->access$2200()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 751
    iget-object v6, p0, Lcom/htc/calendar/MonthView$3;->this$0:Lcom/htc/calendar/MonthView;

    #getter for: Lcom/htc/calendar/MonthView;->eventDay:[Z
    invoke-static {v6}, Lcom/htc/calendar/MonthView;->access$2300(Lcom/htc/calendar/MonthView;)[Z

    move-result-object v6

    const/4 v7, 0x0

    aput-boolean v7, v6, v2

    .line 750
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 755
    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_7

    .line 756
    iget-object v6, p0, Lcom/htc/calendar/MonthView$3;->val$events:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/calendar/Event;

    .line 757
    .local v1, event:Lcom/htc/calendar/Event;
    iget v6, v1, Lcom/htc/calendar/Event;->startDay:I

    iget-object v7, p0, Lcom/htc/calendar/MonthView$3;->this$0:Lcom/htc/calendar/MonthView;

    #getter for: Lcom/htc/calendar/MonthView;->mFirstJulianDay:I
    invoke-static {v7}, Lcom/htc/calendar/MonthView;->access$2400(Lcom/htc/calendar/MonthView;)I

    move-result v7

    sub-int v5, v6, v7

    .line 758
    .local v5, startDay:I
    iget v6, v1, Lcom/htc/calendar/Event;->endDay:I

    iget-object v7, p0, Lcom/htc/calendar/MonthView$3;->this$0:Lcom/htc/calendar/MonthView;

    #getter for: Lcom/htc/calendar/MonthView;->mFirstJulianDay:I
    invoke-static {v7}, Lcom/htc/calendar/MonthView;->access$2400(Lcom/htc/calendar/MonthView;)I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v0, v6, 0x1

    .line 759
    .local v0, endDay:I
    if-lt v5, v8, :cond_1

    if-ltz v0, :cond_6

    .line 760
    :cond_1
    if-gez v5, :cond_2

    .line 761
    const/4 v5, 0x0

    .line 763
    :cond_2
    if-le v5, v8, :cond_3

    .line 764
    const/16 v5, 0x1f

    .line 766
    :cond_3
    if-gez v0, :cond_4

    .line 767
    const/4 v0, 0x0

    .line 769
    :cond_4
    if-le v0, v8, :cond_5

    .line 770
    const/16 v0, 0x1f

    .line 772
    :cond_5
    move v3, v5

    .local v3, j:I
    :goto_2
    if-ge v3, v0, :cond_6

    .line 773
    iget-object v6, p0, Lcom/htc/calendar/MonthView$3;->this$0:Lcom/htc/calendar/MonthView;

    #getter for: Lcom/htc/calendar/MonthView;->eventDay:[Z
    invoke-static {v6}, Lcom/htc/calendar/MonthView;->access$2300(Lcom/htc/calendar/MonthView;)[Z

    move-result-object v6

    const/4 v7, 0x1

    aput-boolean v7, v6, v3

    .line 772
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 755
    .end local v3           #j:I
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 777
    .end local v0           #endDay:I
    .end local v1           #event:Lcom/htc/calendar/Event;
    .end local v5           #startDay:I
    :cond_7
    return-void
.end method
