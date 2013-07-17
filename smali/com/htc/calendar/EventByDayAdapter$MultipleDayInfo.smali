.class Lcom/htc/calendar/EventByDayAdapter$MultipleDayInfo;
.super Ljava/lang/Object;
.source "EventByDayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/EventByDayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultipleDayInfo"
.end annotation


# instance fields
.field final mEndDay:I

.field final mPosition:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .parameter "position"
    .parameter "endDay"

    .prologue
    .line 358
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput p1, p0, Lcom/htc/calendar/EventByDayAdapter$MultipleDayInfo;->mPosition:I

    .line 360
    iput p2, p0, Lcom/htc/calendar/EventByDayAdapter$MultipleDayInfo;->mEndDay:I

    .line 361
    return-void
.end method
