.class public Lcom/htc/calendar/EventGeometry;
.super Ljava/lang/Object;
.source "EventGeometry.java"


# instance fields
.field private mCellMargin:I

.field private mHourGap:F

.field private mMinEventHeight:F

.field private mMinuteHeight:F

.field private mShowAllDay:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v0, p0, Lcom/htc/calendar/EventGeometry;->mCellMargin:I

    .line 181
    iput-boolean v0, p0, Lcom/htc/calendar/EventGeometry;->mShowAllDay:Z

    return-void
.end method


# virtual methods
.method computeEventRect(IIIILcom/htc/calendar/Event;)Z
    .locals 14
    .parameter "date"
    .parameter "left"
    .parameter "top"
    .parameter "cellWidth"
    .parameter "event"

    .prologue
    .line 50
    iget-boolean v11, p0, Lcom/htc/calendar/EventGeometry;->mShowAllDay:Z

    if-nez v11, :cond_0

    .line 51
    move-object/from16 v0, p5

    iget-boolean v11, v0, Lcom/htc/calendar/Event;->allDay:Z

    if-eqz v11, :cond_0

    .line 52
    const/4 v11, 0x0

    .line 107
    :goto_0
    return v11

    .line 57
    :cond_0
    iget v1, p0, Lcom/htc/calendar/EventGeometry;->mMinuteHeight:F

    .line 58
    .local v1, cellMinuteHeight:F
    move-object/from16 v0, p5

    iget v8, v0, Lcom/htc/calendar/Event;->startDay:I

    .line 59
    .local v8, startDay:I
    move-object/from16 v0, p5

    iget v4, v0, Lcom/htc/calendar/Event;->endDay:I

    .line 61
    .local v4, endDay:I
    if-gt v8, p1, :cond_1

    if-ge v4, p1, :cond_2

    .line 62
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 65
    :cond_2
    move-object/from16 v0, p5

    iget v10, v0, Lcom/htc/calendar/Event;->startTime:I

    .line 66
    .local v10, startTime:I
    move-object/from16 v0, p5

    iget v6, v0, Lcom/htc/calendar/Event;->endTime:I

    .line 70
    .local v6, endTime:I
    if-ge v8, p1, :cond_3

    .line 71
    const/4 v10, 0x0

    .line 76
    :cond_3
    if-le v4, p1, :cond_4

    .line 77
    const/16 v6, 0x5a0

    .line 80
    :cond_4
    invoke-virtual/range {p5 .. p5}, Lcom/htc/calendar/Event;->getColumn()I

    move-result v2

    .line 81
    .local v2, col:I
    invoke-virtual/range {p5 .. p5}, Lcom/htc/calendar/Event;->getMaxColumns()I

    move-result v7

    .line 82
    .local v7, maxCols:I
    div-int/lit8 v9, v10, 0x3c

    .line 83
    .local v9, startHour:I
    div-int/lit8 v5, v6, 0x3c

    .line 88
    .local v5, endHour:I
    mul-int/lit8 v11, v5, 0x3c

    if-ne v11, v6, :cond_5

    .line 89
    add-int/lit8 v5, v5, -0x1

    .line 91
    :cond_5
    move/from16 v0, p3

    int-to-float v11, v0

    move-object/from16 v0, p5

    iput v11, v0, Lcom/htc/calendar/Event;->top:F

    .line 92
    move-object/from16 v0, p5

    iget v11, v0, Lcom/htc/calendar/Event;->top:F

    int-to-float v12, v10

    mul-float/2addr v12, v1

    float-to-int v12, v12

    int-to-float v12, v12

    add-float/2addr v11, v12

    move-object/from16 v0, p5

    iput v11, v0, Lcom/htc/calendar/Event;->top:F

    .line 93
    move-object/from16 v0, p5

    iget v11, v0, Lcom/htc/calendar/Event;->top:F

    int-to-float v12, v9

    iget v13, p0, Lcom/htc/calendar/EventGeometry;->mHourGap:F

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    move-object/from16 v0, p5

    iput v11, v0, Lcom/htc/calendar/Event;->top:F

    .line 95
    move/from16 v0, p3

    int-to-float v11, v0

    move-object/from16 v0, p5

    iput v11, v0, Lcom/htc/calendar/Event;->bottom:F

    .line 96
    move-object/from16 v0, p5

    iget v11, v0, Lcom/htc/calendar/Event;->bottom:F

    int-to-float v12, v6

    mul-float/2addr v12, v1

    float-to-int v12, v12

    int-to-float v12, v12

    add-float/2addr v11, v12

    move-object/from16 v0, p5

    iput v11, v0, Lcom/htc/calendar/Event;->bottom:F

    .line 97
    move-object/from16 v0, p5

    iget v11, v0, Lcom/htc/calendar/Event;->bottom:F

    int-to-float v12, v5

    iget v13, p0, Lcom/htc/calendar/EventGeometry;->mHourGap:F

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    move-object/from16 v0, p5

    iput v11, v0, Lcom/htc/calendar/Event;->bottom:F

    .line 100
    move-object/from16 v0, p5

    iget v11, v0, Lcom/htc/calendar/Event;->bottom:F

    move-object/from16 v0, p5

    iget v12, v0, Lcom/htc/calendar/Event;->top:F

    iget v13, p0, Lcom/htc/calendar/EventGeometry;->mMinEventHeight:F

    add-float/2addr v12, v13

    cmpg-float v11, v11, v12

    if-gez v11, :cond_6

    .line 101
    move-object/from16 v0, p5

    iget v11, v0, Lcom/htc/calendar/Event;->top:F

    iget v12, p0, Lcom/htc/calendar/EventGeometry;->mMinEventHeight:F

    add-float/2addr v11, v12

    move-object/from16 v0, p5

    iput v11, v0, Lcom/htc/calendar/Event;->bottom:F

    .line 104
    :cond_6
    iget v11, p0, Lcom/htc/calendar/EventGeometry;->mCellMargin:I

    mul-int/lit8 v11, v11, 0x2

    sub-int v11, p4, v11

    int-to-float v11, v11

    int-to-float v12, v7

    div-float v3, v11, v12

    .line 105
    .local v3, colWidth:F
    iget v11, p0, Lcom/htc/calendar/EventGeometry;->mCellMargin:I

    add-int v11, v11, p2

    int-to-float v11, v11

    int-to-float v12, v2

    mul-float/2addr v12, v3

    add-float/2addr v11, v12

    move-object/from16 v0, p5

    iput v11, v0, Lcom/htc/calendar/Event;->left:F

    .line 106
    move-object/from16 v0, p5

    iget v11, v0, Lcom/htc/calendar/Event;->left:F

    add-float/2addr v11, v3

    move-object/from16 v0, p5

    iput v11, v0, Lcom/htc/calendar/Event;->right:F

    .line 107
    const/4 v11, 0x1

    goto/16 :goto_0
