.class Lcom/htc/calendar/CalendarView$ContinueScroll;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContinueScroll"
.end annotation


# static fields
.field private static final FREE_SPIN_MILLIS:J = 0xb4L

.field private static final FRICTION_COEF:F = 0.7f

.field private static final MAX_DELTA:I = 0x3c

.field private static final SCROLL_REPEAT_INTERVAL:I = 0x1e


# instance fields
.field mAbsDeltaY:I

.field mFloatDeltaY:F

.field mFreeSpinTime:J

.field mSignDeltaY:I

.field final synthetic this$0:Lcom/htc/calendar/CalendarView;


# direct methods
.method private constructor <init>(Lcom/htc/calendar/CalendarView;)V
    .locals 0
    .parameter

    .prologue
    .line 4416
    iput-object p1, p0, Lcom/htc/calendar/CalendarView$ContinueScroll;->this$0:Lcom/htc/calendar/CalendarView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/calendar/CalendarView;Lcom/htc/calendar/CalendarView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4416
    invoke-direct {p0, p1}, Lcom/htc/calendar/CalendarView$ContinueScroll;-><init>(Lcom/htc/calendar/CalendarView;)V

    return-void
.end method


# virtual methods
.method public init(I)V
    .locals 4
    .parameter "deltaY"

    .prologue
    const/16 v1, 0x3c

    .line 4427
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/calendar/CalendarView$ContinueScroll;->mSignDeltaY:I

    .line 4428
    if-lez p1, :cond_2

    .line 4429
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/calendar/CalendarView$ContinueScroll;->mSignDeltaY:I

    .line 4433
    :cond_0
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/htc/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    .line 4436
    iget v0, p0, Lcom/htc/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    if-le v0, v1, :cond_1

    .line 4437
    iput v1, p0, Lcom/htc/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    .line 4439
    :cond_1
    iget v0, p0, Lcom/htc/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    int-to-float v0, v0

    iput v0, p0, Lcom/htc/calendar/CalendarView$ContinueScroll;->mFloatDeltaY:F

    .line 4440
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xb4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/htc/calendar/CalendarView$ContinueScroll;->mFreeSpinTime:J

    .line 4443
    return-void

    .line 4430
    :cond_2
    if-gez p1, :cond_0

    .line 4431
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/calendar/CalendarView$ContinueScroll;->mSignDeltaY:I

    goto :goto_0
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4446
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4449
    .local v0, time:J
    iget-wide v2, p0, Lcom/htc/calendar/CalendarView$ContinueScroll;->mFreeSpinTime:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 4452
    iget v2, p0, Lcom/htc/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    const/16 v3, 0xa

    if-gt v2, v3, :cond_2

    .line 4453
    iget v2, p0, Lcom/htc/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    add-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/htc/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    .line 4459
    :goto_0
    iget v2, p0, Lcom/htc/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    if-gez v2, :cond_0

    .line 4460
    iput v4, p0, Lcom/htc/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    .line 4464
    :cond_0
    iget v2, p0, Lcom/htc/calendar/CalendarView$ContinueScroll;->mSignDeltaY:I

    if-ne v2, v5, :cond_3

    .line 4465
    iget-object v2, p0, Lcom/htc/calendar/CalendarView$ContinueScroll;->this$0:Lcom/htc/calendar/CalendarView;

    iget v3, p0, Lcom/htc/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    invoke-static {v2, v3}, Lcom/htc/calendar/CalendarView;->access$1620(Lcom/htc/calendar/CalendarView;I)I

    .line 4472
    :goto_1
    iget-object v2, p0, Lcom/htc/calendar/CalendarView$ContinueScroll;->this$0:Lcom/htc/calendar/CalendarView;

    #getter for: Lcom/htc/calendar/CalendarView;->mViewStartY:I
    invoke-static {v2}, Lcom/htc/calendar/CalendarView;->access$1600(Lcom/htc/calendar/CalendarView;)I

    move-result v2

    if-gez v2, :cond_4

    .line 4473
    iget-object v2, p0, Lcom/htc/calendar/CalendarView$ContinueScroll;->this$0:Lcom/htc/calendar/CalendarView;

    #setter for: Lcom/htc/calendar/CalendarView;->mViewStartY:I
    invoke-static {v2, v4}, Lcom/htc/calendar/CalendarView;->access$1602(Lcom/htc/calendar/CalendarView;I)I

    .line 4474
    iput v4, p0, Lcom/htc/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    .line 4480
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/htc/calendar/CalendarView$ContinueScroll;->this$0:Lcom/htc/calendar/CalendarView;

    #calls: Lcom/htc/calendar/CalendarView;->computeFirstHour()V
    invoke-static {v2}, Lcom/htc/calendar/CalendarView;->access$1800(Lcom/htc/calendar/CalendarView;)V

    .line 4482
    iget v2, p0, Lcom/htc/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    if-lez v2, :cond_5

    .line 4483
    iget-object v2, p0, Lcom/htc/calendar/CalendarView$ContinueScroll;->this$0:Lcom/htc/calendar/CalendarView;

    const-wide/16 v3, 0x1e

    invoke-virtual {v2, p0, v3, v4}, Lcom/htc/calendar/CalendarView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4491
    :goto_3
    iget-object v2, p0, Lcom/htc/calendar/CalendarView$ContinueScroll;->this$0:Lcom/htc/calendar/CalendarView;

    invoke-virtual {v2}, Lcom/htc/calendar/CalendarView;->invalidate()V

    .line 4492
    return-void

    .line 4455
    :cond_2
    iget v2, p0, Lcom/htc/calendar/CalendarView$ContinueScroll;->mFloatDeltaY:F

    const v3, 0x3f333333

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/htc/calendar/CalendarView$ContinueScroll;->mFloatDeltaY:F

    .line 4456
    iget v2, p0, Lcom/htc/calendar/CalendarView$ContinueScroll;->mFloatDeltaY:F

    float-to-int v2, v2

    iput v2, p0, Lcom/htc/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    goto :goto_0

    .line 4467
    :cond_3
    iget-object v2, p0, Lcom/htc/calendar/CalendarView$ContinueScroll;->this$0:Lcom/htc/calendar/CalendarView;

    iget v3, p0, Lcom/htc/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    invoke-static {v2, v3}, Lcom/htc/calendar/CalendarView;->access$1612(Lcom/htc/calendar/CalendarView;I)I

    goto :goto_1

    .line 4475
    :cond_4
    iget-object v2, p0, Lcom/htc/calendar/CalendarView$ContinueScroll;->this$0:Lcom/htc/calendar/CalendarView;

    #getter for: Lcom/htc/calendar/CalendarView;->mViewStartY:I
    invoke-static {v2}, Lcom/htc/calendar/CalendarView;->access$1600(Lcom/htc/calendar/CalendarView;)I

    move-result v2

    iget-object v3, p0, Lcom/htc/calendar/CalendarView$ContinueScroll;->this$0:Lcom/htc/calendar/CalendarView;

    #getter for: Lcom/htc/calendar/CalendarView;->mMaxViewStartY:I
    invoke-static {v3}, Lcom/htc/calendar/CalendarView;->access$1700(Lcom/htc/calendar/CalendarView;)I

    move-result v3

    if-le v2, v3, :cond_1

    .line 4476
    iget-object v2, p0, Lcom/htc/calendar/CalendarView$ContinueScroll;->this$0:Lcom/htc/calendar/CalendarView;

    iget-object v3, p0, Lcom/htc/calendar/CalendarView$ContinueScroll;->this$0:Lcom/htc/calendar/CalendarView;

    #getter for: Lcom/htc/calendar/CalendarView;->mMaxViewStartY:I
    invoke-static {v3}, Lcom/htc/calendar/CalendarView;->access$1700(Lcom/htc/calendar/CalendarView;)I

    move-result v3

    #setter for: Lcom/htc/calendar/CalendarView;->mViewStartY:I
    invoke-static {v2, v3}, Lcom/htc/calendar/CalendarView;->access$1602(Lcom/htc/calendar/CalendarView;I)I

    .line 4477
    iput v4, p0, Lcom/htc/calendar/CalendarView$ContinueScroll;->mAbsDeltaY:I

    goto :goto_2

    .line 4486
    :cond_5
    iget-object v2, p0, Lcom/htc/calendar/CalendarView$ContinueScroll;->this$0:Lcom/htc/calendar/CalendarView;

    #setter for: Lcom/htc/calendar/CalendarView;->mScrolling:Z
    invoke-static {v2, v4}, Lcom/htc/calendar/CalendarView;->access$1902(Lcom/htc/calendar/CalendarView;Z)Z

    .line 4487
    iget-object v2, p0, Lcom/htc/calendar/CalendarView$ContinueScroll;->this$0:Lcom/htc/calendar/CalendarView;

    #calls: Lcom/htc/calendar/CalendarView;->resetSelectedHour()V
    invoke-static {v2}, Lcom/htc/calendar/CalendarView;->access$2000(Lcom/htc/calendar/CalendarView;)V

    .line 4488
    iget-object v2, p0, Lcom/htc/calendar/CalendarView$ContinueScroll;->this$0:Lcom/htc/calendar/CalendarView;

    #setter for: Lcom/htc/calendar/CalendarView;->mRedrawScreen:Z
    invoke-static {v2, v5}, Lcom/htc/calendar/CalendarView;->access$802(Lcom/htc/calendar/CalendarView;Z)Z

    goto :goto_3
.end method
