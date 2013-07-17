.class public Lcom/htc/calendar/AgendaAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "AgendaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/calendar/AgendaAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AgendaAdapter"


# instance fields
.field private mContactUriCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mDeclinedColor:I

.field private mHtcListItem:Lcom/htc/widget/HtcListItem;

.field private mNoTitleLabel:Ljava/lang/String;

.field private mResources:Landroid/content/res/Resources;

.field private mStringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "resource"

    .prologue
    .line 84
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 365
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/AgendaAdapter;->mContactUriCache:Ljava/util/HashMap;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/AgendaAdapter;->mResources:Landroid/content/res/Resources;

    .line 86
    iget-object v0, p0, Lcom/htc/calendar/AgendaAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080078

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/AgendaAdapter;->mNoTitleLabel:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/htc/calendar/AgendaAdapter;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f020094

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/htc/calendar/AgendaAdapter;->mDeclinedColor:I

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/htc/calendar/AgendaAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 90
    return-void
.end method

.method private isToday(J)Z
    .locals 8
    .parameter "millis"

    .prologue
    .line 368
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 369
    .local v2, currTime:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 370
    .local v4, now:J
    invoke-virtual {v2, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 371
    iget-wide v6, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v4, v5, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v3

    .line 373
    .local v3, mTodayJulianDay:I
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 374
    .local v1, checkTime:Landroid/text/format/Time;
    invoke-virtual {v1, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 375
    iget-wide v6, v1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p1, p2, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 377
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
    .locals 33
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 94
    const/16 v26, 0x0

    .line 98
    .local v26, holder:Lcom/htc/calendar/AgendaAdapter$ViewHolder;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v29

    .line 99
    .local v29, tag:Ljava/lang/Object;
    move-object/from16 v0, v29

    instance-of v2, v0, Lcom/htc/calendar/AgendaAdapter$ViewHolder;

    if-eqz v2, :cond_0

    .line 100
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v26

    .end local v26           #holder:Lcom/htc/calendar/AgendaAdapter$ViewHolder;
    check-cast v26, Lcom/htc/calendar/AgendaAdapter$ViewHolder;

    .line 103
    .restart local v26       #holder:Lcom/htc/calendar/AgendaAdapter$ViewHolder;
    :cond_0
    if-eqz p3, :cond_5

    .line 108
    :goto_0
    if-nez v26, :cond_1

    .line 109
    new-instance v26, Lcom/htc/calendar/AgendaAdapter$ViewHolder;

    .end local v26           #holder:Lcom/htc/calendar/AgendaAdapter$ViewHolder;
    invoke-direct/range {v26 .. v26}, Lcom/htc/calendar/AgendaAdapter$ViewHolder;-><init>()V

    .line 110
    .restart local v26       #holder:Lcom/htc/calendar/AgendaAdapter$ViewHolder;
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 117
    const v2, 0x7f0d002a

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem;

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/htc/calendar/AgendaAdapter$ViewHolder;->listItem:Lcom/htc/widget/HtcListItem;

    .line 118
    const v2, 0x7f0d002d

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/htc/calendar/AgendaAdapter$ViewHolder;->title:Lcom/htc/widget/HtcListItem2LineText;

    .line 119
    const v2, 0x7f0d002c

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemQuickContactBadge;

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/htc/calendar/AgendaAdapter$ViewHolder;->qcb:Lcom/htc/widget/HtcListItemQuickContactBadge;

    .line 120
    const v2, 0x7f0d002b

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItemColorBar;

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/htc/calendar/AgendaAdapter$ViewHolder;->colorLabel:Lcom/htc/widget/HtcListItemColorBar;

    .line 124
    :cond_1
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/htc/calendar/AgendaAdapter$ViewHolder;->listItem:Lcom/htc/widget/HtcListItem;

    const/16 v8, 0xc

    invoke-virtual {v2, v8}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    .line 126
    const/16 v2, 0xc

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 127
    .local v28, selfAttendeeStatus:I
    const/4 v2, 0x2

    move/from16 v0, v28

    if-ne v0, v2, :cond_6

    .line 128
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/calendar/AgendaAdapter;->mDeclinedColor:I

    move-object/from16 v0, v26

    iput v2, v0, Lcom/htc/calendar/AgendaAdapter$ViewHolder;->overLayColor:I

    .line 136
    :goto_1
    const/4 v2, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 137
    .local v23, color:I
    move/from16 v0, v23

    move-object/from16 v1, v26

    iput v0, v1, Lcom/htc/calendar/AgendaAdapter$ViewHolder;->calendarColor:I

    .line 138
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/htc/calendar/AgendaAdapter$ViewHolder;->colorLabel:Lcom/htc/widget/HtcListItemColorBar;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcListItemColorBar;->setBackgroundColor(I)V

    .line 141
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 143
    .local v30, titleString:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 144
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v30

    .line 145
    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/AgendaAdapter;->mNoTitleLabel:Ljava/lang/String;

    move-object/from16 v30, v0

    .line 157
    :cond_2
    :goto_2
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/htc/calendar/AgendaAdapter$ViewHolder;->title:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 161
    const/4 v2, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 162
    .local v3, begin:J
    const/16 v2, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 163
    .local v5, end:J
    const/4 v2, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_8

    const/16 v16, 0x1

    .line 167
    .local v16, allDay:Z
    :goto_3
    if-eqz v16, :cond_9

    .line 168
    const/16 v7, 0x2000

    .line 169
    .local v7, flags:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/AgendaAdapter;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f08009b

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 171
    .local v17, allDayString:Ljava/lang/String;
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/htc/calendar/AgendaAdapter$ViewHolder;->title:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 186
    .end local v17           #allDayString:Ljava/lang/String;
    :goto_4
    if-eqz v16, :cond_b

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/htc/calendar/AgendaAdapter;->isToday(J)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 187
    const/4 v2, 0x1

    move-object/from16 v0, v26

    iput-boolean v2, v0, Lcom/htc/calendar/AgendaAdapter$ViewHolder;->today:Z

    .line 220
    :goto_5
    const/4 v2, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_e

    const/16 v25, 0x1

    .line 221
    .local v25, hasAlarm:Z
    :goto_6
    if-eqz v25, :cond_f

    .line 224
    const v2, 0x7f0d002e

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/htc/widget/HtcListItemImageButton;

    .line 225
    .local v15, alarm:Lcom/htc/widget/HtcListItemImageButton;
    const v2, 0x7f020075

    invoke-virtual {v15, v2}, Lcom/htc/widget/HtcListItemImageButton;->setBackgroundResource(I)V

    .line 226
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    .line 233
    :goto_7
    const/16 v2, 0xc

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 235
    .local v18, attendeeStatus:I
    const v2, 0x7f0d0021

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 237
    .local v19, attending:Landroid/view/View;
    const/4 v2, 0x2

    move/from16 v0, v28

    if-ne v0, v2, :cond_10

    .line 238
    const v2, 0x7f02005c

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 239
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 265
    :goto_8
    const/16 v2, 0xe

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 266
    .local v31, type:Ljava/lang/String;
    const/16 v2, 0x9

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 267
    .local v11, eventId:J
    const/16 v2, 0xd

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 271
    .local v13, sourceId:Ljava/lang/String;
    if-eqz v13, :cond_3

    .line 272
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/htc/calendar/AgendaAdapter$ViewHolder;->qcb:Lcom/htc/widget/HtcListItemQuickContactBadge;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/htc/widget/QuickContactBadge;->setTag(Ljava/lang/Object;)V

    .line 281
    :cond_3
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 284
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/htc/calendar/AgendaAdapter$ViewHolder;->qcb:Lcom/htc/widget/HtcListItemQuickContactBadge;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v9

    const/4 v10, 0x0

    const v14, 0x20800c2

    move-object/from16 v8, p2

    invoke-static/range {v8 .. v14}, Lcom/htc/calendar/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;JLjava/lang/String;I)V

    .line 287
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/htc/calendar/AgendaAdapter$ViewHolder;->qcb:Lcom/htc/widget/HtcListItemQuickContactBadge;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lcom/htc/widget/HtcListItemQuickContactBadge;->setVisibility(I)V

    .line 330
    :cond_4
    :goto_9
    return-void

    .line 106
    .end local v3           #begin:J
    .end local v5           #end:J
    .end local v7           #flags:I
    .end local v11           #eventId:J
    .end local v13           #sourceId:Ljava/lang/String;
    .end local v15           #alarm:Lcom/htc/widget/HtcListItemImageButton;
    .end local v16           #allDay:Z
    .end local v18           #attendeeStatus:I
    .end local v19           #attending:Landroid/view/View;
    .end local v23           #color:I
    .end local v25           #hasAlarm:Z
    .end local v28           #selfAttendeeStatus:I
    .end local v30           #titleString:Ljava/lang/String;
    .end local v31           #type:Ljava/lang/String;
    :cond_5
    const-string v2, "AgendaAdapter"

    const-string v8, "bindView cursor is null"

    invoke-static {v2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 130
    .restart local v28       #selfAttendeeStatus:I
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, v26

    iput v2, v0, Lcom/htc/calendar/AgendaAdapter$ViewHolder;->overLayColor:I

    goto/16 :goto_1

    .line 149
    .restart local v23       #color:I
    .restart local v30       #titleString:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/AgendaAdapter;->mNoTitleLabel:Ljava/lang/String;

    move-object/from16 v30, v0

    goto/16 :goto_2

    .line 163
    .restart local v3       #begin:J
    .restart local v5       #end:J
    :cond_8
    const/16 v16, 0x0

    goto/16 :goto_3

    .line 173
    .restart local v16       #allDay:Z
    :cond_9
    const v7, 0x10001

    .line 174
    .restart local v7       #flags:I
    invoke-static/range {p2 .. p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 175
    or-int/lit16 v7, v7, 0x80

    .line 177
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/AgendaAdapter;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object/from16 v2, p2

    .line 178
    invoke-static/range {v2 .. v7}, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v32

    .line 181
    .local v32, whenString:Ljava/lang/String;
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/htc/calendar/AgendaAdapter$ViewHolder;->title:Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 188
    .end local v32           #whenString:Ljava/lang/String;
    :cond_b
    if-nez v16, :cond_d

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/htc/calendar/AgendaAdapter;->isToday(J)Z

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/htc/calendar/AgendaAdapter;->isToday(J)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 189
    :cond_c
    const/4 v2, 0x1

    move-object/from16 v0, v26

    iput-boolean v2, v0, Lcom/htc/calendar/AgendaAdapter$ViewHolder;->today:Z

    goto/16 :goto_5

    .line 191
    :cond_d
    const/4 v2, 0x0

    move-object/from16 v0, v26

    iput-boolean v2, v0, Lcom/htc/calendar/AgendaAdapter$ViewHolder;->today:Z

    goto/16 :goto_5

    .line 220
    :cond_e
    const/16 v25, 0x0

    goto/16 :goto_6

    .line 228
    .restart local v25       #hasAlarm:Z
    :cond_f
    const v2, 0x7f0d002e

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/htc/widget/HtcListItemImageButton;

    .line 229
    .restart local v15       #alarm:Lcom/htc/widget/HtcListItemImageButton;
    const v2, 0x7f020075

    invoke-virtual {v15, v2}, Lcom/htc/widget/HtcListItemImageButton;->setBackgroundResource(I)V

    .line 230
    const/16 v2, 0x8

    invoke-virtual {v15, v2}, Lcom/htc/widget/HtcListItemImageButton;->setVisibility(I)V

    goto/16 :goto_7

    .line 241
    .restart local v18       #attendeeStatus:I
    .restart local v19       #attending:Landroid/view/View;
    :cond_10
    const/4 v2, 0x3

    move/from16 v0, v28

    if-ne v0, v2, :cond_11

    .line 242
    const v2, 0x7f02005a

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 243
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 245
    :cond_11
    const/4 v2, 0x4

    move/from16 v0, v28

    if-ne v0, v2, :cond_12

    .line 246
    const v2, 0x7f02005b

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 247
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 250
    :cond_12
    const/16 v2, 0x8

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .line 288
    .restart local v11       #eventId:J
    .restart local v13       #sourceId:Ljava/lang/String;
    .restart local v31       #type:Ljava/lang/String;
    :cond_13
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 298
    :cond_14
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/htc/calendar/AgendaAdapter$ViewHolder;->qcb:Lcom/htc/widget/HtcListItemQuickContactBadge;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v2

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lcom/htc/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 299
    const/16 v27, 0x0

    .line 300
    .local v27, owner:Z
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 301
    const/16 v27, 0x1

    .line 304
    :cond_15
    const/16 v2, 0x10

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 305
    .local v20, avatarLocalFile:Ljava/lang/String;
    const/16 v2, 0xf

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 308
    .local v21, avatarSmallURL:Ljava/lang/String;
    if-eqz v27, :cond_16

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 309
    invoke-static/range {v20 .. v20}, Lcom/htc/calendar/PhotoPickerHelper;->getFullAvatarLocalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 311
    .local v24, fullPath:Ljava/lang/String;
    new-instance v22, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/AgendaAdapter;->mResources:Landroid/content/res/Resources;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 312
    .local v22, bmpDrawable:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v22, :cond_4

    .line 313
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/htc/calendar/AgendaAdapter$ViewHolder;->qcb:Lcom/htc/widget/HtcListItemQuickContactBadge;

    invoke-virtual {v2}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Lcom/htc/wrap/android/widget/HtcWrapImageView;->setImageDrawableWithoutRelayout(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 314
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/htc/calendar/AgendaAdapter$ViewHolder;->qcb:Lcom/htc/widget/HtcListItemQuickContactBadge;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lcom/htc/widget/HtcListItemQuickContactBadge;->setVisibility(I)V

    goto/16 :goto_9

    .line 317
    .end local v22           #bmpDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v24           #fullPath:Ljava/lang/String;
    :cond_16
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 318
    const v2, 0x20800c2

    const v8, 0x20802f4

    invoke-static {v2, v8}, Lcom/htc/util/calendar/FacebookImageAsyncHelper;->getInstance(II)Lcom/htc/util/calendar/FacebookImageAsyncHelper;

    move-result-object v2

    move-object/from16 v0, v26

    iget-object v8, v0, Lcom/htc/calendar/AgendaAdapter$ViewHolder;->qcb:Lcom/htc/widget/HtcListItemQuickContactBadge;

    invoke-virtual {v8}, Lcom/htc/widget/HtcListItemQuickContactBadge;->getBadge()Lcom/htc/widget/QuickContactBadge;

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v2, v0, v8, v1, v9}, Lcom/htc/util/calendar/FacebookImageAsyncHelper;->updateImageViewWithURLAsync(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;I)V

    goto/16 :goto_9

    .line 321
    :cond_17
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/htc/calendar/AgendaAdapter$ViewHolder;->qcb:Lcom/htc/widget/HtcListItemQuickContactBadge;

    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Lcom/htc/widget/HtcListItemQuickContactBadge;->setVisibility(I)V

    goto/16 :goto_9

    .line 326
    .end local v20           #avatarLocalFile:Ljava/lang/String;
    .end local v21           #avatarSmallURL:Ljava/lang/String;
    .end local v27           #owner:Z
    :cond_18
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/htc/calendar/AgendaAdapter$ViewHolder;->qcb:Lcom/htc/widget/HtcListItemQuickContactBadge;

    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Lcom/htc/widget/HtcListItemQuickContactBadge;->setVisibility(I)V

    goto/16 :goto_9
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/htc/calendar/AgendaAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    .line 406
    :goto_0
    return-void

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/AgendaAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 386
    iget-object v0, p0, Lcom/htc/calendar/AgendaAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/htc/calendar/AgendaAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 387
    iget-object v0, p0, Lcom/htc/calendar/AgendaAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/htc/calendar/AgendaAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 388
    iget-object v0, p0, Lcom/htc/calendar/AgendaAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 389
    iget-object v0, p0, Lcom/htc/calendar/AgendaAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 392
    :cond_1
    iput-object p1, p0, Lcom/htc/calendar/AgendaAdapter;->mCursor:Landroid/database/Cursor;

    .line 393
    if-eqz p1, :cond_2

    .line 394
    iget-object v0, p0, Lcom/htc/calendar/AgendaAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 395
    iget-object v0, p0, Lcom/htc/calendar/AgendaAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 396
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/calendar/AgendaAdapter;->mRowIDColumn:I

    .line 397
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/calendar/AgendaAdapter;->mDataValid:Z

    .line 399
    invoke-virtual {p0}, Lcom/htc/calendar/AgendaAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 401
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/calendar/AgendaAdapter;->mRowIDColumn:I

    .line 402
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/calendar/AgendaAdapter;->mDataValid:Z

    .line 404
    invoke-virtual {p0}, Lcom/htc/calendar/AgendaAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
