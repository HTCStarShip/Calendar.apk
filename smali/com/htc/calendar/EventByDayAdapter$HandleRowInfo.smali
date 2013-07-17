.class Lcom/htc/calendar/EventByDayAdapter$HandleRowInfo;
.super Ljava/lang/Object;
.source "EventByDayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/EventByDayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleRowInfo"
.end annotation


# instance fields
.field rowInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/calendar/EventByDayAdapter$RowInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/calendar/EventByDayAdapter;


# direct methods
.method private constructor <init>(Lcom/htc/calendar/EventByDayAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 493
    iput-object p1, p0, Lcom/htc/calendar/EventByDayAdapter$HandleRowInfo;->this$0:Lcom/htc/calendar/EventByDayAdapter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 494
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/EventByDayAdapter$HandleRowInfo;->rowInfo:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/calendar/EventByDayAdapter;Lcom/htc/calendar/EventByDayAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 493
    invoke-direct {p0, p1}, Lcom/htc/calendar/EventByDayAdapter$HandleRowInfo;-><init>(Lcom/htc/calendar/EventByDayAdapter;)V

    return-void
.end method


# virtual methods
.method public addRowInfo(Lcom/htc/calendar/EventByDayAdapter$RowInfo;)V
    .locals 6
    .parameter "info"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 537
    iget v2, p1, Lcom/htc/calendar/EventByDayAdapter$RowInfo;->mType:I

    if-ne v2, v5, :cond_2

    .line 538
    iget-object v2, p0, Lcom/htc/calendar/EventByDayAdapter$HandleRowInfo;->rowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 539
    iget-object v2, p0, Lcom/htc/calendar/EventByDayAdapter$HandleRowInfo;->rowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 540
    .local v1, size:I
    iget-object v2, p0, Lcom/htc/calendar/EventByDayAdapter$HandleRowInfo;->rowInfo:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/EventByDayAdapter$RowInfo;

    .line 541
    .local v0, last:Lcom/htc/calendar/EventByDayAdapter$RowInfo;
    iget v2, v0, Lcom/htc/calendar/EventByDayAdapter$RowInfo;->mType:I

    if-nez v2, :cond_1

    .line 542
    iput-boolean v4, p1, Lcom/htc/calendar/EventByDayAdapter$RowInfo;->isTopRound:Z

    .line 554
    .end local v0           #last:Lcom/htc/calendar/EventByDayAdapter$RowInfo;
    .end local v1           #size:I
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/calendar/EventByDayAdapter$HandleRowInfo;->rowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    return-void

    .line 544
    .restart local v0       #last:Lcom/htc/calendar/EventByDayAdapter$RowInfo;
    .restart local v1       #size:I
    :cond_1
    iget v2, v0, Lcom/htc/calendar/EventByDayAdapter$RowInfo;->mType:I

    if-ne v2, v5, :cond_0

    .line 545
    iput-boolean v4, v0, Lcom/htc/calendar/EventByDayAdapter$RowInfo;->isBottomRound:Z

    .line 546
    iput-boolean v4, p1, Lcom/htc/calendar/EventByDayAdapter$RowInfo;->isTopRound:Z

    goto :goto_0

    .line 551
    .end local v0           #last:Lcom/htc/calendar/EventByDayAdapter$RowInfo;
    .end local v1           #size:I
    :cond_2
    iput-boolean v5, p1, Lcom/htc/calendar/EventByDayAdapter$RowInfo;->isTopRound:Z

    .line 552
    iput-boolean v4, p1, Lcom/htc/calendar/EventByDayAdapter$RowInfo;->isBottomRound:Z

    goto :goto_0
.end method

.method public getRowInfo()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/calendar/EventByDayAdapter$RowInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 558
    iget-object v0, p0, Lcom/htc/calendar/EventByDayAdapter$HandleRowInfo;->rowInfo:Ljava/util/ArrayList;

    return-object v0
.end method
