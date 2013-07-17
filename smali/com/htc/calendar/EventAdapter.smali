.class public Lcom/htc/calendar/EventAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "EventAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/calendar/EventAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EventAdapter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeclinedColor:I

.field private mHightLightString:Ljava/lang/String;

.field private mMode:I

.field private mNoTitleLabel:Ljava/lang/String;

.field private mResources:Landroid/content/res/Resources;

.field private mStringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "resource"

    .prologue
    const/4 v1, 0x0

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 315
    iput v1, p0, Lcom/htc/calendar/EventAdapter;->mMode:I

    .line 316
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/calendar/EventAdapter;->mHightLightString:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/EventAdapter;->mResources:Landroid/content/res/Resources;

    .line 96
    iget-object v0, p0, Lcom/htc/calendar/EventAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/EventAdapter;->mNoTitleLabel:Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/htc/calendar/EventAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f020094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/htc/calendar/EventAdapter;->mDeclinedColor:I

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/htc/calendar/EventAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 99
    iput-object p1, p0, Lcom/htc/calendar/EventAdapter;->mContext:Landroid/content/Context;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/htc/calendar/EventAdapter;)Landroid/widget/CursorAdapter$ChangeObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/calendar/EventAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/calendar/EventAdapter;)Landroid/database/DataSetObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/htc/calendar/EventAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    return-object v0
.end method

