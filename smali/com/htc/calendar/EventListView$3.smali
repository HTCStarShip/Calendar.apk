.class Lcom/htc/calendar/EventListView$3;
.super Ljava/lang/Object;
.source "EventListView.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/EventListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/EventListView;


# direct methods
.method constructor <init>(Lcom/htc/calendar/EventListView;)V
    .locals 0
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, Lcom/htc/calendar/EventListView$3;->this$0:Lcom/htc/calendar/EventListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)Z
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 458
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const-string v3, "EventListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "position: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const-wide/16 v3, -0x1

    cmp-long v3, p4, v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/htc/calendar/EventListView$3;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/calendar/EventListView;->access$200(Lcom/htc/calendar/EventListView;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 460
    iget-object v3, p0, Lcom/htc/calendar/EventListView$3;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mShowDayInfo:Z
    invoke-static {v3}, Lcom/htc/calendar/EventListView;->access$100(Lcom/htc/calendar/EventListView;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 461
    iget-object v3, p0, Lcom/htc/calendar/EventListView$3;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/calendar/EventListView;->access$200(Lcom/htc/calendar/EventListView;)Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/calendar/EventListView$3;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mDayAdapter:Lcom/htc/calendar/EventByDayAdapter;
    invoke-static {v4}, Lcom/htc/calendar/EventListView;->access$000(Lcom/htc/calendar/EventListView;)Lcom/htc/calendar/EventByDayAdapter;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/htc/calendar/EventByDayAdapter;->getCursorPosition(I)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 465
    :goto_0
    iget-object v3, p0, Lcom/htc/calendar/EventListView$3;->this$0:Lcom/htc/calendar/EventListView;

    iget-object v4, p0, Lcom/htc/calendar/EventListView$3;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/htc/calendar/EventListView;->access$200(Lcom/htc/calendar/EventListView;)Landroid/database/Cursor;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    #setter for: Lcom/htc/calendar/EventListView;->mSelectedEventTitle:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/htc/calendar/EventListView;->access$1102(Lcom/htc/calendar/EventListView;Ljava/lang/String;)Ljava/lang/String;

    .line 466
    iget-object v3, p0, Lcom/htc/calendar/EventListView$3;->this$0:Lcom/htc/calendar/EventListView;

    iget-object v4, p0, Lcom/htc/calendar/EventListView$3;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/htc/calendar/EventListView;->access$200(Lcom/htc/calendar/EventListView;)Landroid/database/Cursor;

    move-result-object v4

    const/16 v5, 0x9

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    #setter for: Lcom/htc/calendar/EventListView;->mSelectedEventId:J
    invoke-static {v3, v4, v5}, Lcom/htc/calendar/EventListView;->access$602(Lcom/htc/calendar/EventListView;J)J

    .line 467
    iget-object v3, p0, Lcom/htc/calendar/EventListView$3;->this$0:Lcom/htc/calendar/EventListView;

    iget-object v4, p0, Lcom/htc/calendar/EventListView$3;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/htc/calendar/EventListView;->access$200(Lcom/htc/calendar/EventListView;)Landroid/database/Cursor;

    move-result-object v4

    const/4 v5, 0x7

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    #setter for: Lcom/htc/calendar/EventListView;->mSelectedEventBegin:J
    invoke-static {v3, v4, v5}, Lcom/htc/calendar/EventListView;->access$702(Lcom/htc/calendar/EventListView;J)J

    .line 468
    iget-object v3, p0, Lcom/htc/calendar/EventListView$3;->this$0:Lcom/htc/calendar/EventListView;

    iget-object v4, p0, Lcom/htc/calendar/EventListView$3;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/htc/calendar/EventListView;->access$200(Lcom/htc/calendar/EventListView;)Landroid/database/Cursor;

    move-result-object v4

    const/16 v5, 0x8

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    #setter for: Lcom/htc/calendar/EventListView;->mSelectedEventEnd:J
    invoke-static {v3, v4, v5}, Lcom/htc/calendar/EventListView;->access$802(Lcom/htc/calendar/EventListView;J)J

    .line 469
    iget-object v3, p0, Lcom/htc/calendar/EventListView$3;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/calendar/EventListView;->access$200(Lcom/htc/calendar/EventListView;)Landroid/database/Cursor;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    .line 471
    .local v0, allDay:Z
    :goto_1
    if-eqz v0, :cond_0

    .line 472
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 473
    .local v2, time:Landroid/text/format/Time;
    iget-object v3, p0, Lcom/htc/calendar/EventListView$3;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mSelectedEventBegin:J
    invoke-static {v3}, Lcom/htc/calendar/EventListView;->access$700(Lcom/htc/calendar/EventListView;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 474
    iget-object v3, p0, Lcom/htc/calendar/EventListView$3;->this$0:Lcom/htc/calendar/EventListView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    #setter for: Lcom/htc/calendar/EventListView;->mSelectedEventBegin:J
    invoke-static {v3, v4, v5}, Lcom/htc/calendar/EventListView;->access$702(Lcom/htc/calendar/EventListView;J)J

    .line 476
    iget-object v3, p0, Lcom/htc/calendar/EventListView$3;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mSelectedEventEnd:J
    invoke-static {v3}, Lcom/htc/calendar/EventListView;->access$800(Lcom/htc/calendar/EventListView;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 477
    iget-object v3, p0, Lcom/htc/calendar/EventListView$3;->this$0:Lcom/htc/calendar/EventListView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    #setter for: Lcom/htc/calendar/EventListView;->mSelectedEventEnd:J
    invoke-static {v3, v4, v5}, Lcom/htc/calendar/EventListView;->access$802(Lcom/htc/calendar/EventListView;J)J

    .line 480
    .end local v2           #time:Landroid/text/format/Time;
    :cond_0
    const-string v3, "EventListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSelectedEventBegin: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/calendar/EventListView$3;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mSelectedEventBegin:J
    invoke-static {v5}, Lcom/htc/calendar/EventListView;->access$700(Lcom/htc/calendar/EventListView;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mSelectedEventEnd: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/calendar/EventListView$3;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mSelectedEventEnd:J
    invoke-static {v5}, Lcom/htc/calendar/EventListView;->access$800(Lcom/htc/calendar/EventListView;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v3, p0, Lcom/htc/calendar/EventListView$3;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/calendar/EventListView;->access$200(Lcom/htc/calendar/EventListView;)Landroid/database/Cursor;

    move-result-object v3

    const/16 v4, 0xd

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 482
    .local v1, guid:Ljava/lang/String;
    const-string v3, "EventListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSelectedEventId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/calendar/EventListView$3;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mSelectedEventId:J
    invoke-static {v5}, Lcom/htc/calendar/EventListView;->access$600(Lcom/htc/calendar/EventListView;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v3, p0, Lcom/htc/calendar/EventListView$3;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mSelectedEventId:J
    invoke-static {v3}, Lcom/htc/calendar/EventListView;->access$600(Lcom/htc/calendar/EventListView;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_3

    .line 484
    const/4 v3, 0x1

    .line 491
    .end local v0           #allDay:Z
    .end local v1           #guid:Ljava/lang/String;
    :goto_2
    return v3

    .line 463
    :cond_1
    iget-object v3, p0, Lcom/htc/calendar/EventListView$3;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/calendar/EventListView;->access$200(Lcom/htc/calendar/EventListView;)Landroid/database/Cursor;

    move-result-object v3

    add-int/lit8 p3, p3, -0x1

    invoke-interface {v3, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto/16 :goto_0

    .line 469
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 487
    .restart local v0       #allDay:Z
    .restart local v1       #guid:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/htc/calendar/EventListView$3;->this$0:Lcom/htc/calendar/EventListView;

    iget-object v4, p0, Lcom/htc/calendar/EventListView$3;->this$0:Lcom/htc/calendar/EventListView;

    iget-object v5, p0, Lcom/htc/calendar/EventListView$3;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mCursor:Landroid/database/Cursor;
    invoke-static {v5}, Lcom/htc/calendar/EventListView;->access$200(Lcom/htc/calendar/EventListView;)Landroid/database/Cursor;

    move-result-object v5

    #calls: Lcom/htc/calendar/EventListView;->isEventEditable(Landroid/database/Cursor;)Z
    invoke-static {v4, v5}, Lcom/htc/calendar/EventListView;->access$1400(Lcom/htc/calendar/EventListView;Landroid/database/Cursor;)Z

    move-result v4

    #setter for: Lcom/htc/calendar/EventListView;->mSelectedEventEditable:Z
    invoke-static {v3, v4}, Lcom/htc/calendar/EventListView;->access$1302(Lcom/htc/calendar/EventListView;Z)Z

    .line 491
    const/4 v3, 0x0

    goto :goto_2

    .line 489
    .end local v0           #allDay:Z
    .end local v1           #guid:Ljava/lang/String;
    :cond_4
    const/4 v3, 0x1

    goto :goto_2
.end method
