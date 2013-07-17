.class public Lcom/htc/calendar/widget/WeatherBar;
.super Landroid/widget/RelativeLayout;
.source "WeatherBar.java"


# static fields
.field private static final DEGREE_SYMBOL:Ljava/lang/String; = "\u00b0"

.field private static final TAG:Ljava/lang/String; = "WeatherBar"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsShowWeather:Z

.field private mWeatherBitmap:Landroid/graphics/Bitmap;

.field private mWeatherBitmapHeight:I

.field private mWeatherBitmapWidth:I

.field private mWeatherCanvas:Landroid/graphics/Canvas;

.field private mWeatherData:Lcom/htc/calendar/WeatherData;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/calendar/widget/WeatherBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/calendar/widget/WeatherBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/calendar/widget/WeatherBar;->mWeatherData:Lcom/htc/calendar/WeatherData;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/calendar/widget/WeatherBar;->mIsShowWeather:Z

    .line 69
    iput-object p1, p0, Lcom/htc/calendar/widget/WeatherBar;->mContext:Landroid/content/Context;

    .line 70
    new-instance v0, Lcom/htc/calendar/WeatherData;

    invoke-direct {v0, p1}, Lcom/htc/calendar/WeatherData;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/calendar/widget/WeatherBar;->mWeatherData:Lcom/htc/calendar/WeatherData;

    .line 72
    iget-object v0, p0, Lcom/htc/calendar/widget/WeatherBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/calendar/widget/WeatherBar;->mWeatherBitmapWidth:I

    .line 73
    iget-object v0, p0, Lcom/htc/calendar/widget/WeatherBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/calendar/widget/WeatherBar;->mWeatherBitmapHeight:I

    .line 75
    iget v0, p0, Lcom/htc/calendar/widget/WeatherBar;->mWeatherBitmapWidth:I

    iget v1, p0, Lcom/htc/calendar/widget/WeatherBar;->mWeatherBitmapHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/widget/WeatherBar;->mWeatherBitmap:Landroid/graphics/Bitmap;

    .line 76
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/htc/calendar/widget/WeatherBar;->mWeatherBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/htc/calendar/widget/WeatherBar;->mWeatherCanvas:Landroid/graphics/Canvas;

    .line 77
    return-void
.end method


