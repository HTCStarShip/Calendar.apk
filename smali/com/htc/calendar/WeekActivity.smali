.class public Lcom/htc/calendar/WeekActivity;
.super Lcom/htc/calendar/CalendarActivity;
.source "WeekActivity.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# static fields
.field private static final TAG:Ljava/lang/String; = "WeekActivity"

.field private static final VIEW_ID:I = 0x1


# instance fields
.field private mStartDay:I

.field private prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/htc/calendar/CalendarActivity;-><init>()V

    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 224
    const v1, 0x7f03003f

    invoke-virtual {p0, v1}, Lcom/htc/calendar/WeekActivity;->setContentView(I)V

    .line 225
    const v1, 0x7f0d0045

    invoke-virtual {p0, v1}, Lcom/htc/calendar/WeekActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewSwitcher;

    iput-object v1, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    .line 226
    iget-object v1, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1, p0}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 228
    iget-object v1, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/CalendarView;

    .line 229
    .local v0, cv:Lcom/htc/calendar/CalendarView;
    invoke-virtual {v0}, Lcom/htc/calendar/CalendarView;->clearCachedEvents()V

    .line 230
    invoke-virtual {v0}, Lcom/htc/calendar/CalendarView;->reloadEvents()V

    .line 231
    invoke-virtual {v0}, Lcom/htc/calendar/CalendarView;->requestFocus()Z

    .line 232
    return-void
.end method


# virtual methods
.method protected checkShowWeather(J)V
    .locals 0
    .parameter "millis"

    .prologue
    .line 213
    return-void
.end method

