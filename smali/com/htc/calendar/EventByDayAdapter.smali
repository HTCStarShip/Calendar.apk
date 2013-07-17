.class public Lcom/htc/calendar/EventByDayAdapter;
.super Landroid/widget/BaseAdapter;
.source "EventByDayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/calendar/EventByDayAdapter$1;,
        Lcom/htc/calendar/EventByDayAdapter$HandleRowInfo;,
        Lcom/htc/calendar/EventByDayAdapter$MultipleDayInfo;,
        Lcom/htc/calendar/EventByDayAdapter$RowInfo;,
        Lcom/htc/calendar/EventByDayAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AgendaByDayAdapter"

.field private static final TYPE_DAY:I = 0x0

.field static final TYPE_LAST:I = 0x2

.field private static final TYPE_MEETING:I = 0x1


# instance fields
.field private drawableSection_divider_middle:Landroid/graphics/drawable/Drawable;

.field private final mContext:Landroid/content/Context;

.field private final mEventAdapter:Lcom/htc/calendar/EventAdapter;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mRowInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/calendar/EventByDayAdapter$RowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTodayJulianDay:I

.field private mUpdateTZ:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/calendar/EventAdapter;)V
    .locals 2
    .parameter "context"
    .parameter "eventAdapter"

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/htc/calendar/EventByDayAdapter;->mUpdateTZ:Ljava/lang/Runnable;

    .line 471
    iput-object v0, p0, Lcom/htc/calendar/EventByDayAdapter;->drawableSection_divider_middle:Landroid/graphics/drawable/Drawable;

    .line 46
    iput-object p1, p0, Lcom/htc/calendar/EventByDayAdapter;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/htc/calendar/EventByDayAdapter;->mEventAdapter:Lcom/htc/calendar/EventAdapter;

    .line 48
    iget-object v0, p0, Lcom/htc/calendar/EventByDayAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/htc/calendar/EventByDayAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 50
    iget-object v0, p0, Lcom/htc/calendar/EventByDayAdapter;->drawableSection_divider_middle:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/htc/calendar/EventByDayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x2080669

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/EventByDayAdapter;->drawableSection_divider_middle:Landroid/graphics/drawable/Drawable;

    .line 54
    :cond_0
    return-void
.end method

.method private getDateString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 13
    .parameter "context"
    .parameter "jDay"

    .prologue
    .line 474
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 475
    .local v6, now:J
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 476
    .local v8, time:Landroid/text/format/Time;
    invoke-virtual {v8, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 477
    iget-wide v3, v8, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v6, v7, v3, v4}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    iput v0, p0, Lcom/htc/calendar/EventByDayAdapter;->mTodayJulianDay:I

    .line 480
    invoke-virtual {v8, p2}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v1

    .line 482
    .local v1, millis:J
    const/16 v5, 0x14

    .line 484
    .local v5, flags:I
    iget v0, p0, Lcom/htc/calendar/EventByDayAdapter;->mTodayJulianDay:I

    if-ne p2, v0, :cond_0

    .line 485
    iget-object v9, p0, Lcom/htc/calendar/EventByDayAdapter;->mContext:Landroid/content/Context;

    const v10, 0x7f0800a8

    const/4 v0, 0x1

    new-array v11, v0, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v0, p0, Lcom/htc/calendar/EventByDayAdapter;->mContext:Landroid/content/Context;

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 489
    :goto_0
    return-object v0

    .line 488
    :cond_0
    or-int/lit8 v5, v5, 0x2

    .line 489
    iget-object v0, p0, Lcom/htc/calendar/EventByDayAdapter;->mContext:Landroid/content/Context;

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
    .line 452
    const/4 v0, 0x0

    return v0
.end method

