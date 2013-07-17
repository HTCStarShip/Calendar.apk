.class public Lcom/htc/calendar/MultiCalendarsListView;
.super Lcom/htc/widget/HtcListView;
.source "MultiCalendarsListView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiCalendarsListView"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field public mCalendarByAccountAdapter:Lcom/htc/calendar/MultiCalendarsByAccountAdapter;

.field public mCalendarsAdapter:Lcom/htc/calendar/MultiCalendarsAdapter;

.field private mCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-direct {p0, p1}, Lcom/htc/calendar/MultiCalendarsListView;->init(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/htc/calendar/MultiCalendarsListView;->init(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    invoke-direct {p0, p1}, Lcom/htc/calendar/MultiCalendarsListView;->init(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 36
    new-instance v0, Lcom/htc/calendar/MultiCalendarsAdapter;

    const v1, 0x7f03002a

    invoke-direct {v0, p1, v1}, Lcom/htc/calendar/MultiCalendarsAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/htc/calendar/MultiCalendarsListView;->mCalendarsAdapter:Lcom/htc/calendar/MultiCalendarsAdapter;

    .line 37
    new-instance v0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter;

    iget-object v1, p0, Lcom/htc/calendar/MultiCalendarsListView;->mCalendarsAdapter:Lcom/htc/calendar/MultiCalendarsAdapter;

    invoke-direct {v0, p1, v1}, Lcom/htc/calendar/MultiCalendarsByAccountAdapter;-><init>(Landroid/content/Context;Lcom/htc/calendar/MultiCalendarsAdapter;)V

    iput-object v0, p0, Lcom/htc/calendar/MultiCalendarsListView;->mCalendarByAccountAdapter:Lcom/htc/calendar/MultiCalendarsByAccountAdapter;

    .line 39
    invoke-virtual {p0}, Lcom/htc/calendar/MultiCalendarsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20805bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/calendar/MultiCalendarsListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/calendar/MultiCalendarsListView;->setTopBorderHeight(I)V

    .line 41
    return-void
.end method


# virtual methods
.method public setCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/htc/calendar/MultiCalendarsListView;->mCursor:Landroid/database/Cursor;

    .line 49
    iget-object v0, p0, Lcom/htc/calendar/MultiCalendarsListView;->mCalendarByAccountAdapter:Lcom/htc/calendar/MultiCalendarsByAccountAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/calendar/MultiCalendarsByAccountAdapter;->calculateCalendars(Landroid/database/Cursor;)V

    .line 50
    iget-object v0, p0, Lcom/htc/calendar/MultiCalendarsListView;->mCalendarsAdapter:Lcom/htc/calendar/MultiCalendarsAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/calendar/MultiCalendarsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 51
    iget-object v0, p0, Lcom/htc/calendar/MultiCalendarsListView;->mCalendarsAdapter:Lcom/htc/calendar/MultiCalendarsAdapter;

    iget-object v1, p0, Lcom/htc/calendar/MultiCalendarsListView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/htc/calendar/MultiCalendarsAdapter;->setParentActivity(Landroid/app/Activity;)V

    .line 53
    iget-object v0, p0, Lcom/htc/calendar/MultiCalendarsListView;->mCalendarByAccountAdapter:Lcom/htc/calendar/MultiCalendarsByAccountAdapter;

    invoke-virtual {p0, v0}, Lcom/htc/calendar/MultiCalendarsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    return-void
.end method

.method public setParentActivity(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/htc/calendar/MultiCalendarsListView;->mActivity:Landroid/app/Activity;

    .line 45
    return-void
.end method
