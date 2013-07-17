.class public Lcom/htc/calendar/MonthActivity;
.super Landroid/app/Activity;
.source "MonthActivity.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;
.implements Lcom/htc/calendar/Navigator;
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/calendar/MonthActivity$UIHandler;
    }
.end annotation


# static fields
.field private static final DAY_OF_WEEK_KINDS:[I = null

.field private static final DAY_OF_WEEK_LABEL_IDS:[I = null

.field private static final ENABLE_TRACE:Z = false

.field private static final INITIAL_HEAP_SIZE:I = 0x400000

.field public static final MAX_ANIMATION_DURATION:J = 0x7fffffffffffffffL

.field private static final MSG_LOAD_ANIMATION:I = 0x1

.field public static final NORMAL_ANIMATION_DURATION:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "MonthActivity"

.field private static final TRACE_FILE_NAME:Ljava/lang/String; = "calendar_trace"


# instance fields
.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mContext:Landroid/content/Context;

.field mEventLoader:Lcom/htc/calendar/EventLoader;

.field private mInAnimationFuture:Landroid/view/animation/Animation;

.field private mInAnimationPast:Landroid/view/animation/Animation;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIntentReceiverCloseOnPause:Landroid/content/BroadcastReceiver;

.field public mInterpolator:Lcom/htc/calendar/ManipulateInterpolator;

.field private mMsg:Landroid/os/Message;

.field private mOutAnimationFuture:Landroid/view/animation/Animation;

.field private mOutAnimationPast:Landroid/view/animation/Animation;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mStartDay:I

.field private mSwitcher:Landroid/widget/ViewSwitcher;

.field private mTime:Landroid/text/format/Time;

.field private mUIHandler:Landroid/os/Handler;

.field private mUpdateTZ:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 96
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/calendar/MonthActivity;->DAY_OF_WEEK_LABEL_IDS:[I

    .line 99
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/calendar/MonthActivity;->DAY_OF_WEEK_KINDS:[I

    return-void

    .line 96
    :array_0
    .array-data 0x4
        0xd8t 0x0t 0xdt 0x7ft
        0xd9t 0x0t 0xdt 0x7ft
        0xdat 0x0t 0xdt 0x7ft
        0xdbt 0x0t 0xdt 0x7ft
        0xdct 0x0t 0xdt 0x7ft
        0xddt 0x0t 0xdt 0x7ft
        0xdet 0x0t 0xdt 0x7ft
    .end array-data

    .line 99
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 78
    iput-object v2, p0, Lcom/htc/calendar/MonthActivity;->mContext:Landroid/content/Context;

    .line 85
    new-instance v0, Lcom/htc/calendar/MonthActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/calendar/MonthActivity$1;-><init>(Lcom/htc/calendar/MonthActivity;)V

    iput-object v0, p0, Lcom/htc/calendar/MonthActivity;->mUpdateTZ:Ljava/lang/Runnable;

    .line 201
    new-instance v0, Lcom/htc/calendar/MonthActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/calendar/MonthActivity$2;-><init>(Lcom/htc/calendar/MonthActivity;)V

    iput-object v0, p0, Lcom/htc/calendar/MonthActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 477
    new-instance v0, Lcom/htc/calendar/ManipulateInterpolator;

    const/high16 v1, 0x4396

    invoke-direct {v0, v1}, Lcom/htc/calendar/ManipulateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/htc/calendar/MonthActivity;->mInterpolator:Lcom/htc/calendar/ManipulateInterpolator;

    .line 482
    iput-object v2, p0, Lcom/htc/calendar/MonthActivity;->mMsg:Landroid/os/Message;

    .line 483
    iput-object v2, p0, Lcom/htc/calendar/MonthActivity;->mUIHandler:Landroid/os/Handler;

    .line 548
    new-instance v0, Lcom/htc/calendar/MonthActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/calendar/MonthActivity$4;-><init>(Lcom/htc/calendar/MonthActivity;)V

    iput-object v0, p0, Lcom/htc/calendar/MonthActivity;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 614
    new-instance v0, Lcom/htc/calendar/MonthActivity$5;

    invoke-direct {v0, p0}, Lcom/htc/calendar/MonthActivity$5;-><init>(Lcom/htc/calendar/MonthActivity;)V

    iput-object v0, p0, Lcom/htc/calendar/MonthActivity;->mIntentReceiverCloseOnPause:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/calendar/MonthActivity;)Landroid/text/format/Time;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/calendar/MonthActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/calendar/MonthActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/calendar/MonthActivity;Landroid/text/format/Time;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/htc/calendar/MonthActivity;->setHtcTitle(Landroid/text/format/Time;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/calendar/MonthActivity;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/calendar/MonthActivity;->mUpdateTZ:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/calendar/MonthActivity;)Landroid/widget/ViewSwitcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/calendar/MonthActivity;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/calendar/MonthActivity;->mInAnimationPast:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/calendar/MonthActivity;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/htc/calendar/MonthActivity;->mInAnimationPast:Landroid/view/animation/Animation;

    return-object p1
.end method

.method static synthetic access$600(Lcom/htc/calendar/MonthActivity;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/calendar/MonthActivity;->mOutAnimationPast:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/calendar/MonthActivity;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/htc/calendar/MonthActivity;->mOutAnimationPast:Landroid/view/animation/Animation;

    return-object p1
.end method

.method static synthetic access$700(Lcom/htc/calendar/MonthActivity;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/calendar/MonthActivity;->mInAnimationFuture:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/calendar/MonthActivity;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/htc/calendar/MonthActivity;->mInAnimationFuture:Landroid/view/animation/Animation;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/calendar/MonthActivity;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/calendar/MonthActivity;->mOutAnimationFuture:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/calendar/MonthActivity;Landroid/view/animation/Animation;)Landroid/view/animation/Animation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/htc/calendar/MonthActivity;->mOutAnimationFuture:Landroid/view/animation/Animation;

    return-object p1
.end method

.method static synthetic access$900(Lcom/htc/calendar/MonthActivity;)Landroid/view/animation/Animation$AnimationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/htc/calendar/MonthActivity;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 635
    const v0, 0x7f030032

    invoke-virtual {p0, v0}, Lcom/htc/calendar/MonthActivity;->setContentView(I)V

    .line 636
    const v0, 0x7f0d0045

    invoke-virtual {p0, v0}, Lcom/htc/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/htc/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    .line 637
    iget-object v0, p0, Lcom/htc/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, p0}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 638
    iget-object v0, p0, Lcom/htc/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 639
    iget-object v0, p0, Lcom/htc/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-direct {p0, v0}, Lcom/htc/calendar/MonthActivity;->setHtcTitle(Landroid/text/format/Time;)V

    .line 640
    invoke-direct {p0}, Lcom/htc/calendar/MonthActivity;->writeDayNames()V

    .line 642
    return-void
.end method

.method private setHtcTitle(Landroid/text/format/Time;)V
    .locals 3
    .parameter "t"

    .prologue
    .line 512
    move-object v0, p1

    .line 514
    .local v0, time:Landroid/text/format/Time;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/calendar/MonthActivity$3;

    invoke-direct {v2, p0, v0}, Lcom/htc/calendar/MonthActivity$3;-><init>(Lcom/htc/calendar/MonthActivity;Landroid/text/format/Time;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 546
    return-void
.end method

.method private writeDayNames()V
    .locals 8

    .prologue
    .line 645
    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/calendar/CalendarContext;->getWeekStartDay()I

    move-result v6

    iput v6, p0, Lcom/htc/calendar/MonthActivity;->mStartDay:I

    .line 646
    iget-object v6, p0, Lcom/htc/calendar/MonthActivity;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/htc/calendar/HtcUtils;->getDateLength(Landroid/content/Context;)I

    move-result v0

    .line 649
    .local v0, SIZE_OF_DATE_UTILS:I
    iget v6, p0, Lcom/htc/calendar/MonthActivity;->mStartDay:I

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v4, v6, -0x1

    .line 650
    .local v4, diff:I
    const/4 v2, 0x0

    .local v2, day:I
    :goto_0
    const/4 v6, 0x7

    if-ge v2, v6, :cond_2

    .line 651
    iget-object v6, p0, Lcom/htc/calendar/MonthActivity;->mContext:Landroid/content/Context;

    invoke-static {v2, v6}, Lcom/htc/calendar/HtcUtils;->getCorrectPosition(ILandroid/content/Context;)I

    move-result v1

    .line 653
    .local v1, correctDay:I
    sget-object v6, Lcom/htc/calendar/MonthActivity;->DAY_OF_WEEK_KINDS:[I

    aget v6, v6, v1

    add-int/2addr v6, v4

    rem-int/lit8 v6, v6, 0x7

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6, v0}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v3

    .line 655
    .local v3, dayString:Ljava/lang/String;
    sget-object v6, Lcom/htc/calendar/MonthActivity;->DAY_OF_WEEK_LABEL_IDS:[I

    aget v6, v6, v2

    invoke-virtual {p0, v6}, Lcom/htc/calendar/MonthActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 657
    .local v5, label:Landroid/widget/TextView;
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 658
    sget-object v6, Lcom/htc/calendar/MonthActivity;->DAY_OF_WEEK_KINDS:[I

    aget v6, v6, v1

    add-int/2addr v6, v4

    rem-int/lit8 v6, v6, 0x7

    if-eqz v6, :cond_0

    sget-object v6, Lcom/htc/calendar/MonthActivity;->DAY_OF_WEEK_KINDS:[I

    aget v6, v6, v1

    add-int/2addr v6, v4

    rem-int/lit8 v6, v6, 0x7

    const/4 v7, 0x6

    if-ne v6, v7, :cond_1

    .line 660
    :cond_0
    const v6, -0xb3b3b4

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 650
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 663
    :cond_1
    const/high16 v6, -0x100

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 667
    .end local v1           #correctDay:I
    .end local v3           #dayString:Ljava/lang/String;
    .end local v5           #label:Landroid/widget/TextView;
    :cond_2
    return-void
.end method


# virtual methods
.method eventsChanged()V
    .locals 2

    .prologue
    .line 191
    iget-object v1, p0, Lcom/htc/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    if-nez v1, :cond_0

    .line 196
    :goto_0
    return-void

    .line 194
    :cond_0
    iget-object v1, p0, Lcom/htc/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/MonthView;

    .line 195
    .local v0, view:Lcom/htc/calendar/MonthView;
    invoke-virtual {v0}, Lcom/htc/calendar/MonthView;->reloadEvents()V

    goto :goto_0
.end method

.method public getAllDay()Z
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public getSelectedTime()J
    .locals 3

    .prologue
    .line 178
    iget-object v1, p0, Lcom/htc/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/MonthView;

    .line 179
    .local v0, mv:Lcom/htc/calendar/MonthView;
    invoke-virtual {v0}, Lcom/htc/calendar/MonthView;->getSelectedTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method getStartDay()I
    .locals 1

    .prologue
    .line 187
    iget v0, p0, Lcom/htc/calendar/MonthActivity;->mStartDay:I

    return v0
.end method

.method public goTo(Landroid/text/format/Time;Z)V
    .locals 9
    .parameter "time"
    .parameter "animate"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/htc/calendar/MonthActivity;->setHtcTitle(Landroid/text/format/Time;)V

    .line 115
    iget-object v7, p0, Lcom/htc/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v7}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/MonthView;

    .line 116
    .local v0, current:Lcom/htc/calendar/MonthView;
    invoke-virtual {v0}, Lcom/htc/calendar/MonthView;->dismissPopup()V

    .line 118
    invoke-virtual {v0}, Lcom/htc/calendar/MonthView;->getTime()Landroid/text/format/Time;

    move-result-object v2

    .line 120
    .local v2, currentTime:Landroid/text/format/Time;
    invoke-virtual {v0}, Lcom/htc/calendar/MonthView;->getSelectionMode()I

    move-result v6

    .line 125
    .local v6, selectionMode:I
    if-eqz p2, :cond_1

    .line 126
    iget v7, v2, Landroid/text/format/Time;->month:I

    iget v8, v2, Landroid/text/format/Time;->year:I

    mul-int/lit8 v8, v8, 0xc

    add-int v1, v7, v8

    .line 127
    .local v1, currentMonth:I
    iget v7, p1, Landroid/text/format/Time;->month:I

    iget v8, p1, Landroid/text/format/Time;->year:I

    mul-int/lit8 v8, v8, 0xc

    add-int v5, v7, v8

    .line 128
    .local v5, nextMonth:I
    if-ge v5, v1, :cond_0

    .line 129
    iget-object v7, p0, Lcom/htc/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v8, p0, Lcom/htc/calendar/MonthActivity;->mInAnimationPast:Landroid/view/animation/Animation;

    invoke-virtual {v7, v8}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 130
    iget-object v7, p0, Lcom/htc/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v8, p0, Lcom/htc/calendar/MonthActivity;->mOutAnimationPast:Landroid/view/animation/Animation;

    invoke-virtual {v7, v8}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 136
    :goto_0
    iget-object v7, p0, Lcom/htc/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v7}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/calendar/MonthView;

    .line 137
    .local v4, next:Lcom/htc/calendar/MonthView;
    invoke-virtual {v4, v6}, Lcom/htc/calendar/MonthView;->setSelectionMode(I)V

    .line 138
    invoke-virtual {v4, p1}, Lcom/htc/calendar/MonthView;->setSelectedTime(Landroid/text/format/Time;)V

    .line 139
    invoke-virtual {v4}, Lcom/htc/calendar/MonthView;->reloadEvents()V

    .line 140
    invoke-virtual {v4}, Lcom/htc/calendar/MonthView;->animationStarted()V

    .line 141
    iget-object v7, p0, Lcom/htc/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v7}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 142
    iget-object v7, p0, Lcom/htc/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v7}, Landroid/widget/ViewSwitcher;->requestFocus()Z

    .line 143
    invoke-virtual {v4}, Lcom/htc/calendar/MonthView;->requestFocus()Z

    .line 155
    .end local v1           #currentMonth:I
    .end local v4           #next:Lcom/htc/calendar/MonthView;
    .end local v5           #nextMonth:I
    :goto_1
    iput-object p1, p0, Lcom/htc/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    .line 156
    return-void

    .line 132
    .restart local v1       #currentMonth:I
    .restart local v5       #nextMonth:I
    :cond_0
    iget-object v7, p0, Lcom/htc/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v8, p0, Lcom/htc/calendar/MonthActivity;->mInAnimationFuture:Landroid/view/animation/Animation;

    invoke-virtual {v7, v8}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 133
    iget-object v7, p0, Lcom/htc/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v8, p0, Lcom/htc/calendar/MonthActivity;->mOutAnimationFuture:Landroid/view/animation/Animation;

    invoke-virtual {v7, v8}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 146
    .end local v1           #currentMonth:I
    .end local v5           #nextMonth:I
    :cond_1
    iget-object v7, p0, Lcom/htc/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v7}, Landroid/widget/ViewSwitcher;->removeAllViews()V

    .line 147
    iget-object v7, p0, Lcom/htc/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v7, p0}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 148
    iget-object v7, p0, Lcom/htc/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v7}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/calendar/MonthView;

    .line 149
    .local v3, newCurrent:Lcom/htc/calendar/MonthView;
    invoke-virtual {v3, v6}, Lcom/htc/calendar/MonthView;->setSelectionMode(I)V

    .line 150
    invoke-virtual {v3, p1}, Lcom/htc/calendar/MonthView;->setSelectedTime(Landroid/text/format/Time;)V

    .line 151
    invoke-virtual {v3}, Lcom/htc/calendar/MonthView;->reloadEvents()V

    .line 152
    invoke-virtual {v3}, Lcom/htc/calendar/MonthView;->requestFocus()Z

    goto :goto_1
