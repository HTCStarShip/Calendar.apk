.class public Lcom/htc/calendar/SelectCalendarsActivity;
.super Landroid/app/ExpandableListActivity;
.source "SelectCalendarsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ACCOUNT_UNIQUE_KEY:Ljava/lang/String; = "ACCOUNT_KEY"

.field private static final EXPANDED_KEY:Ljava/lang/String; = "is_expanded"

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Calendar"


# instance fields
.field private mAdapter:Lcom/htc/calendar/SelectCalendarsAdapter;

.field private mCursor:Landroid/database/Cursor;

.field private mList:Landroid/widget/ExpandableListView;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "account_type || account_name AS ACCOUNT_KEY"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/calendar/SelectCalendarsActivity;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Landroid/app/ExpandableListActivity;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/htc/calendar/SelectCalendarsActivity;->mView:Landroid/view/View;

    .line 41
    iput-object v0, p0, Lcom/htc/calendar/SelectCalendarsActivity;->mCursor:Landroid/database/Cursor;

    return-void
.end method

.method private doSaveAction()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/htc/calendar/SelectCalendarsActivity;->mAdapter:Lcom/htc/calendar/SelectCalendarsAdapter;

    invoke-virtual {v0}, Lcom/htc/calendar/SelectCalendarsAdapter;->doSaveAction()V

    .line 161
    invoke-virtual {p0}, Lcom/htc/calendar/SelectCalendarsActivity;->finish()V

    .line 162
    return-void
.end method

