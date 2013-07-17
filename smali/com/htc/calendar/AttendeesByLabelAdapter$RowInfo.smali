.class Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;
.super Ljava/lang/Object;
.source "AttendeesByLabelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/AttendeesByLabelAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RowInfo"
.end annotation


# instance fields
.field final mAttendeesMode:Z

.field final mData:I

.field final mType:I


# direct methods
.method constructor <init>(IIZ)V
    .locals 0
    .parameter "type"
    .parameter "data"
    .parameter "mode"

    .prologue
    .line 293
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput p1, p0, Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;->mType:I

    .line 295
    iput p2, p0, Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;->mData:I

    .line 296
    iput-boolean p3, p0, Lcom/htc/calendar/AttendeesByLabelAdapter$RowInfo;->mAttendeesMode:Z

    .line 297
    return-void
.end method
