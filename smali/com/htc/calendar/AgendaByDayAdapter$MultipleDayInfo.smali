.class Lcom/htc/calendar/AgendaByDayAdapter$MultipleDayInfo;
.super Ljava/lang/Object;
.source "AgendaByDayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/AgendaByDayAdapter;
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
    .line 372
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput p1, p0, Lcom/htc/calendar/AgendaByDayAdapter$MultipleDayInfo;->mPosition:I

    .line 374
    iput p2, p0, Lcom/htc/calendar/AgendaByDayAdapter$MultipleDayInfo;->mEndDay:I

    .line 375
    return-void
.end method
