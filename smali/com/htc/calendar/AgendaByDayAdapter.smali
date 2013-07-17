.class public Lcom/htc/calendar/AgendaByDayAdapter;
.super Landroid/widget/BaseAdapter;
.source "AgendaByDayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/calendar/AgendaByDayAdapter$1;,
        Lcom/htc/calendar/AgendaByDayAdapter$HandleRowInfo;,
        Lcom/htc/calendar/AgendaByDayAdapter$MultipleDayInfo;,
        Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;,
        Lcom/htc/calendar/AgendaByDayAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AgendaByDayAdapter"

.field private static final TYPE_DAY:I = 0x0

.field static final TYPE_LAST:I = 0x2

.field private static final TYPE_MEETING:I = 0x1


# instance fields
.field private drawableSection_divider_middle:Landroid/graphics/drawable/Drawable;

.field private final mAgendaAdapter:Lcom/htc/calendar/AgendaAdapter;

.field private final mContext:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mRowInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTodayJulianDay:I

.field private mUpdateTZ:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 55
    iput-object v0, p0, Lcom/htc/calendar/AgendaByDayAdapter;->mUpdateTZ:Ljava/lang/Runnable;

    .line 485
    iput-object v0, p0, Lcom/htc/calendar/AgendaByDayAdapter;->drawableSection_divider_middle:Landroid/graphics/drawable/Drawable;

    .line 66
    iput-object p1, p0, Lcom/htc/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    .line 67
    new-instance v0, Lcom/htc/calendar/AgendaAdapter;

    const v1, 0x7f030012

    invoke-direct {v0, p1, v1}, Lcom/htc/calendar/AgendaAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/htc/calendar/AgendaByDayAdapter;->mAgendaAdapter:Lcom/htc/calendar/AgendaAdapter;

    .line 68
    iget-object v0, p0, Lcom/htc/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/calendar/AgendaByDayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 70
    iget-object v0, p0, Lcom/htc/calendar/AgendaByDayAdapter;->drawableSection_divider_middle:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/htc/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x208066a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/AgendaByDayAdapter;->drawableSection_divider_middle:Landroid/graphics/drawable/Drawable;

    .line 74
    :cond_0
    return-void
.end method

.method private getDateString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 13
    .parameter "context"
    .parameter "jDay"

    .prologue
    .line 488
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 489
    .local v6, now:J
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 490
    .local v8, time:Landroid/text/format/Time;
    invoke-virtual {v8, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 491
    iget-wide v3, v8, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v6, v7, v3, v4}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    iput v0, p0, Lcom/htc/calendar/AgendaByDayAdapter;->mTodayJulianDay:I

    .line 494
    invoke-virtual {v8, p2}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v1

    .line 496
    .local v1, millis:J
    const/16 v5, 0x14

    .line 498
    .local v5, flags:I
    iget v0, p0, Lcom/htc/calendar/AgendaByDayAdapter;->mTodayJulianDay:I

    if-ne p2, v0, :cond_0

    .line 499
    iget-object v9, p0, Lcom/htc/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f0800a8

    const/4 v0, 0x1

    new-array v11, v0, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v0, p0, Lcom/htc/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 503
    :goto_0
    return-object v0

    .line 502
    :cond_0
    or-int/lit8 v5, v5, 0x2

    .line 503
    iget-object v0, p0, Lcom/htc/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 466
    const/4 v0, 0x0

    return v0
.end method