.method private startCalendarMetafeedSync()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 176
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 177
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "force"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 178
    const-string v1, "metafeedonly"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 179
    const/4 v1, 0x0

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 181
    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 2
    .parameter "parent"
    .parameter "view"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    .line 135
    const v1, 0x7f0d0030

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/MultiStateButton;

    .line 136
    .local v0, button:Lcom/htc/calendar/MultiStateButton;
    invoke-virtual {v0}, Lcom/htc/calendar/MultiStateButton;->performClick()Z

    move-result v1

    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 156
    :goto_0
    return-void

    .line 148
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/calendar/SelectCalendarsActivity;->doSaveAction()V

    goto :goto_0

    .line 152
    :pswitch_1
    invoke-virtual {p0}, Lcom/htc/calendar/SelectCalendarsActivity;->finish()V

    goto :goto_0

    .line 146
    :pswitch_data_0
    .packed-switch 0x7f0d0036
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v2, 0x5

    .line 54
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0, v2}, Lcom/htc/calendar/SelectCalendarsActivity;->requestWindowFeature(I)Z

    .line 56
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcom/htc/calendar/SelectCalendarsActivity;->setContentView(I)V

    .line 57
    invoke-virtual {p0}, Lcom/htc/calendar/SelectCalendarsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x3

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 59
    invoke-virtual {p0}, Lcom/htc/calendar/SelectCalendarsActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/SelectCalendarsActivity;->mList:Landroid/widget/ExpandableListView;

    .line 60
    const v0, 0x7f0d0035

    invoke-virtual {p0, v0}, Lcom/htc/calendar/SelectCalendarsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/SelectCalendarsActivity;->mView:Landroid/view/View;

    .line 61
    iget-object v0, p0, Lcom/htc/calendar/SelectCalendarsActivity;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 64
    .local v7, context:Landroid/content/Context;
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/htc/calendar/SelectCalendarsActivity;->PROJECTION:[Ljava/lang/String;

    const-string v3, "1) GROUP BY (ACCOUNT_KEY"

    const/4 v4, 0x0

    const-string v5, "account_name"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/htc/calendar/SelectCalendarsActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/SelectCalendarsActivity;->mCursor:Landroid/database/Cursor;

    .line 68
    iget-object v0, p0, Lcom/htc/calendar/SelectCalendarsActivity;->mCursor:Landroid/database/Cursor;

    invoke-static {v0}, Lcom/htc/calendar/Utils;->matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v6

    .line 69
    .local v6, accountsCursor:Landroid/database/MatrixCursor;
    invoke-virtual {p0, v6}, Lcom/htc/calendar/SelectCalendarsActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 70
    new-instance v0, Lcom/htc/calendar/SelectCalendarsAdapter;

    invoke-direct {v0, v7, v6, p0}, Lcom/htc/calendar/SelectCalendarsAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Lcom/htc/calendar/SelectCalendarsActivity;)V

    iput-object v0, p0, Lcom/htc/calendar/SelectCalendarsActivity;->mAdapter:Lcom/htc/calendar/SelectCalendarsAdapter;

    .line 71
    iget-object v0, p0, Lcom/htc/calendar/SelectCalendarsActivity;->mList:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/htc/calendar/SelectCalendarsActivity;->mAdapter:Lcom/htc/calendar/SelectCalendarsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 73
    iget-object v0, p0, Lcom/htc/calendar/SelectCalendarsActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 75
    const v0, 0x7f0d0036

    invoke-virtual {p0, v0}, Lcom/htc/calendar/SelectCalendarsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const v0, 0x7f0d0037

    invoke-virtual {p0, v0}, Lcom/htc/calendar/SelectCalendarsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    invoke-direct {p0}, Lcom/htc/calendar/SelectCalendarsActivity;->startCalendarMetafeedSync()V

    .line 80
    iget-object v0, p0, Lcom/htc/calendar/SelectCalendarsActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getCount()I

    move-result v8

    .line 81
    .local v8, count:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v8, :cond_0

    .line 82
    iget-object v0, p0, Lcom/htc/calendar/SelectCalendarsActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, v9}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 81
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const v1, 0x7f0d0030

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/MultiStateButton;

    .line 141
    .local v0, button:Lcom/htc/calendar/MultiStateButton;
    invoke-virtual {v0}, Lcom/htc/calendar/MultiStateButton;->performClick()Z

    .line 142
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onPause()V

    .line 95
    iget-object v0, p0, Lcom/htc/calendar/SelectCalendarsActivity;->mAdapter:Lcom/htc/calendar/SelectCalendarsAdapter;

    invoke-virtual {v0}, Lcom/htc/calendar/SelectCalendarsAdapter;->cancelRefreshStopDelay()V

    .line 96
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 119
    invoke-virtual {p0}, Lcom/htc/calendar/SelectCalendarsActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/calendar/SelectCalendarsActivity;->mList:Landroid/widget/ExpandableListView;

    .line 120
    const-string v2, "is_expanded"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v1

    .line 121
    .local v1, isExpanded:[Z
    iget-object v2, p0, Lcom/htc/calendar/SelectCalendarsActivity;->mList:Landroid/widget/ExpandableListView;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/htc/calendar/SelectCalendarsActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2}, Landroid/widget/ExpandableListView;->getCount()I

    move-result v2

    array-length v3, v1

    if-lt v2, v3, :cond_2

    .line 122
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 123
    aget-boolean v2, v1, v0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/calendar/SelectCalendarsActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 124
    iget-object v2, p0, Lcom/htc/calendar/SelectCalendarsActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 122
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_1
    aget-boolean v2, v1, v0

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/calendar/SelectCalendarsActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/htc/calendar/SelectCalendarsActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v2, v0}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    goto :goto_1

    .line 130
    .end local v0           #i:I
    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onResume()V

    .line 89
    iget-object v0, p0, Lcom/htc/calendar/SelectCalendarsActivity;->mAdapter:Lcom/htc/calendar/SelectCalendarsAdapter;

    invoke-virtual {v0}, Lcom/htc/calendar/SelectCalendarsAdapter;->startRefreshStopDelay()V

    .line 90
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "outState"

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lcom/htc/calendar/SelectCalendarsActivity;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/calendar/SelectCalendarsActivity;->mList:Landroid/widget/ExpandableListView;

    .line 103
    iget-object v3, p0, Lcom/htc/calendar/SelectCalendarsActivity;->mList:Landroid/widget/ExpandableListView;

    if-eqz v3, :cond_0

    .line 104
    iget-object v3, p0, Lcom/htc/calendar/SelectCalendarsActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v3}, Landroid/widget/ExpandableListView;->getCount()I

    move-result v0

    .line 105
    .local v0, count:I
    new-array v2, v0, [Z

    .line 106
    .local v2, isExpanded:[Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 107
    iget-object v3, p0, Lcom/htc/calendar/SelectCalendarsActivity;->mList:Landroid/widget/ExpandableListView;

    invoke-virtual {v3, v1}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    move-result v3

    aput-boolean v3, v2, v1

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #isExpanded:[Z
    :cond_0
    const/4 v2, 0x0

    .line 112
    .restart local v2       #isExpanded:[Z
    :cond_1
    const-string v3, "is_expanded"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 114
    return-void
.end method
