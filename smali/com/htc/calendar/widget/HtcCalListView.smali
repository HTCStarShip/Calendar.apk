.class public Lcom/htc/calendar/widget/HtcCalListView;
.super Lcom/htc/widget/HtcListView;
.source "HtcCalListView.java"


# static fields
.field private static final HEADER_HEIGHT:I = 0x3a

.field private static final IMAGE_SIZE_X:I = 0x62

.field private static final IMAGE_SIZE_Y:I = 0x5a

.field private static final MARGIN_LEFT:I = 0xa

.field private static final MARGIN_TOP:I = 0x19

.field private static final TAG:Ljava/lang/String; = "HtcCalListView"


# instance fields
.field private cacheMotionEvent:Landroid/view/MotionEvent;

.field private mAnchor:F

.field private mBottom:I

.field private mCondition:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mEnableWeather:Z

.field private mHigh_Label:Ljava/lang/String;

.field private mHigh_Value:Ljava/lang/String;

.field public mIsSliding:Z

.field private mLocation:Ljava/lang/String;

.field private mLow_Label:Ljava/lang/String;

.field private mLow_Value:Ljava/lang/String;

.field private mResources:Landroid/content/res/Resources;

.field private mScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;)V

    .line 67
    iput v1, p0, Lcom/htc/calendar/widget/HtcCalListView;->mBottom:I

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->mAnchor:F

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->mLocation:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->mCondition:Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->mHigh_Label:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->mHigh_Value:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->mLow_Label:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->mLow_Value:Ljava/lang/String;

    .line 78
    iput-boolean v1, p0, Lcom/htc/calendar/widget/HtcCalListView;->mIsSliding:Z

    .line 79
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->mScale:F

    .line 83
    iput-object p1, p0, Lcom/htc/calendar/widget/HtcCalListView;->mContext:Landroid/content/Context;

    .line 84
    iget-object v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->mResources:Landroid/content/res/Resources;

    .line 85
    iput-boolean v1, p0, Lcom/htc/calendar/widget/HtcCalListView;->mEnableWeather:Z

    .line 87
    iget-object v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->mScale:F

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    iput v1, p0, Lcom/htc/calendar/widget/HtcCalListView;->mBottom:I

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->mAnchor:F

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->mLocation:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->mCondition:Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->mHigh_Label:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->mHigh_Value:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->mLow_Label:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->mLow_Value:Ljava/lang/String;

    .line 78
    iput-boolean v1, p0, Lcom/htc/calendar/widget/HtcCalListView;->mIsSliding:Z

    .line 79
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->mScale:F

    .line 92
    iput-object p1, p0, Lcom/htc/calendar/widget/HtcCalListView;->mContext:Landroid/content/Context;

    .line 93
    iget-object v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->mResources:Landroid/content/res/Resources;

    .line 95
    iget-object v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->mScale:F

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 99
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/widget/HtcListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    iput v1, p0, Lcom/htc/calendar/widget/HtcCalListView;->mBottom:I

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->mAnchor:F

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->mLocation:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->mCondition:Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 73
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->mHigh_Label:Ljava/lang/String;

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->mHigh_Value:Ljava/lang/String;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->mLow_Label:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->mLow_Value:Ljava/lang/String;

    .line 78
    iput-boolean v1, p0, Lcom/htc/calendar/widget/HtcCalListView;->mIsSliding:Z

    .line 79
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->mScale:F

    .line 100
    iput-object p1, p0, Lcom/htc/calendar/widget/HtcCalListView;->mContext:Landroid/content/Context;

    .line 101
    iget-object v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->mResources:Landroid/content/res/Resources;

    .line 103
    iget-object v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->mScale:F

    .line 104
    return-void
.end method

