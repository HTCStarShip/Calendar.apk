.class public Lcom/htc/calendar/ManageCalendarsActivity;
.super Landroid/app/Activity;
.source "ManageCalendarsActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/calendar/ManageCalendarsActivity$ChangeCalendarAction;,
        Lcom/htc/calendar/ManageCalendarsActivity$QueryHandler;
    }
.end annotation


# static fields
.field public static final CALENDAR_INDEX_COLOR:I = 0x2

.field public static final CALENDAR_INDEX_DISPLAY_NAME:I = 0x1

.field public static final CALENDAR_INDEX_ID:I = 0x0

.field public static final CALENDAR_INDEX_SELECTED:I = 0x3

.field public static final CALENDAR_INDEX_SYNC_ACCOUNT:I = 0x5

.field public static final CALENDAR_INDEX_SYNC_ACCOUNT_TYPE:I = 0x6

.field public static final CALENDAR_INDEX_SYNC_EVENTS:I = 0x4

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "ManageCalendars"


# instance fields
.field private AllCalendarCheckBox:Landroid/widget/CheckBox;

.field private AllCalendarLayout:Landroid/widget/FrameLayout;

.field private context:Landroid/content/Context;

.field private isAllCalendarsChecked:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCursor:Landroid/database/Cursor;

.field private mHandler:Landroid/os/Handler;

.field private mIsAllChecked:Z

.field private mListView:Lcom/htc/calendar/MultiCalendarsListView;

.field private mProgressDialog:Lcom/htc/app/HtcProgressDialog;

.field private mQueryHandler:Lcom/htc/calendar/ManageCalendarsActivity$QueryHandler;

.field private mUseBackKey:Z

.field msg:Ljava/lang/CharSequence;

.field title:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "calendar_displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "visible"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sync_events"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "account_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/calendar/ManageCalendarsActivity;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/calendar/ManageCalendarsActivity;->mCursor:Landroid/database/Cursor;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/calendar/ManageCalendarsActivity;->mUseBackKey:Z

    .line 83
    const-string v0, "isAllCalendarsChecked"

    iput-object v0, p0, Lcom/htc/calendar/ManageCalendarsActivity;->isAllCalendarsChecked:Ljava/lang/String;

    .line 455
    new-instance v0, Lcom/htc/calendar/ManageCalendarsActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/calendar/ManageCalendarsActivity$1;-><init>(Lcom/htc/calendar/ManageCalendarsActivity;)V

    iput-object v0, p0, Lcom/htc/calendar/ManageCalendarsActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/calendar/ManageCalendarsActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/calendar/ManageCalendarsActivity;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/htc/calendar/ManageCalendarsActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-object p1, p0, Lcom/htc/calendar/ManageCalendarsActivity;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/calendar/ManageCalendarsActivity;)Lcom/htc/calendar/MultiCalendarsListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/calendar/ManageCalendarsActivity;->mListView:Lcom/htc/calendar/MultiCalendarsListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/calendar/ManageCalendarsActivity;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/calendar/ManageCalendarsActivity;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/calendar/ManageCalendarsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/htc/calendar/ManageCalendarsActivity;->startQueryCalendars()V

    return-void
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/htc/calendar/ManageCalendarsActivity;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/calendar/ManageCalendarsActivity;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/htc/calendar/ManageCalendarsActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method private setHtcTitle()V
    .locals 6

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/htc/calendar/ManageCalendarsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 443
    .local v0, res:Landroid/content/res/Resources;
    if-nez v0, :cond_0

    .line 444
    const-string v4, "ManageCalendars"

    const-string v5, "res is null, on setHtcTitle"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_0
    const v4, 0x7f080084

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, strTitle:Ljava/lang/String;
    const v4, 0x2020053

    invoke-virtual {p0, v4}, Lcom/htc/calendar/ManageCalendarsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 449
    .local v2, tv:Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    const v4, 0x2020054

    invoke-virtual {p0, v4}, Lcom/htc/calendar/ManageCalendarsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 452
    .local v3, tvShadow:Landroid/widget/TextView;
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    return-void
.end method

.method private startCalendarMetafeedSync()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 259
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 260
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "force"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 261
    const-string v1, "metafeedonly"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 262
    const/4 v1, 0x0

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 264
    return-void