.end method

.method public goTo(Landroid/text/format/Time;ZLandroid/text/format/Time;)V
    .locals 0
    .parameter "time"
    .parameter "animate"
    .parameter "focusOn"

    .prologue
    .line 607
    return-void
.end method

.method public goToToday()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 159
    new-instance v0, Landroid/text/format/Time;

    iget-object v2, p0, Lcom/htc/calendar/MonthActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/calendar/MonthActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v2, v3}, Lcom/htc/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, now:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 161
    iput v4, v0, Landroid/text/format/Time;->minute:I

    .line 162
    iput v4, v0, Landroid/text/format/Time;->second:I

    .line 163
    invoke-virtual {v0, v4}, Landroid/text/format/Time;->normalize(Z)J

    .line 165
    invoke-direct {p0, v0}, Lcom/htc/calendar/MonthActivity;->setHtcTitle(Landroid/text/format/Time;)V

    .line 167
    iput-object v0, p0, Lcom/htc/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    .line 168
    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Lcom/htc/calendar/CalendarContext;->setCurrentSelectedTime(Landroid/text/format/Time;)V

    .line 169
    iget-object v2, p0, Lcom/htc/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/htc/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/calendar/MonthView;

    .line 172
    .local v1, view:Lcom/htc/calendar/MonthView;
    invoke-virtual {v1, v0}, Lcom/htc/calendar/MonthView;->setSelectedTime(Landroid/text/format/Time;)V

    .line 173
    invoke-virtual {v1}, Lcom/htc/calendar/MonthView;->reloadEvents()V

    .line 175
    .end local v1           #view:Lcom/htc/calendar/MonthView;
    :cond_0
    return-void