.end method

.method eventIntersectsSelection(Lcom/htc/calendar/Event;Landroid/graphics/Rect;)Z
    .locals 2
    .parameter "event"
    .parameter "selection"

    .prologue
    .line 114
    iget v0, p1, Lcom/htc/calendar/Event;->left:F

    iget v1, p2, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Lcom/htc/calendar/Event;->right:F

    iget v1, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/htc/calendar/Event;->top:F

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Lcom/htc/calendar/Event;->bottom:F

    iget v1, p2, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 116
    const/4 v0, 0x1

    .line 118
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCellMargin()I
    .locals 1

    .prologue
    .line 188
    iget v0, p0, Lcom/htc/calendar/EventGeometry;->mCellMargin:I

    return v0
.end method

.method pointToEvent(FFLcom/htc/calendar/Event;)F
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "event"

    .prologue
    .line 125
    iget v3, p3, Lcom/htc/calendar/Event;->left:F

    .line 126
    .local v3, left:F
    iget v4, p3, Lcom/htc/calendar/Event;->right:F

    .line 127
    .local v4, right:F
    iget v5, p3, Lcom/htc/calendar/Event;->top:F

    .line 128
    .local v5, top:F
    iget v0, p3, Lcom/htc/calendar/Event;->bottom:F

    .line 130
    .local v0, bottom:F
    cmpl-float v6, p1, v3

    if-ltz v6, :cond_5

    .line 131
    cmpg-float v6, p1, v4

    if-gtz v6, :cond_3

    .line 132
    cmpl-float v6, p2, v5

    if-ltz v6, :cond_2

    .line 133
    cmpg-float v6, p2, v0

    if-gtz v6, :cond_1

    .line 135
    const/4 v1, 0x0

    .line 172
    :cond_0
    :goto_0
    return v1

    .line 138
    :cond_1
    sub-float v1, p2, v0

    goto :goto_0

    .line 141
    :cond_2
    sub-float v1, v5, p2

    goto :goto_0

    .line 145
    :cond_3
    sub-float v1, p1, v4

    .line 146
    .local v1, dx:F
    cmpg-float v6, p2, v5

    if-gez v6, :cond_4

    .line 148
    sub-float v2, v5, p2

    .line 149
    .local v2, dy:F
    mul-float v6, v1, v1

    mul-float v7, v2, v2

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v1, v6

    goto :goto_0

    .line 151
    .end local v2           #dy:F
    :cond_4
    cmpl-float v6, p2, v0

    if-lez v6, :cond_0

    .line 153
    sub-float v2, p2, v0

    .line 154
    .restart local v2       #dy:F
    mul-float v6, v1, v1

    mul-float v7, v2, v2

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v1, v6

    goto :goto_0

    .line 160
    .end local v1           #dx:F
    .end local v2           #dy:F
    :cond_5
    sub-float v1, v3, p1

    .line 161
    .restart local v1       #dx:F
    cmpg-float v6, p2, v5

    if-gez v6, :cond_6

    .line 163
    sub-float v2, v5, p2

    .line 164
    .restart local v2       #dy:F
    mul-float v6, v1, v1

    mul-float v7, v2, v2

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v1, v6

    goto :goto_0

    .line 166
    .end local v2           #dy:F
    :cond_6
    cmpl-float v6, p2, v0

    if-lez v6, :cond_0

    .line 168
    sub-float v2, p2, v0

    .line 169
    .restart local v2       #dy:F
    mul-float v6, v1, v1

    mul-float v7, v2, v2

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v1, v6

    goto :goto_0
.end method

.method setCellMargin(I)V
    .locals 0
    .parameter "cellMargin"

    .prologue
    .line 31
    iput p1, p0, Lcom/htc/calendar/EventGeometry;->mCellMargin:I

    .line 32
    return-void
.end method

.method setHourGap(F)V
    .locals 0
    .parameter "gap"

    .prologue
    .line 35
    iput p1, p0, Lcom/htc/calendar/EventGeometry;->mHourGap:F

    .line 36
    return-void
.end method

.method setHourHeight(F)V
    .locals 1
    .parameter "height"

    .prologue
    .line 43
    const/high16 v0, 0x4270

    div-float v0, p1, v0

    iput v0, p0, Lcom/htc/calendar/EventGeometry;->mMinuteHeight:F

    .line 44
    return-void
.end method

.method setMinEventHeight(F)V
    .locals 0
    .parameter "height"

    .prologue
    .line 39
    iput p1, p0, Lcom/htc/calendar/EventGeometry;->mMinEventHeight:F

    .line 40
    return-void
.end method

.method public setShowAllDay(Z)V
    .locals 0
    .parameter "show"

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/htc/calendar/EventGeometry;->mShowAllDay:Z

    .line 185
    return-void
.end method