.method public getDayBarNumberTextViews()[Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 190
    const/4 v1, 0x7

    new-array v0, v1, [Landroid/widget/TextView;

    .line 192
    .local v0, tv:[Landroid/widget/TextView;
    const/4 v2, 0x0

    const v1, 0x7f0d010e

    invoke-virtual {p0, v1}, Lcom/htc/calendar/WeekActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v2

    .line 193
    const/4 v2, 0x1

    const v1, 0x7f0d010f

    invoke-virtual {p0, v1}, Lcom/htc/calendar/WeekActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v2

    .line 194
    const/4 v2, 0x2

    const v1, 0x7f0d0110

    invoke-virtual {p0, v1}, Lcom/htc/calendar/WeekActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v2

    .line 195
    const/4 v2, 0x3

    const v1, 0x7f0d0111

    invoke-virtual {p0, v1}, Lcom/htc/calendar/WeekActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v2

    .line 196
    const/4 v2, 0x4

    const v1, 0x7f0d0112

    invoke-virtual {p0, v1}, Lcom/htc/calendar/WeekActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v2

    .line 197
    const/4 v2, 0x5

    const v1, 0x7f0d0113

    invoke-virtual {p0, v1}, Lcom/htc/calendar/WeekActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v2

    .line 198
    const/4 v2, 0x6

    const v1, 0x7f0d0114

    invoke-virtual {p0, v1}, Lcom/htc/calendar/WeekActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v2

    .line 200
    return-object v0
.end method

.method public getDayBarTextViews()[Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 176
    const/4 v1, 0x7

    new-array v0, v1, [Landroid/widget/TextView;

    .line 178
    .local v0, tv:[Landroid/widget/TextView;
    const/4 v2, 0x0

    const v1, 0x7f0d00d8

    invoke-virtual {p0, v1}, Lcom/htc/calendar/WeekActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v2

    .line 179
    const/4 v2, 0x1

    const v1, 0x7f0d00d9

    invoke-virtual {p0, v1}, Lcom/htc/calendar/WeekActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v2

    .line 180
    const/4 v2, 0x2

    const v1, 0x7f0d00da

    invoke-virtual {p0, v1}, Lcom/htc/calendar/WeekActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v2

    .line 181
    const/4 v2, 0x3

    const v1, 0x7f0d00db

    invoke-virtual {p0, v1}, Lcom/htc/calendar/WeekActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v2

    .line 182
    const/4 v2, 0x4

    const v1, 0x7f0d00dc

    invoke-virtual {p0, v1}, Lcom/htc/calendar/WeekActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v2

    .line 183
    const/4 v2, 0x5

    const v1, 0x7f0d00dd

    invoke-virtual {p0, v1}, Lcom/htc/calendar/WeekActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v2

    .line 184
    const/4 v2, 0x6

    const v1, 0x7f0d00de

    invoke-virtual {p0, v1}, Lcom/htc/calendar/WeekActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    aput-object v1, v0, v2

    .line 186
    return-object v0
.end method

.method public getDayBarWeekNumberTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 204
    const v0, 0x7f0d010d

    invoke-virtual {p0, v0}, Lcom/htc/calendar/WeekActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public makeView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 90
    new-instance v0, Lcom/htc/calendar/WeekView;

    invoke-direct {v0, p0}, Lcom/htc/calendar/WeekView;-><init>(Lcom/htc/calendar/CalendarActivity;)V

    .line 91
    .local v0, wv:Lcom/htc/calendar/WeekView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/calendar/WeekView;->setId(I)V

    .line 92
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/htc/calendar/WeekView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    iget-object v1, p0, Lcom/htc/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Lcom/htc/calendar/WeekView;->setSelectedDay(Landroid/text/format/Time;)V

    .line 95
    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/htc/calendar/WeekActivity;->initView()V

    .line 220
    invoke-super {p0, p1}, Lcom/htc/calendar/CalendarActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 221
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/htc/calendar/CalendarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/htc/calendar/WeekActivity;->requestWindowFeature(I)Z

    .line 58
    invoke-virtual {p0}, Lcom/htc/calendar/WeekActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 61
    invoke-virtual {p0}, Lcom/htc/calendar/WeekActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/WeekActivity;->prefs:Landroid/content/SharedPreferences;

    .line 62
    invoke-virtual {p0}, Lcom/htc/calendar/WeekActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/calendar/WeekActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-static {v0, v1}, Lcom/htc/calendar/CalendarPreferenceActivity;->getStartWeekDay(Landroid/content/Context;Landroid/content/SharedPreferences;)I

    move-result v0

    iput v0, p0, Lcom/htc/calendar/WeekActivity;->mStartDay:I

    .line 80
    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/calendar/CalendarContext;->getCurrentSelectedTime()Landroid/text/format/Time;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    .line 81
    invoke-direct {p0}, Lcom/htc/calendar/WeekActivity;->initView()V

    .line 87
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 100
    invoke-static {p1}, Lcom/htc/calendar/Utils;->timeFromIntentInMillis(Landroid/content/Intent;)J

    move-result-wide v1

    .line 101
    .local v1, timeMillis:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 102
    new-instance v0, Landroid/text/format/Time;

    iget-object v3, p0, Lcom/htc/calendar/CalendarActivity;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/htc/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, time:Landroid/text/format/Time;
    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 104
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/htc/calendar/WeekActivity;->goTo(Landroid/text/format/Time;Z)V

    .line 106
    .end local v0           #time:Landroid/text/format/Time;
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 152
    invoke-super {p0}, Lcom/htc/calendar/CalendarActivity;->onPause()V

    .line 153
    iget-object v1, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/CalendarView;

    .line 154
    .local v0, view:Lcom/htc/calendar/CalendarView;
    invoke-virtual {v0}, Lcom/htc/calendar/CalendarView;->getSelectedDay()Landroid/text/format/Time;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    .line 160
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    .line 110
    invoke-super {p0}, Lcom/htc/calendar/CalendarActivity;->onResume()V

    .line 111
    invoke-static {}, Lcom/htc/calendar/CalendarULog;->printSwitchToWeek()V

    .line 113
    iget-object v5, p0, Lcom/htc/calendar/CalendarActivity;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/htc/calendar/WeekActivity;->prefs:Landroid/content/SharedPreferences;

    invoke-static {v5, v6}, Lcom/htc/calendar/CalendarPreferenceActivity;->getStartWeekDay(Landroid/content/Context;Landroid/content/SharedPreferences;)I

    move-result v1

    .line 114
    .local v1, oldStartDay:I
    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/calendar/CalendarContext;->getCurrentSelectedTime()Landroid/text/format/Time;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    .line 115
    invoke-direct {p0}, Lcom/htc/calendar/WeekActivity;->initView()V

    .line 116
    iget v5, p0, Lcom/htc/calendar/WeekActivity;->mStartDay:I

    if-eq v5, v1, :cond_0

    .line 118
    iput v1, p0, Lcom/htc/calendar/WeekActivity;->mStartDay:I

    .line 121
    iget-object v5, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v5}, Landroid/widget/ViewSwitcher;->removeAllViews()V

    .line 122
    iget-object v5, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v5, p0}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 123
    iget-object v5, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v5}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->requestFocus()Z

    .line 124
    iget-object v5, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v5}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/CalendarView;

    .line 125
    .local v0, cv:Lcom/htc/calendar/CalendarView;
    invoke-virtual {v0}, Lcom/htc/calendar/CalendarView;->clearCachedEvents()V

    .line 126
    invoke-virtual {v0}, Lcom/htc/calendar/CalendarView;->reloadEvents()V

    .line 130
    .end local v0           #cv:Lcom/htc/calendar/CalendarView;
    :cond_0
    iget-object v5, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v5}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/calendar/CalendarView;

    .line 131
    .local v3, view1:Lcom/htc/calendar/CalendarView;
    iget-object v5, p0, Lcom/htc/calendar/CalendarActivity;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v5}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/calendar/CalendarView;

    .line 133
    .local v4, view2:Lcom/htc/calendar/CalendarView;
    iget-object v5, p0, Lcom/htc/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v3, v5}, Lcom/htc/calendar/CalendarView;->setSelectedDay(Landroid/text/format/Time;)V

    .line 134
    iget-object v5, p0, Lcom/htc/calendar/CalendarActivity;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v4, v5}, Lcom/htc/calendar/CalendarView;->setSelectedDay(Landroid/text/format/Time;)V

    .line 136
    iget-object v5, p0, Lcom/htc/calendar/CalendarActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/calendar/WeekActivity;->prefs:Landroid/content/SharedPreferences;

    .line 139
    iget-object v5, p0, Lcom/htc/calendar/WeekActivity;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "preferredDetailedView"

    sget-object v7, Lcom/htc/calendar/CalendarPreferenceActivity;->DEFAULT_DETAILED_VIEW:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 141
    .local v2, str:Ljava/lang/String;
    invoke-virtual {v3, v2}, Lcom/htc/calendar/CalendarView;->setDetailedView(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v4, v2}, Lcom/htc/calendar/CalendarView;->setDetailedView(Ljava/lang/String;)V

    .line 146
    iget-object v5, p0, Lcom/htc/calendar/CalendarActivity;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/htc/calendar/Utils;->setDefaultView(Landroid/content/Context;I)V

    .line 148
    return-void
.end method

.method public setViewId(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .parameter "tv"
    .parameter "str"

    .prologue
    .line 208
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    return-void
.end method
