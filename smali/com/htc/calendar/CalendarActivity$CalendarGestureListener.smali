.class Lcom/htc/calendar/CalendarActivity$CalendarGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "CalendarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/CalendarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CalendarGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/CalendarActivity;


# direct methods
.method constructor <init>(Lcom/htc/calendar/CalendarActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 394
    iput-object p1, p0, Lcom/htc/calendar/CalendarActivity$CalendarGestureListener;->this$0:Lcom/htc/calendar/CalendarActivity;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 447
    iget-object v1, p0, Lcom/htc/calendar/CalendarActivity$CalendarGestureListener;->this$0:Lcom/htc/calendar/CalendarActivity;

    iget-object v1, v1, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/CalendarView;

    .line 448
    .local v0, view:Lcom/htc/calendar/CalendarView;
    invoke-virtual {v0, p1}, Lcom/htc/calendar/CalendarView;->doDown(Landroid/view/MotionEvent;)V

    .line 449
    const/4 v1, 0x1

    return v1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v4, 0x1

    .line 428
    iget-object v5, p0, Lcom/htc/calendar/CalendarActivity$CalendarGestureListener;->this$0:Lcom/htc/calendar/CalendarActivity;

    iget-object v5, v5, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v5}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/calendar/CalendarView;

    .line 431
    .local v2, view:Lcom/htc/calendar/CalendarView;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float v1, v5, v6

    .line 432
    .local v1, offset:F
    iget v5, v2, Lcom/htc/calendar/CalendarView;->mNumDays:I

    if-ne v5, v4, :cond_0

    const/4 v3, 0x4

    .line 433
    .local v3, viewType:I
    :goto_0
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 434
    .local v0, currentTimeView:Landroid/text/format/Time;
    iget-object v5, p0, Lcom/htc/calendar/CalendarActivity$CalendarGestureListener;->this$0:Lcom/htc/calendar/CalendarActivity;

    #calls: Lcom/htc/calendar/CalendarActivity;->adjustDayForCheckNextView(Lcom/htc/calendar/CalendarView;FI)Landroid/text/format/Time;
    invoke-static {v5, v2, v1, v3}, Lcom/htc/calendar/CalendarActivity;->access$000(Lcom/htc/calendar/CalendarActivity;Lcom/htc/calendar/CalendarView;FI)Landroid/text/format/Time;

    move-result-object v0

    .line 436
    invoke-static {v0, v1, v3}, Lcom/htc/calendar/HtcUtils;->IsNextViewValid(Landroid/text/format/Time;FI)Z

    move-result v5

    if-nez v5, :cond_1

    .line 437
    const/4 v4, 0x0

    .line 442
    :goto_1
    return v4

    .line 432
    .end local v0           #currentTimeView:Landroid/text/format/Time;
    .end local v3           #viewType:I
    :cond_0
    const/4 v3, 0x2

    goto :goto_0

    .line 441
    .restart local v0       #currentTimeView:Landroid/text/format/Time;
    .restart local v3       #viewType:I
    :cond_1
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/htc/calendar/CalendarView;->doFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    goto :goto_1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "ev"

    .prologue
    .line 404
    iget-object v1, p0, Lcom/htc/calendar/CalendarActivity$CalendarGestureListener;->this$0:Lcom/htc/calendar/CalendarActivity;

    iget-object v1, v1, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/CalendarView;

    .line 405
    .local v0, view:Lcom/htc/calendar/CalendarView;
    invoke-virtual {v0, p1}, Lcom/htc/calendar/CalendarView;->doLongPress(Landroid/view/MotionEvent;)V

    .line 406
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v4, 0x1

    .line 410
    iget-object v5, p0, Lcom/htc/calendar/CalendarActivity$CalendarGestureListener;->this$0:Lcom/htc/calendar/CalendarActivity;

    iget-object v5, v5, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v5}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/calendar/CalendarView;

    .line 413
    .local v2, view:Lcom/htc/calendar/CalendarView;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float v1, v5, v6

    .line 414
    .local v1, offset:F
    iget v5, v2, Lcom/htc/calendar/CalendarView;->mNumDays:I

    if-ne v5, v4, :cond_0

    const/4 v3, 0x4

    .line 415
    .local v3, viewType:I
    :goto_0
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 416
    .local v0, currentTimeView:Landroid/text/format/Time;
    iget-object v5, p0, Lcom/htc/calendar/CalendarActivity$CalendarGestureListener;->this$0:Lcom/htc/calendar/CalendarActivity;

    #calls: Lcom/htc/calendar/CalendarActivity;->adjustDayForCheckNextView(Lcom/htc/calendar/CalendarView;FI)Landroid/text/format/Time;
    invoke-static {v5, v2, v1, v3}, Lcom/htc/calendar/CalendarActivity;->access$000(Lcom/htc/calendar/CalendarActivity;Lcom/htc/calendar/CalendarView;FI)Landroid/text/format/Time;

    move-result-object v0

    .line 417
    invoke-static {v0, v1, v3}, Lcom/htc/calendar/HtcUtils;->IsNextViewValid(Landroid/text/format/Time;FI)Z

    move-result v5

    if-nez v5, :cond_1

    .line 418
    const/4 v4, 0x0

    .line 423
    :goto_1
    return v4

    .line 414
    .end local v0           #currentTimeView:Landroid/text/format/Time;
    .end local v3           #viewType:I
    :cond_0
    const/4 v3, 0x2

    goto :goto_0

    .line 422
    .restart local v0       #currentTimeView:Landroid/text/format/Time;
    .restart local v3       #viewType:I
    :cond_1
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/htc/calendar/CalendarView;->doScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V

    goto :goto_1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 397
    iget-object v1, p0, Lcom/htc/calendar/CalendarActivity$CalendarGestureListener;->this$0:Lcom/htc/calendar/CalendarActivity;

    iget-object v1, v1, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/CalendarView;

    .line 398
    .local v0, view:Lcom/htc/calendar/CalendarView;
    invoke-virtual {v0, p1}, Lcom/htc/calendar/CalendarView;->doSingleTapUp(Landroid/view/MotionEvent;)V

    .line 399
    const/4 v1, 0x1

    return v1
.end method
