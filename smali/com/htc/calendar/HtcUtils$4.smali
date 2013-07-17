.class final Lcom/htc/calendar/HtcUtils$4;
.super Ljava/lang/Object;
.source "HtcUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/HtcUtils;->doDismissOneEvent(Landroid/content/Context;JJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mBeginTime:J

.field final synthetic val$mContext:Landroid/content/Context;

.field final synthetic val$mEndTime:J

.field final synthetic val$mEventId:J


# direct methods
.method constructor <init>(Landroid/content/Context;JJJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1386
    iput-object p1, p0, Lcom/htc/calendar/HtcUtils$4;->val$mContext:Landroid/content/Context;

    iput-wide p2, p0, Lcom/htc/calendar/HtcUtils$4;->val$mEventId:J

    iput-wide p4, p0, Lcom/htc/calendar/HtcUtils$4;->val$mBeginTime:J

    iput-wide p6, p0, Lcom/htc/calendar/HtcUtils$4;->val$mEndTime:J

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1390
    iget-object v0, p0, Lcom/htc/calendar/HtcUtils$4;->val$mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/htc/calendar/HtcUtils$4;->val$mEventId:J

    iget-wide v3, p0, Lcom/htc/calendar/HtcUtils$4;->val$mBeginTime:J

    iget-wide v5, p0, Lcom/htc/calendar/HtcUtils$4;->val$mEndTime:J

    #calls: Lcom/htc/calendar/HtcUtils;->dismissOneEvent(Landroid/content/Context;JJJ)V
    invoke-static/range {v0 .. v6}, Lcom/htc/calendar/HtcUtils;->access$200(Landroid/content/Context;JJJ)V

    .line 1391
    return-void
.end method
