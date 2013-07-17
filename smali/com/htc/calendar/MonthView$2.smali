.class Lcom/htc/calendar/MonthView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MonthView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/MonthView;->init(Lcom/htc/calendar/MonthActivity;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/MonthView;


# direct methods
.method constructor <init>(Lcom/htc/calendar/MonthView;)V
    .locals 0
    .parameter

    .prologue
    .line 421
    iput-object p1, p0, Lcom/htc/calendar/MonthView$2;->this$0:Lcom/htc/calendar/MonthView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method private isHorizontalScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"

    .prologue
    .line 637
    invoke-direct {p0, p2, p1}, Lcom/htc/calendar/MonthView$2;->xOffset(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-direct {p0, p2, p1}, Lcom/htc/calendar/MonthView$2;->yOffset(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private xOffset(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)F
    .locals 2
    .parameter "e1"
    .parameter "e2"

    .prologue
    .line 629
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private yOffset(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)F
    .locals 2
    .parameter "e1"
    .parameter "e2"

    .prologue
    .line 633
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 457
    iget-object v0, p0, Lcom/htc/calendar/MonthView$2;->this$0:Lcom/htc/calendar/MonthView;

    #setter for: Lcom/htc/calendar/MonthView;->mInManipulation:Z
    invoke-static {v0, v1}, Lcom/htc/calendar/MonthView;->access$702(Lcom/htc/calendar/MonthView;Z)Z

    .line 458
    iget-object v0, p0, Lcom/htc/calendar/MonthView$2;->this$0:Lcom/htc/calendar/MonthView;

    iput v1, v0, Lcom/htc/calendar/MonthView;->mIsNext:I

    .line 463
    iget-object v0, p0, Lcom/htc/calendar/MonthView$2;->this$0:Lcom/htc/calendar/MonthView;

    #setter for: Lcom/htc/calendar/MonthView;->mLaunchDayView:Z
    invoke-static {v0, v2}, Lcom/htc/calendar/MonthView;->access$802(Lcom/htc/calendar/MonthView;Z)Z

    .line 464
    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 451
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 504
    iget-object v0, p0, Lcom/htc/calendar/MonthView$2;->this$0:Lcom/htc/calendar/MonthView;

    #getter for: Lcom/htc/calendar/MonthView;->mLaunchDayView:Z
    invoke-static {v0}, Lcom/htc/calendar/MonthView;->access$800(Lcom/htc/calendar/MonthView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/htc/calendar/MonthView$2;->this$0:Lcom/htc/calendar/MonthView;

    const/4 v1, 0x0

    #setter for: Lcom/htc/calendar/MonthView;->mLaunchDayView:Z
    invoke-static {v0, v1}, Lcom/htc/calendar/MonthView;->access$802(Lcom/htc/calendar/MonthView;Z)Z

    .line 506
    iget-object v0, p0, Lcom/htc/calendar/MonthView$2;->this$0:Lcom/htc/calendar/MonthView;

    const/4 v1, 0x3

    #setter for: Lcom/htc/calendar/MonthView;->mSelectionMode:I
    invoke-static {v0, v1}, Lcom/htc/calendar/MonthView;->access$1702(Lcom/htc/calendar/MonthView;I)I

    .line 508
    iget-object v0, p0, Lcom/htc/calendar/MonthView$2;->this$0:Lcom/htc/calendar/MonthView;

    invoke-virtual {v0}, Lcom/htc/calendar/MonthView;->invalidate()V

    .line 509
    iget-object v0, p0, Lcom/htc/calendar/MonthView$2;->this$0:Lcom/htc/calendar/MonthView;

    invoke-virtual {v0}, Lcom/htc/calendar/MonthView;->performLongClick()Z

    .line 511
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const-wide v7, 0x7fffffffffffffffL

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 520
    invoke-direct {p0, p1, p2}, Lcom/htc/calendar/MonthView$2;->isHorizontalScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 590
    :goto_0
    return v3

    .line 524
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float v1, v3, v6

    .line 525
    .local v1, offset:F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 527
    .local v0, absOffset:F
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_2

    .line 530
    iget-object v3, p0, Lcom/htc/calendar/MonthView$2;->this$0:Lcom/htc/calendar/MonthView;

    #getter for: Lcom/htc/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;
    invoke-static {v3}, Lcom/htc/calendar/MonthView;->access$500(Lcom/htc/calendar/MonthView;)Landroid/text/format/Time;

    move-result-object v3

    invoke-static {v3, v1, v5}, Lcom/htc/calendar/HtcUtils;->IsNextViewValid(Landroid/text/format/Time;FI)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v5

    .line 531
    goto :goto_0

    .line 535
    :cond_1
    iget-object v3, p0, Lcom/htc/calendar/MonthView$2;->this$0:Lcom/htc/calendar/MonthView;

    #getter for: Lcom/htc/calendar/MonthView;->mInManipulation:Z
    invoke-static {v3}, Lcom/htc/calendar/MonthView;->access$700(Lcom/htc/calendar/MonthView;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 536
    iget-object v3, p0, Lcom/htc/calendar/MonthView$2;->this$0:Lcom/htc/calendar/MonthView;

    #setter for: Lcom/htc/calendar/MonthView;->mLaunchDayView:Z
    invoke-static {v3, v5}, Lcom/htc/calendar/MonthView;->access$802(Lcom/htc/calendar/MonthView;Z)Z

    .line 537
    iget-object v3, p0, Lcom/htc/calendar/MonthView$2;->this$0:Lcom/htc/calendar/MonthView;

    #setter for: Lcom/htc/calendar/MonthView;->mSelectionMode:I
    invoke-static {v3, v5}, Lcom/htc/calendar/MonthView;->access$1702(Lcom/htc/calendar/MonthView;I)I

    .line 539
    iget-object v3, p0, Lcom/htc/calendar/MonthView$2;->this$0:Lcom/htc/calendar/MonthView;

    #setter for: Lcom/htc/calendar/MonthView;->mInManipulation:Z
    invoke-static {v3, v4}, Lcom/htc/calendar/MonthView;->access$702(Lcom/htc/calendar/MonthView;Z)Z

    .line 542
    iget-object v3, p0, Lcom/htc/calendar/MonthView$2;->this$0:Lcom/htc/calendar/MonthView;

    invoke-virtual {v3}, Lcom/htc/calendar/MonthView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 543
    iget-object v3, p0, Lcom/htc/calendar/MonthView$2;->this$0:Lcom/htc/calendar/MonthView;

    #getter for: Lcom/htc/calendar/MonthView;->mInterpolator:Lcom/htc/calendar/ManipulateInterpolator;
    invoke-static {v3}, Lcom/htc/calendar/MonthView;->access$1800(Lcom/htc/calendar/MonthView;)Lcom/htc/calendar/ManipulateInterpolator;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/calendar/ManipulateInterpolator;->reset()V

    .line 552
    new-instance v2, Landroid/text/format/Time;

    iget-object v3, p0, Lcom/htc/calendar/MonthView$2;->this$0:Lcom/htc/calendar/MonthView;

    #getter for: Lcom/htc/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;
    invoke-static {v3}, Lcom/htc/calendar/MonthView;->access$500(Lcom/htc/calendar/MonthView;)Landroid/text/format/Time;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 553
    .local v2, time:Landroid/text/format/Time;
    iput v4, v2, Landroid/text/format/Time;->monthDay:I

    .line 555
    const/4 v3, 0x0

    cmpg-float v3, v1, v3

    if-gez v3, :cond_4

    .line 556
    iget-object v3, p0, Lcom/htc/calendar/MonthView$2;->this$0:Lcom/htc/calendar/MonthView;

    const/4 v6, -0x1

    iput v6, v3, Lcom/htc/calendar/MonthView;->mIsNext:I

    .line 557
    iget v3, v2, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Landroid/text/format/Time;->month:I

    .line 558
    iget-object v3, p0, Lcom/htc/calendar/MonthView$2;->this$0:Lcom/htc/calendar/MonthView;

    #getter for: Lcom/htc/calendar/MonthView;->mParentActivity:Lcom/htc/calendar/MonthActivity;
    invoke-static {v3}, Lcom/htc/calendar/MonthView;->access$1900(Lcom/htc/calendar/MonthView;)Lcom/htc/calendar/MonthActivity;

    move-result-object v3

    iget-object v6, p0, Lcom/htc/calendar/MonthView$2;->this$0:Lcom/htc/calendar/MonthView;

    #getter for: Lcom/htc/calendar/MonthView;->mParentActivity:Lcom/htc/calendar/MonthActivity;
    invoke-static {v6}, Lcom/htc/calendar/MonthView;->access$1900(Lcom/htc/calendar/MonthView;)Lcom/htc/calendar/MonthActivity;

    invoke-virtual {v3, v7, v8}, Lcom/htc/calendar/MonthActivity;->gotoAnimationPass(J)V

    .line 565
    :goto_1
    invoke-virtual {v2, v4}, Landroid/text/format/Time;->normalize(Z)J

    .line 566
    iget-object v3, p0, Lcom/htc/calendar/MonthView$2;->this$0:Lcom/htc/calendar/MonthView;

    #getter for: Lcom/htc/calendar/MonthView;->mNavigator:Lcom/htc/calendar/Navigator;
    invoke-static {v3}, Lcom/htc/calendar/MonthView;->access$2000(Lcom/htc/calendar/MonthView;)Lcom/htc/calendar/Navigator;

    move-result-object v3

    invoke-interface {v3, v2, v4}, Lcom/htc/calendar/Navigator;->goTo(Landroid/text/format/Time;Z)V

    .line 583
    .end local v2           #time:Landroid/text/format/Time;
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/htc/calendar/MonthView$2;->this$0:Lcom/htc/calendar/MonthView;

    #setter for: Lcom/htc/calendar/MonthView;->mLaunchDayView:Z
    invoke-static {v3, v5}, Lcom/htc/calendar/MonthView;->access$802(Lcom/htc/calendar/MonthView;Z)Z

    .line 585
    iget-object v3, p0, Lcom/htc/calendar/MonthView$2;->this$0:Lcom/htc/calendar/MonthView;

    #getter for: Lcom/htc/calendar/MonthView;->mSelectionMode:I
    invoke-static {v3}, Lcom/htc/calendar/MonthView;->access$1700(Lcom/htc/calendar/MonthView;)I

    move-result v3

    if-eqz v3, :cond_3

    .line 586
    iget-object v3, p0, Lcom/htc/calendar/MonthView$2;->this$0:Lcom/htc/calendar/MonthView;

    #setter for: Lcom/htc/calendar/MonthView;->mSelectionMode:I
    invoke-static {v3, v5}, Lcom/htc/calendar/MonthView;->access$1702(Lcom/htc/calendar/MonthView;I)I

    .line 588
    iget-object v3, p0, Lcom/htc/calendar/MonthView$2;->this$0:Lcom/htc/calendar/MonthView;

    invoke-virtual {v3}, Lcom/htc/calendar/MonthView;->invalidate()V

    :cond_3
    move v3, v4

    .line 590
    goto/16 :goto_0

    .line 561
    .restart local v2       #time:Landroid/text/format/Time;
    :cond_4
    iget-object v3, p0, Lcom/htc/calendar/MonthView$2;->this$0:Lcom/htc/calendar/MonthView;

    iput v4, v3, Lcom/htc/calendar/MonthView;->mIsNext:I

    .line 562
    iget v3, v2, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/text/format/Time;->month:I

    .line 563
    iget-object v3, p0, Lcom/htc/calendar/MonthView$2;->this$0:Lcom/htc/calendar/MonthView;

    #getter for: Lcom/htc/calendar/MonthView;->mParentActivity:Lcom/htc/calendar/MonthActivity;
    invoke-static {v3}, Lcom/htc/calendar/MonthView;->access$1900(Lcom/htc/calendar/MonthView;)Lcom/htc/calendar/MonthActivity;

    move-result-object v3

    iget-object v6, p0, Lcom/htc/calendar/MonthView$2;->this$0:Lcom/htc/calendar/MonthView;

    #getter for: Lcom/htc/calendar/MonthView;->mParentActivity:Lcom/htc/calendar/MonthActivity;
    invoke-static {v6}, Lcom/htc/calendar/MonthView;->access$1900(Lcom/htc/calendar/MonthView;)Lcom/htc/calendar/MonthActivity;

    invoke-virtual {v3, v7, v8}, Lcom/htc/calendar/MonthActivity;->gotoAnimationFuture(J)V

    goto :goto_1

    .line 575
    .end local v2           #time:Landroid/text/format/Time;
    :cond_5
    iget-object v3, p0, Lcom/htc/calendar/MonthView$2;->this$0:Lcom/htc/calendar/MonthView;

    iget v3, v3, Lcom/htc/calendar/MonthView;->mIsNext:I

    float-to-int v6, v1

    mul-int/2addr v3, v6

    if-lez v3, :cond_2

    .line 577
    iget-object v3, p0, Lcom/htc/calendar/MonthView$2;->this$0:Lcom/htc/calendar/MonthView;

    #getter for: Lcom/htc/calendar/MonthView;->mInterpolator:Lcom/htc/calendar/ManipulateInterpolator;
    invoke-static {v3}, Lcom/htc/calendar/MonthView;->access$1800(Lcom/htc/calendar/MonthView;)Lcom/htc/calendar/ManipulateInterpolator;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-virtual {v3, v6}, Lcom/htc/calendar/ManipulateInterpolator;->setCurrentInterpolation(F)V

    goto :goto_2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "e"

    .prologue
    .line 486
    invoke-virtual {p0, p1}, Lcom/htc/calendar/MonthView$2;->setSelectedCell(Landroid/view/MotionEvent;)V

    .line 487
    iget-object v2, p0, Lcom/htc/calendar/MonthView$2;->this$0:Lcom/htc/calendar/MonthView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    #calls: Lcom/htc/calendar/MonthView;->getSelectedMillisFor(II)J
    invoke-static {v2, v3, v4}, Lcom/htc/calendar/MonthView;->access$1500(Lcom/htc/calendar/MonthView;II)J

    move-result-wide v0

    .line 489
    .local v0, selectedMills:J
    iget-object v2, p0, Lcom/htc/calendar/MonthView$2;->this$0:Lcom/htc/calendar/MonthView;

    #calls: Lcom/htc/calendar/MonthView;->checkValideTime(J)Z
    invoke-static {v2, v0, v1}, Lcom/htc/calendar/MonthView;->access$1600(Lcom/htc/calendar/MonthView;J)Z

    move-result v2

    if-nez v2, :cond_0

    .line 497
    :goto_0
    return-void

    .line 493
    :cond_0
    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/calendar/CalendarContext;->setCurrentSelectedTime(Ljava/lang/Long;)V

    .line 494
    iget-object v2, p0, Lcom/htc/calendar/MonthView$2;->this$0:Lcom/htc/calendar/MonthView;

    const/4 v3, 0x1

    #setter for: Lcom/htc/calendar/MonthView;->mSelectionMode:I
    invoke-static {v2, v3}, Lcom/htc/calendar/MonthView;->access$1702(Lcom/htc/calendar/MonthView;I)I

    .line 496
    iget-object v2, p0, Lcom/htc/calendar/MonthView$2;->this$0:Lcom/htc/calendar/MonthView;

    invoke-virtual {v2}, Lcom/htc/calendar/MonthView;->invalidate()V

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "e"

    .prologue
    const/4 v7, 0x1

    .line 595
    iget-object v5, p0, Lcom/htc/calendar/MonthView$2;->this$0:Lcom/htc/calendar/MonthView;

    #getter for: Lcom/htc/calendar/MonthView;->mLaunchDayView:Z
    invoke-static {v5}, Lcom/htc/calendar/MonthView;->access$800(Lcom/htc/calendar/MonthView;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 596
    invoke-virtual {p0, p1}, Lcom/htc/calendar/MonthView$2;->setSelectedCell(Landroid/view/MotionEvent;)V

    .line 597
    iget-object v5, p0, Lcom/htc/calendar/MonthView$2;->this$0:Lcom/htc/calendar/MonthView;

    const/4 v6, 0x2

    #setter for: Lcom/htc/calendar/MonthView;->mSelectionMode:I
    invoke-static {v5, v6}, Lcom/htc/calendar/MonthView;->access$1702(Lcom/htc/calendar/MonthView;I)I

    .line 599
    iget-object v5, p0, Lcom/htc/calendar/MonthView$2;->this$0:Lcom/htc/calendar/MonthView;

    invoke-virtual {v5}, Lcom/htc/calendar/MonthView;->invalidate()V

    .line 600
    iget-object v5, p0, Lcom/htc/calendar/MonthView$2;->this$0:Lcom/htc/calendar/MonthView;

    const/4 v6, 0x0

    #setter for: Lcom/htc/calendar/MonthView;->mLaunchDayView:Z
    invoke-static {v5, v6}, Lcom/htc/calendar/MonthView;->access$802(Lcom/htc/calendar/MonthView;Z)Z

    .line 601
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v3, v5

    .line 602
    .local v3, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v4, v5

    .line 611
    .local v4, y:I
    :try_start_0
    iget-object v5, p0, Lcom/htc/calendar/MonthView$2;->this$0:Lcom/htc/calendar/MonthView;

    #calls: Lcom/htc/calendar/MonthView;->getSelectedMillisFor(II)J
    invoke-static {v5, v3, v4}, Lcom/htc/calendar/MonthView;->access$1500(Lcom/htc/calendar/MonthView;II)J

    move-result-wide v1

    .line 613
    .local v1, selectedMills:J
    iget-object v5, p0, Lcom/htc/calendar/MonthView$2;->this$0:Lcom/htc/calendar/MonthView;

    #calls: Lcom/htc/calendar/MonthView;->checkValideTime(J)Z
    invoke-static {v5, v1, v2}, Lcom/htc/calendar/MonthView;->access$1600(Lcom/htc/calendar/MonthView;J)Z

    move-result v5

    if-nez v5, :cond_1

    .line 625
    .end local v1           #selectedMills:J
    .end local v3           #x:I
    .end local v4           #y:I
    :cond_0
    :goto_0
    return v7

    .line 616
    .restart local v1       #selectedMills:J
    .restart local v3       #x:I
    .restart local v4       #y:I
    :cond_1
    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/htc/calendar/CalendarContext;->setCurrentSelectedTime(Ljava/lang/Long;)V

    .line 617
    iget-object v5, p0, Lcom/htc/calendar/MonthView$2;->this$0:Lcom/htc/calendar/MonthView;

    #getter for: Lcom/htc/calendar/MonthView;->mParentActivity:Lcom/htc/calendar/MonthActivity;
    invoke-static {v5}, Lcom/htc/calendar/MonthView;->access$1900(Lcom/htc/calendar/MonthView;)Lcom/htc/calendar/MonthActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/calendar/MonthActivity;->getParent()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/CarouselActivity;

    invoke-virtual {v5}, Lcom/htc/widget/CarouselActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v5

    const-string v6, "Day"

    invoke-virtual {v5, v6}, Lcom/htc/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 619
    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/htc/calendar/CalendarContext;->setMonthToDay(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 620
    .end local v1           #selectedMills:J
    :catch_0
    move-exception v0

    .line 621
    .local v0, ex:Ljava/lang/Exception;
    const-string v5, "MonthView"

    const-string v6, "onSingleTapUp exception"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setSelectedCell(Landroid/view/MotionEvent;)V
    .locals 7
    .parameter "e"

    .prologue
    .line 468
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 469
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 470
    .local v3, y:I
    invoke-static {}, Lcom/htc/calendar/MonthView;->access$900()I

    move-result v4

    sub-int v4, v3, v4

    invoke-static {}, Lcom/htc/calendar/MonthView;->access$900()I

    move-result v5

    iget-object v6, p0, Lcom/htc/calendar/MonthView$2;->this$0:Lcom/htc/calendar/MonthView;

    #getter for: Lcom/htc/calendar/MonthView;->mCellHeight:I
    invoke-static {v6}, Lcom/htc/calendar/MonthView;->access$1000(Lcom/htc/calendar/MonthView;)I

    move-result v6

    add-int/2addr v5, v6

    div-int v1, v4, v5

    .line 471
    .local v1, row:I
    iget-object v4, p0, Lcom/htc/calendar/MonthView$2;->this$0:Lcom/htc/calendar/MonthView;

    #getter for: Lcom/htc/calendar/MonthView;->mBorder:I
    invoke-static {v4}, Lcom/htc/calendar/MonthView;->access$1100(Lcom/htc/calendar/MonthView;)I

    move-result v4

    sub-int v4, v2, v4

    invoke-static {}, Lcom/htc/calendar/MonthView;->access$1200()I

    move-result v5

    iget-object v6, p0, Lcom/htc/calendar/MonthView$2;->this$0:Lcom/htc/calendar/MonthView;

    #getter for: Lcom/htc/calendar/MonthView;->mCellWidth:I
    invoke-static {v6}, Lcom/htc/calendar/MonthView;->access$1300(Lcom/htc/calendar/MonthView;)I

    move-result v6

    add-int/2addr v5, v6

    div-int v0, v4, v5

    .line 472
    .local v0, col:I
    const/4 v4, 0x5

    if-le v1, v4, :cond_0

    .line 473
    const/4 v1, 0x5

    .line 475
    :cond_0
    const/4 v4, 0x6

    if-le v0, v4, :cond_1

    .line 476
    const/4 v0, 0x6

    .line 480
    :cond_1
    iget-object v4, p0, Lcom/htc/calendar/MonthView$2;->this$0:Lcom/htc/calendar/MonthView;

    #getter for: Lcom/htc/calendar/MonthView;->mCursor:Lcom/htc/calendar/DayOfMonthCursor;
    invoke-static {v4}, Lcom/htc/calendar/MonthView;->access$1400(Lcom/htc/calendar/MonthView;)Lcom/htc/calendar/DayOfMonthCursor;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Lcom/htc/calendar/DayOfMonthCursor;->setSelectedRowColumn(II)V

    .line 481
    return-void
.end method
