.class public Lcom/htc/calendar/AgendaListView;
.super Lcom/htc/calendar/widget/HtcListViewEx;
.source "AgendaListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/calendar/AgendaListView$ContextMenuHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "AgendaListView"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContextMenuHandler:Lcom/htc/calendar/AgendaListView$ContextMenuHandler;

.field private mDeleteEventHelper:Lcom/htc/calendar/DeleteEventHelper;

.field private mLazyTempView:Landroid/view/View;

.field private mMode:I

.field private mOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

.field private mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

.field private mSelectedEvent:Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;

.field private mSelectedEventBegin:J

.field private mSelectedEventEnd:J

.field private mSelectedEventId:J

.field private mSelectedEventTitle:Ljava/lang/String;

.field private mSelectedPosition:I

.field private mUpdateTZ:Ljava/lang/Runnable;

.field private mWindowAdapter:Lcom/htc/calendar/AgendaWindowAdapter;

.field private onCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1, v1}, Lcom/htc/calendar/widget/HtcListViewEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    iput-object v1, p0, Lcom/htc/calendar/AgendaListView;->mUpdateTZ:Ljava/lang/Runnable;

    .line 135
    new-instance v0, Lcom/htc/calendar/AgendaListView$1;

    invoke-direct {v0, p0}, Lcom/htc/calendar/AgendaListView$1;-><init>(Lcom/htc/calendar/AgendaListView;)V

    iput-object v0, p0, Lcom/htc/calendar/AgendaListView;->mOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 391
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/calendar/AgendaListView;->mMode:I

    .line 393
    iput-wide v2, p0, Lcom/htc/calendar/AgendaListView;->mSelectedEventId:J

    .line 394
    iput-wide v2, p0, Lcom/htc/calendar/AgendaListView;->mSelectedEventBegin:J

    .line 395
    iput-wide v2, p0, Lcom/htc/calendar/AgendaListView;->mSelectedEventEnd:J

    .line 396
    iput-object v1, p0, Lcom/htc/calendar/AgendaListView;->mSelectedEventTitle:Ljava/lang/String;

    .line 398
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/calendar/AgendaListView;->mSelectedPosition:I

    .line 416
    new-instance v0, Lcom/htc/calendar/AgendaListView$ContextMenuHandler;

    invoke-direct {v0, p0, v1}, Lcom/htc/calendar/AgendaListView$ContextMenuHandler;-><init>(Lcom/htc/calendar/AgendaListView;Lcom/htc/calendar/AgendaListView$1;)V

    iput-object v0, p0, Lcom/htc/calendar/AgendaListView;->mContextMenuHandler:Lcom/htc/calendar/AgendaListView$ContextMenuHandler;

    .line 473
    new-instance v0, Lcom/htc/calendar/AgendaListView$2;

    invoke-direct {v0, p0}, Lcom/htc/calendar/AgendaListView$2;-><init>(Lcom/htc/calendar/AgendaListView;)V

    iput-object v0, p0, Lcom/htc/calendar/AgendaListView;->onCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 554
    new-instance v0, Lcom/htc/calendar/AgendaListView$3;

    invoke-direct {v0, p0}, Lcom/htc/calendar/AgendaListView$3;-><init>(Lcom/htc/calendar/AgendaListView;)V

    iput-object v0, p0, Lcom/htc/calendar/AgendaListView;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    .line 74
    iput-object p1, p0, Lcom/htc/calendar/widget/HtcListViewEx;->mContext:Landroid/content/Context;

    .line 75
    invoke-direct {p0}, Lcom/htc/calendar/AgendaListView;->initUI()V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attri"

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/htc/calendar/widget/HtcListViewEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    iput-object v1, p0, Lcom/htc/calendar/AgendaListView;->mUpdateTZ:Ljava/lang/Runnable;

    .line 135
    new-instance v0, Lcom/htc/calendar/AgendaListView$1;

    invoke-direct {v0, p0}, Lcom/htc/calendar/AgendaListView$1;-><init>(Lcom/htc/calendar/AgendaListView;)V

    iput-object v0, p0, Lcom/htc/calendar/AgendaListView;->mOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    .line 391
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/calendar/AgendaListView;->mMode:I

    .line 393
    iput-wide v2, p0, Lcom/htc/calendar/AgendaListView;->mSelectedEventId:J

    .line 394
    iput-wide v2, p0, Lcom/htc/calendar/AgendaListView;->mSelectedEventBegin:J

    .line 395
    iput-wide v2, p0, Lcom/htc/calendar/AgendaListView;->mSelectedEventEnd:J

    .line 396
    iput-object v1, p0, Lcom/htc/calendar/AgendaListView;->mSelectedEventTitle:Ljava/lang/String;

    .line 398
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/calendar/AgendaListView;->mSelectedPosition:I

    .line 416
    new-instance v0, Lcom/htc/calendar/AgendaListView$ContextMenuHandler;

    invoke-direct {v0, p0, v1}, Lcom/htc/calendar/AgendaListView$ContextMenuHandler;-><init>(Lcom/htc/calendar/AgendaListView;Lcom/htc/calendar/AgendaListView$1;)V

    iput-object v0, p0, Lcom/htc/calendar/AgendaListView;->mContextMenuHandler:Lcom/htc/calendar/AgendaListView$ContextMenuHandler;

    .line 473
    new-instance v0, Lcom/htc/calendar/AgendaListView$2;

    invoke-direct {v0, p0}, Lcom/htc/calendar/AgendaListView$2;-><init>(Lcom/htc/calendar/AgendaListView;)V

    iput-object v0, p0, Lcom/htc/calendar/AgendaListView;->onCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 554
    new-instance v0, Lcom/htc/calendar/AgendaListView$3;

    invoke-direct {v0, p0}, Lcom/htc/calendar/AgendaListView$3;-><init>(Lcom/htc/calendar/AgendaListView;)V

    iput-object v0, p0, Lcom/htc/calendar/AgendaListView;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    .line 80
    iput-object p1, p0, Lcom/htc/calendar/widget/HtcListViewEx;->mContext:Landroid/content/Context;

    .line 81
    invoke-direct {p0}, Lcom/htc/calendar/AgendaListView;->initUI()V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/htc/calendar/AgendaListView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/calendar/widget/HtcListViewEx;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/calendar/AgendaListView;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/calendar/AgendaListView;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/calendar/AgendaListView;)Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/calendar/AgendaListView;->mSelectedEvent:Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/htc/calendar/AgendaListView;Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;)Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/calendar/AgendaListView;->mSelectedEvent:Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/calendar/AgendaListView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/calendar/widget/HtcListViewEx;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/htc/calendar/AgendaListView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/htc/calendar/AgendaListView;->mSelectedEventId:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/htc/calendar/AgendaListView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/htc/calendar/AgendaListView;->mSelectedEventId:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/htc/calendar/AgendaListView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/htc/calendar/AgendaListView;->mSelectedEventBegin:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/htc/calendar/AgendaListView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/htc/calendar/AgendaListView;->mSelectedEventBegin:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/htc/calendar/AgendaListView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/htc/calendar/AgendaListView;->mSelectedEventEnd:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/htc/calendar/AgendaListView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/htc/calendar/AgendaListView;->mSelectedEventEnd:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/htc/calendar/AgendaListView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/calendar/widget/HtcListViewEx;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/calendar/AgendaListView;)Lcom/htc/calendar/DeleteEventHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/calendar/AgendaListView;->mDeleteEventHelper:Lcom/htc/calendar/DeleteEventHelper;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/calendar/AgendaListView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/calendar/AgendaListView;->mSelectedEventTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/htc/calendar/AgendaListView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/htc/calendar/AgendaListView;->mSelectedEventTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/htc/calendar/AgendaListView;)Lcom/htc/calendar/AgendaListView$ContextMenuHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/calendar/AgendaListView;->mContextMenuHandler:Lcom/htc/calendar/AgendaListView$ContextMenuHandler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/calendar/AgendaListView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/calendar/widget/HtcListViewEx;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/calendar/AgendaListView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/calendar/widget/HtcListViewEx;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/calendar/AgendaListView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/htc/calendar/AgendaListView;->debug(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$402(Lcom/htc/calendar/AgendaListView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput p1, p0, Lcom/htc/calendar/AgendaListView;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$500(Lcom/htc/calendar/AgendaListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget v0, p0, Lcom/htc/calendar/AgendaListView;->mMode:I

    return v0
.end method

.method static synthetic access$600(Lcom/htc/calendar/AgendaListView;)Lcom/htc/calendar/AgendaWindowAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/calendar/AgendaListView;->mWindowAdapter:Lcom/htc/calendar/AgendaWindowAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/calendar/AgendaListView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/htc/calendar/widget/HtcListViewEx;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/calendar/AgendaListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/htc/calendar/AgendaListView;->isPickMode()Z

    move-result v0

    return v0
.end method

.method private debug(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 627
    return-void
.end method

.method private initUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 85
    iget-object v0, p0, Lcom/htc/calendar/AgendaListView;->mOnItemClickListener:Lcom/htc/widget/HtcAdapterView$OnItemClickListener;

    invoke-virtual {p0, v0}, Lcom/htc/calendar/AgendaListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/htc/calendar/AgendaListView;->mOnItemLongClickListener:Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;

    invoke-virtual {p0, v0}, Lcom/htc/calendar/AgendaListView;->setOnItemLongClickListener(Lcom/htc/widget/HtcAdapterView$OnItemLongClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/htc/calendar/AgendaListView;->onCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {p0, v0}, Lcom/htc/calendar/AgendaListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 88
    invoke-virtual {p0}, Lcom/htc/calendar/AgendaListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2080700

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/calendar/AgendaListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 92
    invoke-virtual {p0, v2}, Lcom/htc/calendar/AgendaListView;->setCacheColorHint(I)V

    .line 93
    invoke-virtual {p0, v2}, Lcom/htc/calendar/AgendaListView;->setTopBorderHeight(I)V

    .line 94
    return-void
.end method

.method private isPickMode()Z
    .locals 2

    .prologue
    .line 590
    iget v0, p0, Lcom/htc/calendar/AgendaListView;->mMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/calendar/AgendaListView;->mMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/htc/calendar/AgendaListView;->mMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shiftPosition(I)V
    .locals 5
    .parameter "offset"

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/htc/calendar/AgendaListView;->getFirstVisibleView()Landroid/view/View;

    move-result-object v0

    .line 340
    .local v0, firstVisibleItem:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 341
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 342
    .local v2, r:Landroid/graphics/Rect;
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 345
    invoke-virtual {p0, v0}, Lcom/htc/calendar/AgendaListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 346
    .local v1, position:I
    add-int v4, v1, p1

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-lez v3, :cond_1

    iget v3, v2, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    :goto_0
    invoke-virtual {p0, v4, v3}, Lcom/htc/calendar/AgendaListView;->setSelectionFromTop(II)V

    .line 367
    .end local v1           #position:I
    .end local v2           #r:Landroid/graphics/Rect;
    :cond_0
    :goto_1
    return-void

    .line 346
    .restart local v1       #position:I
    .restart local v2       #r:Landroid/graphics/Rect;
    :cond_1
    iget v3, v2, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 361
    .end local v1           #position:I
    .end local v2           #r:Landroid/graphics/Rect;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/calendar/AgendaListView;->getSelectedItemPosition()I

    move-result v3

    if-ltz v3, :cond_0

    goto :goto_1
.end method


# virtual methods
.method public deleteSelectedEvent()V
    .locals 10

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/htc/calendar/AgendaListView;->getSelectedItemPosition()I

    move-result v9

    .line 247
    .local v9, position:I
    iget-object v0, p0, Lcom/htc/calendar/AgendaListView;->mWindowAdapter:Lcom/htc/calendar/AgendaWindowAdapter;

    invoke-virtual {v0, v9}, Lcom/htc/calendar/AgendaWindowAdapter;->getEventByPosition(I)Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;

    move-result-object v8

    .line 248
    .local v8, event:Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;
    if-eqz v8, :cond_0

    .line 249
    iget-object v0, p0, Lcom/htc/calendar/AgendaListView;->mDeleteEventHelper:Lcom/htc/calendar/DeleteEventHelper;

    iget-wide v1, v8, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    iget-wide v3, v8, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->end:J

    iget-wide v5, v8, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->id:J

    const/4 v7, -0x1

    invoke-virtual/range {v0 .. v7}, Lcom/htc/calendar/DeleteEventHelper;->delete(JJJI)V

    .line 251
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 610
    const/4 v0, 0x1

    .line 612
    .local v0, b:Z
    :try_start_0
    invoke-super {p0, p1}, Lcom/htc/calendar/widget/HtcListViewEx;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 616
    :goto_0
    return v0

    .line 613
    :catch_0
    move-exception v1

    .line 614
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "AgendaListView"

    const-string v3, "dispatchKeyEvent"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    .line 116
    const/4 v2, 0x0

    .line 117
    .local v2, titlePosition:I
    const/4 v1, 0x0

    .line 119
    .local v1, rowInfo:Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;
    invoke-virtual {p0}, Lcom/htc/calendar/AgendaListView;->getSelectedItemPosition()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    :goto_0
    if-ltz v2, :cond_0

    .line 120
    iget-object v5, p0, Lcom/htc/calendar/AgendaListView;->mWindowAdapter:Lcom/htc/calendar/AgendaWindowAdapter;

    invoke-virtual {v5, v2}, Lcom/htc/calendar/AgendaWindowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 121
    .local v0, previousItem:Ljava/lang/Object;
    instance-of v5, v0, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;

    if-eqz v5, :cond_2

    .line 126
    .end local v0           #previousItem:Ljava/lang/Object;
    :cond_0
    iget-object v5, p0, Lcom/htc/calendar/AgendaListView;->mWindowAdapter:Lcom/htc/calendar/AgendaWindowAdapter;

    iget-object v6, p0, Lcom/htc/calendar/AgendaListView;->mLazyTempView:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v5, v2, v6, v7}, Lcom/htc/calendar/AgendaWindowAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/calendar/AgendaListView;->mLazyTempView:Landroid/view/View;

    .line 127
    iget-object v5, p0, Lcom/htc/calendar/AgendaListView;->mLazyTempView:Landroid/view/View;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/htc/calendar/AgendaListView;->mLazyTempView:Landroid/view/View;

    instance-of v5, v5, Landroid/widget/TextView;

    if-eqz v5, :cond_1

    .line 128
    iget-object v3, p0, Lcom/htc/calendar/AgendaListView;->mLazyTempView:Landroid/view/View;

    check-cast v3, Landroid/widget/TextView;

    .line 129
    .local v3, weekDayTitleView:Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 130
    .local v4, weekDayTitleViewText:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    .end local v3           #weekDayTitleView:Landroid/widget/TextView;
    .end local v4           #weekDayTitleViewText:Ljava/lang/CharSequence;
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/calendar/widget/HtcListViewEx;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v5

    return v5

    .line 119
    .restart local v0       #previousItem:Ljava/lang/Object;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public excludeNotes()Z
    .locals 2

    .prologue
    .line 620
    iget v0, p0, Lcom/htc/calendar/AgendaListView;->mMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFirstVisibleTime()J
    .locals 4

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/htc/calendar/AgendaListView;->getFirstVisiblePosition()I

    move-result v1

    .line 316
    .local v1, position:I
    iget-object v2, p0, Lcom/htc/calendar/AgendaListView;->mWindowAdapter:Lcom/htc/calendar/AgendaWindowAdapter;

    invoke-virtual {v2, v1}, Lcom/htc/calendar/AgendaWindowAdapter;->getEventByPosition(I)Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;

    move-result-object v0

    .line 317
    .local v0, event:Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;
    if-eqz v0, :cond_0

    .line 318
    iget-wide v2, v0, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    .line 320
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getFirstVisibleView()Landroid/view/View;
    .locals 5

    .prologue
    .line 272
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 273
    .local v3, r:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/htc/calendar/AgendaListView;->getChildCount()I

    move-result v0

    .line 274
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 275
    invoke-virtual {p0, v1}, Lcom/htc/calendar/AgendaListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 276
    .local v2, listItem:Landroid/view/View;
    invoke-virtual {v2, v3}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 277
    iget v4, v3, Landroid/graphics/Rect;->top:I

    if-ltz v4, :cond_0

    .line 281
    .end local v2           #listItem:Landroid/view/View;
    :goto_1
    return-object v2

    .line 274
    .restart local v2       #listItem:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 281
    .end local v2           #listItem:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getSelectedTime()J
    .locals 4

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/htc/calendar/AgendaListView;->getSelectedItemPosition()I

    move-result v1

    .line 286
    .local v1, position:I
    if-ltz v1, :cond_1

    .line 287
    iget-object v2, p0, Lcom/htc/calendar/AgendaListView;->mWindowAdapter:Lcom/htc/calendar/AgendaWindowAdapter;

    invoke-virtual {v2, v1}, Lcom/htc/calendar/AgendaWindowAdapter;->getEventByPosition(I)Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;

    move-result-object v0

    .line 288
    .local v0, event:Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;
    if-eqz v0, :cond_0

    .line 292
    iget-wide v2, v0, Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;->begin:J

    .line 305
    .end local v0           #event:Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;
    :goto_0
    return-wide v2

    .line 294
    .restart local v0       #event:Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;
    :cond_0
    const-string v2, "AgendaListView"

    const-string v3, "getSelectedTime event is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {p0}, Lcom/htc/calendar/AgendaListView;->getFirstVisibleTime()J

    move-result-wide v2

    goto :goto_0

    .line 303
    .end local v0           #event:Lcom/htc/calendar/AgendaWindowAdapter$EventInfo;
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_0
.end method

.method public goTo(Landroid/text/format/Time;Z)V
    .locals 3
    .parameter "time"
    .parameter "forced"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/htc/calendar/AgendaListView;->mWindowAdapter:Lcom/htc/calendar/AgendaWindowAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/htc/calendar/AgendaWindowAdapter;->refresh(Landroid/text/format/Time;Z)V

    .line 228
    const-string v0, "AgendaListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "goTo :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void
.end method

.method public initWindowAdapter(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 97
    new-instance v0, Lcom/htc/calendar/AgendaWindowAdapter;

    invoke-direct {v0, p1, p0}, Lcom/htc/calendar/AgendaWindowAdapter;-><init>(Landroid/app/Activity;Lcom/htc/calendar/AgendaListView;)V

    iput-object v0, p0, Lcom/htc/calendar/AgendaListView;->mWindowAdapter:Lcom/htc/calendar/AgendaWindowAdapter;

    .line 98
    iget-object v0, p0, Lcom/htc/calendar/AgendaListView;->mWindowAdapter:Lcom/htc/calendar/AgendaWindowAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/calendar/AgendaListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    iput-object p1, p0, Lcom/htc/calendar/AgendaListView;->mActivity:Landroid/app/Activity;

    .line 102
    new-instance v0, Lcom/htc/calendar/DeleteEventHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/htc/calendar/DeleteEventHelper;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/htc/calendar/AgendaListView;->mDeleteEventHelper:Lcom/htc/calendar/DeleteEventHelper;

    .line 104
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Lcom/htc/calendar/widget/HtcListViewEx;->onDetachedFromWindow()V

    .line 111
    iget-object v0, p0, Lcom/htc/calendar/AgendaListView;->mWindowAdapter:Lcom/htc/calendar/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcom/htc/calendar/AgendaWindowAdapter;->close()V

    .line 112
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 383
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 376
    iget v0, p0, Lcom/htc/calendar/AgendaListView;->mSelectedPosition:I

    if-gez v0, :cond_0

    .line 377
    iget v0, p0, Lcom/htc/calendar/AgendaListView;->mSelectedPosition:I

    invoke-virtual {p0, v0}, Lcom/htc/calendar/AgendaListView;->setSelection(I)V

    .line 380
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    .line 598
    const/4 v0, 0x1

    .line 600
    .local v0, b:Z
    :try_start_0
    invoke-super {p0, p1}, Lcom/htc/calendar/widget/HtcListViewEx;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 604
    :goto_0
    return v0

    .line 601
    :catch_0
    move-exception v1

    .line 602
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "AgendaListView"

    const-string v3, "onTouchEvent"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public refresh(Z)V
    .locals 6
    .parameter "forced"

    .prologue
    .line 233
    new-instance v2, Landroid/text/format/Time;

    iget-object v3, p0, Lcom/htc/calendar/widget/HtcListViewEx;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/calendar/AgendaListView;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v3, v4}, Lcom/htc/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 234
    .local v2, time:Landroid/text/format/Time;
    invoke-virtual {p0}, Lcom/htc/calendar/AgendaListView;->getFirstVisibleTime()J

    move-result-wide v0

    .line 235
    .local v0, goToTime:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gtz v3, :cond_0

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 237
    const-string v3, "AgendaListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refresh time as today is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 241
    iget-object v3, p0, Lcom/htc/calendar/AgendaListView;->mWindowAdapter:Lcom/htc/calendar/AgendaWindowAdapter;

    invoke-virtual {v3, v2, p1}, Lcom/htc/calendar/AgendaWindowAdapter;->refresh(Landroid/text/format/Time;Z)V

    .line 242
    const-string v3, "AgendaListView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refresh time is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    return-void
.end method

.method public setHideDeclinedEvents(Z)V
    .locals 1
    .parameter "hideDeclined"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/htc/calendar/AgendaListView;->mWindowAdapter:Lcom/htc/calendar/AgendaWindowAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/calendar/AgendaWindowAdapter;->setHideDeclinedEvents(Z)V

    .line 371
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 586
    iput p1, p0, Lcom/htc/calendar/AgendaListView;->mMode:I

    .line 587
    return-void
.end method

.method public shiftSelection(I)V
    .locals 3
    .parameter "offset"

    .prologue
    .line 326
    invoke-direct {p0, p1}, Lcom/htc/calendar/AgendaListView;->shiftPosition(I)V

    .line 327
    invoke-virtual {p0}, Lcom/htc/calendar/AgendaListView;->getSelectedItemPosition()I

    move-result v0

    .line 328
    .local v0, position:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 329
    add-int v1, v0, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/htc/calendar/AgendaListView;->setSelectionFromTop(II)V

    .line 331
    :cond_0
    return-void
.end method