.method public calculateDays(Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;)V
    .locals 27
    .parameter "dayAdapterInfo"

    .prologue
    .line 235
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    .line 237
    .local v15, cursor:Landroid/database/Cursor;
    new-instance v18, Lcom/htc/calendar/AgendaByDayAdapter$HandleRowInfo;

    const/4 v3, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/htc/calendar/AgendaByDayAdapter$HandleRowInfo;-><init>(Lcom/htc/calendar/AgendaByDayAdapter;Lcom/htc/calendar/AgendaByDayAdapter$1;)V

    .line 238
    .local v18, handleRowInfo:Lcom/htc/calendar/AgendaByDayAdapter$HandleRowInfo;
    const/16 v25, -0x1

    .line 239
    .local v25, prevStartDay:I
    new-instance v26, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/AgendaByDayAdapter;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v3, v4}, Lcom/htc/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 240
    .local v26, time:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 241
    .local v22, now:J
    move-object/from16 v0, v26

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 242
    move-object/from16 v0, v26

    iget-wide v3, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, v22

    invoke-static {v0, v1, v3, v4}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/calendar/AgendaByDayAdapter;->mTodayJulianDay:I

    .line 243
    new-instance v21, Ljava/util/LinkedList;

    invoke-direct/range {v21 .. v21}, Ljava/util/LinkedList;-><init>()V

    .line 244
    .local v21, multipleDayList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/calendar/AgendaByDayAdapter$MultipleDayInfo;>;"
    const/16 v24, 0x0

    .local v24, position:I
    :goto_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 245
    const/16 v3, 0xa

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 248
    .local v5, startDay:I
    move-object/from16 v0, p1

    iget v3, v0, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 250
    move/from16 v0, v25

    if-eq v5, v0, :cond_1

    .line 252
    const/4 v3, -0x1

    move/from16 v0, v25

    if-ne v0, v3, :cond_3

    .line 253
    new-instance v3, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5}, Lcom/htc/calendar/AgendaByDayAdapter;->getDateString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;-><init>(IILjava/lang/String;ZZ)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/htc/calendar/AgendaByDayAdapter$HandleRowInfo;->addRowInfo(Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;)V

    .line 291
    :cond_0
    :goto_1
    move/from16 v25, v5

    .line 295
    :cond_1
    new-instance v9, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v3, v1}, Lcom/htc/calendar/AgendaByDayAdapter;->getDateString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x1

    move/from16 v11, v24

    invoke-direct/range {v9 .. v14}, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;-><init>(IILjava/lang/String;ZZ)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/htc/calendar/AgendaByDayAdapter$HandleRowInfo;->addRowInfo(Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;)V

    .line 300
    const/16 v3, 0xb

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 303
    .local v17, endDay:I
    move-object/from16 v0, p1

    iget v3, v0, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move/from16 v0, v17

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 304
    move/from16 v0, v17

    if-le v0, v5, :cond_2

    .line 305
    new-instance v3, Lcom/htc/calendar/AgendaByDayAdapter$MultipleDayInfo;

    move/from16 v0, v24

    move/from16 v1, v17

    invoke-direct {v3, v0, v1}, Lcom/htc/calendar/AgendaByDayAdapter$MultipleDayInfo;-><init>(II)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_2
    add-int/lit8 v24, v24, 0x1

    goto :goto_0

    .line 259
    .end local v17           #endDay:I
    :cond_3
    const/16 v16, 0x0

    .line 260
    .local v16, dayHeaderAdded:Z
    add-int/lit8 v8, v25, 0x1

    .local v8, currentDay:I
    :goto_2
    if-gt v8, v5, :cond_7

    .line 261
    const/16 v16, 0x0

    .line 262
    invoke-virtual/range {v21 .. v21}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 263
    .local v20, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/calendar/AgendaByDayAdapter$MultipleDayInfo;>;"
    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 264
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/htc/calendar/AgendaByDayAdapter$MultipleDayInfo;

    .line 267
    .local v19, info:Lcom/htc/calendar/AgendaByDayAdapter$MultipleDayInfo;
    move-object/from16 v0, v19

    iget v3, v0, Lcom/htc/calendar/AgendaByDayAdapter$MultipleDayInfo;->mEndDay:I

    if-ge v3, v8, :cond_4

    .line 268
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 274
    :cond_4
    if-nez v16, :cond_5

    .line 275
    new-instance v6, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8}, Lcom/htc/calendar/AgendaByDayAdapter;->getDateString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;-><init>(IILjava/lang/String;ZZ)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/htc/calendar/AgendaByDayAdapter$HandleRowInfo;->addRowInfo(Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;)V

    .line 277
    const/16 v16, 0x1

    .line 279
    :cond_5
    new-instance v9, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;

    const/4 v10, 0x1

    move-object/from16 v0, v19

    iget v11, v0, Lcom/htc/calendar/AgendaByDayAdapter$MultipleDayInfo;->mPosition:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    iget v4, v0, Lcom/htc/calendar/AgendaByDayAdapter$MultipleDayInfo;->mPosition:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/htc/calendar/AgendaByDayAdapter;->getDateString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-direct/range {v9 .. v14}, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;-><init>(IILjava/lang/String;ZZ)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/htc/calendar/AgendaByDayAdapter$HandleRowInfo;->addRowInfo(Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;)V

    goto :goto_3

    .line 260
    .end local v19           #info:Lcom/htc/calendar/AgendaByDayAdapter$MultipleDayInfo;
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 286
    .end local v20           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/calendar/AgendaByDayAdapter$MultipleDayInfo;>;"
    :cond_7
    if-nez v16, :cond_0

    .line 287
    new-instance v9, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/htc/calendar/AgendaByDayAdapter;->getDateString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v11, v5

    invoke-direct/range {v9 .. v14}, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;-><init>(IILjava/lang/String;ZZ)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/htc/calendar/AgendaByDayAdapter$HandleRowInfo;->addRowInfo(Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;)V

    goto/16 :goto_1

    .line 311
    .end local v5           #startDay:I
    .end local v8           #currentDay:I
    .end local v16           #dayHeaderAdded:Z
    :cond_8
    if-lez v25, :cond_c

    .line 312
    add-int/lit8 v8, v25, 0x1

    .restart local v8       #currentDay:I
    :goto_4
    move-object/from16 v0, p1

    iget v3, v0, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    if-gt v8, v3, :cond_c

    .line 314
    const/16 v16, 0x0

    .line 315
    .restart local v16       #dayHeaderAdded:Z
    invoke-virtual/range {v21 .. v21}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 316
    .restart local v20       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/calendar/AgendaByDayAdapter$MultipleDayInfo;>;"
    :goto_5
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 317
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/htc/calendar/AgendaByDayAdapter$MultipleDayInfo;

    .line 320
    .restart local v19       #info:Lcom/htc/calendar/AgendaByDayAdapter$MultipleDayInfo;
    move-object/from16 v0, v19

    iget v3, v0, Lcom/htc/calendar/AgendaByDayAdapter$MultipleDayInfo;->mEndDay:I

    if-ge v3, v8, :cond_9

    .line 321
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .line 327
    :cond_9
    if-nez v16, :cond_a

    .line 328
    new-instance v6, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8}, Lcom/htc/calendar/AgendaByDayAdapter;->getDateString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;-><init>(IILjava/lang/String;ZZ)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lcom/htc/calendar/AgendaByDayAdapter$HandleRowInfo;->addRowInfo(Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;)V

    .line 330
    const/16 v16, 0x1

    .line 332
    :cond_a
    new-instance v9, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;

    const/4 v10, 0x1

    move-object/from16 v0, v19

    iget v11, v0, Lcom/htc/calendar/AgendaByDayAdapter$MultipleDayInfo;->mPosition:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/AgendaByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    iget v4, v0, Lcom/htc/calendar/AgendaByDayAdapter$MultipleDayInfo;->mPosition:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/htc/calendar/AgendaByDayAdapter;->getDateString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-direct/range {v9 .. v14}, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;-><init>(IILjava/lang/String;ZZ)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/htc/calendar/AgendaByDayAdapter$HandleRowInfo;->addRowInfo(Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;)V

    goto :goto_5

    .line 313
    .end local v19           #info:Lcom/htc/calendar/AgendaByDayAdapter$MultipleDayInfo;
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 337
    .end local v8           #currentDay:I
    .end local v16           #dayHeaderAdded:Z
    .end local v20           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/calendar/AgendaByDayAdapter$MultipleDayInfo;>;"
    :cond_c
    invoke-virtual/range {v18 .. v18}, Lcom/htc/calendar/AgendaByDayAdapter$HandleRowInfo;->getRowInfo()Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    .line 339
    return-void