.end method

.method public gotoAnimationFuture(J)V
    .locals 2
    .parameter "duration"

    .prologue
    .line 494
    :try_start_0
    iget-object v1, p0, Lcom/htc/calendar/MonthActivity;->mInAnimationFuture:Landroid/view/animation/Animation;

    invoke-virtual {v1, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 495
    iget-object v1, p0, Lcom/htc/calendar/MonthActivity;->mOutAnimationFuture:Landroid/view/animation/Animation;

    invoke-virtual {v1, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    :goto_0
    return-void

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public gotoAnimationPass(J)V
    .locals 2
    .parameter "duration"

    .prologue
    .line 503
    :try_start_0
    iget-object v1, p0, Lcom/htc/calendar/MonthActivity;->mInAnimationPast:Landroid/view/animation/Animation;

    invoke-virtual {v1, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 504
    iget-object v1, p0, Lcom/htc/calendar/MonthActivity;->mOutAnimationPast:Landroid/view/animation/Animation;

    invoke-virtual {v1, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    :goto_0
    return-void

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public makeView()Landroid/view/View;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Lcom/htc/calendar/MonthView;

    invoke-direct {v0, p0, p0}, Lcom/htc/calendar/MonthView;-><init>(Lcom/htc/calendar/MonthActivity;Lcom/htc/calendar/Navigator;)V

    .line 107
    .local v0, mv:Lcom/htc/calendar/MonthView;
    iget-object v1, p0, Lcom/htc/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Lcom/htc/calendar/MonthView;->setSelectedTime(Landroid/text/format/Time;)V

    .line 108
    return-object v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 245
    iget-object v1, p0, Lcom/htc/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/MonthView;

    .line 246
    .local v0, monthView:Lcom/htc/calendar/MonthView;
    invoke-virtual {v0}, Lcom/htc/calendar/MonthView;->animationFinished()V

    .line 247
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 250
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 241
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 628
    invoke-direct {p0}, Lcom/htc/calendar/MonthActivity;->initView()V

    .line 629
    iget-object v0, p0, Lcom/htc/calendar/MonthActivity;->mEventLoader:Lcom/htc/calendar/EventLoader;

    invoke-virtual {v0}, Lcom/htc/calendar/EventLoader;->startBackgroundThread()V

    .line 630
    invoke-virtual {p0}, Lcom/htc/calendar/MonthActivity;->eventsChanged()V

    .line 631
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 632
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x1

    .line 254
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 255
    invoke-virtual {p0, v3}, Lcom/htc/calendar/MonthActivity;->requestWindowFeature(I)Z

    .line 256
    invoke-virtual {p0}, Lcom/htc/calendar/MonthActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 262
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const-wide/32 v1, 0x400000

    invoke-virtual {v0, v1, v2}, Ldalvik/system/VMRuntime;->setMinimumHeapSize(J)J

    .line 263
    invoke-virtual {p0}, Lcom/htc/calendar/MonthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/MonthActivity;->mContext:Landroid/content/Context;

    .line 265
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/MonthActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 267
    new-instance v0, Lcom/htc/calendar/MonthActivity$UIHandler;

    invoke-direct {v0, p0, p0}, Lcom/htc/calendar/MonthActivity$UIHandler;-><init>(Lcom/htc/calendar/MonthActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/calendar/MonthActivity;->mUIHandler:Landroid/os/Handler;

    .line 269
    iget-object v0, p0, Lcom/htc/calendar/MonthActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0, v0}, Lcom/htc/calendar/CalendarPreferenceActivity;->didHtcCustomizationDone(Landroid/content/Context;Landroid/content/SharedPreferences;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    invoke-static {p0}, Lcom/htc/calendar/CalendarPreferenceActivity;->checkHtcCustomization(Landroid/content/Context;)V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/MonthActivity;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/MonthActivity;->mMsg:Landroid/os/Message;

    .line 274
    iget-object v0, p0, Lcom/htc/calendar/MonthActivity;->mUIHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/htc/calendar/MonthActivity;->mMsg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 285
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/htc/calendar/MonthActivity;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/htc/calendar/MonthActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Lcom/htc/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/htc/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    .line 287
    iget-object v0, p0, Lcom/htc/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/calendar/CalendarContext;->getCurrentSelectedTime()Landroid/text/format/Time;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 288
    iget-object v0, p0, Lcom/htc/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 294
    new-instance v0, Lcom/htc/calendar/EventLoader;

    iget-object v1, p0, Lcom/htc/calendar/MonthActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/htc/calendar/MonthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/htc/calendar/MonthActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/calendar/EventLoader;-><init>(Landroid/content/SharedPreferences;Landroid/content/res/Resources;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/htc/calendar/MonthActivity;->mEventLoader:Lcom/htc/calendar/EventLoader;

    .line 296
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 349
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 353
    iget-object v1, p0, Lcom/htc/calendar/MonthActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 355
    :try_start_0
    iget-object v1, p0, Lcom/htc/calendar/MonthActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/calendar/MonthActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/htc/calendar/MonthActivity;->mEventLoader:Lcom/htc/calendar/EventLoader;

    if-eqz v1, :cond_1

    .line 362
    iget-object v1, p0, Lcom/htc/calendar/MonthActivity;->mEventLoader:Lcom/htc/calendar/EventLoader;

    const-string v2, "month"

    invoke-virtual {v1, v2}, Lcom/htc/calendar/EventLoader;->clear(Ljava/lang/String;)V

    .line 363
    iget-object v1, p0, Lcom/htc/calendar/MonthActivity;->mEventLoader:Lcom/htc/calendar/EventLoader;

    invoke-virtual {v1}, Lcom/htc/calendar/EventLoader;->release()V

    .line 367
    :cond_1
    iget-object v1, p0, Lcom/htc/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    if-eqz v1, :cond_2

    .line 368
    iget-object v1, p0, Lcom/htc/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->removeAllViews()V

    .line 370
    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    .line 372
    return-void

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MonthActivity"

    const-string v2, "mIntentReceiver not registered"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 300
    invoke-static {p1}, Lcom/htc/calendar/Utils;->timeFromIntentInMillis(Landroid/content/Intent;)J

    move-result-wide v1

    .line 301
    .local v1, timeMillis:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 302
    new-instance v0, Landroid/text/format/Time;

    iget-object v3, p0, Lcom/htc/calendar/MonthActivity;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/calendar/MonthActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v3, v4}, Lcom/htc/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 303
    .local v0, time:Landroid/text/format/Time;
    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 306
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/htc/calendar/MonthActivity;->goTo(Landroid/text/format/Time;Z)V

    .line 308
    .end local v0           #time:Landroid/text/format/Time;
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 312
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 313
    invoke-virtual {p0}, Lcom/htc/calendar/MonthActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    iget-object v2, p0, Lcom/htc/calendar/MonthActivity;->mEventLoader:Lcom/htc/calendar/EventLoader;

    if-eqz v2, :cond_0

    .line 315
    iget-object v2, p0, Lcom/htc/calendar/MonthActivity;->mEventLoader:Lcom/htc/calendar/EventLoader;

    invoke-virtual {v2}, Lcom/htc/calendar/EventLoader;->stopBackgroundThread()V

    .line 323
    :cond_0
    iget-object v2, p0, Lcom/htc/calendar/MonthActivity;->mIntentReceiverCloseOnPause:Landroid/content/BroadcastReceiver;

    if-eqz v2, :cond_1

    .line 325
    :try_start_0
    iget-object v2, p0, Lcom/htc/calendar/MonthActivity;->mIntentReceiverCloseOnPause:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/htc/calendar/MonthActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/htc/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    if-eqz v2, :cond_2

    .line 332
    iget-object v2, p0, Lcom/htc/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/calendar/MonthView;

    .line 333
    .local v1, view:Lcom/htc/calendar/MonthView;
    if-eqz v1, :cond_2

    .line 334
    invoke-virtual {v1}, Lcom/htc/calendar/MonthView;->dismissPopup()V

    .line 335
    iget-object v2, p0, Lcom/htc/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v1

    .end local v1           #view:Lcom/htc/calendar/MonthView;
    check-cast v1, Lcom/htc/calendar/MonthView;

    .line 336
    .restart local v1       #view:Lcom/htc/calendar/MonthView;
    invoke-virtual {v1}, Lcom/htc/calendar/MonthView;->dismissPopup()V

    .line 339
    .end local v1           #view:Lcom/htc/calendar/MonthView;
    :cond_2
    iget-object v2, p0, Lcom/htc/calendar/MonthActivity;->mEventLoader:Lcom/htc/calendar/EventLoader;

    if-eqz v2, :cond_3

    .line 340
    iget-object v2, p0, Lcom/htc/calendar/MonthActivity;->mEventLoader:Lcom/htc/calendar/EventLoader;

    invoke-virtual {v2}, Lcom/htc/calendar/EventLoader;->stopBackgroundThread()V

    .line 345
    :cond_3
    return-void

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "MonthActivity"

    const-string v3, "mIntentReceiverCloseOnPause not registered"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 462
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 463
    iget-object v0, p0, Lcom/htc/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    const-string v1, "beginTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 464
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    .line 376
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 377
    invoke-static {}, Lcom/htc/calendar/CalendarULog;->printSwitchToMonth()V

    .line 378
    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/calendar/CalendarContext;->getCurrentSelectedTime()Landroid/text/format/Time;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    .line 379
    iget-object v5, p0, Lcom/htc/calendar/MonthActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 403
    invoke-direct {p0}, Lcom/htc/calendar/MonthActivity;->initView()V

    .line 405
    iget-object v5, p0, Lcom/htc/calendar/MonthActivity;->mEventLoader:Lcom/htc/calendar/EventLoader;

    invoke-virtual {v5}, Lcom/htc/calendar/EventLoader;->startBackgroundThread()V

    .line 406
    invoke-virtual {p0}, Lcom/htc/calendar/MonthActivity;->eventsChanged()V

    .line 408
    iget-object v5, p0, Lcom/htc/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v5}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/MonthView;

    .line 409
    .local v0, current:Lcom/htc/calendar/MonthView;
    iget-object v5, p0, Lcom/htc/calendar/MonthActivity;->mSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v5}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/calendar/MonthView;

    .line 411
    .local v3, next:Lcom/htc/calendar/MonthView;
    iget-object v5, p0, Lcom/htc/calendar/MonthActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "preferredDetailedView"

    sget-object v7, Lcom/htc/calendar/CalendarPreferenceActivity;->DEFAULT_DETAILED_VIEW:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 413
    .local v4, str:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/htc/calendar/MonthView;->updateView()V

    .line 414
    invoke-virtual {v3}, Lcom/htc/calendar/MonthView;->updateView()V

    .line 415
    invoke-virtual {v0, v4}, Lcom/htc/calendar/MonthView;->setDetailedView(Ljava/lang/String;)V

    .line 416
    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/calendar/CalendarContext;->getToday()Landroid/text/format/Time;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/htc/calendar/MonthView;->updateToday(Landroid/text/format/Time;)V

    .line 417
    iget-object v5, p0, Lcom/htc/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, v5}, Lcom/htc/calendar/MonthView;->setSelectedTime(Landroid/text/format/Time;)V

    .line 418
    invoke-virtual {v3, v4}, Lcom/htc/calendar/MonthView;->setDetailedView(Ljava/lang/String;)V

    .line 419
    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/calendar/CalendarContext;->getToday()Landroid/text/format/Time;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/htc/calendar/MonthView;->updateToday(Landroid/text/format/Time;)V

    .line 420
    iget-object v5, p0, Lcom/htc/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    invoke-virtual {v3, v5}, Lcom/htc/calendar/MonthView;->setSelectedTime(Landroid/text/format/Time;)V

    .line 422
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 424
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 425
    const-string v5, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 426
    const-string v5, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 428
    const-string v5, "action.calendars.picker.changed"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 430
    iget-object v5, p0, Lcom/htc/calendar/MonthActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v1}, Lcom/htc/calendar/MonthActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 432
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 433
    .local v2, filterCloseOnPause:Landroid/content/IntentFilter;
    const-string v5, "com.htc.calendar.event_changed"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 434
    iget-object v5, p0, Lcom/htc/calendar/MonthActivity;->mIntentReceiverCloseOnPause:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v2}, Lcom/htc/calendar/MonthActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 449
    const/4 v5, 0x0

    invoke-static {p0, v5}, Lcom/htc/calendar/Utils;->setDefaultView(Landroid/content/Context;I)V

    .line 451
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 455
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 456
    const-string v0, "beginTime"

    iget-object v1, p0, Lcom/htc/calendar/MonthActivity;->mTime:Landroid/text/format/Time;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 457
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 611
    invoke-static {p0}, Lcom/htc/calendar/Utils;->onSearchRequestedLocked(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