.method public calculateDays(Landroid/database/Cursor;)V
    .locals 29
    .parameter "cursor"

    .prologue
    .line 209
    if-nez p1, :cond_1

    .line 210
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EventByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 211
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EventByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    new-instance v17, Lcom/htc/calendar/EventByDayAdapter$HandleRowInfo;

    const/4 v3, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3}, Lcom/htc/calendar/EventByDayAdapter$HandleRowInfo;-><init>(Lcom/htc/calendar/EventByDayAdapter;Lcom/htc/calendar/EventByDayAdapter$1;)V

    .line 217
    .local v17, handleRowInfo:Lcom/htc/calendar/EventByDayAdapter$HandleRowInfo;
    const/16 v27, -0x1

    .line 218
    .local v27, prevStartDay:I
    new-instance v28, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EventByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EventByDayAdapter;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v3, v4}, Lcom/htc/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v28

    invoke-direct {v0, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 219
    .local v28, time:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 220
    .local v24, now:J
    move-object/from16 v0, v28

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 221
    move-object/from16 v0, v28

    iget-wide v3, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, v24

    invoke-static {v0, v1, v3, v4}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/calendar/EventByDayAdapter;->mTodayJulianDay:I

    .line 222
    new-instance v23, Ljava/util/LinkedList;

    invoke-direct/range {v23 .. v23}, Ljava/util/LinkedList;-><init>()V

    .line 223
    .local v23, multipleDayList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/htc/calendar/EventByDayAdapter$MultipleDayInfo;>;"
    const/16 v26, 0x0

    .local v26, position:I
    :goto_1
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 224
    const/16 v3, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 229
    .local v5, startDay:I
    move/from16 v0, v27

    if-eq v5, v0, :cond_3

    .line 231
    const/4 v3, -0x1

    move/from16 v0, v27

    if-ne v0, v3, :cond_5

    .line 232
    new-instance v3, Lcom/htc/calendar/EventByDayAdapter$RowInfo;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/calendar/EventByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5}, Lcom/htc/calendar/EventByDayAdapter;->getDateString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v8}, Lcom/htc/calendar/EventByDayAdapter$RowInfo;-><init>(IILjava/lang/String;ZZ)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/htc/calendar/EventByDayAdapter$HandleRowInfo;->addRowInfo(Lcom/htc/calendar/EventByDayAdapter$RowInfo;)V

    .line 270
    :cond_2
    :goto_2
    move/from16 v27, v5

    .line 274
    :cond_3
    new-instance v9, Lcom/htc/calendar/EventByDayAdapter$RowInfo;

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EventByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v3, v1}, Lcom/htc/calendar/EventByDayAdapter;->getDateString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x1

    move/from16 v11, v26

    invoke-direct/range {v9 .. v14}, Lcom/htc/calendar/EventByDayAdapter$RowInfo;-><init>(IILjava/lang/String;ZZ)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/htc/calendar/EventByDayAdapter$HandleRowInfo;->addRowInfo(Lcom/htc/calendar/EventByDayAdapter$RowInfo;)V

    .line 279
    const/16 v3, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 283
    .local v16, endDay:I
    move/from16 v0, v16

    if-le v0, v5, :cond_4

    .line 284
    new-instance v3, Lcom/htc/calendar/EventByDayAdapter$MultipleDayInfo;

    move/from16 v0, v26

    move/from16 v1, v16

    invoke-direct {v3, v0, v1}, Lcom/htc/calendar/EventByDayAdapter$MultipleDayInfo;-><init>(II)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_4
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 238
    .end local v16           #endDay:I
    :cond_5
    const/4 v15, 0x0

    .line 239
    .local v15, dayHeaderAdded:Z
    add-int/lit8 v8, v27, 0x1

    .local v8, currentDay:I
    :goto_3
    if-gt v8, v5, :cond_9

    .line 240
    const/4 v15, 0x0

    .line 241
    invoke-virtual/range {v23 .. v23}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 242
    .local v19, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/calendar/EventByDayAdapter$MultipleDayInfo;>;"
    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 243
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/htc/calendar/EventByDayAdapter$MultipleDayInfo;

    .line 246
    .local v18, info:Lcom/htc/calendar/EventByDayAdapter$MultipleDayInfo;
    move-object/from16 v0, v18

    iget v3, v0, Lcom/htc/calendar/EventByDayAdapter$MultipleDayInfo;->mEndDay:I

    if-ge v3, v8, :cond_6

    .line 247
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 253
    :cond_6
    if-nez v15, :cond_7

    .line 254
    new-instance v6, Lcom/htc/calendar/EventByDayAdapter$RowInfo;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EventByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8}, Lcom/htc/calendar/EventByDayAdapter;->getDateString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/htc/calendar/EventByDayAdapter$RowInfo;-><init>(IILjava/lang/String;ZZ)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/htc/calendar/EventByDayAdapter$HandleRowInfo;->addRowInfo(Lcom/htc/calendar/EventByDayAdapter$RowInfo;)V

    .line 256
    const/4 v15, 0x1

    .line 258
    :cond_7
    new-instance v9, Lcom/htc/calendar/EventByDayAdapter$RowInfo;

    const/4 v10, 0x1

    move-object/from16 v0, v18

    iget v11, v0, Lcom/htc/calendar/EventByDayAdapter$MultipleDayInfo;->mPosition:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EventByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    iget v4, v0, Lcom/htc/calendar/EventByDayAdapter$MultipleDayInfo;->mPosition:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/htc/calendar/EventByDayAdapter;->getDateString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-direct/range {v9 .. v14}, Lcom/htc/calendar/EventByDayAdapter$RowInfo;-><init>(IILjava/lang/String;ZZ)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/htc/calendar/EventByDayAdapter$HandleRowInfo;->addRowInfo(Lcom/htc/calendar/EventByDayAdapter$RowInfo;)V

    goto :goto_4

    .line 239
    .end local v18           #info:Lcom/htc/calendar/EventByDayAdapter$MultipleDayInfo;
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 265
    .end local v19           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/calendar/EventByDayAdapter$MultipleDayInfo;>;"
    :cond_9
    if-nez v15, :cond_2

    .line 266
    new-instance v9, Lcom/htc/calendar/EventByDayAdapter$RowInfo;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EventByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lcom/htc/calendar/EventByDayAdapter;->getDateString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v11, v5

    invoke-direct/range {v9 .. v14}, Lcom/htc/calendar/EventByDayAdapter$RowInfo;-><init>(IILjava/lang/String;ZZ)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/htc/calendar/EventByDayAdapter$HandleRowInfo;->addRowInfo(Lcom/htc/calendar/EventByDayAdapter$RowInfo;)V

    goto/16 :goto_2

    .line 290
    .end local v5           #startDay:I
    .end local v8           #currentDay:I
    .end local v15           #dayHeaderAdded:Z
    :cond_a
    if-lez v27, :cond_e

    .line 292
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 293
    move-object/from16 v0, v28

    iget v3, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, v28

    iput v3, v0, Landroid/text/format/Time;->month:I

    .line 294
    const/4 v3, 0x0

    move-object/from16 v0, v28

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 295
    const/4 v3, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v21

    .line 296
    .local v21, millis:J
    move-object/from16 v0, v28

    iget-wide v3, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, v21

    invoke-static {v0, v1, v3, v4}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v20

    .line 298
    .local v20, lastDayOfMonth:I
    add-int/lit8 v8, v27, 0x1

    .restart local v8       #currentDay:I
    :goto_5
    move/from16 v0, v20

    if-gt v8, v0, :cond_e

    .line 300
    const/4 v15, 0x0

    .line 301
    .restart local v15       #dayHeaderAdded:Z
    invoke-virtual/range {v23 .. v23}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 302
    .restart local v19       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/calendar/EventByDayAdapter$MultipleDayInfo;>;"
    :goto_6
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 303
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/htc/calendar/EventByDayAdapter$MultipleDayInfo;

    .line 306
    .restart local v18       #info:Lcom/htc/calendar/EventByDayAdapter$MultipleDayInfo;
    move-object/from16 v0, v18

    iget v3, v0, Lcom/htc/calendar/EventByDayAdapter$MultipleDayInfo;->mEndDay:I

    if-ge v3, v8, :cond_b

    .line 307
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    .line 313
    :cond_b
    if-nez v15, :cond_c

    .line 314
    new-instance v6, Lcom/htc/calendar/EventByDayAdapter$RowInfo;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EventByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8}, Lcom/htc/calendar/EventByDayAdapter;->getDateString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Lcom/htc/calendar/EventByDayAdapter$RowInfo;-><init>(IILjava/lang/String;ZZ)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/htc/calendar/EventByDayAdapter$HandleRowInfo;->addRowInfo(Lcom/htc/calendar/EventByDayAdapter$RowInfo;)V

    .line 316
    const/4 v15, 0x1

    .line 318
    :cond_c
    new-instance v9, Lcom/htc/calendar/EventByDayAdapter$RowInfo;

    const/4 v10, 0x1

    move-object/from16 v0, v18

    iget v11, v0, Lcom/htc/calendar/EventByDayAdapter$MultipleDayInfo;->mPosition:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EventByDayAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v18

    iget v4, v0, Lcom/htc/calendar/EventByDayAdapter$MultipleDayInfo;->mPosition:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/htc/calendar/EventByDayAdapter;->getDateString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-direct/range {v9 .. v14}, Lcom/htc/calendar/EventByDayAdapter$RowInfo;-><init>(IILjava/lang/String;ZZ)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/htc/calendar/EventByDayAdapter$HandleRowInfo;->addRowInfo(Lcom/htc/calendar/EventByDayAdapter$RowInfo;)V

    goto :goto_6

    .line 299
    .end local v18           #info:Lcom/htc/calendar/EventByDayAdapter$MultipleDayInfo;
    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 323
    .end local v8           #currentDay:I
    .end local v15           #dayHeaderAdded:Z
    .end local v19           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/calendar/EventByDayAdapter$MultipleDayInfo;>;"
    .end local v20           #lastDayOfMonth:I
    .end local v21           #millis:J
    :cond_e
    invoke-virtual/range {v17 .. v17}, Lcom/htc/calendar/EventByDayAdapter$HandleRowInfo;->getRowInfo()Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/calendar/EventByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    goto/16 :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 204
    invoke-virtual {p0, p1}, Lcom/htc/calendar/EventByDayAdapter;->calculateDays(Landroid/database/Cursor;)V

    .line 205
    iget-object v0, p0, Lcom/htc/calendar/EventByDayAdapter;->mEventAdapter:Lcom/htc/calendar/EventAdapter;

    invoke-virtual {v0, p1}, Lcom/htc/calendar/EventAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 206
    return-void
