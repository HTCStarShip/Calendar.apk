.class public abstract Lcom/htc/calendar/CalendarActivity;
.super Landroid/app/Activity;
.source "CalendarActivity.java"

# interfaces
.implements Lcom/htc/calendar/Navigator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/calendar/CalendarActivity$CalendarGestureListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:J = 0x190L

.field protected static final BUNDLE_KEY_RESTORE_TIME:Ljava/lang/String; = "key_restore_time"

.field private static final INITIAL_HEAP_SIZE:J = 0x400000L

.field private static final TAG:Ljava/lang/String; = "CalendarActivity"


# instance fields
.field protected mContext:Landroid/content/Context;

.field mEventLoader:Lcom/htc/calendar/EventLoader;

.field mGestureDetector:Landroid/view/GestureDetector;

.field public mHandler:Landroid/os/Handler;

.field protected mInAnimationBackward:Landroid/view/animation/Animation;

.field protected mInAnimationForward:Landroid/view/animation/Animation;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field protected mOutAnimationBackward:Landroid/view/animation/Animation;

.field protected mOutAnimationForward:Landroid/view/animation/Animation;

.field mSelectedDay:Landroid/text/format/Time;

.field private mUpdateTZ:Ljava/lang/Runnable;

.field protected mViewSwitcher:Landroid/widget/ViewSwitcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    new-instance v0, Lcom/htc/calendar/CalendarActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/calendar/CalendarActivity$1;-><init>(Lcom/htc/calendar/CalendarActivity;)V

    iput-object v0, p0, Lcom/htc/calendar/CalendarActivity;->mUpdateTZ:Ljava/lang/Runnable;

    .line 87
    new-instance v0, Lcom/htc/calendar/CalendarActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/calendar/CalendarActivity$2;-><init>(Lcom/htc/calendar/CalendarActivity;)V

    iput-object v0, p0, Lcom/htc/calendar/CalendarActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 491
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/CalendarActivity;->mHandler:Landroid/os/Handler;

    .line 526
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/calendar/CalendarActivity;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/calendar/CalendarActivity;Lcom/htc/calendar/CalendarView;FI)Landroid/text/format/Time;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/calendar/CalendarActivity;->adjustDayForCheckNextView(Lcom/htc/calendar/CalendarView;FI)Landroid/text/format/Time;

    move-result-object v0

    return-object v0
.end method

.method private adjustAnimation(ZF)V
    .locals 2
    .parameter "forward"
    .parameter "xOffSet"

    .prologue
    .line 531
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    .line 532
    if-eqz p1, :cond_1

    .line 533
    iget-object v0, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v1, p0, Lcom/htc/calendar/CalendarActivity;->mInAnimationForward:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 534
    iget-object v0, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v1, p0, Lcom/htc/calendar/CalendarActivity;->mOutAnimationForward:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 540
    :cond_0
    :goto_0
    return-void

    .line 536
    :cond_1
    iget-object v0, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v1, p0, Lcom/htc/calendar/CalendarActivity;->mInAnimationBackward:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 537
    iget-object v0, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v1, p0, Lcom/htc/calendar/CalendarActivity;->mOutAnimationBackward:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private adjustDayForCheckNextView(Lcom/htc/calendar/CalendarView;FI)Landroid/text/format/Time;
    .locals 2
    .parameter "view"
    .parameter "offset"
    .parameter "viewType"

    .prologue
    .line 543
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 544
    .local v0, time:Landroid/text/format/Time;
    const/4 v1, 0x2

    if-ne p3, v1, :cond_3

    .line 545
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_1

    .line 546
    invoke-virtual {p1}, Lcom/htc/calendar/CalendarView;->getFirstJuliandayOfTheWeek()I

    move-result v1

    if-eqz v1, :cond_0

    .line 547
    invoke-virtual {p1}, Lcom/htc/calendar/CalendarView;->getFirstJuliandayOfTheWeek()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 562
    :goto_0
    return-object v0

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    goto :goto_0

    .line 552
    :cond_1
    invoke-virtual {p1}, Lcom/htc/calendar/CalendarView;->getLastJuliandayOfTheWeek()I

    move-result v1

    if-eqz v1, :cond_2

    .line 553
    invoke-virtual {p1}, Lcom/htc/calendar/CalendarView;->getLastJuliandayOfTheWeek()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    goto :goto_0

    .line 555
    :cond_2
    iget-object v0, p0, Lcom/htc/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    goto :goto_0

    .line 559
    :cond_3
    iget-object v0, p0, Lcom/htc/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    goto :goto_0