# virtual methods
.method public checkIsShowWeather()Z
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/htc/calendar/widget/WeatherBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/calendar/CalendarPreferenceActivity;->showWeatherInfo(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/calendar/widget/WeatherBar;->mIsShowWeather:Z

    .line 210
    iget-boolean v0, p0, Lcom/htc/calendar/widget/WeatherBar;->mIsShowWeather:Z

    return v0
.end method

.method public clearWeatherInfo()V
    .locals 2

    .prologue
    .line 167
    const v0, 0x7f0d0104

    invoke-virtual {p0, v0}, Lcom/htc/calendar/widget/WeatherBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    const v0, 0x7f0d0105

    invoke-virtual {p0, v0}, Lcom/htc/calendar/widget/WeatherBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    const v0, 0x7f0d0107

    invoke-virtual {p0, v0}, Lcom/htc/calendar/widget/WeatherBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    const v0, 0x7f0d0108

    invoke-virtual {p0, v0}, Lcom/htc/calendar/widget/WeatherBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    const v0, 0x7f0d010a

    invoke-virtual {p0, v0}, Lcom/htc/calendar/widget/WeatherBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    const v0, 0x7f0d0102

    invoke-virtual {p0, v0}, Lcom/htc/calendar/widget/WeatherBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    check-cast v0, Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 173
    return-void
.end method

.method public drawWeather(Landroid/text/format/Time;)V
    .locals 3
    .parameter "lastQueryTime"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/htc/calendar/widget/WeatherBar;->mWeatherData:Lcom/htc/calendar/WeatherData;

    invoke-virtual {v0}, Lcom/htc/calendar/WeatherData;->isWspDataNull()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/calendar/widget/WeatherBar;->mWeatherData:Lcom/htc/calendar/WeatherData;

    invoke-virtual {v0}, Lcom/htc/calendar/WeatherData;->hasWspData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/calendar/widget/WeatherBar;->mWeatherData:Lcom/htc/calendar/WeatherData;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/htc/calendar/WeatherData;->checkDateRange(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0, p1}, Lcom/htc/calendar/widget/WeatherBar;->setWeatherInfo(Landroid/text/format/Time;)V

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/htc/calendar/widget/WeatherBar;->clearWeatherInfo()V

    goto :goto_0
.end method

.method public drawWeatherIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "weatherDrawable"

    .prologue
    const/4 v2, 0x0

    .line 194
    if-nez p1, :cond_0

    .line 195
    const-string v0, "WeatherBar"

    const-string v1, "drawImage get null drawable"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/widget/WeatherBar;->mWeatherBitmap:Landroid/graphics/Bitmap;

    const v1, -0xd0d0e

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 199
    iget v0, p0, Lcom/htc/calendar/widget/WeatherBar;->mWeatherBitmapWidth:I

    iget v1, p0, Lcom/htc/calendar/widget/WeatherBar;->mWeatherBitmapHeight:I

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 200
    iget-object v0, p0, Lcom/htc/calendar/widget/WeatherBar;->mWeatherCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 201
    const v0, 0x7f0d010b

    invoke-virtual {p0, v0}, Lcom/htc/calendar/widget/WeatherBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/htc/calendar/widget/WeatherBar;->mWeatherBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public getCurrentCityCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/htc/calendar/widget/WeatherBar;->mWeatherData:Lcom/htc/calendar/WeatherData;

    invoke-virtual {v0}, Lcom/htc/calendar/WeatherData;->getCurrentCityCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCleanBoot()Z
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/htc/calendar/widget/WeatherBar;->mWeatherData:Lcom/htc/calendar/WeatherData;

    invoke-virtual {v0}, Lcom/htc/calendar/WeatherData;->isCleanBoot()Z

    move-result v0

    return v0
.end method

.method public isUsingCurrentLocation()Z
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/htc/calendar/widget/WeatherBar;->mWeatherData:Lcom/htc/calendar/WeatherData;

    invoke-virtual {v0}, Lcom/htc/calendar/WeatherData;->isUsingCurrentLocation()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 226
    iget-object v0, p0, Lcom/htc/calendar/widget/WeatherBar;->mWeatherBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/htc/calendar/widget/WeatherBar;->mWeatherBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 228
    iput-object v1, p0, Lcom/htc/calendar/widget/WeatherBar;->mWeatherBitmap:Landroid/graphics/Bitmap;

    .line 231
    :cond_0
    iput-object v1, p0, Lcom/htc/calendar/widget/WeatherBar;->mWeatherCanvas:Landroid/graphics/Canvas;

    .line 232
    iput-object v1, p0, Lcom/htc/calendar/widget/WeatherBar;->mContext:Landroid/content/Context;

    .line 233
    return-void
.end method

.method public setWeatherInfo(Landroid/text/format/Time;)V
    .locals 29
    .parameter "lastQueryTime"

    .prologue
    .line 83
    const v4, 0x7f0d0102

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/calendar/widget/WeatherBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    check-cast v4, Landroid/widget/RelativeLayout;

    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 85
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v26, v0

    .line 86
    .local v26, year:I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v20, v4, 0x1

    .line 87
    .local v20, month:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v21, v0

    .line 90
    .local v21, monthday:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/widget/WeatherBar;->mWeatherData:Lcom/htc/calendar/WeatherData;

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v27

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/htc/calendar/WeatherData;->getWeatherDataDetail(IIII)Ljava/lang/String;

    move-result-object v24

    .line 93
    .local v24, statusIcon:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/widget/WeatherBar;->mWeatherData:Lcom/htc/calendar/WeatherData;

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v27

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/htc/calendar/WeatherData;->getWeatherDataDetail(IIII)Ljava/lang/String;

    move-result-object v15

    .line 96
    .local v15, conditionId:Ljava/lang/String;
    const-string v6, ""

    .line 97
    .local v6, conditionText:Ljava/lang/String;
    new-instance v23, Lcom/htc/weather/StateResources;

    invoke-direct/range {v23 .. v23}, Lcom/htc/weather/StateResources;-><init>()V

    .line 98
    .local v23, stateRes:Lcom/htc/weather/StateResources;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/widget/WeatherBar;->mContext:Landroid/content/Context;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/htc/weather/StateResources;->init(Landroid/content/Context;)V

    .line 101
    const/16 v16, 0x0

    .line 104
    .local v16, d:Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/htc/weather/StateResources;->getLargeConditionIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 105
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Lcom/htc/weather/StateResources;->getConditionText(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 113
    const-string v14, ""

    .line 114
    .local v14, c_N:Ljava/lang/String;
    const-string v19, ""

    .line 116
    .local v19, f_N:Ljava/lang/String;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/text/format/Time;->month:I

    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/htc/calendar/CalendarContext;->getToday()Landroid/text/format/Time;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v4, v0, :cond_0

    move-object/from16 v0, p1

    iget v4, v0, Landroid/text/format/Time;->monthDay:I

    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/htc/calendar/CalendarContext;->getToday()Landroid/text/format/Time;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v27, v0

    move/from16 v0, v27

    if-ne v4, v0, :cond_0

    .line 118
    const-string v4, "WeatherBar"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "selectedTime : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/htc/calendar/CalendarContext;->getCurrentSelectedTime()Landroid/text/format/Time;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " today : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/htc/calendar/CalendarContext;->getToday()Landroid/text/format/Time;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const-string v4, "WeatherBar"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "lastQueryTime : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " today : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcom/htc/calendar/CalendarContext;->getToday()Landroid/text/format/Time;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/widget/WeatherBar;->mWeatherData:Lcom/htc/calendar/WeatherData;

    const/16 v27, 0x6

    move/from16 v0, v26

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v27

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/htc/calendar/WeatherData;->getWeatherDataDetail(IIII)Ljava/lang/String;

    move-result-object v14

    .line 121
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/widget/WeatherBar;->mWeatherData:Lcom/htc/calendar/WeatherData;

    const/16 v27, 0x7

    move/from16 v0, v26

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v27

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/htc/calendar/WeatherData;->getWeatherDataDetail(IIII)Ljava/lang/String;

    move-result-object v19

    .line 124
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/widget/WeatherBar;->mWeatherData:Lcom/htc/calendar/WeatherData;

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v27

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/htc/calendar/WeatherData;->getWeatherDataDetail(IIII)Ljava/lang/String;

    move-result-object v12

    .line 125
    .local v12, c_H:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/widget/WeatherBar;->mWeatherData:Lcom/htc/calendar/WeatherData;

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v27

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/htc/calendar/WeatherData;->getWeatherDataDetail(IIII)Ljava/lang/String;

    move-result-object v13

    .line 127
    .local v13, c_L:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/widget/WeatherBar;->mWeatherData:Lcom/htc/calendar/WeatherData;

    const/16 v27, 0x4

    move/from16 v0, v26

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v27

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/htc/calendar/WeatherData;->getWeatherDataDetail(IIII)Ljava/lang/String;

    move-result-object v17

    .line 128
    .local v17, f_H:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/widget/WeatherBar;->mWeatherData:Lcom/htc/calendar/WeatherData;

    const/16 v27, 0x5

    move/from16 v0, v26

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v27

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/htc/calendar/WeatherData;->getWeatherDataDetail(IIII)Ljava/lang/String;

    move-result-object v18

    .line 130
    .local v18, f_L:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/widget/WeatherBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v27, "com.htc.sync.provider.weather.setting.temperatureunit"

    move-object/from16 v0, v27

    invoke-static {v4, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 131
    .local v25, unit:Ljava/lang/String;
    const-string v4, "WeatherBar"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Unit:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v8, ""

    .line 133
    .local v8, high_value:Ljava/lang/String;
    const-string v10, ""

    .line 134
    .local v10, low_value:Ljava/lang/String;
    const-string v11, ""

    .line 135
    .local v11, now_value:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 136
    const-string v25, "c"

    .line 138
    :cond_1
    const-string v4, "f"

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v27, "\u00b0"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v27, "\u00b0"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 141
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v27, "\u00b0"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 144
    :cond_2
    const-string v4, "WeatherBar"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\u00b0"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "~"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\u00b0"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/widget/WeatherBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v27, 0x7f080036

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 157
    .local v7, high_label:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/widget/WeatherBar;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v27, 0x7f080037

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 159
    .local v9, low_label:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/widget/WeatherBar;->mWeatherData:Lcom/htc/calendar/WeatherData;

    invoke-virtual {v4}, Lcom/htc/calendar/WeatherData;->getCurrentCityName()Ljava/lang/String;

    move-result-object v5

    .local v5, location:Ljava/lang/String;
    move-object/from16 v4, p0

    .line 161
    invoke-virtual/range {v4 .. v11}, Lcom/htc/calendar/widget/WeatherBar;->setWeatherText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/calendar/widget/WeatherBar;->drawWeatherIcon(Landroid/graphics/drawable/Drawable;)V

    .line 163
    invoke-virtual/range {v23 .. v23}, Lcom/htc/weather/StateResources;->clear()V

    .line 164
    .end local v5           #location:Ljava/lang/String;
    .end local v7           #high_label:Ljava/lang/String;
    .end local v8           #high_value:Ljava/lang/String;
    .end local v9           #low_label:Ljava/lang/String;
    .end local v10           #low_value:Ljava/lang/String;
    .end local v11           #now_value:Ljava/lang/String;
    .end local v12           #c_H:Ljava/lang/String;
    .end local v13           #c_L:Ljava/lang/String;
    .end local v14           #c_N:Ljava/lang/String;
    .end local v17           #f_H:Ljava/lang/String;
    .end local v18           #f_L:Ljava/lang/String;
    .end local v19           #f_N:Ljava/lang/String;
    .end local v25           #unit:Ljava/lang/String;
    :goto_1
    return-void

    .line 106
    :catch_0
    move-exception v22

    .line 107
    .local v22, nfe:Ljava/lang/NumberFormatException;
    const-string v4, "WeatherBar"

    const-string v27, ""

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-static {v4, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/widget/WeatherBar;->clearWeatherInfo()V

    goto :goto_1

    .line 146
    .end local v22           #nfe:Ljava/lang/NumberFormatException;
    .restart local v8       #high_value:Ljava/lang/String;
    .restart local v10       #low_value:Ljava/lang/String;
    .restart local v11       #now_value:Ljava/lang/String;
    .restart local v12       #c_H:Ljava/lang/String;
    .restart local v13       #c_L:Ljava/lang/String;
    .restart local v14       #c_N:Ljava/lang/String;
    .restart local v17       #f_H:Ljava/lang/String;
    .restart local v18       #f_L:Ljava/lang/String;
    .restart local v19       #f_N:Ljava/lang/String;
    .restart local v25       #unit:Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v27, "\u00b0"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 147
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v27, "\u00b0"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 148
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v27, "\u00b0"

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 151
    :cond_4
    const-string v4, "WeatherBar"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "("

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\u00b0"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "~"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "\u00b0"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ")"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setWeatherText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "location"
    .parameter "condition"
    .parameter "h_label"
    .parameter "h_value"
    .parameter "l_label"
    .parameter "l_value"
    .parameter "n_value"

    .prologue
    .line 177
    const v0, 0x7f0d0104

    invoke-virtual {p0, v0}, Lcom/htc/calendar/widget/WeatherBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    const v0, 0x7f0d0105

    invoke-virtual {p0, v0}, Lcom/htc/calendar/widget/WeatherBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    const v0, 0x7f0d0107

    invoke-virtual {p0, v0}, Lcom/htc/calendar/widget/WeatherBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    const v0, 0x7f0d0108

    invoke-virtual {p0, v0}, Lcom/htc/calendar/widget/WeatherBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    const v0, 0x7f0d010a

    invoke-virtual {p0, v0}, Lcom/htc/calendar/widget/WeatherBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    return-void
.end method

.method public updateWeatherData()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/htc/calendar/widget/WeatherBar;->mWeatherData:Lcom/htc/calendar/WeatherData;

    invoke-virtual {v0}, Lcom/htc/calendar/WeatherData;->updateWspData()V

    .line 206
    return-void
.end method