.method private getMarkedString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;
    .locals 9
    .parameter "str"
    .parameter "highLight"

    .prologue
    const/16 v8, 0x21

    .line 383
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 384
    .local v4, strLow:Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 385
    .local v5, strLowHightLight:Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 386
    .local v3, start:I
    if-ltz v3, :cond_0

    .line 387
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int v1, v3, v6

    .line 388
    .local v1, end:I
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 389
    .local v2, mMarkedString:Landroid/text/SpannableString;
    iget-object v6, p0, Lcom/htc/calendar/EventAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/htc/calendar/HtcUtils;->getTextSelectionHighLight(Landroid/content/Context;)I

    move-result v0

    .line 390
    .local v0, color:I
    new-instance v6, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v6, v0}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {v2, v6, v3, v1, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 391
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    const/4 v7, -0x1

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2, v6, v3, v1, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 394
    .end local v0           #color:I
    .end local v1           #end:I
    .end local v2           #mMarkedString:Landroid/text/SpannableString;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isToday(J)Z
    .locals 8
    .parameter "millis"

    .prologue
    .line 319
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 320
    .local v2, currTime:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 321
    .local v4, now:J
    invoke-virtual {v2, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 322
    iget-wide v6, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v4, v5, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v3

    .line 324
    .local v3, mTodayJulianDay:I
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 325
    .local v1, checkTime:Landroid/text/format/Time;
    invoke-virtual {v1, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 326
    iget-wide v6, v1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p1, p2, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 328
    .local v0, checkJulianDay:I
    if-ne v3, v0, :cond_0

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 35
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 105
    const/16 v22, 0x0

    .line 109
    .local v22, holder:Lcom/htc/calendar/EventAdapter$ViewHolder;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v31

    .line 110
    .local v31, tag:Ljava/lang/Object;
    move-object/from16 v0, v31

    instance-of v2, v0, Lcom/htc/calendar/EventAdapter$ViewHolder;

    if-eqz v2, :cond_0

    .line 111
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v22

    .end local v22           #holder:Lcom/htc/calendar/EventAdapter$ViewHolder;
    check-cast v22, Lcom/htc/calendar/EventAdapter$ViewHolder;

    .line 114
    .restart local v22       #holder:Lcom/htc/calendar/EventAdapter$ViewHolder;
    :cond_0
    if-eqz p3, :cond_4

    .line 120
    :goto_0
    if-nez v22, :cond_1

    .line 121
    new-instance v22, Lcom/htc/calendar/EventAdapter$ViewHolder;

    .end local v22           #holder:Lcom/htc/calendar/EventAdapter$ViewHolder;
    invoke-direct/range {v22 .. v22}, Lcom/htc/calendar/EventAdapter$ViewHolder;-><init>()V

    .line 122
    .restart local v22       #holder:Lcom/htc/calendar/EventAdapter$ViewHolder;
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 124
    const v2, 0x7f0d002a

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem;

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/htc/calendar/EventAdapter$ViewHolder;->listItem:Lcom/htc/widget/HtcListItem;

    .line 125
    const v2, 0x7f0d002d

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/htc/calendar/EventAdapter$ViewHolder;->title:Lcom/htc/widget/HtcListItem2LineText;

    .line 132
    const v2, 0x7f0d002c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/htc/calendar/EventAdapter$ViewHolder;->qcb:Lcom/htc/widget/HtcListItemQuickContactBadge;

    .line 133
    const v2, 0x7f0d002b

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemColorBar;

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/htc/calendar/EventAdapter$ViewHolder;->colorLabel:Lcom/htc/widget/HtcListItemColorBar;

    .line 136
    :cond_1
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/htc/calendar/EventAdapter$ViewHolder;->listItem:Lcom/htc/widget/HtcListItem;

    const/16 v8, 0xc

    invoke-virtual {v2, v8}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    .line 139
    const/16 v2, 0x9

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-object/from16 v0, v22

    iput-wide v8, v0, Lcom/htc/calendar/EventAdapter$ViewHolder;->eventId:J

    .line 140
    const/4 v2, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-object/from16 v0, v22

    iput-wide v8, v0, Lcom/htc/calendar/EventAdapter$ViewHolder;->begin:J

    .line 141
    const/16 v2, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-object/from16 v0, v22

    iput-wide v8, v0, Lcom/htc/calendar/EventAdapter$ViewHolder;->end:J

    .line 142
    const/4 v2, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, v22

    iput-boolean v2, v0, Lcom/htc/calendar/EventAdapter$ViewHolder;->allDay:Z

    .line 143
    const/16 v2, 0x13

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/htc/calendar/EventAdapter$ViewHolder;->syncAccountType:Ljava/lang/String;

    .line 144
    const/16 v2, 0xd

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/htc/calendar/EventAdapter$ViewHolder;->guid:Ljava/lang/String;

    .line 148
    const/16 v2, 0xc

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 149
    .local v28, selfAttendeeStatus:I
    const/4 v2, 0x2

    move/from16 v0, v28

    if-ne v0, v2, :cond_6

    .line 150
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/calendar/EventAdapter;->mDeclinedColor:I

    move-object/from16 v0, v22

    iput v2, v0, Lcom/htc/calendar/EventAdapter$ViewHolder;->overLayColor:I

    .line 155
    :goto_2
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/htc/calendar/EventAdapter$ViewHolder;->title:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v27, v0

    .line 161
    .local v27, listItem2LineText:Lcom/htc/widget/HtcListItem2LineText;
    const/4 v2, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    .line 162
    .local v20, color:I
    move/from16 v0, v20

    move-object/from16 v1, v22

    iput v0, v1, Lcom/htc/calendar/EventAdapter$ViewHolder;->calendarColor:I

    .line 163
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/htc/calendar/EventAdapter$ViewHolder;->colorLabel:Lcom/htc/widget/HtcListItemColorBar;

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcListItemColorBar;->setBackgroundColor(I)V

    .line 170
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/calendar/EventAdapter;->mMode:I

    if-nez v2, :cond_e

    .line 172
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 174
    .local v32, titleString:Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 175
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v32

    .line 176
    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EventAdapter;->mNoTitleLabel:Ljava/lang/String;

    move-object/from16 v32, v0

    .line 182
    :cond_2
    :goto_3
    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 185
    const/4 v2, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 186
    .local v3, begin:J
    const/16 v2, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 187
    .local v5, end:J
    const/4 v2, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_8

    const/16 v16, 0x1

    .line 191
    .local v16, allDay:Z
    :goto_4
    if-eqz v16, :cond_9

    .line 192
    const/16 v7, 0x2000

    .line 193
    .local v7, flags:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EventAdapter;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f08009b

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 194
    .local v17, allDayString:Ljava/lang/String;
    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 209
    .end local v17           #allDayString:Ljava/lang/String;
    :goto_5
    if-eqz v16, :cond_b

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/htc/calendar/EventAdapter;->isToday(J)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 210
    const/4 v2, 0x1

    move-object/from16 v0, v22

    iput-boolean v2, v0, Lcom/htc/calendar/EventAdapter$ViewHolder;->today:Z

    .line 256
    .end local v3           #begin:J
    .end local v5           #end:J
    .end local v7           #flags:I
    .end local v16           #allDay:Z
    .end local v32           #titleString:Ljava/lang/String;
    :cond_3
    :goto_6
    const/4 v2, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_15

    const/16 v21, 0x1

    .line 257
    .local v21, hasAlarm:Z
    :goto_7
    const v2, 0x7f0d002e

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/htc/widget/HtcListItemImageButton;

    .line 258
    .local v15, alarm:Lcom/htc/widget/HtcListItemImageButton;
    if-eqz v21, :cond_16

    .line 259
    const v2, 0x7f020075

    invoke-virtual {v15, v2}, Lcom/htc/widget/HtcListItemImageButton;->setBackgroundResource(I)V

    .line 260
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 267
    :goto_8
    const v2, 0x7f0d0021

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 269
    .local v18, attending:Landroid/view/View;
    const/4 v2, 0x2

    move/from16 v0, v28

    if-ne v0, v2, :cond_17

    .line 270
    const v2, 0x7f02005c

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 271
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 283
    :goto_9
    const/16 v2, 0x15

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 284
    .local v33, type:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 285
    const/16 v2, 0x9

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 287
    .local v11, eventId:J
    const/16 v2, 0x14

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 288
    .local v13, sourceId:Ljava/lang/String;
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/htc/calendar/EventAdapter$ViewHolder;->qcb:Lcom/htc/widget/HtcListItemQuickContactBadge;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v9

    const/4 v10, 0x0

    const v14, 0x20800c2

    move-object/from16 v8, p2

    invoke-static/range {v8 .. v14}, Lcom/htc/calendar/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;JLjava/lang/String;I)V

    .line 290
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/htc/calendar/EventAdapter$ViewHolder;->qcb:Lcom/htc/widget/HtcListItemQuickContactBadge;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lcom/htc/widget/HtcListItemQuickContactBadge;->setVisibility(I)V

    .line 305
    .end local v11           #eventId:J
    .end local v13           #sourceId:Ljava/lang/String;
    :goto_a
    return-void

    .line 117
    .end local v15           #alarm:Lcom/htc/widget/HtcListItemImageButton;
    .end local v18           #attending:Landroid/view/View;
    .end local v20           #color:I
    .end local v21           #hasAlarm:Z
    .end local v27           #listItem2LineText:Lcom/htc/widget/HtcListItem2LineText;
    .end local v28           #selfAttendeeStatus:I
    .end local v33           #type:Ljava/lang/String;
    :cond_4
    const-string v2, "EventAdapter"

    const-string v8, "bindView cursor is null"

    invoke-static {v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 142
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 152
    .restart local v28       #selfAttendeeStatus:I
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, v22

    iput v2, v0, Lcom/htc/calendar/EventAdapter$ViewHolder;->overLayColor:I

    goto/16 :goto_2

    .line 180
    .restart local v20       #color:I
    .restart local v27       #listItem2LineText:Lcom/htc/widget/HtcListItem2LineText;
    .restart local v32       #titleString:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EventAdapter;->mNoTitleLabel:Ljava/lang/String;

    move-object/from16 v32, v0

    goto/16 :goto_3

    .line 187
    .restart local v3       #begin:J
    .restart local v5       #end:J
    :cond_8
    const/16 v16, 0x0

    goto/16 :goto_4

    .line 196
    .restart local v16       #allDay:Z
    :cond_9
    const v7, 0x10001

    .line 197
    .restart local v7       #flags:I
    invoke-static/range {p2 .. p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 198
    or-int/lit16 v7, v7, 0x80

    .line 200
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EventAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v2, p2

    .line 203
    invoke-static/range {v2 .. v7}, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v34

    .line 204
    .local v34, whenString:Ljava/lang/String;
    move-object/from16 v0, v27

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 211
    .end local v34           #whenString:Ljava/lang/String;
    :cond_b
    if-nez v16, :cond_d

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/htc/calendar/EventAdapter;->isToday(J)Z

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/htc/calendar/EventAdapter;->isToday(J)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 212
    :cond_c
    const/4 v2, 0x1

    move-object/from16 v0, v22

    iput-boolean v2, v0, Lcom/htc/calendar/EventAdapter$ViewHolder;->today:Z

    goto/16 :goto_6

    .line 214
    :cond_d
    const/4 v2, 0x0

    move-object/from16 v0, v22

    iput-boolean v2, v0, Lcom/htc/calendar/EventAdapter$ViewHolder;->today:Z

    goto/16 :goto_6

    .line 217
    .end local v3           #begin:J
    .end local v5           #end:J
    .end local v7           #flags:I
    .end local v16           #allDay:Z
    .end local v32           #titleString:Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/calendar/EventAdapter;->mMode:I

    const/4 v8, 0x1

    if-ne v2, v8, :cond_3

    .line 219
    const-string v2, "suggest_text_1"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 220
    .local v24, line_1_index:I
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 221
    .local v23, line_1:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 222
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EventAdapter;->mNoTitleLabel:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 237
    :goto_b
    const-string v2, "suggest_text_2"

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 238
    .local v26, line_2_index:I
    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 239
    .local v25, line_2:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 240
    const-string v2, ""

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 224
    .end local v25           #line_2:Ljava/lang/String;
    .end local v26           #line_2_index:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EventAdapter;->mHightLightString:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 225
    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_b

    .line 227
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EventAdapter;->mHightLightString:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1, v2}, Lcom/htc/calendar/EventAdapter;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v29

    .line 228
    .local v29, ssLine_1:Landroid/text/SpannableString;
    if-nez v29, :cond_11

    .line 229
    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    goto :goto_b

    .line 231
    :cond_11
    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 242
    .end local v29           #ssLine_1:Landroid/text/SpannableString;
    .restart local v25       #line_2:Ljava/lang/String;
    .restart local v26       #line_2_index:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EventAdapter;->mHightLightString:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 243
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 245
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EventAdapter;->mHightLightString:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v2}, Lcom/htc/calendar/EventAdapter;->getMarkedString(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v30

    .line 246
    .local v30, ssLine_2:Landroid/text/SpannableString;
    if-nez v30, :cond_14

    .line 247
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 249
    :cond_14
    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 256
    .end local v23           #line_1:Ljava/lang/String;
    .end local v24           #line_1_index:I
    .end local v25           #line_2:Ljava/lang/String;
    .end local v26           #line_2_index:I
    .end local v30           #ssLine_2:Landroid/text/SpannableString;
    :cond_15
    const/16 v21, 0x0

    goto/16 :goto_7

    .line 262
    .restart local v15       #alarm:Lcom/htc/widget/HtcListItemImageButton;
    .restart local v21       #hasAlarm:Z
    :cond_16
    const v2, 0x7f020075

    invoke-virtual {v15, v2}, Lcom/htc/widget/HtcListItemImageButton;->setBackgroundResource(I)V

    .line 263
    const/16 v2, 0x8

    invoke-virtual {v15, v2}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    goto/16 :goto_8

    .line 272
    .restart local v18       #attending:Landroid/view/View;
    :cond_17
    const/4 v2, 0x3

    move/from16 v0, v28

    if-ne v0, v2, :cond_18

    .line 273
    const v2, 0x7f02005a

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 274
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    .line 275
    :cond_18
    const/4 v2, 0x4

    move/from16 v0, v28

    if-ne v0, v2, :cond_19

    .line 276
    const v2, 0x7f02005b

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 277
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    .line 279
    :cond_19
    const/16 v2, 0x8

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    .line 291
    .restart local v33       #type:Ljava/lang/String;
    :cond_1a
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1b

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v33

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 293
    :cond_1b
    const/16 v2, 0x16

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 295
    .local v19, avatarSmallURL:Ljava/lang/String;
    if-eqz v19, :cond_1c

    .line 296
    const v2, 0x20800c2

    const v8, 0x20802f4

    invoke-static {v2, v8}, Lcom/htc/util/calendar/FacebookImageAsyncHelper;->getInstance(II)Lcom/htc/util/calendar/FacebookImageAsyncHelper;

    move-result-object v2

    move-object/from16 v0, v22

    iget-object v8, v0, Lcom/htc/calendar/EventAdapter$ViewHolder;->qcb:Lcom/htc/widget/HtcListItemQuickContactBadge;

    invoke-virtual {v8}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v8, v1, v9}, Lcom/htc/util/calendar/FacebookImageAsyncHelper;->updateImageViewWithURLAsync(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;I)V

    goto/16 :goto_a

    .line 299
    :cond_1c
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/htc/calendar/EventAdapter$ViewHolder;->qcb:Lcom/htc/widget/HtcListItemQuickContactBadge;

    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Lcom/htc/widget/HtcListItemQuickContactBadge;->setVisibility(I)V

    goto/16 :goto_a

    .line 303
    .end local v19           #avatarSmallURL:Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, v22

    iget-object v2, v0, Lcom/htc/calendar/EventAdapter$ViewHolder;->qcb:Lcom/htc/widget/HtcListItemQuickContactBadge;

    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Lcom/htc/widget/HtcListItemQuickContactBadge;->setVisibility(I)V

    goto/16 :goto_a
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 333
    iget-object v1, p0, Lcom/htc/calendar/EventAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v1, :cond_0

    .line 370
    :goto_0
    return-void

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/EventAdapter;->mCursor:Landroid/database/Cursor;

    .line 338
    .local v0, tmpCursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 339
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/calendar/EventAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/htc/calendar/EventAdapter$1;-><init>(Lcom/htc/calendar/EventAdapter;Landroid/database/Cursor;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 356
    :cond_1
    iput-object p1, p0, Lcom/htc/calendar/EventAdapter;->mCursor:Landroid/database/Cursor;

    .line 357
    if-eqz p1, :cond_2

    .line 358
    iget-object v1, p0, Lcom/htc/calendar/EventAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 359
    iget-object v1, p0, Lcom/htc/calendar/EventAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 360
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/htc/calendar/EventAdapter;->mRowIDColumn:I

    .line 361
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/calendar/EventAdapter;->mDataValid:Z

    .line 363
    invoke-virtual {p0}, Lcom/htc/calendar/EventAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 365
    :cond_2
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/calendar/EventAdapter;->mRowIDColumn:I

    .line 366
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/calendar/EventAdapter;->mDataValid:Z

    .line 368
    invoke-virtual {p0}, Lcom/htc/calendar/EventAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method

.method public setHightLight(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 377
    iput-object p1, p0, Lcom/htc/calendar/EventAdapter;->mHightLightString:Ljava/lang/String;

    .line 378
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 373
    iput p1, p0, Lcom/htc/calendar/EventAdapter;->mMode:I

    .line 374
    return-void
.end method