.end method

.method public clearDayHeaderInfo()V
    .locals 1

    .prologue
    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/calendar/EventByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    .line 201
    return-void
.end method

.method public findDayPositionNearestTime(Landroid/text/format/Time;)I
    .locals 11
    .parameter "time"

    .prologue
    const/4 v1, 0x0

    .line 375
    iget-object v9, p0, Lcom/htc/calendar/EventByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-nez v9, :cond_1

    .line 399
    :cond_0
    :goto_0
    return v1

    .line 378
    :cond_1
    invoke-virtual {p1, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 379
    .local v4, millis:J
    iget-wide v9, p1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v4, v5, v9, v10}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 380
    .local v2, julianDay:I
    const/16 v6, 0x3e8

    .line 381
    .local v6, minDistance:I
    const/4 v7, 0x0

    .line 382
    .local v7, minIndex:I
    iget-object v9, p0, Lcom/htc/calendar/EventByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 383
    .local v3, len:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 384
    iget-object v9, p0, Lcom/htc/calendar/EventByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/calendar/EventByDayAdapter$RowInfo;

    .line 385
    .local v8, row:Lcom/htc/calendar/EventByDayAdapter$RowInfo;
    iget v9, v8, Lcom/htc/calendar/EventByDayAdapter$RowInfo;->mType:I

    if-nez v9, :cond_2

    .line 386
    iget v9, v8, Lcom/htc/calendar/EventByDayAdapter$RowInfo;->mData:I

    sub-int v9, v2, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 387
    .local v0, distance:I
    if-eqz v0, :cond_0

    .line 390
    if-ge v0, v6, :cond_2

    .line 391
    move v6, v0

    .line 392
    move v7, v1

    .line 383
    .end local v0           #distance:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v8           #row:Lcom/htc/calendar/EventByDayAdapter$RowInfo;
    :cond_3
    move v1, v7

    .line 399
    goto :goto_0
