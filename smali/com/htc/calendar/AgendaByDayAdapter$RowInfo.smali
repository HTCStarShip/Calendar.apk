.class Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;
.super Ljava/lang/Object;
.source "AgendaByDayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/AgendaByDayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RowInfo"
.end annotation


# instance fields
.field public isBottomRound:Z

.field public isTopRound:Z

.field final mData:I

.field final mDateString:Ljava/lang/String;

.field final mType:I


# direct methods
.method constructor <init>(II)V
    .locals 6
    .parameter "type"
    .parameter "data"

    .prologue
    const/4 v4, 0x0

    .line 355
    const-string v3, ""

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;-><init>(IILjava/lang/String;ZZ)V

    .line 356
    return-void
.end method

.method constructor <init>(IILjava/lang/String;ZZ)V
    .locals 0
    .parameter "type"
    .parameter "data"
    .parameter "dateString"
    .parameter "is_top_round"
    .parameter "is_bottom_round"

    .prologue
    .line 358
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput p1, p0, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    .line 360
    iput p2, p0, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;->mData:I

    .line 361
    iput-object p3, p0, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;->mDateString:Ljava/lang/String;

    .line 362
    iput-boolean p4, p0, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;->isTopRound:Z

    .line 363
    iput-boolean p5, p0, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;->isBottomRound:Z

    .line 364
    return-void
.end method
