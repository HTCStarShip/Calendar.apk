.class Lcom/htc/calendar/EditEvent$TimeListener;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Lcom/htc/widget/HtcTimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/EditEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeListener"
.end annotation


# instance fields
.field private mView:Landroid/view/View;

.field final synthetic this$0:Lcom/htc/calendar/EditEvent;


# direct methods
.method public constructor <init>(Lcom/htc/calendar/EditEvent;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter "view"

    .prologue
    .line 405
    iput-object p1, p0, Lcom/htc/calendar/EditEvent$TimeListener;->this$0:Lcom/htc/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 406
    iput-object p2, p0, Lcom/htc/calendar/EditEvent$TimeListener;->mView:Landroid/view/View;

    .line 407
    return-void
.end method


# virtual methods
.method public onTimeSet(Lcom/htc/widget/HtcTimePicker;III)V
    .locals 16
    .parameter "view"
    .parameter "hourOfDay"
    .parameter "minute"
    .parameter "sec"

    .prologue
    .line 411
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/calendar/EditEvent$TimeListener;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;
    invoke-static {v12}, Lcom/htc/calendar/EditEvent;->access$000(Lcom/htc/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v11

    .line 412
    .local v11, startTime:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/calendar/EditEvent$TimeListener;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;
    invoke-static {v12}, Lcom/htc/calendar/EditEvent;->access$100(Lcom/htc/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v3

    .line 414
    .local v3, endTime:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/calendar/EditEvent$TimeListener;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mRepeatsSpinner:Lcom/htc/widget/HtcSpinner;
    invoke-static {v12}, Lcom/htc/calendar/EditEvent;->access$200(Lcom/htc/calendar/EditEvent;)Lcom/htc/widget/HtcSpinner;

    move-result-object v12

    invoke-virtual {v12}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v6

    .line 415
    .local v6, nRepeatIndex:I
    if-eqz v6, :cond_1

    const/4 v8, 0x1

    .line 422
    .local v8, repeatEvent:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/calendar/EditEvent$TimeListener;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/calendar/EditEvent$TimeListener;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mStartTimeButton:Landroid/widget/Button;
    invoke-static {v13}, Lcom/htc/calendar/EditEvent;->access$300(Lcom/htc/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v13

    if-ne v12, v13, :cond_5

    .line 424
    iget v12, v3, Landroid/text/format/Time;->hour:I

    iget v13, v11, Landroid/text/format/Time;->hour:I

    sub-int v4, v12, v13

    .line 425
    .local v4, hourDuration:I
    iget v12, v3, Landroid/text/format/Time;->minute:I

    iget v13, v11, Landroid/text/format/Time;->minute:I

    sub-int v5, v12, v13

    .line 427
    .local v5, minuteDuration:I
    move/from16 v0, p2

    iput v0, v11, Landroid/text/format/Time;->hour:I

    .line 428
    move/from16 v0, p3

    iput v0, v11, Landroid/text/format/Time;->minute:I

    .line 429
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v9

    .line 432
    .local v9, startMillis:J
    if-nez v8, :cond_3

    .line 436
    add-int v12, p2, v4

    iput v12, v3, Landroid/text/format/Time;->hour:I

    .line 437
    add-int v12, p3, v5

    iput v12, v3, Landroid/text/format/Time;->minute:I

    .line 439
    iget v12, v3, Landroid/text/format/Time;->hour:I

    const/16 v13, 0x17

    if-le v12, v13, :cond_2

    .line 441
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/calendar/EditEvent$TimeListener;->this$0:Lcom/htc/calendar/EditEvent;

    const-wide/32 v13, 0x55d4a80

    #calls: Lcom/htc/calendar/EditEvent;->setRepeatContainer(J)V
    invoke-static {v12, v13, v14}, Lcom/htc/calendar/EditEvent;->access$400(Lcom/htc/calendar/EditEvent;J)V

    .line 463
    :goto_1
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Landroid/text/format/Time;->normalize(Z)J

    .line 464
    iget v12, v3, Landroid/text/format/Time;->year:I

    const/16 v13, 0x7ef

    if-lt v12, v13, :cond_0

    .line 465
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/calendar/EditEvent$TimeListener;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;
    invoke-static {v12}, Lcom/htc/calendar/EditEvent;->access$000(Lcom/htc/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v3

    .line 466
    move/from16 v0, p2

    iput v0, v3, Landroid/text/format/Time;->hour:I

    .line 467
    move/from16 v0, p3

    iput v0, v3, Landroid/text/format/Time;->minute:I

    .line 468
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/calendar/EditEvent$TimeListener;->this$0:Lcom/htc/calendar/EditEvent;

    #setter for: Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;
    invoke-static {v12, v3}, Lcom/htc/calendar/EditEvent;->access$102(Lcom/htc/calendar/EditEvent;Landroid/text/format/Time;)Landroid/text/format/Time;

    .line 469
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/calendar/EditEvent$TimeListener;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEndDateButton:Landroid/widget/Button;
    invoke-static {v12}, Lcom/htc/calendar/EditEvent;->access$500(Lcom/htc/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v12

    new-instance v13, Lcom/htc/calendar/EditEvent$DateClickListener;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/EditEvent$TimeListener;->this$0:Lcom/htc/calendar/EditEvent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/calendar/EditEvent$TimeListener;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;
    invoke-static {v15}, Lcom/htc/calendar/EditEvent;->access$100(Lcom/htc/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lcom/htc/calendar/EditEvent$DateClickListener;-><init>(Lcom/htc/calendar/EditEvent;Landroid/text/format/Time;)V

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/calendar/EditEvent$TimeListener;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEndTimeButton:Landroid/widget/Button;
    invoke-static {v12}, Lcom/htc/calendar/EditEvent;->access$600(Lcom/htc/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v12

    new-instance v13, Lcom/htc/calendar/EditEvent$TimeClickListener;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/EditEvent$TimeListener;->this$0:Lcom/htc/calendar/EditEvent;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/calendar/EditEvent$TimeListener;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;
    invoke-static {v15}, Lcom/htc/calendar/EditEvent;->access$100(Lcom/htc/calendar/EditEvent;)Landroid/text/format/Time;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lcom/htc/calendar/EditEvent$TimeClickListener;-><init>(Lcom/htc/calendar/EditEvent;Landroid/text/format/Time;)V

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 511
    .end local v4           #hourDuration:I
    .end local v5           #minuteDuration:I
    :cond_0
    :goto_2
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    .line 513
    .local v1, endMillis:J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/calendar/EditEvent$TimeListener;->this$0:Lcom/htc/calendar/EditEvent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/calendar/EditEvent$TimeListener;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEndDateButton:Landroid/widget/Button;
    invoke-static {v13}, Lcom/htc/calendar/EditEvent;->access$500(Lcom/htc/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v13

    #calls: Lcom/htc/calendar/EditEvent;->setDate(Landroid/widget/TextView;J)V
    invoke-static {v12, v13, v1, v2}, Lcom/htc/calendar/EditEvent;->access$700(Lcom/htc/calendar/EditEvent;Landroid/widget/TextView;J)V

    .line 514
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/calendar/EditEvent$TimeListener;->this$0:Lcom/htc/calendar/EditEvent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/calendar/EditEvent$TimeListener;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mStartTimeButton:Landroid/widget/Button;
    invoke-static {v13}, Lcom/htc/calendar/EditEvent;->access$300(Lcom/htc/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v13

    #calls: Lcom/htc/calendar/EditEvent;->setTime(Landroid/widget/TextView;J)V
    invoke-static {v12, v13, v9, v10}, Lcom/htc/calendar/EditEvent;->access$800(Lcom/htc/calendar/EditEvent;Landroid/widget/TextView;J)V

    .line 515
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/calendar/EditEvent$TimeListener;->this$0:Lcom/htc/calendar/EditEvent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/calendar/EditEvent$TimeListener;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEndTimeButton:Landroid/widget/Button;
    invoke-static {v13}, Lcom/htc/calendar/EditEvent;->access$600(Lcom/htc/calendar/EditEvent;)Landroid/widget/Button;

    move-result-object v13

    #calls: Lcom/htc/calendar/EditEvent;->setTime(Landroid/widget/TextView;J)V
    invoke-static {v12, v13, v1, v2}, Lcom/htc/calendar/EditEvent;->access$800(Lcom/htc/calendar/EditEvent;Landroid/widget/TextView;J)V

    .line 516
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/calendar/EditEvent$TimeListener;->this$0:Lcom/htc/calendar/EditEvent;

    #calls: Lcom/htc/calendar/EditEvent;->updateHomeTime()V
    invoke-static {v12}, Lcom/htc/calendar/EditEvent;->access$900(Lcom/htc/calendar/EditEvent;)V

    .line 517
    return-void

    .line 415
    .end local v1           #endMillis:J
    .end local v8           #repeatEvent:Z
    .end local v9           #startMillis:J
    :cond_1
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 443
    .restart local v4       #hourDuration:I
    .restart local v5       #minuteDuration:I
    .restart local v8       #repeatEvent:Z
    .restart local v9       #startMillis:J
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/calendar/EditEvent$TimeListener;->this$0:Lcom/htc/calendar/EditEvent;

    const-wide/32 v13, 0x36ee80

    #calls: Lcom/htc/calendar/EditEvent;->setRepeatContainer(J)V
    invoke-static {v12, v13, v14}, Lcom/htc/calendar/EditEvent;->access$400(Lcom/htc/calendar/EditEvent;J)V

    goto/16 :goto_1

    .line 449
    :cond_3
    add-int v7, p2, v4

    .line 450
    .local v7, newHourOfDay:I
    const/16 v12, 0x17

    if-gt v7, v12, :cond_4

    .line 451
    iput v7, v3, Landroid/text/format/Time;->hour:I

    .line 452
    add-int v12, p3, v5

    iput v12, v3, Landroid/text/format/Time;->minute:I

    .line 461
    :goto_3
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    goto/16 :goto_1

    .line 454
    :cond_4
    const/4 v12, 0x0

    iput v12, v11, Landroid/text/format/Time;->hour:I

    .line 455
    const/4 v12, 0x0

    iput v12, v11, Landroid/text/format/Time;->minute:I

    .line 457
    const/4 v12, 0x1

    iput v12, v3, Landroid/text/format/Time;->hour:I

    .line 458
    const/4 v12, 0x0

    iput v12, v3, Landroid/text/format/Time;->minute:I

    goto :goto_3

    .line 475
    .end local v4           #hourDuration:I
    .end local v5           #minuteDuration:I
    .end local v7           #newHourOfDay:I
    .end local v9           #startMillis:J
    :cond_5
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    .line 476
    .restart local v9       #startMillis:J
    move/from16 v0, p2

    iput v0, v3, Landroid/text/format/Time;->hour:I

    .line 477
    move/from16 v0, p3

    iput v0, v3, Landroid/text/format/Time;->minute:I

    .line 479
    invoke-virtual {v3, v11}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v12

    if-eqz v12, :cond_0

    iget v12, v3, Landroid/text/format/Time;->year:I

    const/16 v13, 0x7ee

    if-gt v12, v13, :cond_0

    .line 480
    if-nez v8, :cond_6

    .line 485
    iget v12, v11, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v3, Landroid/text/format/Time;->monthDay:I

    .line 488
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/calendar/EditEvent$TimeListener;->this$0:Lcom/htc/calendar/EditEvent;

    const-wide/32 v13, 0x55d4a80

    #calls: Lcom/htc/calendar/EditEvent;->setRepeatContainer(J)V
    invoke-static {v12, v13, v14}, Lcom/htc/calendar/EditEvent;->access$400(Lcom/htc/calendar/EditEvent;J)V

    goto/16 :goto_2

    .line 494
    :cond_6
    add-int/lit8 v7, p2, -0x1

    .line 495
    .restart local v7       #newHourOfDay:I
    if-gez v7, :cond_7

    .line 496
    const/4 v12, 0x0

    iput v12, v11, Landroid/text/format/Time;->hour:I

    .line 497
    const/4 v12, 0x0

    iput v12, v11, Landroid/text/format/Time;->minute:I

    .line 499
    const/4 v12, 0x1

    iput v12, v3, Landroid/text/format/Time;->hour:I

    .line 500
    const/4 v12, 0x0

    iput v12, v3, Landroid/text/format/Time;->minute:I

    .line 506
    :goto_4
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    goto/16 :goto_2

    .line 502
    :cond_7
    iput v7, v11, Landroid/text/format/Time;->hour:I

    .line 503
    move/from16 v0, p2

    iput v0, v3, Landroid/text/format/Time;->hour:I

    goto :goto_4
.end method
