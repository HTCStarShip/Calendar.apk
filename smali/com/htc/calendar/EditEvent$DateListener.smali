.class Lcom/htc/calendar/EditEvent$DateListener;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Lcom/htc/widget/HtcDatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/EditEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateListener"
.end annotation


# instance fields
.field mView:Landroid/view/View;

.field final synthetic this$0:Lcom/htc/calendar/EditEvent;


# direct methods
.method public constructor <init>(Lcom/htc/calendar/EditEvent;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "view"

    .prologue
    .line 552
    iput-object p1, p0, Lcom/htc/calendar/EditEvent$DateListener;->this$0:Lcom/htc/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 553
    iput-object p2, p0, Lcom/htc/calendar/EditEvent$DateListener;->mView:Landroid/view/View;

    .line 554
    return-void
.end method


# virtual methods
.method public onDateSet(Lcom/htc/widget/HtcDatePicker;III)V
    .locals 15
    .parameter "view"
    .parameter "year"
    .parameter "month"
    .parameter "monthDay"

    .prologue
    .line 558
    iget-object v13, p0, Lcom/htc/calendar/EditEvent$DateListener;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;
    invoke-static {v13}, Lcom/htc/calendar/EditEvent;->access$000(Lcom/htc/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v11

    .line 559
    .local v11, startTime:Landroid/text/format/Time;
    iget-object v13, p0, Lcom/htc/calendar/EditEvent$DateListener;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;
    invoke-static {v13}, Lcom/htc/calendar/EditEvent;->access$100(Lcom/htc/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v6

    .line 566
    .local v6, endTime:Landroid/text/format/Time;
    iget-object v13, p0, Lcom/htc/calendar/EditEvent$DateListener;->mView:Landroid/view/View;

    iget-object v14, p0, Lcom/htc/calendar/EditEvent$DateListener;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mStartDateButton:Landroid/widget/Button;
    invoke-static {v14}, Lcom/htc/calendar/EditEvent;->access$1200(Lcom/htc/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v14

    if-ne v13, v14, :cond_2

    .line 568
    iget v13, v6, Landroid/text/format/Time;->year:I

    iget v14, v11, Landroid/text/format/Time;->year:I

    sub-int v12, v13, v14

    .line 569
    .local v12, yearDuration:I
    iget v13, v6, Landroid/text/format/Time;->month:I

    iget v14, v11, Landroid/text/format/Time;->month:I

    sub-int v8, v13, v14

    .line 570
    .local v8, monthDuration:I
    iget v13, v6, Landroid/text/format/Time;->monthDay:I

    iget v14, v11, Landroid/text/format/Time;->monthDay:I

    sub-int v7, v13, v14

    .line 572
    .local v7, monthDayDuration:I
    move/from16 v0, p2

    iput v0, v11, Landroid/text/format/Time;->year:I

    .line 573
    move/from16 v0, p3

    iput v0, v11, Landroid/text/format/Time;->month:I

    .line 574
    move/from16 v0, p4

    iput v0, v11, Landroid/text/format/Time;->monthDay:I

    .line 575
    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v9

    .line 579
    .local v9, startMillis:J
    const/16 v1, 0x7ee

    .line 580
    .local v1, MAX_YEAR_RANGE:I
    add-int v13, p2, v12

    if-le v13, v1, :cond_1

    .line 581
    iget v13, v11, Landroid/text/format/Time;->year:I

    iput v13, v6, Landroid/text/format/Time;->year:I

    .line 582
    iget v13, v11, Landroid/text/format/Time;->month:I

    iput v13, v6, Landroid/text/format/Time;->month:I

    .line 583
    iget v13, v11, Landroid/text/format/Time;->monthDay:I

    iput v13, v6, Landroid/text/format/Time;->monthDay:I

    .line 589
    :goto_0
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    .line 592
    .local v4, endMillis:J
    iget-object v13, p0, Lcom/htc/calendar/EditEvent$DateListener;->this$0:Lcom/htc/calendar/EditEvent;

    const/4 v14, 0x0

    #calls: Lcom/htc/calendar/EditEvent;->populateRepeats(Z)V
    invoke-static {v13, v14}, Lcom/htc/calendar/EditEvent;->access$1300(Lcom/htc/calendar/EditEvent;Z)V

    .line 609
    .end local v1           #MAX_YEAR_RANGE:I
    .end local v7           #monthDayDuration:I
    .end local v8           #monthDuration:I
    .end local v12           #yearDuration:I
    :cond_0
    :goto_1
    sub-long v2, v4, v9

    .line 610
    .local v2, duration:J
    iget-object v13, p0, Lcom/htc/calendar/EditEvent$DateListener;->this$0:Lcom/htc/calendar/EditEvent;

    #calls: Lcom/htc/calendar/EditEvent;->setRepeatContainer(J)V
    invoke-static {v13, v2, v3}, Lcom/htc/calendar/EditEvent;->access$400(Lcom/htc/calendar/EditEvent;J)V

    .line 613
    iget-object v13, p0, Lcom/htc/calendar/EditEvent$DateListener;->this$0:Lcom/htc/calendar/EditEvent;

    iget-object v14, p0, Lcom/htc/calendar/EditEvent$DateListener;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mStartDateButton:Landroid/widget/Button;
    invoke-static {v14}, Lcom/htc/calendar/EditEvent;->access$1200(Lcom/htc/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v14

    #calls: Lcom/htc/calendar/EditEvent;->setDate(Landroid/widget/TextView;J)V
    invoke-static {v13, v14, v9, v10}, Lcom/htc/calendar/EditEvent;->access$700(Lcom/htc/calendar/EditEvent;Landroid/widget/TextView;J)V

    .line 614
    iget-object v13, p0, Lcom/htc/calendar/EditEvent$DateListener;->this$0:Lcom/htc/calendar/EditEvent;

    iget-object v14, p0, Lcom/htc/calendar/EditEvent$DateListener;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEndDateButton:Landroid/widget/Button;
    invoke-static {v14}, Lcom/htc/calendar/EditEvent;->access$500(Lcom/htc/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v14

    #calls: Lcom/htc/calendar/EditEvent;->setDate(Landroid/widget/TextView;J)V
    invoke-static {v13, v14, v4, v5}, Lcom/htc/calendar/EditEvent;->access$700(Lcom/htc/calendar/EditEvent;Landroid/widget/TextView;J)V

    .line 615
    iget-object v13, p0, Lcom/htc/calendar/EditEvent$DateListener;->this$0:Lcom/htc/calendar/EditEvent;

    iget-object v14, p0, Lcom/htc/calendar/EditEvent$DateListener;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEndTimeButton:Landroid/widget/Button;
    invoke-static {v14}, Lcom/htc/calendar/EditEvent;->access$600(Lcom/htc/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v14

    #calls: Lcom/htc/calendar/EditEvent;->setTime(Landroid/widget/TextView;J)V
    invoke-static {v13, v14, v4, v5}, Lcom/htc/calendar/EditEvent;->access$800(Lcom/htc/calendar/EditEvent;Landroid/widget/TextView;J)V

    .line 616
    iget-object v13, p0, Lcom/htc/calendar/EditEvent$DateListener;->this$0:Lcom/htc/calendar/EditEvent;

    #calls: Lcom/htc/calendar/EditEvent;->updateHomeTime()V
    invoke-static {v13}, Lcom/htc/calendar/EditEvent;->access$900(Lcom/htc/calendar/EditEvent;)V

    .line 617
    return-void

    .line 585
    .end local v2           #duration:J
    .end local v4           #endMillis:J
    .restart local v1       #MAX_YEAR_RANGE:I
    .restart local v7       #monthDayDuration:I
    .restart local v8       #monthDuration:I
    .restart local v12       #yearDuration:I
    :cond_1
    add-int v13, p2, v12

    iput v13, v6, Landroid/text/format/Time;->year:I

    .line 586
    add-int v13, p3, v8

    iput v13, v6, Landroid/text/format/Time;->month:I

    .line 587
    add-int v13, p4, v7

    iput v13, v6, Landroid/text/format/Time;->monthDay:I

    goto :goto_0

    .line 595
    .end local v1           #MAX_YEAR_RANGE:I
    .end local v7           #monthDayDuration:I
    .end local v8           #monthDuration:I
    .end local v9           #startMillis:J
    .end local v12           #yearDuration:I
    :cond_2
    const/4 v13, 0x1

    invoke-virtual {v11, v13}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    .line 596
    .restart local v9       #startMillis:J
    move/from16 v0, p2

    iput v0, v6, Landroid/text/format/Time;->year:I

    .line 597
    move/from16 v0, p3

    iput v0, v6, Landroid/text/format/Time;->month:I

    .line 598
    move/from16 v0, p4

    iput v0, v6, Landroid/text/format/Time;->monthDay:I

    .line 599
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    .line 602
    .restart local v4       #endMillis:J
    invoke-virtual {v6, v11}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 603
    invoke-virtual {v6, v11}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 604
    move-wide v4, v9

    goto :goto_1
.end method