.end method

.method private startQueryCalendars()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 86
    iget-object v0, p0, Lcom/htc/calendar/ManageCalendarsActivity;->mQueryHandler:Lcom/htc/calendar/ManageCalendarsActivity$QueryHandler;

    const/4 v1, 0x0

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/htc/calendar/ManageCalendarsActivity;->PROJECTION:[Ljava/lang/String;

    const-string v5, "sync_events=1"

    const-string v7, "displayOrder,_id,calendar_displayName,account_name"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/calendar/ManageCalendarsActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method


# virtual methods
.method public dismissProgressDialog()V
    .locals 3

    .prologue
    .line 267
    const-string v1, "ManageCalendars"

    const-string v2, "dismissProgressDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :try_start_0
    iget-object v1, p0, Lcom/htc/calendar/ManageCalendarsActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_0
    invoke-virtual {p0}, Lcom/htc/calendar/ManageCalendarsActivity;->finish()V

    .line 274
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, iae:Ljava/lang/IllegalArgumentException;
    const-string v1, "ManageCalendars"

    const-string v2, "dismiss dialog error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const v10, 0x2020010

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 94
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/htc/calendar/ManageCalendarsActivity;->requestWindowFeature(I)Z

    .line 96
    invoke-virtual {p0}, Lcom/htc/calendar/ManageCalendarsActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const v7, 0x106000d

    invoke-virtual {v6, v7}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 98
    const v6, 0x7f030030

    invoke-virtual {p0, v6}, Lcom/htc/calendar/ManageCalendarsActivity;->setContentView(I)V

    .line 99
    invoke-virtual {p0}, Lcom/htc/calendar/ManageCalendarsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/calendar/ManageCalendarsActivity;->context:Landroid/content/Context;

    .line 101
    new-instance v6, Lcom/htc/calendar/ManageCalendarsActivity$QueryHandler;

    invoke-virtual {p0}, Lcom/htc/calendar/ManageCalendarsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/htc/calendar/ManageCalendarsActivity$QueryHandler;-><init>(Lcom/htc/calendar/ManageCalendarsActivity;Landroid/content/ContentResolver;)V

    iput-object v6, p0, Lcom/htc/calendar/ManageCalendarsActivity;->mQueryHandler:Lcom/htc/calendar/ManageCalendarsActivity$QueryHandler;

    .line 103
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/htc/calendar/ManageCalendarsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 105
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f03002a

    invoke-virtual {v4, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, p0, Lcom/htc/calendar/ManageCalendarsActivity;->AllCalendarLayout:Landroid/widget/FrameLayout;

    .line 106
    iget-object v6, p0, Lcom/htc/calendar/ManageCalendarsActivity;->AllCalendarLayout:Landroid/widget/FrameLayout;

    const v7, 0x7f0d00c7

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f020002

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 108
    iget-object v6, p0, Lcom/htc/calendar/ManageCalendarsActivity;->AllCalendarLayout:Landroid/widget/FrameLayout;

    const v7, 0x7f0d00c8

    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    iput-object v6, p0, Lcom/htc/calendar/ManageCalendarsActivity;->AllCalendarCheckBox:Landroid/widget/CheckBox;

    .line 109
    iget-object v6, p0, Lcom/htc/calendar/ManageCalendarsActivity;->AllCalendarCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6, v9}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 111
    const-wide/16 v0, 0x0

    .line 112
    .local v0, all_calendarTag:J
    iget-object v6, p0, Lcom/htc/calendar/ManageCalendarsActivity;->AllCalendarLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v10}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f08003a

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 113
    iget-object v6, p0, Lcom/htc/calendar/ManageCalendarsActivity;->AllCalendarLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v10}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 114
    new-instance v5, Lcom/htc/calendar/widget/SimpleHtcListItemSeparable;

    const-string v6, "isHeader"

    invoke-direct {v5, v6}, Lcom/htc/calendar/widget/SimpleHtcListItemSeparable;-><init>(Ljava/lang/String;)V

    .line 115
    .local v5, ssAllCalendar:Lcom/htc/calendar/widget/SimpleHtcListItemSeparable;
    const-wide/16 v6, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/htc/calendar/widget/SimpleHtcListItemSeparable;->setId(J)V

    .line 116
    iget-object v6, p0, Lcom/htc/calendar/ManageCalendarsActivity;->AllCalendarLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 118
    const v6, 0x7f0d00d1

    invoke-virtual {p0, v6}, Lcom/htc/calendar/ManageCalendarsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/calendar/MultiCalendarsListView;

    iput-object v6, p0, Lcom/htc/calendar/ManageCalendarsActivity;->mListView:Lcom/htc/calendar/MultiCalendarsListView;

    .line 119
    iget-object v6, p0, Lcom/htc/calendar/ManageCalendarsActivity;->mListView:Lcom/htc/calendar/MultiCalendarsListView;

    invoke-virtual {v6, v8}, Lcom/htc/calendar/MultiCalendarsListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 120
    iget-object v6, p0, Lcom/htc/calendar/ManageCalendarsActivity;->mListView:Lcom/htc/calendar/MultiCalendarsListView;

    iget-object v7, p0, Lcom/htc/calendar/ManageCalendarsActivity;->AllCalendarLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v7}, Lcom/htc/calendar/MultiCalendarsListView;->addHeaderView(Landroid/view/View;)V

    .line 121
    invoke-virtual {p0}, Lcom/htc/calendar/ManageCalendarsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09006a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v3, v6

    .line 122
    .local v3, height:I
    iget-object v6, p0, Lcom/htc/calendar/ManageCalendarsActivity;->mListView:Lcom/htc/calendar/MultiCalendarsListView;

    invoke-virtual {v6, v3}, Lcom/htc/calendar/MultiCalendarsListView;->setTopBorderHeight(I)V

    .line 124
    iget-object v6, p0, Lcom/htc/calendar/ManageCalendarsActivity;->mListView:Lcom/htc/calendar/MultiCalendarsListView;

    invoke-virtual {v6, p0}, Lcom/htc/calendar/MultiCalendarsListView;->setParentActivity(Landroid/app/Activity;)V

    .line 125
    iget-object v6, p0, Lcom/htc/calendar/ManageCalendarsActivity;->mListView:Lcom/htc/calendar/MultiCalendarsListView;

    invoke-virtual {v6, p0}, Lcom/htc/calendar/MultiCalendarsListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 127
    new-instance v2, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/htc/calendar/ManageCalendarsActivity;->context:Landroid/content/Context;

    invoke-direct {v2, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 128
    .local v2, bottomround:Landroid/widget/ImageView;
    const v6, 0x2080696

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 130
    iget-object v6, p0, Lcom/htc/calendar/ManageCalendarsActivity;->mListView:Lcom/htc/calendar/MultiCalendarsListView;

    invoke-virtual {v6, v2, v8, v9}, Lcom/htc/calendar/MultiCalendarsListView;->addFootViewWithoutDivider(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 132
    invoke-static {}, Lcom/htc/calendar/Utils;->isEnableTheme()Z

    move-result v6

    if-nez v6, :cond_0

    .line 133
    iget-object v6, p0, Lcom/htc/calendar/ManageCalendarsActivity;->mListView:Lcom/htc/calendar/MultiCalendarsListView;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Lcom/htc/calendar/MultiCalendarsListView;->setBackgroundColor(I)V

    .line 136
    :cond_0
    iget-object v6, p0, Lcom/htc/calendar/ManageCalendarsActivity;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/htc/calendar/ManageCalendarsActivity;->isAllCalendarsChecked:Ljava/lang/String;

    const-string v8, "true"

    invoke-static {v6, v7, v8}, Lcom/htc/calendar/Utils;->getSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/htc/calendar/ManageCalendarsActivity;->mIsAllChecked:Z

    .line 137
    iget-object v6, p0, Lcom/htc/calendar/ManageCalendarsActivity;->AllCalendarCheckBox:Landroid/widget/CheckBox;

    iget-boolean v7, p0, Lcom/htc/calendar/ManageCalendarsActivity;->mIsAllChecked:Z

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 139
    invoke-virtual {p0}, Lcom/htc/calendar/ManageCalendarsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/calendar/ManageCalendarsActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 140
    new-instance v6, Lcom/htc/app/HtcProgressDialog;

    invoke-direct {v6, p0}, Lcom/htc/app/HtcProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/htc/calendar/ManageCalendarsActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 142
    invoke-direct {p0}, Lcom/htc/calendar/ManageCalendarsActivity;->setHtcTitle()V

    .line 143
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 295
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 297
    const v1, 0x7f080088

    invoke-interface {p1, v3, v3, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/htc/calendar/ManageCalendarsActivity$ChangeCalendarAction;

    invoke-direct {v2, p0, v3}, Lcom/htc/calendar/ManageCalendarsActivity$ChangeCalendarAction;-><init>(Lcom/htc/calendar/ManageCalendarsActivity;Z)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    .line 299
    .local v0, item:Landroid/view/MenuItem;
    const v1, 0x7f020068

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 301
    const v1, 0x7f080089

    invoke-interface {p1, v3, v3, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/htc/calendar/ManageCalendarsActivity$ChangeCalendarAction;

    invoke-direct {v2, p0, v4}, Lcom/htc/calendar/ManageCalendarsActivity$ChangeCalendarAction;-><init>(Lcom/htc/calendar/ManageCalendarsActivity;Z)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    .line 303
    const v1, 0x7f02006b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 304
    return v4
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 174
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 176
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 179
    invoke-virtual {p1, p2}, Landroid/view/View;->setSelected(Z)V

    .line 180
    return-void
.end method

.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const/4 v6, 0x0

    .line 183
    if-nez p2, :cond_0

    .line 184
    const-string v3, "ManageCalendars"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "view is null at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 189
    .local v2, obj:Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 190
    const-string v3, "ManageCalendars"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "position:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " no tag object"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 195
    :cond_1
    check-cast v2, Lcom/htc/calendar/widget/SimpleHtcListItemSeparable;

    .end local v2           #obj:Ljava/lang/Object;
    invoke-virtual {v2}, Lcom/htc/calendar/widget/SimpleHtcListItemSeparable;->getId()J

    move-result-wide v0

    .line 197
    .local v0, calendar_id:J
    const-string v3, "ManageCalendars"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onItemClick calendar_id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_3

    .line 200
    iget-object v3, p0, Lcom/htc/calendar/ManageCalendarsActivity;->AllCalendarCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 201
    iput-boolean v6, p0, Lcom/htc/calendar/ManageCalendarsActivity;->mIsAllChecked:Z

    .line 207
    :goto_1
    iget-object v3, p0, Lcom/htc/calendar/ManageCalendarsActivity;->mListView:Lcom/htc/calendar/MultiCalendarsListView;

    iget-object v3, v3, Lcom/htc/calendar/MultiCalendarsListView;->mCalendarsAdapter:Lcom/htc/calendar/MultiCalendarsAdapter;

    iget-boolean v4, p0, Lcom/htc/calendar/ManageCalendarsActivity;->mIsAllChecked:Z

    invoke-virtual {v3, v4}, Lcom/htc/calendar/MultiCalendarsAdapter;->checkAllCalendars(Z)V

    .line 208
    iget-object v3, p0, Lcom/htc/calendar/ManageCalendarsActivity;->mListView:Lcom/htc/calendar/MultiCalendarsListView;

    iget-object v3, v3, Lcom/htc/calendar/MultiCalendarsListView;->mCalendarsAdapter:Lcom/htc/calendar/MultiCalendarsAdapter;

    invoke-virtual {v3}, Lcom/htc/calendar/MultiCalendarsAdapter;->notifyDataSetChanged()V

    .line 209
    iget-object v3, p0, Lcom/htc/calendar/ManageCalendarsActivity;->mListView:Lcom/htc/calendar/MultiCalendarsListView;

    iget-object v3, v3, Lcom/htc/calendar/MultiCalendarsListView;->mCalendarByAccountAdapter:Lcom/htc/calendar/MultiCalendarsByAccountAdapter;

    invoke-virtual {v3}, Lcom/htc/calendar/MultiCalendarsByAccountAdapter;->notifyDataSetChanged()V

    .line 217
    :goto_2
    iget-object v3, p0, Lcom/htc/calendar/ManageCalendarsActivity;->AllCalendarCheckBox:Landroid/widget/CheckBox;

    iget-boolean v4, p0, Lcom/htc/calendar/ManageCalendarsActivity;->mIsAllChecked:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 218
    iget-object v3, p0, Lcom/htc/calendar/ManageCalendarsActivity;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/htc/calendar/ManageCalendarsActivity;->isAllCalendarsChecked:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/htc/calendar/ManageCalendarsActivity;->mIsAllChecked:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/htc/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :cond_2
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/calendar/ManageCalendarsActivity;->mIsAllChecked:Z

    goto :goto_1

    .line 211
    :cond_3
    iget-object v3, p0, Lcom/htc/calendar/ManageCalendarsActivity;->mListView:Lcom/htc/calendar/MultiCalendarsListView;

    iget-object v3, v3, Lcom/htc/calendar/MultiCalendarsListView;->mCalendarsAdapter:Lcom/htc/calendar/MultiCalendarsAdapter;

    invoke-virtual {v3, p2}, Lcom/htc/calendar/MultiCalendarsAdapter;->setIntoCalendarDB(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 212
    iput-boolean v6, p0, Lcom/htc/calendar/ManageCalendarsActivity;->mIsAllChecked:Z

    goto :goto_2

    .line 214
    :cond_4
    iget-object v3, p0, Lcom/htc/calendar/ManageCalendarsActivity;->mListView:Lcom/htc/calendar/MultiCalendarsListView;

    iget-object v3, v3, Lcom/htc/calendar/MultiCalendarsListView;->mCalendarsAdapter:Lcom/htc/calendar/MultiCalendarsAdapter;

    invoke-virtual {v3}, Lcom/htc/calendar/MultiCalendarsAdapter;->isAllCalendarsChecked()Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/calendar/ManageCalendarsActivity;->mIsAllChecked:Z

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 278
    packed-switch p1, :pswitch_data_0

    .line 290
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 280
    :pswitch_0
    iput-boolean v0, p0, Lcom/htc/calendar/ManageCalendarsActivity;->mUseBackKey:Z

    .line 281
    invoke-virtual {p0}, Lcom/htc/calendar/ManageCalendarsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080084

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/calendar/ManageCalendarsActivity;->title:Ljava/lang/CharSequence;

    .line 282
    invoke-virtual {p0}, Lcom/htc/calendar/ManageCalendarsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08003c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/calendar/ManageCalendarsActivity;->msg:Ljava/lang/CharSequence;

    .line 284
    iget-object v1, p0, Lcom/htc/calendar/ManageCalendarsActivity;->title:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/htc/calendar/ManageCalendarsActivity;->msg:Ljava/lang/CharSequence;

    invoke-static {p0, v1, v2}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/calendar/ManageCalendarsActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;

    .line 286
    iget-object v1, p0, Lcom/htc/calendar/ManageCalendarsActivity;->mListView:Lcom/htc/calendar/MultiCalendarsListView;

    iget-object v1, v1, Lcom/htc/calendar/MultiCalendarsListView;->mCalendarsAdapter:Lcom/htc/calendar/MultiCalendarsAdapter;

    invoke-virtual {v1, v0}, Lcom/htc/calendar/MultiCalendarsAdapter;->saveAllCalendars(Z)V

    goto :goto_0

    .line 278
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 168
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 170
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 149
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 150
    invoke-direct {p0}, Lcom/htc/calendar/ManageCalendarsActivity;->startQueryCalendars()V

    .line 152
    invoke-direct {p0}, Lcom/htc/calendar/ManageCalendarsActivity;->startCalendarMetafeedSync()V

    .line 153
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 157
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 160
    iget-boolean v0, p0, Lcom/htc/calendar/ManageCalendarsActivity;->mUseBackKey:Z

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/htc/calendar/ManageCalendarsActivity;->mListView:Lcom/htc/calendar/MultiCalendarsListView;

    iget-object v0, v0, Lcom/htc/calendar/MultiCalendarsListView;->mCalendarsAdapter:Lcom/htc/calendar/MultiCalendarsAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/calendar/MultiCalendarsAdapter;->saveAllCalendars(Z)V

    .line 164
    :cond_0
    return-void
.end method
