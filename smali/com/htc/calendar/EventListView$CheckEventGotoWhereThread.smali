.class Lcom/htc/calendar/EventListView$CheckEventGotoWhereThread;
.super Ljava/lang/Thread;
.source "EventListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/EventListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckEventGotoWhereThread"
.end annotation


# instance fields
.field mBegin:J

.field mContext:Landroid/content/Context;

.field mEnd:J

.field mEventId:J

.field mGuid:Ljava/lang/String;

.field mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/htc/calendar/EventListView;


# direct methods
.method public constructor <init>(Lcom/htc/calendar/EventListView;Landroid/content/Context;JLandroid/net/Uri;Ljava/lang/String;JJ)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "event_id"
    .parameter "uri"
    .parameter "guid"
    .parameter "begin"
    .parameter "end"

    .prologue
    .line 537
    iput-object p1, p0, Lcom/htc/calendar/EventListView$CheckEventGotoWhereThread;->this$0:Lcom/htc/calendar/EventListView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 538
    iput-wide p3, p0, Lcom/htc/calendar/EventListView$CheckEventGotoWhereThread;->mEventId:J

    .line 539
    iput-object p2, p0, Lcom/htc/calendar/EventListView$CheckEventGotoWhereThread;->mContext:Landroid/content/Context;

    .line 540
    iput-object p5, p0, Lcom/htc/calendar/EventListView$CheckEventGotoWhereThread;->mUri:Landroid/net/Uri;

    .line 541
    iput-object p6, p0, Lcom/htc/calendar/EventListView$CheckEventGotoWhereThread;->mGuid:Ljava/lang/String;

    .line 543
    iput-wide p7, p0, Lcom/htc/calendar/EventListView$CheckEventGotoWhereThread;->mBegin:J

    .line 544
    iput-wide p9, p0, Lcom/htc/calendar/EventListView$CheckEventGotoWhereThread;->mEnd:J

    .line 545
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 549
    iget-object v0, p0, Lcom/htc/calendar/EventListView$CheckEventGotoWhereThread;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/htc/calendar/EventListView$CheckEventGotoWhereThread;->mEventId:J

    iget-object v3, p0, Lcom/htc/calendar/EventListView$CheckEventGotoWhereThread;->mGuid:Ljava/lang/String;

    iget-wide v4, p0, Lcom/htc/calendar/EventListView$CheckEventGotoWhereThread;->mBegin:J

    iget-wide v6, p0, Lcom/htc/calendar/EventListView$CheckEventGotoWhereThread;->mEnd:J

    invoke-static/range {v0 .. v7}, Lcom/htc/calendar/EASMailUtils;->checkMailExist(Landroid/content/Context;JLjava/lang/String;JJ)J

    move-result-wide v9

    .line 550
    .local v9, mailExistId:J
    const-string v0, "EventListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mailExistId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object v0, p0, Lcom/htc/calendar/EventListView$CheckEventGotoWhereThread;->this$0:Lcom/htc/calendar/EventListView;

    #calls: Lcom/htc/calendar/EventListView;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/htc/calendar/EventListView;->access$1500(Lcom/htc/calendar/EventListView;)V

    .line 552
    const-wide/16 v0, -0x1

    cmp-long v0, v9, v0

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/htc/calendar/EventListView$CheckEventGotoWhereThread;->mContext:Landroid/content/Context;

    invoke-static {v0, v9, v10}, Lcom/htc/calendar/EASMailUtils;->launchDetail(Landroid/content/Context;J)V

    .line 562
    :goto_0
    return-void

    .line 557
    :cond_0
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    iget-object v1, p0, Lcom/htc/calendar/EventListView$CheckEventGotoWhereThread;->mUri:Landroid/net/Uri;

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 558
    .local v8, intent:Landroid/content/Intent;
    const-string v0, "beginTime"

    iget-wide v1, p0, Lcom/htc/calendar/EventListView$CheckEventGotoWhereThread;->mBegin:J

    invoke-virtual {v8, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 559
    const-string v0, "endTime"

    iget-wide v1, p0, Lcom/htc/calendar/EventListView$CheckEventGotoWhereThread;->mEnd:J

    invoke-virtual {v8, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 560
    iget-object v0, p0, Lcom/htc/calendar/EventListView$CheckEventGotoWhereThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
