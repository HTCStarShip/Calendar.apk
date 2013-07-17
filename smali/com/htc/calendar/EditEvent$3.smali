.class Lcom/htc/calendar/EditEvent$3;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/EditEvent;->initEditEvent(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/EditEvent;


# direct methods
.method constructor <init>(Lcom/htc/calendar/EditEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 1511
    iput-object p1, p0, Lcom/htc/calendar/EditEvent$3;->this$0:Lcom/htc/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1513
    if-eqz p2, :cond_2

    .line 1514
    iget-object v2, p0, Lcom/htc/calendar/EditEvent$3;->this$0:Lcom/htc/calendar/EditEvent;

    #setter for: Lcom/htc/calendar/EditEvent;->mAllDay:Z
    invoke-static {v2, v5}, Lcom/htc/calendar/EditEvent;->access$1102(Lcom/htc/calendar/EditEvent;Z)Z

    .line 1515
    iget-object v2, p0, Lcom/htc/calendar/EditEvent$3;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$100(Lcom/htc/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v2

    iget v2, v2, Landroid/text/format/Time;->hour:I

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/calendar/EditEvent$3;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$100(Lcom/htc/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v2

    iget v2, v2, Landroid/text/format/Time;->minute:I

    if-nez v2, :cond_1

    .line 1516
    iget-object v2, p0, Lcom/htc/calendar/EditEvent$3;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$100(Lcom/htc/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v2

    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Landroid/text/format/Time;->monthDay:I

    .line 1517
    iget-object v2, p0, Lcom/htc/calendar/EditEvent$3;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$100(Lcom/htc/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 1520
    .local v0, endMillis:J
    iget-object v2, p0, Lcom/htc/calendar/EditEvent$3;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$100(Lcom/htc/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/calendar/EditEvent$3;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;
    invoke-static {v3}, Lcom/htc/calendar/EditEvent;->access$000(Lcom/htc/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1521
    iget-object v2, p0, Lcom/htc/calendar/EditEvent$3;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$100(Lcom/htc/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/calendar/EditEvent$3;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;
    invoke-static {v3}, Lcom/htc/calendar/EditEvent;->access$000(Lcom/htc/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1522
    iget-object v2, p0, Lcom/htc/calendar/EditEvent$3;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$100(Lcom/htc/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 1524
    :cond_0
    iget-object v2, p0, Lcom/htc/calendar/EditEvent$3;->this$0:Lcom/htc/calendar/EditEvent;

    iget-object v3, p0, Lcom/htc/calendar/EditEvent$3;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEndDateButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/htc/calendar/EditEvent;->access$500(Lcom/htc/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v3

    #calls: Lcom/htc/calendar/EditEvent;->setDate(Landroid/widget/TextView;J)V
    invoke-static {v2, v3, v0, v1}, Lcom/htc/calendar/EditEvent;->access$700(Lcom/htc/calendar/EditEvent;Landroid/widget/TextView;J)V

    .line 1525
    iget-object v2, p0, Lcom/htc/calendar/EditEvent$3;->this$0:Lcom/htc/calendar/EditEvent;

    iget-object v3, p0, Lcom/htc/calendar/EditEvent$3;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEndTimeButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/htc/calendar/EditEvent;->access$600(Lcom/htc/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v3

    #calls: Lcom/htc/calendar/EditEvent;->setTime(Landroid/widget/TextView;J)V
    invoke-static {v2, v3, v0, v1}, Lcom/htc/calendar/EditEvent;->access$800(Lcom/htc/calendar/EditEvent;Landroid/widget/TextView;J)V

    .line 1528
    .end local v0           #endMillis:J
    :cond_1
    iget-object v2, p0, Lcom/htc/calendar/EditEvent$3;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mStartTimeButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$300(Lcom/htc/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 1529
    iget-object v2, p0, Lcom/htc/calendar/EditEvent$3;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEndTimeButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$600(Lcom/htc/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 1533
    iget-object v2, p0, Lcom/htc/calendar/EditEvent$3;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mTimeZoneBtnContainer:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$5900(Lcom/htc/calendar/EditEvent;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1552
    :goto_0
    iget-object v2, p0, Lcom/htc/calendar/EditEvent$3;->this$0:Lcom/htc/calendar/EditEvent;

    #calls: Lcom/htc/calendar/EditEvent;->updateHomeTime()V
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$900(Lcom/htc/calendar/EditEvent;)V

    .line 1553
    return-void

    .line 1536
    :cond_2
    iget-object v2, p0, Lcom/htc/calendar/EditEvent$3;->this$0:Lcom/htc/calendar/EditEvent;

    #setter for: Lcom/htc/calendar/EditEvent;->mAllDay:Z
    invoke-static {v2, v4}, Lcom/htc/calendar/EditEvent;->access$1102(Lcom/htc/calendar/EditEvent;Z)Z

    .line 1537
    iget-object v2, p0, Lcom/htc/calendar/EditEvent$3;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$100(Lcom/htc/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v2

    iget v2, v2, Landroid/text/format/Time;->hour:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/htc/calendar/EditEvent$3;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$100(Lcom/htc/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v2

    iget v2, v2, Landroid/text/format/Time;->minute:I

    if-nez v2, :cond_3

    .line 1538
    iget-object v2, p0, Lcom/htc/calendar/EditEvent$3;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$100(Lcom/htc/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v2

    iget v3, v2, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/text/format/Time;->monthDay:I

    .line 1539
    iget-object v2, p0, Lcom/htc/calendar/EditEvent$3;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$100(Lcom/htc/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 1540
    .restart local v0       #endMillis:J
    iget-object v2, p0, Lcom/htc/calendar/EditEvent$3;->this$0:Lcom/htc/calendar/EditEvent;

    iget-object v3, p0, Lcom/htc/calendar/EditEvent$3;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEndDateButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/htc/calendar/EditEvent;->access$500(Lcom/htc/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v3

    #calls: Lcom/htc/calendar/EditEvent;->setDate(Landroid/widget/TextView;J)V
    invoke-static {v2, v3, v0, v1}, Lcom/htc/calendar/EditEvent;->access$700(Lcom/htc/calendar/EditEvent;Landroid/widget/TextView;J)V

    .line 1541
    iget-object v2, p0, Lcom/htc/calendar/EditEvent$3;->this$0:Lcom/htc/calendar/EditEvent;

    iget-object v3, p0, Lcom/htc/calendar/EditEvent$3;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEndTimeButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/htc/calendar/EditEvent;->access$600(Lcom/htc/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v3

    #calls: Lcom/htc/calendar/EditEvent;->setTime(Landroid/widget/TextView;J)V
    invoke-static {v2, v3, v0, v1}, Lcom/htc/calendar/EditEvent;->access$800(Lcom/htc/calendar/EditEvent;Landroid/widget/TextView;J)V

    .line 1544
    .end local v0           #endMillis:J
    :cond_3
    iget-object v2, p0, Lcom/htc/calendar/EditEvent$3;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mStartTimeButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$300(Lcom/htc/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1545
    iget-object v2, p0, Lcom/htc/calendar/EditEvent$3;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEndTimeButton:Landroid/widget/Button;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$600(Lcom/htc/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1549
    iget-object v2, p0, Lcom/htc/calendar/EditEvent$3;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mTimeZoneBtnContainer:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$5900(Lcom/htc/calendar/EditEvent;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method
