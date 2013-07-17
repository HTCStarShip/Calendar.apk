.class public Lcom/htc/calendar/MultiCalendarsByAccountAdapter;
.super Landroid/widget/BaseAdapter;
.source "MultiCalendarsByAccountAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;,
        Lcom/htc/calendar/MultiCalendarsByAccountAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiCalendarsByAccountAdapter"

.field private static final TYPE_ACCOUNT_NAME:I = 0x0

.field private static final TYPE_CALENDAR_NAME:I = 0x1

.field private static final TYPE_LAST:I = 0x2

.field private static mRowInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private DEBUG:Z

.field private final mCalendarsAdapter:Lcom/htc/calendar/MultiCalendarsAdapter;

.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/calendar/MultiCalendarsAdapter;)V
    .locals 2
    .parameter "context"
    .parameter "calendarsAdapter"

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter;->DEBUG:Z

    .line 43
    iput-object p1, p0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter;->mCalendarsAdapter:Lcom/htc/calendar/MultiCalendarsAdapter;

    .line 45
    iget-object v0, p0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 46
    return-void
.end method

.method public static getRowInfo(J)Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;
    .locals 4
    .parameter "id"

    .prologue
    .line 214
    const/4 v1, 0x0

    .line 215
    .local v1, result:Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/htc/calendar/MultiCalendarsByAccountAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 216
    sget-object v2, Lcom/htc/calendar/MultiCalendarsByAccountAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;

    iget-wide v2, v2, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;->mId:J

    cmp-long v2, v2, p0

    if-nez v2, :cond_1

    .line 217
    sget-object v2, Lcom/htc/calendar/MultiCalendarsByAccountAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #result:Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;
    check-cast v1, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;

    .line 221
    .restart local v1       #result:Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;
    :cond_0
    return-object v1

    .line 215
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public calculateCalendars(Landroid/database/Cursor;)V
    .locals 14
    .parameter "cursor"

    .prologue
    const/4 v13, 0x0

    const/4 v1, 0x1

    .line 152
    if-nez p1, :cond_0

    .line 211
    :goto_0
    return-void

    .line 157
    :cond_0
    const/4 v0, -0x1

    invoke-interface {p1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 159
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v10, rowInfo:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;>;"
    const-string v9, ""

    .line 162
    .local v9, prevAccountName:Ljava/lang/String;
    const-string v7, ""

    .line 163
    .local v7, accountName:Ljava/lang/String;
    const-string v5, ""

    .line 164
    .local v5, calendarName:Ljava/lang/String;
    const-string v6, ""

    .line 168
    .local v6, accountType:Ljava/lang/String;
    const-wide/16 v2, -0x1

    .line 170
    .local v2, calendarId:J
    const/4 v4, 0x0

    .local v4, position:I
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 171
    invoke-interface {p1, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 172
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 173
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 174
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 176
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    const-string v0, "MultiCalendarsByAccountAdapter"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "calendarId:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " accountName is null, this sould not happen"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 191
    :cond_1
    new-instance v0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;

    invoke-direct/range {v0 .. v6}, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;-><init>(IJILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 196
    :cond_2
    const/4 v8, 0x0

    .local v8, i:I
    :goto_3
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_4

    .line 197
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;

    iget-object v0, v0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;->mAccountType:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 198
    add-int/lit8 v0, v8, -0x1

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;

    iput-boolean v13, v0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;->mBottomRound:Z

    .line 199
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;

    iput-boolean v13, v0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;->mTopRound:Z

    .line 200
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;

    iput-boolean v1, v0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;->mBottomRound:Z

    .line 201
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;

    iput-boolean v1, v0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;->mDivider:Z

    .line 207
    :goto_4
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;

    iget-object v9, v0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;->mAccountType:Ljava/lang/String;

    .line 196
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 203
    :cond_3
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;

    iput-boolean v1, v0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;->mBottomRound:Z

    .line 204
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;

    iput-boolean v1, v0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;->mTopRound:Z

    .line 205
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;

    iput-boolean v13, v0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;->mDivider:Z

    goto :goto_4

    .line 210
    :cond_4
    sput-object v10, Lcom/htc/calendar/MultiCalendarsByAccountAdapter;->mRowInfo:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 52
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter;->mCalendarsAdapter:Lcom/htc/calendar/MultiCalendarsAdapter;

    invoke-virtual {v0}, Lcom/htc/calendar/MultiCalendarsAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 56
    sget-object v1, Lcom/htc/calendar/MultiCalendarsByAccountAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 57
    sget-object v1, Lcom/htc/calendar/MultiCalendarsByAccountAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;

    .line 58
    .local v0, row:Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;
    iget v1, v0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;->mType:I

    if-nez v1, :cond_0

    .line 64
    .end local v0           #row:Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;
    :goto_0
    return-object v0

    .line 61
    .restart local v0       #row:Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;
    :cond_0
    iget-object v1, p0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter;->mCalendarsAdapter:Lcom/htc/calendar/MultiCalendarsAdapter;

    iget v2, v0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;->mData:I

    invoke-virtual {v1, v2}, Lcom/htc/calendar/MultiCalendarsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 64
    .end local v0           #row:Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;
    :cond_1
    iget-object v1, p0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter;->mCalendarsAdapter:Lcom/htc/calendar/MultiCalendarsAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/calendar/MultiCalendarsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 68
    sget-object v1, Lcom/htc/calendar/MultiCalendarsByAccountAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 69
    sget-object v1, Lcom/htc/calendar/MultiCalendarsByAccountAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;

    .line 70
    .local v0, row:Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;
    iget v1, v0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;->mType:I

    if-nez v1, :cond_0

    .line 71
    int-to-long v1, p1

    .line 76
    .end local v0           #row:Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;
    :goto_0
    return-wide v1

    .line 73
    .restart local v0       #row:Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;
    :cond_0
    iget-object v1, p0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter;->mCalendarsAdapter:Lcom/htc/calendar/MultiCalendarsAdapter;

    iget v2, v0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;->mData:I

    invoke-virtual {v1, v2}, Lcom/htc/calendar/MultiCalendarsAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0

    .line 76
    .end local v0           #row:Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;
    :cond_1
    iget-object v1, p0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter;->mCalendarsAdapter:Lcom/htc/calendar/MultiCalendarsAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/calendar/MultiCalendarsAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 86
    sget-object v0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    sget-object v0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;

    iget v0, v0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;->mType:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v9, 0x208066a

    .line 91
    sget-object v6, Lcom/htc/calendar/MultiCalendarsByAccountAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/htc/calendar/MultiCalendarsByAccountAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le p1, v6, :cond_1

    .line 92
    :cond_0
    iget-object v6, p0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter;->mCalendarsAdapter:Lcom/htc/calendar/MultiCalendarsAdapter;

    invoke-virtual {v6, p1, p2, p3}, Lcom/htc/calendar/MultiCalendarsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 143
    :goto_0
    return-object v4

    .line 96
    :cond_1
    sget-object v6, Lcom/htc/calendar/MultiCalendarsByAccountAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;

    .line 97
    .local v3, row:Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;
    iget v6, v3, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;->mType:I

    if-nez v6, :cond_6

    .line 98
    const/4 v2, 0x0

    .line 99
    .local v2, holder:Lcom/htc/calendar/MultiCalendarsByAccountAdapter$ViewHolder;
    const/4 v4, 0x0

    .line 101
    .local v4, statusLabelView:Landroid/view/View;
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 102
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .line 103
    .local v5, tag:Ljava/lang/Object;
    instance-of v6, v5, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$ViewHolder;

    if-eqz v6, :cond_2

    .line 104
    move-object v4, p2

    move-object v2, v5

    .line 105
    check-cast v2, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$ViewHolder;

    .line 109
    .end local v5           #tag:Ljava/lang/Object;
    :cond_2
    if-nez v2, :cond_3

    .line 110
    new-instance v2, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$ViewHolder;

    .end local v2           #holder:Lcom/htc/calendar/MultiCalendarsByAccountAdapter$ViewHolder;
    invoke-direct {v2}, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$ViewHolder;-><init>()V

    .line 111
    .restart local v2       #holder:Lcom/htc/calendar/MultiCalendarsByAccountAdapter$ViewHolder;
    iget-object v6, p0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x2090056

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 112
    const v6, 0x2020020

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$ViewHolder;->labelView:Landroid/widget/TextView;

    .line 113
    invoke-virtual {v4, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 116
    :cond_3
    invoke-static {}, Lcom/htc/calendar/Utils;->isEnableTheme()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 126
    :goto_1
    iget-object v6, v2, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$ViewHolder;->labelView:Landroid/widget/TextView;

    iget-object v7, v3, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;->mName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 118
    :cond_4
    invoke-static {}, Lcom/htc/calendar/Utils;->isEnableSkin()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 120
    invoke-virtual {v4, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 123
    :cond_5
    invoke-virtual {v4, v9}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 129
    .end local v2           #holder:Lcom/htc/calendar/MultiCalendarsByAccountAdapter$ViewHolder;
    .end local v4           #statusLabelView:Landroid/view/View;
    :cond_6
    iget v6, v3, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;->mType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_9

    .line 131
    :try_start_0
    iget-object v6, p0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter;->mCalendarsAdapter:Lcom/htc/calendar/MultiCalendarsAdapter;

    iget v7, v3, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;->mData:I

    invoke-virtual {v6, v7, p2, p3}, Lcom/htc/calendar/MultiCalendarsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 132
    :catch_0
    move-exception v1

    .line 133
    .local v1, ex:Ljava/lang/Exception;
    iget-object v6, p0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter;->mCalendarsAdapter:Lcom/htc/calendar/MultiCalendarsAdapter;

    invoke-virtual {v6}, Lcom/htc/calendar/MultiCalendarsAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 134
    .local v0, cr:Landroid/database/Cursor;
    if-nez v0, :cond_7

    .line 135
    const-string v6, "MultiCalendarsByAccountAdapter"

    const-string v7, "mCalendarsAdapter.cursor is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :goto_2
    const-string v6, "MultiCalendarsByAccountAdapter"

    const-string v7, "Exception :"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 143
    iget-object v6, p0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter;->mCalendarsAdapter:Lcom/htc/calendar/MultiCalendarsAdapter;

    iget-object v7, p0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, p3}, Lcom/htc/calendar/MultiCalendarsAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto/16 :goto_0

    .line 136
    :cond_7
    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 137
    const-string v6, "MultiCalendarsByAccountAdapter"

    const-string v7, "mCalendarsAdapter.cursor is closed"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 139
    :cond_8
    const-string v6, "MultiCalendarsByAccountAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mCalendarsAdapter.cursor size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", ask:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;->mData:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 147
    .end local v0           #cr:Landroid/database/Cursor;
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_9
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown event type:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;->mType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    .line 245
    sget-object v2, Lcom/htc/calendar/MultiCalendarsByAccountAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/htc/calendar/MultiCalendarsByAccountAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 246
    sget-object v2, Lcom/htc/calendar/MultiCalendarsByAccountAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;

    .line 247
    .local v0, row:Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;
    iget v2, v0, Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;->mType:I

    if-ne v2, v1, :cond_1

    .line 249
    .end local v0           #row:Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;
    :cond_0
    :goto_0
    return v1

    .line 247
    .restart local v0       #row:Lcom/htc/calendar/MultiCalendarsByAccountAdapter$RowInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
