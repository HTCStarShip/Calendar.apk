.class public Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;
.super Ljava/lang/Object;
.source "MultiCalendarsByAccountAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/MultiCalendarsByAccountAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RowInfo"
.end annotation


# instance fields
.field final mAccountType:Ljava/lang/String;

.field mBottomRound:Z

.field final mData:I

.field mDivider:Z

.field final mId:J

.field final mName:Ljava/lang/String;

.field mTopRound:Z

.field final mType:I


# direct methods
.method constructor <init>(IJILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "type"
    .parameter "id"
    .parameter "data"
    .parameter "name"
    .parameter "accountType"

    .prologue
    .line 234
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput p1, p0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;->mType:I

    .line 236
    iput-wide p2, p0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;->mId:J

    .line 237
    iput p4, p0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;->mData:I

    .line 238
    iput-object p5, p0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;->mName:Ljava/lang/String;

    .line 239
    iput-object p6, p0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;->mAccountType:Ljava/lang/String;

    .line 240
    return-void
.end method