.end method

.method public findJulianDayFromPosition(I)I
    .locals 5
    .parameter "position"

    .prologue
    const/4 v3, 0x0

    .line 409
    iget-object v4, p0, Lcom/htc/calendar/EventByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    if-gez p1, :cond_1

    .line 422
    :cond_0
    :goto_0
    return v3

    .line 413
    :cond_1
    iget-object v4, p0, Lcom/htc/calendar/EventByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 414
    .local v1, len:I
    if-ge p1, v1, :cond_0

    .line 416
    move v0, p1

    .local v0, index:I
    :goto_1
    if-ltz v0, :cond_0

    .line 417
    iget-object v4, p0, Lcom/htc/calendar/EventByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/calendar/EventByDayAdapter$RowInfo;

    .line 418
    .local v2, row:Lcom/htc/calendar/EventByDayAdapter$RowInfo;
    iget v4, v2, Lcom/htc/calendar/EventByDayAdapter$RowInfo;->mType:I

    if-nez v4, :cond_2

    .line 419
    iget v3, v2, Lcom/htc/calendar/EventByDayAdapter$RowInfo;->mData:I

    goto :goto_0

    .line 416
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/htc/calendar/EventByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/htc/calendar/EventByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 60
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/EventByDayAdapter;->mEventAdapter:Lcom/htc/calendar/EventAdapter;

    invoke-virtual {v0}, Lcom/htc/calendar/EventAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getCursorPosition(I)I
    .locals 4
    .parameter "listPos"

    .prologue
    .line 433
    iget-object v2, p0, Lcom/htc/calendar/EventByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    if-ltz p1, :cond_1

    .line 434
    iget-object v2, p0, Lcom/htc/calendar/EventByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/calendar/EventByDayAdapter$RowInfo;

    .line 435
    .local v1, row:Lcom/htc/calendar/EventByDayAdapter$RowInfo;
    iget v2, v1, Lcom/htc/calendar/EventByDayAdapter$RowInfo;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 436
    iget v2, v1, Lcom/htc/calendar/EventByDayAdapter$RowInfo;->mData:I

    .line 447
    .end local v1           #row:Lcom/htc/calendar/EventByDayAdapter$RowInfo;
    :goto_0
    return v2

    .line 438
    .restart local v1       #row:Lcom/htc/calendar/EventByDayAdapter$RowInfo;
    :cond_0
    add-int/lit8 v0, p1, 0x1

    .line 439
    .local v0, nextPos:I
    iget-object v2, p0, Lcom/htc/calendar/EventByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 440
    invoke-virtual {p0, v0}, Lcom/htc/calendar/EventByDayAdapter;->getCursorPosition(I)I

    move-result v0

    .line 441
    if-ltz v0, :cond_1

    .line 442
    neg-int v2, v0

    goto :goto_0

    .line 447
    .end local v0           #nextPos:I
    .end local v1           #row:Lcom/htc/calendar/EventByDayAdapter$RowInfo;
    :cond_1
    const/high16 v2, -0x8000

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .parameter "position"

    .prologue
    .line 64
    iget-object v1, p0, Lcom/htc/calendar/EventByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/htc/calendar/EventByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/EventByDayAdapter$RowInfo;

    .line 66
    .local v0, row:Lcom/htc/calendar/EventByDayAdapter$RowInfo;
    iget v1, v0, Lcom/htc/calendar/EventByDayAdapter$RowInfo;->mType:I

    if-nez v1, :cond_0

    .line 72
    .end local v0           #row:Lcom/htc/calendar/EventByDayAdapter$RowInfo;
    :goto_0
    return-object v0

    .line 69
    .restart local v0       #row:Lcom/htc/calendar/EventByDayAdapter$RowInfo;
    :cond_0
    iget-object v1, p0, Lcom/htc/calendar/EventByDayAdapter;->mEventAdapter:Lcom/htc/calendar/EventAdapter;

    iget v2, v0, Lcom/htc/calendar/EventByDayAdapter$RowInfo;->mData:I

    invoke-virtual {v1, v2}, Lcom/htc/calendar/EventAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 72
    .end local v0           #row:Lcom/htc/calendar/EventByDayAdapter$RowInfo;
    :cond_1
    iget-object v1, p0, Lcom/htc/calendar/EventByDayAdapter;->mEventAdapter:Lcom/htc/calendar/EventAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/calendar/EventAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 76
    iget-object v1, p0, Lcom/htc/calendar/EventByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 77
    iget-object v1, p0, Lcom/htc/calendar/EventByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/EventByDayAdapter$RowInfo;

    .line 78
    .local v0, row:Lcom/htc/calendar/EventByDayAdapter$RowInfo;
    iget v1, v0, Lcom/htc/calendar/EventByDayAdapter$RowInfo;->mType:I

    if-nez v1, :cond_0

    .line 79
    neg-int v1, p1

    int-to-long v1, v1

    .line 84
    .end local v0           #row:Lcom/htc/calendar/EventByDayAdapter$RowInfo;
    :goto_0
    return-wide v1

    .line 81
    .restart local v0       #row:Lcom/htc/calendar/EventByDayAdapter$RowInfo;
    :cond_0
    iget-object v1, p0, Lcom/htc/calendar/EventByDayAdapter;->mEventAdapter:Lcom/htc/calendar/EventAdapter;

    iget v2, v0, Lcom/htc/calendar/EventByDayAdapter$RowInfo;->mData:I

    invoke-virtual {v1, v2}, Lcom/htc/calendar/EventAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0

    .line 84
    .end local v0           #row:Lcom/htc/calendar/EventByDayAdapter$RowInfo;
    :cond_1
    iget-object v1, p0, Lcom/htc/calendar/EventByDayAdapter;->mEventAdapter:Lcom/htc/calendar/EventAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/calendar/EventAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter "position"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/htc/calendar/EventByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/calendar/EventByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/htc/calendar/EventByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/EventByDayAdapter$RowInfo;

    iget v0, v0, Lcom/htc/calendar/EventByDayAdapter$RowInfo;->mType:I

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
    .line 99
    iget-object v8, p0, Lcom/htc/calendar/EventByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/htc/calendar/EventByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le p1, v8, :cond_3

    .line 101
    :cond_0
    iget-object v8, p0, Lcom/htc/calendar/EventByDayAdapter;->mEventAdapter:Lcom/htc/calendar/EventAdapter;

    invoke-virtual {v8, p1, p2, p3}, Lcom/htc/calendar/EventAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 102
    .local v6, v:Landroid/view/View;
    if-nez v6, :cond_1

    .line 103
    const-string v8, "AgendaByDayAdapter"

    const-string v9, "v is null from mEventAdapter"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
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
    move-object v2, v6

    .line 192
    .end local v6           #v:Landroid/view/View;
    :goto_1
    return-object v2

    .line 104
    .restart local v6       #v:Landroid/view/View;
    :cond_2
    const-string v8, "not null"

    goto :goto_0

    .line 109
    .end local v6           #v:Landroid/view/View;
    :cond_3
    iget-object v8, p0, Lcom/htc/calendar/EventByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/calendar/EventByDayAdapter$RowInfo;

    .line 110
    .local v4, row:Lcom/htc/calendar/EventByDayAdapter$RowInfo;
    iget v8, v4, Lcom/htc/calendar/EventByDayAdapter$RowInfo;->mType:I

    if-nez v8, :cond_8

    .line 112
    const/4 v3, 0x0

    .line 113
    .local v3, holder:Lcom/htc/calendar/EventByDayAdapter$ViewHolder;
    const/4 v2, 0x0

    .line 114
    .local v2, eventDayView:Landroid/view/View;
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 117
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .line 118
    .local v5, tag:Ljava/lang/Object;
    instance-of v8, v5, Lcom/htc/calendar/EventByDayAdapter$ViewHolder;

    if-eqz v8, :cond_4

    .line 119
    move-object v2, p2

    move-object v3, v5

    .line 120
    check-cast v3, Lcom/htc/calendar/EventByDayAdapter$ViewHolder;

    .line 124
    .end local v5           #tag:Ljava/lang/Object;
    :cond_4
    if-nez v3, :cond_5

    .line 127
    new-instance v3, Lcom/htc/calendar/EventByDayAdapter$ViewHolder;

    .end local v3           #holder:Lcom/htc/calendar/EventByDayAdapter$ViewHolder;
    invoke-direct {v3}, Lcom/htc/calendar/EventByDayAdapter$ViewHolder;-><init>()V

    .line 128
    .restart local v3       #holder:Lcom/htc/calendar/EventByDayAdapter$ViewHolder;
    iget-object v8, p0, Lcom/htc/calendar/EventByDayAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v9, 0x7f03002d

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p3, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 130
    const v8, 0x7f0d00c6

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/htc/calendar/EventByDayAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    .line 131
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 155
    :cond_5
    invoke-static {}, Lcom/htc/calendar/Utils;->isEnableTheme()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 168
    :cond_6
    :goto_2
    iget-object v0, v4, Lcom/htc/calendar/EventByDayAdapter$RowInfo;->mDateString:Ljava/lang/String;

    .line 170
    .local v0, dateViewText:Ljava/lang/String;
    iget-object v8, v3, Lcom/htc/calendar/EventByDayAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 157
    .end local v0           #dateViewText:Ljava/lang/String;
    :cond_7
    invoke-static {}, Lcom/htc/calendar/Utils;->isEnableSkin()Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_2

    .line 173
    .end local v2           #eventDayView:Landroid/view/View;
    .end local v3           #holder:Lcom/htc/calendar/EventByDayAdapter$ViewHolder;
    :cond_8
    iget v8, v4, Lcom/htc/calendar/EventByDayAdapter$RowInfo;->mType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_b

    .line 175
    :try_start_0
    iget-object v8, p0, Lcom/htc/calendar/EventByDayAdapter;->mEventAdapter:Lcom/htc/calendar/EventAdapter;

    iget v9, v4, Lcom/htc/calendar/EventByDayAdapter$RowInfo;->mData:I

    invoke-virtual {v8, v9, p2, p3}, Lcom/htc/calendar/EventAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 176
    .local v7, x:Landroid/view/View;
    if-eqz v7, :cond_a

    .line 177
    iget-boolean v8, v4, Lcom/htc/calendar/EventByDayAdapter$RowInfo;->isTopRound:Z

    if-eqz v8, :cond_9

    .line 178
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/calendar/EventAdapter$ViewHolder;

    iget-object v8, v8, Lcom/htc/calendar/EventAdapter$ViewHolder;->listItem:Lcom/htc/widget/HtcListItem;

    const/16 v9, 0xa

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V

    .line 181
    :cond_9
    iget-boolean v8, v4, Lcom/htc/calendar/EventByDayAdapter$RowInfo;->isBottomRound:Z

    if-eqz v8, :cond_a

    .line 182
    const-string v8, "AgendaByDayAdapter"

    const-string v9, "row.isBottomRound true"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/calendar/EventAdapter$ViewHolder;

    iget-object v8, v8, Lcom/htc/calendar/EventAdapter$ViewHolder;->listItem:Lcom/htc/widget/HtcListItem;

    const/16 v9, 0xb

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItem;->setRoundCorner(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    move-object v2, v7

    .line 188
    goto/16 :goto_1

    .line 189
    .end local v7           #x:Landroid/view/View;
    :catch_0
    move-exception v1

    .line 190
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, p2

    .line 192
    goto/16 :goto_1

    .line 195
    .end local v1           #e:Ljava/lang/Exception;
    :cond_b
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown event type:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v4, Lcom/htc/calendar/EventByDayAdapter$RowInfo;->mType:I

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
    .line 89
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    .line 457
    iget-object v2, p0, Lcom/htc/calendar/EventByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/calendar/EventByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 458
    iget-object v2, p0, Lcom/htc/calendar/EventByDayAdapter;->mRowInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/EventByDayAdapter$RowInfo;

    .line 459
    .local v0, row:Lcom/htc/calendar/EventByDayAdapter$RowInfo;
    iget v2, v0, Lcom/htc/calendar/EventByDayAdapter$RowInfo;->mType:I

    if-ne v2, v1, :cond_1

    .line 461
    .end local v0           #row:Lcom/htc/calendar/EventByDayAdapter$RowInfo;
    :cond_0
    :goto_0
    return v1

    .line 459
    .restart local v0       #row:Lcom/htc/calendar/EventByDayAdapter$RowInfo;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