.end method


# virtual methods
.method protected abstract checkShowWeather(J)V
.end method

.method eventsChanged()V
    .locals 4

    .prologue
    .line 279
    const-string v0, "CalendarActivity"

    const-string v1, "eventsChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/htc/calendar/CalendarActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/htc/calendar/CalendarActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/htc/calendar/CalendarActivity$3;

    invoke-direct {v1, p0}, Lcom/htc/calendar/CalendarActivity$3;-><init>(Lcom/htc/calendar/CalendarActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 302
    :cond_0
    return-void
.end method

.method public getAllDay()Z
    .locals 2

    .prologue
    .line 274
    iget-object v1, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/CalendarView;

    .line 275
    .local v0, view:Lcom/htc/calendar/CalendarView;
    iget-boolean v1, v0, Lcom/htc/calendar/CalendarView;->mSelectionAllDay:Z

    return v1
.end method

.method public getCurrentView()Lcom/htc/calendar/CalendarView;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/CalendarView;

    return-object v0
.end method

.method public getDayBarNumberTextViews()[Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 487
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDayBarTextViews()[Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 486
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDayBarWeekNumberTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 488
    const/4 v0, 0x0

    return-object v0
.end method

.method getNewEvent()Lcom/htc/calendar/Event;
    .locals 2

    .prologue
    .line 315
    iget-object v1, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/CalendarView;

    .line 316
    .local v0, view:Lcom/htc/calendar/CalendarView;
    invoke-virtual {v0}, Lcom/htc/calendar/CalendarView;->getNewEvent()Lcom/htc/calendar/Event;

    move-result-object v1

    return-object v1
.end method

.method public getNextView()Lcom/htc/calendar/CalendarView;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/CalendarView;

    return-object v0
.end method

.method getSelectedEvent()Lcom/htc/calendar/Event;
    .locals 2

    .prologue
    .line 305
    iget-object v1, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/CalendarView;

    .line 306
    .local v0, view:Lcom/htc/calendar/CalendarView;
    invoke-virtual {v0}, Lcom/htc/calendar/CalendarView;->getSelectedEvent()Lcom/htc/calendar/Event;

    move-result-object v1

    return-object v1
.end method

.method public getSelectedTime()J
    .locals 2

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarActivity;->getSelectedTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedTimeInMillis()J
    .locals 3

    .prologue
    .line 256
    iget-object v1, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/CalendarView;

    .line 257
    .local v0, view:Lcom/htc/calendar/CalendarView;
    invoke-virtual {v0}, Lcom/htc/calendar/CalendarView;->getSelectedTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public goTo(Landroid/text/format/Time;Z)V
    .locals 4
    .parameter "time"
    .parameter "animate"

    .prologue
    .line 226
    if-eqz p2, :cond_0

    .line 227
    iget-object v2, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/CalendarView;

    .line 228
    .local v0, current:Lcom/htc/calendar/CalendarView;
    invoke-virtual {v0}, Lcom/htc/calendar/CalendarView;->getSelectedTime()Landroid/text/format/Time;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 229
    iget-object v2, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v3, p0, Lcom/htc/calendar/CalendarActivity;->mInAnimationForward:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 230
    iget-object v2, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v3, p0, Lcom/htc/calendar/CalendarActivity;->mOutAnimationForward:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 237
    .end local v0           #current:Lcom/htc/calendar/CalendarView;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/calendar/CalendarView;

    .line 238
    .local v1, next:Lcom/htc/calendar/CalendarView;
    invoke-virtual {v1, p1}, Lcom/htc/calendar/CalendarView;->setSelectedDay(Landroid/text/format/Time;)V

    .line 239
    invoke-virtual {v1}, Lcom/htc/calendar/CalendarView;->reloadEvents()V

    .line 240
    iget-object v2, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 241
    invoke-virtual {v1}, Lcom/htc/calendar/CalendarView;->requestFocus()Z

    .line 244
    invoke-virtual {v1}, Lcom/htc/calendar/CalendarView;->getSelectedTime()Landroid/text/format/Time;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    .line 246
    return-void

    .line 232
    .end local v1           #next:Lcom/htc/calendar/CalendarView;
    .restart local v0       #current:Lcom/htc/calendar/CalendarView;
    :cond_1
    iget-object v2, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v3, p0, Lcom/htc/calendar/CalendarActivity;->mInAnimationBackward:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 233
    iget-object v2, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v3, p0, Lcom/htc/calendar/CalendarActivity;->mOutAnimationBackward:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public goTo(Landroid/text/format/Time;ZLandroid/text/format/Time;)V
    .locals 6
    .parameter "time"
    .parameter "animate"
    .parameter "focusOn"

    .prologue
    .line 456
    const-string v2, "CalendarActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "goTo and focusOn time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    const-string v2, "CalendarActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "goTo and focusOn time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    if-eqz p2, :cond_0

    .line 459
    iget-object v2, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/CalendarView;

    .line 460
    .local v0, current:Lcom/htc/calendar/CalendarView;
    invoke-virtual {v0}, Lcom/htc/calendar/CalendarView;->getSelectedTime()Landroid/text/format/Time;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/text/format/Time;->before(Landroid/text/format/Time;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 461
    iget-object v2, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v3, p0, Lcom/htc/calendar/CalendarActivity;->mInAnimationForward:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 462
    iget-object v2, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v3, p0, Lcom/htc/calendar/CalendarActivity;->mOutAnimationForward:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 469
    .end local v0           #current:Lcom/htc/calendar/CalendarView;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/calendar/CalendarView;

    .line 470
    .local v1, next:Lcom/htc/calendar/CalendarView;
    invoke-virtual {v1, p1, p3}, Lcom/htc/calendar/CalendarView;->setSelectedDay(Landroid/text/format/Time;Landroid/text/format/Time;)V

    .line 471
    invoke-virtual {v1}, Lcom/htc/calendar/CalendarView;->reloadEvents()V

    .line 472
    iget-object v2, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 473
    invoke-virtual {v1}, Lcom/htc/calendar/CalendarView;->requestFocus()Z

    .line 476
    invoke-virtual {v1}, Lcom/htc/calendar/CalendarView;->getSelectedTime()Landroid/text/format/Time;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    .line 478
    return-void

    .line 464
    .end local v1           #next:Lcom/htc/calendar/CalendarView;
    .restart local v0       #current:Lcom/htc/calendar/CalendarView;
    :cond_1
    iget-object v2, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v3, p0, Lcom/htc/calendar/CalendarActivity;->mInAnimationBackward:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 465
    iget-object v2, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v3, p0, Lcom/htc/calendar/CalendarActivity;->mOutAnimationBackward:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public goToToday()V
    .locals 4

    .prologue
    .line 265
    iget-object v1, p0, Lcom/htc/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 266
    iget-object v1, p0, Lcom/htc/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 267
    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v1, v2}, Lcom/htc/calendar/CalendarContext;->setCurrentSelectedTime(Landroid/text/format/Time;)V

    .line 268
    iget-object v1, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/CalendarView;

    .line 269
    .local v0, view:Lcom/htc/calendar/CalendarView;
    iget-object v1, p0, Lcom/htc/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Lcom/htc/calendar/CalendarView;->setSelectedDay(Landroid/text/format/Time;)V

    .line 270
    invoke-virtual {v0}, Lcom/htc/calendar/CalendarView;->reloadEvents()V

    .line 271
    return-void
.end method

.method isEventSelected()Z
    .locals 2

    .prologue
    .line 310
    iget-object v1, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/CalendarView;

    .line 311
    .local v0, view:Lcom/htc/calendar/CalendarView;
    invoke-virtual {v0}, Lcom/htc/calendar/CalendarView;->isEventSelected()Z

    move-result v1

    return v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/calendar/CalendarActivity;->mContext:Landroid/content/Context;

    .line 123
    new-instance v1, Landroid/text/format/Time;

    iget-object v2, p0, Lcom/htc/calendar/CalendarActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/calendar/CalendarActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v2, v3}, Lcom/htc/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/htc/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    .line 124
    iget-object v1, p0, Lcom/htc/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 126
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/calendar/CalendarActivity;->requestWindowFeature(I)Z

    .line 129
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    const-wide/32 v2, 0x400000

    invoke-virtual {v1, v2, v3}, Ldalvik/system/VMRuntime;->setMinimumHeapSize(J)J

    .line 131
    const v1, 0x7f040002

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/calendar/CalendarActivity;->mInAnimationForward:Landroid/view/animation/Animation;

    .line 132
    const v1, 0x7f040003

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/calendar/CalendarActivity;->mOutAnimationForward:Landroid/view/animation/Animation;

    .line 133
    const v1, 0x7f040004

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/calendar/CalendarActivity;->mInAnimationBackward:Landroid/view/animation/Animation;

    .line 134
    const v1, 0x7f040005

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/calendar/CalendarActivity;->mOutAnimationBackward:Landroid/view/animation/Animation;

    .line 136
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/htc/calendar/CalendarActivity;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/htc/calendar/CalendarActivity$CalendarGestureListener;

    invoke-direct {v3, p0}, Lcom/htc/calendar/CalendarActivity$CalendarGestureListener;-><init>(Lcom/htc/calendar/CalendarActivity;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/htc/calendar/CalendarActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 138
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 139
    .local v0, prefs:Landroid/content/SharedPreferences;
    new-instance v1, Lcom/htc/calendar/EventLoader;

    invoke-virtual {p0}, Lcom/htc/calendar/CalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/calendar/CalendarActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/htc/calendar/EventLoader;-><init>(Landroid/content/SharedPreferences;Landroid/content/res/Resources;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/htc/calendar/CalendarActivity;->mEventLoader:Lcom/htc/calendar/EventLoader;

    .line 141
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 495
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 496
    iget-object v0, p0, Lcom/htc/calendar/CalendarActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/htc/calendar/CalendarActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 498
    iput-object v2, p0, Lcom/htc/calendar/CalendarActivity;->mHandler:Landroid/os/Handler;

    .line 501
    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/CalendarActivity;->mEventLoader:Lcom/htc/calendar/EventLoader;

    if-eqz v0, :cond_1

    .line 502
    iget-object v0, p0, Lcom/htc/calendar/CalendarActivity;->mEventLoader:Lcom/htc/calendar/EventLoader;

    const-string v1, "day"

    invoke-virtual {v0, v1}, Lcom/htc/calendar/EventLoader;->clear(Ljava/lang/String;)V

    .line 503
    iput-object v2, p0, Lcom/htc/calendar/CalendarActivity;->mEventLoader:Lcom/htc/calendar/EventLoader;

    .line 505
    :cond_1
    iput-object v2, p0, Lcom/htc/calendar/CalendarActivity;->mContext:Landroid/content/Context;

    .line 508
    iget-object v0, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    if-eqz v0, :cond_2

    .line 509
    iget-object v0, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/CalendarView;

    invoke-virtual {v0}, Lcom/htc/calendar/CalendarView;->release()V

    .line 510
    iget-object v0, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/CalendarView;

    invoke-virtual {v0}, Lcom/htc/calendar/CalendarView;->release()V

    .line 511
    iget-object v0, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->removeAllViews()V

    .line 513
    :cond_2
    iput-object v2, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    .line 515
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 155
    invoke-static {p1}, Lcom/htc/calendar/Utils;->timeFromIntentInMillis(Landroid/content/Intent;)J

    move-result-wide v1

    .line 156
    .local v1, timeMillis:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 157
    new-instance v0, Landroid/text/format/Time;

    iget-object v3, p0, Lcom/htc/calendar/CalendarActivity;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/calendar/CalendarActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v3, v4}, Lcom/htc/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 158
    .local v0, time:Landroid/text/format/Time;
    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 159
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/htc/calendar/CalendarActivity;->goTo(Landroid/text/format/Time;Z)V

    .line 161
    .end local v0           #time:Landroid/text/format/Time;
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 199
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 201
    iget-object v1, p0, Lcom/htc/calendar/CalendarActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/calendar/CalendarActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 203
    iget-object v1, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/CalendarView;

    .line 204
    .local v0, view:Lcom/htc/calendar/CalendarView;
    invoke-virtual {v0}, Lcom/htc/calendar/CalendarView;->cleanup()V

    .line 205
    iget-object v1, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    .end local v0           #view:Lcom/htc/calendar/CalendarView;
    check-cast v0, Lcom/htc/calendar/CalendarView;

    .line 206
    .restart local v0       #view:Lcom/htc/calendar/CalendarView;
    invoke-virtual {v0}, Lcom/htc/calendar/CalendarView;->cleanup()V

    .line 207
    iget-object v1, p0, Lcom/htc/calendar/CalendarActivity;->mEventLoader:Lcom/htc/calendar/EventLoader;

    invoke-virtual {v1}, Lcom/htc/calendar/EventLoader;->stopBackgroundThread()V

    .line 208
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 145
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 147
    iget-object v2, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/calendar/CalendarView;

    .line 148
    .local v1, view:Lcom/htc/calendar/CalendarView;
    new-instance v0, Landroid/text/format/Time;

    iget-object v2, p0, Lcom/htc/calendar/CalendarActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/calendar/CalendarActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v2, v3}, Lcom/htc/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 149
    .local v0, time:Landroid/text/format/Time;
    const-string v2, "key_restore_time"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 150
    invoke-virtual {v1, v0}, Lcom/htc/calendar/CalendarView;->setSelectedDay(Landroid/text/format/Time;)V

    .line 151
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 165
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 166
    iget-object v2, p0, Lcom/htc/calendar/CalendarActivity;->mEventLoader:Lcom/htc/calendar/EventLoader;

    invoke-virtual {v2}, Lcom/htc/calendar/EventLoader;->startBackgroundThread()V

    .line 167
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarActivity;->eventsChanged()V

    .line 168
    iget-object v2, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/calendar/CalendarView;

    .line 169
    .local v1, view:Lcom/htc/calendar/CalendarView;
    invoke-virtual {v1}, Lcom/htc/calendar/CalendarView;->updateIs24HourFormat()V

    .line 170
    invoke-virtual {v1}, Lcom/htc/calendar/CalendarView;->updateView()V

    .line 172
    iget-object v2, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    .end local v1           #view:Lcom/htc/calendar/CalendarView;
    check-cast v1, Lcom/htc/calendar/CalendarView;

    .line 173
    .restart local v1       #view:Lcom/htc/calendar/CalendarView;
    invoke-virtual {v1}, Lcom/htc/calendar/CalendarView;->updateIs24HourFormat()V

    .line 174
    invoke-virtual {v1}, Lcom/htc/calendar/CalendarView;->updateView()V

    .line 177
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 179
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 182
    const-string v2, "action.calendars.picker.changed"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 183
    const-string v2, "com.htc.calendar.event_changed"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    iget-object v2, p0, Lcom/htc/calendar/CalendarActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/htc/calendar/CalendarActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 188
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 192
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 194
    const-string v0, "key_restore_time"

    invoke-virtual {p0}, Lcom/htc/calendar/CalendarActivity;->getSelectedTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 195
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 523
    invoke-static {p0}, Lcom/htc/calendar/Utils;->onSearchRequestedLocked(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public setViewId(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .parameter "tv"
    .parameter "str"

    .prologue
    .line 489
    return-void
.end method

.method public switchViews(ZFF)Landroid/view/View;
    .locals 21
    .parameter "forward"
    .parameter "xOffSet"
    .parameter "width"

    .prologue
    .line 324
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/calendar/CalendarPreferenceActivity;->showWeatherInfo(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 325
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/calendar/CalendarView;

    invoke-virtual {v3}, Lcom/htc/calendar/CalendarView;->getSelectedTimeInMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lcom/htc/calendar/CalendarActivity;->checkShowWeather(J)V

    .line 327
    :cond_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float v19, v3, p3

    .line 328
    .local v19, progress:F
    const/high16 v3, 0x3f80

    cmpl-float v3, v19, v3

    if-lez v3, :cond_1

    .line 329
    const/high16 v19, 0x3f80

    .line 334
    :cond_1
    if-eqz p1, :cond_2

    .line 335
    const/high16 v3, 0x3f80

    sub-float v4, v3, v19

    .line 336
    .local v4, inFromXValue:F
    const/4 v6, 0x0

    .line 337
    .local v6, inToXValue:F
    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v18, v0

    .line 338
    .local v18, outFromXValue:F
    const/high16 v11, -0x4080

    .line 348
    .local v11, outToXValue:F
    :goto_0
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 354
    .local v2, inAnimation:Landroid/view/animation/TranslateAnimation;
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    const/4 v8, 0x1

    const/4 v10, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v9, v18

    invoke-direct/range {v7 .. v15}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 361
    .local v7, outAnimation:Landroid/view/animation/TranslateAnimation;
    const/high16 v3, 0x43c8

    const/high16 v5, 0x3f80

    sub-float v5, v5, v19

    mul-float/2addr v3, v5

    float-to-long v0, v3

    move-wide/from16 v16, v0

    .line 362
    .local v16, duration:J
    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 363
    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 364
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3, v2}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 365
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3, v7}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 368
    invoke-direct/range {p0 .. p2}, Lcom/htc/calendar/CalendarActivity;->adjustAnimation(ZF)V

    .line 370
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/htc/calendar/CalendarView;

    .line 371
    .local v20, view:Lcom/htc/calendar/CalendarView;
    invoke-virtual/range {v20 .. v20}, Lcom/htc/calendar/CalendarView;->cleanup()V

    .line 372
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 373
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v20

    .end local v20           #view:Lcom/htc/calendar/CalendarView;
    check-cast v20, Lcom/htc/calendar/CalendarView;

    .line 374
    .restart local v20       #view:Lcom/htc/calendar/CalendarView;
    invoke-virtual/range {v20 .. v20}, Lcom/htc/calendar/CalendarView;->requestFocus()Z

    .line 375
    invoke-virtual/range {v20 .. v20}, Lcom/htc/calendar/CalendarView;->reloadEvents()V

    .line 378
    invoke-virtual/range {v20 .. v20}, Lcom/htc/calendar/CalendarView;->getSelectedTime()Landroid/text/format/Time;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    .line 380
    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v3, v5}, Lcom/htc/calendar/CalendarContext;->setCurrentSelectedTime(Landroid/text/format/Time;)V

    .line 382
    return-object v20

    .line 340
    .end local v2           #inAnimation:Landroid/view/animation/TranslateAnimation;
    .end local v4           #inFromXValue:F
    .end local v6           #inToXValue:F
    .end local v7           #outAnimation:Landroid/view/animation/TranslateAnimation;
    .end local v11           #outToXValue:F
    .end local v16           #duration:J
    .end local v18           #outFromXValue:F
    .end local v20           #view:Lcom/htc/calendar/CalendarView;
    :cond_2
    const/high16 v3, 0x3f80

    sub-float v4, v19, v3

    .line 341
    .restart local v4       #inFromXValue:F
    const/4 v6, 0x0

    .line 342
    .restart local v6       #inToXValue:F
    move/from16 v18, v19

    .line 343
    .restart local v18       #outFromXValue:F
    const/high16 v11, 0x3f80

    .restart local v11       #outToXValue:F
    goto :goto_0
.end method