.method private drawHtcText(Landroid/graphics/Canvas;FFFILjava/lang/String;)V
    .locals 4
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "textSize"
    .parameter "color"
    .parameter "text"

    .prologue
    const/high16 v3, 0x3f80

    .line 183
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 184
    .local v0, p:Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 187
    .local v1, typeface:Landroid/graphics/Typeface;
    float-to-int v2, p4

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 188
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 189
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 192
    const/high16 v2, -0x100

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 193
    sub-float v2, p2, v3

    sub-float v3, p3, v3

    invoke-virtual {p1, p6, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 196
    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 197
    invoke-virtual {p1, p6, p2, p3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 198
    invoke-virtual {v0, p6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    add-float/2addr v2, p2

    const/high16 v3, 0x4000

    add-float/2addr v2, v3

    iput v2, p0, Lcom/htc/calendar/widget/HtcCalListView;->mAnchor:F

    .line 199
    return-void
.end method

.method private drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V
    .locals 8
    .parameter "canvas"
    .parameter "drawable"

    .prologue
    .line 202
    if-nez p2, :cond_0

    .line 203
    const-string v6, "HtcCalListView"

    const-string v7, "drawImage get null drawable"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :goto_0
    return-void

    .line 206
    :cond_0
    const/high16 v6, 0x42c4

    iget v7, p0, Lcom/htc/calendar/widget/HtcCalListView;->mScale:F

    mul-float/2addr v6, v7

    float-to-int v0, v6

    .line 207
    .local v0, image_size_x:I
    const/high16 v6, 0x42b4

    iget v7, p0, Lcom/htc/calendar/widget/HtcCalListView;->mScale:F

    mul-float/2addr v6, v7

    float-to-int v1, v6

    .line 209
    .local v1, image_size_y:I
    invoke-virtual {p0}, Lcom/htc/calendar/widget/HtcCalListView;->getWidth()I

    move-result v5

    .line 210
    .local v5, width:I
    sub-int v6, v5, v0

    add-int/lit8 v3, v6, -0xf

    .line 211
    .local v3, startX:I
    iget v6, p0, Lcom/htc/calendar/widget/HtcCalListView;->mBottom:I

    add-int/lit8 v4, v6, -0x5

    .line 212
    .local v4, startY:I
    add-int v6, v3, v0

    add-int v7, v4, v1

    invoke-virtual {p2, v3, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 213
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 215
    .local v2, rect:Landroid/graphics/Rect;
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 135
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    .line 252
    iput-object p1, p0, Lcom/htc/calendar/widget/HtcCalListView;->cacheMotionEvent:Landroid/view/MotionEvent;

    .line 253
    iget-boolean v2, p0, Lcom/htc/calendar/widget/HtcCalListView;->mIsSliding:Z

    if-eqz v2, :cond_0

    .line 254
    iget-object v2, p0, Lcom/htc/calendar/widget/HtcCalListView;->cacheMotionEvent:Landroid/view/MotionEvent;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 255
    iget-object v2, p0, Lcom/htc/calendar/widget/HtcCalListView;->cacheMotionEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v2}, Lcom/htc/widget/HtcListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 266
    :goto_0
    return v0

    .line 258
    :cond_0
    const/4 v0, 0x0

    .line 261
    .local v0, b:Z
    :try_start_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 262
    :catch_0
    move-exception v1

    .line 263
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "HtcCalListView"

    const-string v3, "dispatchTouchEvent exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected drawEndRound(Landroid/graphics/Canvas;IZ)V
    .locals 9
    .parameter "canvas"
    .parameter "bottomPos"
    .parameter "drawEndRound"

    .prologue
    .line 138
    invoke-super {p0, p1, p2, p3}, Lcom/htc/widget/HtcListView;->drawEndRound(Landroid/graphics/Canvas;IZ)V

    .line 140
    iget-boolean v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->mEnableWeather:Z

    if-eqz v0, :cond_0

    .line 142
    iget-object v3, p0, Lcom/htc/calendar/widget/HtcCalListView;->mLocation:Ljava/lang/String;

    iget-object v4, p0, Lcom/htc/calendar/widget/HtcCalListView;->mCondition:Ljava/lang/String;

    iget-object v5, p0, Lcom/htc/calendar/widget/HtcCalListView;->mHigh_Label:Ljava/lang/String;

    iget-object v6, p0, Lcom/htc/calendar/widget/HtcCalListView;->mHigh_Value:Ljava/lang/String;

    iget-object v7, p0, Lcom/htc/calendar/widget/HtcCalListView;->mLow_Label:Ljava/lang/String;

    iget-object v8, p0, Lcom/htc/calendar/widget/HtcCalListView;->mLow_Value:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v8}, Lcom/htc/calendar/widget/HtcCalListView;->drawWeather(Landroid/graphics/Canvas;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v0}, Lcom/htc/calendar/widget/HtcCalListView;->drawImage(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;)V

    .line 145
    :cond_0
    return-void
.end method

.method public drawWeather(Landroid/graphics/Canvas;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .parameter "canvas"
    .parameter "bottomPos"
    .parameter "location"
    .parameter "condition"
    .parameter "h_label"
    .parameter "h_value"
    .parameter "l_label"
    .parameter "l_value"

    .prologue
    .line 148
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/calendar/widget/HtcCalListView;->mBottom:I

    .line 151
    .local v15, startY:I
    const/high16 v1, 0x4190

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/calendar/widget/HtcCalListView;->mScale:F

    mul-float v5, v1, v2

    .line 152
    .local v5, firstLineFontSize:F
    const/high16 v1, 0x4160

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/calendar/widget/HtcCalListView;->mScale:F

    mul-float v10, v1, v2

    .line 153
    .local v10, secondLineFontSize:F
    const/high16 v1, 0x41a0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/calendar/widget/HtcCalListView;->mScale:F

    mul-float v14, v1, v2

    .line 154
    .local v14, oneLineGap:F
    const/high16 v1, 0x4220

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/calendar/widget/HtcCalListView;->mScale:F

    mul-float v16, v1, v2

    .line 155
    .local v16, twoLineGap:F
    const/high16 v1, 0x4120

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/calendar/widget/HtcCalListView;->mScale:F

    mul-float v17, v1, v2

    .line 156
    .local v17, wordPadding:F
    const/high16 v1, 0x41c8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/calendar/widget/HtcCalListView;->mScale:F

    mul-float v13, v1, v2

    .line 157
    .local v13, marginTop:F
    const/high16 v1, 0x4120

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/calendar/widget/HtcCalListView;->mScale:F

    mul-float v3, v1, v2

    .line 160
    .local v3, marginLeft:F
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 161
    const/high16 v5, 0x4170

    .line 162
    const/high16 v10, 0x4140

    .line 165
    :cond_0
    int-to-float v1, v15

    add-float v4, v13, v1

    const/4 v6, -0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/htc/calendar/widget/HtcCalListView;->drawHtcText(Landroid/graphics/Canvas;FFFILjava/lang/String;)V

    .line 166
    int-to-float v1, v15

    add-float/2addr v1, v13

    add-float v9, v1, v14

    const v11, -0x666667

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move v8, v3

    move-object/from16 v12, p4

    invoke-direct/range {v6 .. v12}, Lcom/htc/calendar/widget/HtcCalListView;->drawHtcText(Landroid/graphics/Canvas;FFFILjava/lang/String;)V

    .line 168
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/calendar/widget/HtcCalListView;->mAnchor:F

    .line 171
    int-to-float v1, v15

    add-float/2addr v1, v13

    add-float v9, v1, v16

    const v11, -0x666667

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move v8, v3

    move-object/from16 v12, p5

    invoke-direct/range {v6 .. v12}, Lcom/htc/calendar/widget/HtcCalListView;->drawHtcText(Landroid/graphics/Canvas;FFFILjava/lang/String;)V

    .line 172
    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/calendar/widget/HtcCalListView;->mAnchor:F

    int-to-float v1, v15

    add-float/2addr v1, v13

    add-float v9, v1, v16

    const/4 v11, -0x1

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v12, p6

    invoke-direct/range {v6 .. v12}, Lcom/htc/calendar/widget/HtcCalListView;->drawHtcText(Landroid/graphics/Canvas;FFFILjava/lang/String;)V

    .line 175
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/calendar/widget/HtcCalListView;->mAnchor:F

    add-float v8, v1, v17

    int-to-float v1, v15

    add-float/2addr v1, v13

    add-float v9, v1, v16

    const v11, -0x666667

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v12, p7

    invoke-direct/range {v6 .. v12}, Lcom/htc/calendar/widget/HtcCalListView;->drawHtcText(Landroid/graphics/Canvas;FFFILjava/lang/String;)V

    .line 176
    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/calendar/widget/HtcCalListView;->mAnchor:F

    int-to-float v1, v15

    add-float/2addr v1, v13

    add-float v9, v1, v16

    const/4 v11, -0x1

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v12, p8

    invoke-direct/range {v6 .. v12}, Lcom/htc/calendar/widget/HtcCalListView;->drawHtcText(Landroid/graphics/Canvas;FFFILjava/lang/String;)V

    .line 180
    return-void
.end method

.method protected drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V
    .locals 1
    .parameter "canvas"
    .parameter "bounds"
    .parameter "drawable"
    .parameter "paint"

    .prologue
    .line 127
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/widget/HtcListView;->drawXfer(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/drawable/Drawable;Landroid/graphics/Paint;)V

    .line 130
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->mBottom:I

    .line 131
    return-void
.end method

.method public enableWeather(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 108
    iput-boolean p1, p0, Lcom/htc/calendar/widget/HtcCalListView;->mEnableWeather:Z

    .line 109
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 240
    iput-object p1, p0, Lcom/htc/calendar/widget/HtcCalListView;->cacheMotionEvent:Landroid/view/MotionEvent;

    .line 241
    iget-boolean v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->mIsSliding:Z

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->cacheMotionEvent:Landroid/view/MotionEvent;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 243
    iget-object v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->cacheMotionEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v0}, Lcom/htc/widget/HtcListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 246
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    .line 221
    iput-object p1, p0, Lcom/htc/calendar/widget/HtcCalListView;->cacheMotionEvent:Landroid/view/MotionEvent;

    .line 222
    iget-boolean v2, p0, Lcom/htc/calendar/widget/HtcCalListView;->mIsSliding:Z

    if-eqz v2, :cond_0

    .line 223
    iget-object v2, p0, Lcom/htc/calendar/widget/HtcCalListView;->cacheMotionEvent:Landroid/view/MotionEvent;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 224
    iget-object v2, p0, Lcom/htc/calendar/widget/HtcCalListView;->cacheMotionEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v2}, Lcom/htc/widget/HtcListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 234
    :goto_0
    return v0

    .line 227
    :cond_0
    const/4 v0, 0x0

    .line 229
    .local v0, b:Z
    :try_start_0
    invoke-super {p0, p1}, Lcom/htc/widget/HtcListView;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v1

    .line 231
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "HtcCalListView"

    const-string v3, "onTouchEvent exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setWeatherData(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "location"
    .parameter "condition"
    .parameter "drawable"
    .parameter "high_label"
    .parameter "high_value"
    .parameter "low_label"
    .parameter "low_value"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/htc/calendar/widget/HtcCalListView;->mLocation:Ljava/lang/String;

    .line 116
    iput-object p2, p0, Lcom/htc/calendar/widget/HtcCalListView;->mCondition:Ljava/lang/String;

    .line 117
    iput-object p3, p0, Lcom/htc/calendar/widget/HtcCalListView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 118
    iput-object p4, p0, Lcom/htc/calendar/widget/HtcCalListView;->mHigh_Label:Ljava/lang/String;

    .line 119
    iput-object p5, p0, Lcom/htc/calendar/widget/HtcCalListView;->mHigh_Value:Ljava/lang/String;

    .line 120
    iput-object p6, p0, Lcom/htc/calendar/widget/HtcCalListView;->mLow_Label:Ljava/lang/String;

    .line 121
    iput-object p7, p0, Lcom/htc/calendar/widget/HtcCalListView;->mLow_Value:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public slidingFinish()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->cacheMotionEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->cacheMotionEvent:Landroid/view/MotionEvent;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 273
    iget-object v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->cacheMotionEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v0}, Lcom/htc/widget/HtcListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 274
    iget-object v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->cacheMotionEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v0}, Lcom/htc/widget/HtcListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 275
    iget-object v0, p0, Lcom/htc/calendar/widget/HtcCalListView;->cacheMotionEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v0}, Lcom/htc/widget/HtcListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 277
    :cond_0
    return-void
.end method