.end method

.method public changeCursor(Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 230
    invoke-virtual {p0, p1}, Lcom/htc/calendar/AgendaByDayAdapter;->calculateDays(Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;)V

    .line 231
    iget-object v0, p0, Lcom/htc/calendar/AgendaByDayAdapter;->mAgendaAdapter:Lcom/htc/calendar/AgendaAdapter;

    iget-object v1, p1, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/htc/calendar/AgendaAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 232
    return-void
.end method

.method public clearDayHeaderInfo()V
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    .line 227
    return-void
.end method

.method public findDayPositionNearestTime(Landroid/text/format/Time;)I
    .locals 11
    .parameter "time"

    .prologue
    const/4 v1, 0x0

    .line 389
    iget-object v9, p0, Lcom/htc/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-nez v9, :cond_1

    .line 413
    :cond_0
    :goto_0
    return v1

    .line 392
    :cond_1
    invoke-virtual {p1, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 393
    .local v4, millis:J
    iget-wide v9, p1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v4, v5, v9, v10}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 394
    .local v2, julianDay:I
    const/16 v6, 0x3e8

    .line 395
    .local v6, minDistance:I
    const/4 v7, 0x0

    .line 396
    .local v7, minIndex:I
    iget-object v9, p0, Lcom/htc/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 397
    .local v3, len:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 398
    iget-object v9, p0, Lcom/htc/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;

    .line 399
    .local v8, row:Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;
    iget v9, v8, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v9, :cond_2

    .line 400
    iget v9, v8, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;->mData:I

    sub-int v9, v2, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 401
    .local v0, distance:I
    if-eqz v0, :cond_0

    .line 404
    if-ge v0, v6, :cond_2

    .line 405
    move v6, v0

    .line 406
    move v7, v1

    .line 397
    .end local v0           #distance:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v8           #row:Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;
    :cond_3
    move v1, v7

    .line 413
    goto :goto_0
.end method

.method public findJulianDayFromPosition(I)I
    .locals 5
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 423
    iget-object v4, p0, Lcom/htc/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    if-gez p1, :cond_1

    .line 436
    :cond_0
    :goto_0
    return v3

    .line 427
    :cond_1
    iget-object v4, p0, Lcom/htc/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 428
    .local v1, len:I
    if-ge p1, v1, :cond_0

    .line 430
    move v0, p1

    .local v0, index:I
    :goto_1
    if-ltz v0, :cond_0

    .line 431
    iget-object v4, p0, Lcom/htc/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;

    .line 432
    .local v2, row:Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;
    iget v4, v2, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v4, :cond_2

    .line 433
    iget v3, v2, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;->mData:I

    goto :goto_0

    .line 430
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/htc/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/htc/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 80
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/AgendaByDayAdapter;->mAgendaAdapter:Lcom/htc/calendar/AgendaAdapter;

    invoke-virtual {v0}, Lcom/htc/calendar/AgendaAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getCursorPosition(I)I
    .locals 4
    .parameter "listPos"

    .prologue
    .line 447
    iget-object v2, p0, Lcom/htc/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    if-ltz p1, :cond_1

    .line 448
    iget-object v2, p0, Lcom/htc/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;

    .line 449
    .local v1, row:Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;
    iget v2, v1, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 450
    iget v2, v1, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;->mData:I

    .line 461
    .end local v1           #row:Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;
    :goto_0
    return v2

    .line 452
    .restart local v1       #row:Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;
    :cond_0
    add-int/lit8 v0, p1, 0x1

    .line 453
    .local v0, nextPos:I
    iget-object v2, p0, Lcom/htc/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 454
    invoke-virtual {p0, v0}, Lcom/htc/calendar/AgendaByDayAdapter;->getCursorPosition(I)I

    move-result v0

    .line 455
    if-ltz v0, :cond_1

    .line 456
    neg-int v2, v0

    goto :goto_0

    .line 461
    .end local v0           #nextPos:I
    .end local v1           #row:Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;
    :cond_1
    const/high16 v2, -0x8000

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 84
    iget-object v1, p0, Lcom/htc/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/htc/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;

    .line 86
    .local v0, row:Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;
    iget v1, v0, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v1, :cond_0

    .line 92
    .end local v0           #row:Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;
    :goto_0
    return-object v0

    .line 89
    .restart local v0       #row:Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;
    :cond_0
    iget-object v1, p0, Lcom/htc/calendar/AgendaByDayAdapter;->mAgendaAdapter:Lcom/htc/calendar/AgendaAdapter;

    iget v2, v0, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;->mData:I

    invoke-virtual {v1, v2}, Lcom/htc/calendar/AgendaAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 92
    .end local v0           #row:Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;
    :cond_1
    iget-object v1, p0, Lcom/htc/calendar/AgendaByDayAdapter;->mAgendaAdapter:Lcom/htc/calendar/AgendaAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/calendar/AgendaAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 96
    iget-object v1, p0, Lcom/htc/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/htc/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;

    .line 98
    .local v0, row:Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;
    iget v1, v0, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v1, :cond_0

    .line 99
    neg-int v1, p1

    int-to-long v1, v1

    .line 104
    .end local v0           #row:Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;
    :goto_0
    return-wide v1

    .line 101
    .restart local v0       #row:Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;
    :cond_0
    iget-object v1, p0, Lcom/htc/calendar/AgendaByDayAdapter;->mAgendaAdapter:Lcom/htc/calendar/AgendaAdapter;

    iget v2, v0, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;->mData:I

    invoke-virtual {v1, v2}, Lcom/htc/calendar/AgendaAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0

    .line 104
    .end local v0           #row:Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;
    :cond_1
    iget-object v1, p0, Lcom/htc/calendar/AgendaByDayAdapter;->mAgendaAdapter:Lcom/htc/calendar/AgendaAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/calendar/AgendaAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/htc/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;

    iget v0, v0, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 119
    iget-object v8, p0, Lcom/htc/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le p1, v8, :cond_3

    .line 121
    :cond_0
    iget-object v8, p0, Lcom/htc/calendar/AgendaByDayAdapter;->mAgendaAdapter:Lcom/htc/calendar/AgendaAdapter;

    invoke-virtual {v8, p1, p2, p3}, Lcom/htc/calendar/AgendaAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 122
    .local v5, v:Landroid/view/View;
    if-nez v5, :cond_1

    .line 123
    const-string v8, "AgendaByDayAdapter"

    const-string v9, "v is null from mAgendaAdapter"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const-string v9, "AgendaByDayAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "position:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " convertView:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez p2, :cond_2

    const-string v8, "null"

    :goto_0
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v0, v5

    .line 218
    .end local v5           #v:Landroid/view/View;
    :goto_1
    return-object v0

    .line 124
    .restart local v5       #v:Landroid/view/View;
    :cond_2
    const-string v8, "not null"

    goto :goto_0

    .line 129
    .end local v5           #v:Landroid/view/View;
    :cond_3
    iget-object v8, p0, Lcom/htc/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;

    .line 130
    .local v3, row:Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;
    iget v8, v3, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    if-nez v8, :cond_8

    .line 132
    const/4 v2, 0x0

    .line 133
    .local v2, holder:Lcom/htc/calendar/AgendaByDayAdapter$ViewHolder;
    const/4 v0, 0x0

    .line 134
    .local v0, agendaDayView:Landroid/view/View;
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 137
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 138
    .local v4, tag:Ljava/lang/Object;
    instance-of v8, v4, Lcom/htc/calendar/AgendaByDayAdapter$ViewHolder;

    if-eqz v8, :cond_4

    .line 139
    move-object v0, p2

    move-object v2, v4

    .line 140
    check-cast v2, Lcom/htc/calendar/AgendaByDayAdapter$ViewHolder;

    .line 144
    .end local v4           #tag:Ljava/lang/Object;
    :cond_4
    if-nez v2, :cond_5

    .line 147
    new-instance v2, Lcom/htc/calendar/AgendaByDayAdapter$ViewHolder;

    .end local v2           #holder:Lcom/htc/calendar/AgendaByDayAdapter$ViewHolder;
    invoke-direct {v2}, Lcom/htc/calendar/AgendaByDayAdapter$ViewHolder;-><init>()V

    .line 148
    .restart local v2       #holder:Lcom/htc/calendar/AgendaByDayAdapter$ViewHolder;
    iget-object v8, p0, Lcom/htc/calendar/AgendaByDayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f03002d

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 150
    const v8, 0x7f0d00c6

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v2, Lcom/htc/calendar/AgendaByDayAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    .line 151
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 175
    :cond_5
    invoke-static {}, Lcom/htc/calendar/Utils;->isEnableTheme()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 188
    :cond_6
    :goto_2
    iget-object v1, v3, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;->mDateString:Ljava/lang/String;

    .line 194
    .local v1, dateViewText:Ljava/lang/String;
    iget-object v8, v2, Lcom/htc/calendar/AgendaByDayAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 177
    .end local v1           #dateViewText:Ljava/lang/String;
    :cond_7
    invoke-static {}, Lcom/htc/calendar/Utils;->isEnableSkin()Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_2

    .line 197
    .end local v0           #agendaDayView:Landroid/view/View;
    .end local v2           #holder:Lcom/htc/calendar/AgendaByDayAdapter$ViewHolder;
    :cond_8
    iget v8, v3, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_d

    .line 198
    iget-object v8, p0, Lcom/htc/calendar/AgendaByDayAdapter;->mAgendaAdapter:Lcom/htc/calendar/AgendaAdapter;

    iget v9, v3, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;->mData:I

    invoke-virtual {v8, v9, p2, p3}, Lcom/htc/calendar/AgendaAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 199
    .local v6, x:Landroid/view/View;
    if-eqz v6, :cond_a

    .line 200
    iget-boolean v8, v3, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;->isTopRound:Z

    if-eqz v8, :cond_9

    .line 201
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/calendar/AgendaAdapter$ViewHolder;

    iget-object v8, v8, Lcom/htc/calendar/AgendaAdapter$ViewHolder;->listItem:Lcom/htc/widget/HtcListItem;

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    .line 204
    :cond_9
    iget-boolean v8, v3, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;->isBottomRound:Z

    if-eqz v8, :cond_a

    .line 205
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/calendar/AgendaAdapter$ViewHolder;

    iget-object v8, v8, Lcom/htc/calendar/AgendaAdapter$ViewHolder;->listItem:Lcom/htc/widget/HtcListItem;

    const/16 v9, 0xb

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    .line 208
    :cond_a
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/calendar/AgendaAdapter$ViewHolder;

    iget-object v7, v8, Lcom/htc/calendar/AgendaAdapter$ViewHolder;->title:Lcom/htc/widget/HtcListItem2LineText;

    .line 212
    .local v7, y:Lcom/htc/widget/HtcListItem2LineText;
    invoke-virtual {v7}, Lcom/htc/widget/HtcListItem2LineText;->getPrimaryText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 214
    if-nez v6, :cond_b

    .line 215
    const-string v8, "AgendaByDayAdapter"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "row.mType == TYPE_MEETING getView is null position: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v9, "AgendaByDayAdapter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "convertView:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez p2, :cond_c

    const-string v8, "null"

    :goto_3
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move-object v0, v6

    .line 218
    goto/16 :goto_1

    .line 216
    :cond_c
    const-string v8, "not null"

    goto :goto_3

    .line 221
    .end local v6           #x:Landroid/view/View;
    .end local v7           #y:Lcom/htc/widget/HtcListItem2LineText;
    :cond_d
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown event type:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v3, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    .line 471
    iget-object v2, p0, Lcom/htc/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 472
    iget-object v2, p0, Lcom/htc/calendar/AgendaByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;

    .line 473
    .local v0, row:Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;
    iget v2, v0, Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;->mType:I

    if-ne v2, v1, :cond_1

    .line 475
    .end local v0           #row:Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;
    :cond_0
    :goto_0
    return v1

    .line 473
    .restart local v0       #row:Lcom/htc/calendar/AgendaByDayAdapter$RowInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
