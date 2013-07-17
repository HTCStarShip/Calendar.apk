.class public Lcom/htc/calendar/WeatherData;
.super Ljava/lang/Object;
.source "WeatherData.java"


# static fields
.field public static final DATA_CONDITION:I = 0x1

.field public static final DATA_CURRENT_CONDITION:I = 0x8

.field public static final DATA_STATUS_ICON:I = 0x0

.field public static final DATA_TEMP_CURRENT_C:I = 0x6

.field public static final DATA_TEMP_CURRENT_F:I = 0x7

.field public static final DATA_TEMP_C_H:I = 0x2

.field public static final DATA_TEMP_C_L:I = 0x3

.field public static final DATA_TEMP_F_H:I = 0x4

.field public static final DATA_TEMP_F_L:I = 0x5

.field private static final LOCATION_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.htc.htclocationservice"

.field private static final TAG:Ljava/lang/String; = "WeatherData"

.field private static final WEATHER_APP_PACKAGE_NAME:Ljava/lang/String; = "com.htc.elroy.Weather"


# instance fields
.field private mCityCode:Ljava/lang/String;

.field private mCityName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCountry:Ljava/lang/String;

.field private mCurrentTime:Ljava/lang/String;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsCleanBoot:Z

.field private mIsUsingCurrentLocation:Z

.field private mLastUpdate:J

.field private mWspData:Lcom/htc/util/weather/WSPData;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v0, p0, Lcom/htc/calendar/WeatherData;->mIsUsingCurrentLocation:Z

    .line 34
    iput-boolean v0, p0, Lcom/htc/calendar/WeatherData;->mIsCleanBoot:Z

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/calendar/WeatherData;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 53
    iput-object p1, p0, Lcom/htc/calendar/WeatherData;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method

.method private checkToday(III)Z
    .locals 7
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    const/4 v4, 0x0

    .line 119
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "MM/dd/yyyy"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, bartDateFormat:Ljava/text/SimpleDateFormat;
    :try_start_0
    iget-object v3, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    invoke-virtual {v3}, Lcom/htc/util/weather/WSPData;->getFstDate()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 128
    .local v1, dt1stDay:Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getYear()I

    move-result v3

    add-int/lit16 v3, v3, 0x76c

    if-ne p1, v3, :cond_0

    invoke-virtual {v1}, Ljava/util/Date;->getMonth()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ne p2, v3, :cond_0

    invoke-virtual {v1}, Ljava/util/Date;->getDate()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne p3, v3, :cond_0

    .line 132
    const/4 v3, 0x1

    .line 139
    .end local v1           #dt1stDay:Ljava/util/Date;
    :goto_0
    return v3

    .restart local v1       #dt1stDay:Ljava/util/Date;
    :cond_0
    move v3, v4

    .line 135
    goto :goto_0

    .line 137
    .end local v1           #dt1stDay:Ljava/util/Date;
    :catch_0
    move-exception v2

    .line 138
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "WeatherData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parse: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    invoke-virtual {v3}, Lcom/htc/util/weather/WSPData;->getFstDate()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " error!"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 139
    goto :goto_0
.end method

.method private conbindString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "source"
    .parameter "value"

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 59
    return-object p1
.end method

.method private getMillisByDate(Ljava/lang/String;)J
    .locals 6
    .parameter "date"

    .prologue
    .line 92
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v3, "MM/dd/yyyy"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, bartDateFormat:Ljava/text/SimpleDateFormat;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 95
    .local v1, dt:Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 98
    .end local v1           #dt:Ljava/util/Date;
    :goto_0
    return-wide v3

    .line 96
    :catch_0
    move-exception v2

    .line 97
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "WeatherData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parse: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " error!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-wide/16 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public checkDateRange(J)Z
    .locals 13
    .parameter "millis"

    .prologue
    .line 64
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v10, "MM/dd/yyyy"

    invoke-direct {v0, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, bartDateFormat:Ljava/text/SimpleDateFormat;
    :try_start_0
    iget-object v10, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    invoke-virtual {v10}, Lcom/htc/util/weather/WSPData;->getFstDate()Ljava/util/ArrayList;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 68
    .local v8, strDateFirst:Ljava/lang/String;
    iget-object v10, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    invoke-virtual {v10}, Lcom/htc/util/weather/WSPData;->getFstDate()Ljava/util/ArrayList;

    move-result-object v10

    iget-object v11, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    invoke-virtual {v11}, Lcom/htc/util/weather/WSPData;->getFstDate()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 70
    .local v9, strDateLast:Ljava/lang/String;
    invoke-virtual {v0, v8}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 71
    .local v1, dateFirst:Ljava/util/Date;
    invoke-virtual {v0, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 73
    .local v2, dateLast:Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 74
    .local v4, ldateFirst:J
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 75
    .local v6, ldateLast:J
    const-string v10, "WeatherData"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "First: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " Last: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " millis: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    cmp-long v10, p1, v6

    if-gtz v10, :cond_0

    cmp-long v10, p1, v4

    if-gez v10, :cond_2

    .line 77
    :cond_0
    const/4 v10, 0x0

    .line 88
    .end local v1           #dateFirst:Ljava/util/Date;
    .end local v2           #dateLast:Ljava/util/Date;
    .end local v4           #ldateFirst:J
    .end local v6           #ldateLast:J
    .end local v8           #strDateFirst:Ljava/lang/String;
    .end local v9           #strDateLast:Ljava/lang/String;
    :goto_0
    return v10

    .line 79
    :catch_0
    move-exception v3

    .line 80
    .local v3, e:Ljava/lang/Exception;
    iget-object v10, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    invoke-virtual {v10}, Lcom/htc/util/weather/WSPData;->getFstDate()Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 81
    const-string v10, "WeatherData"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "forecastDate.size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    invoke-virtual {v12}, Lcom/htc/util/weather/WSPData;->getFstDate()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_1
    const-string v10, "WeatherData"

    const-string v11, "parse error "

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    const/4 v10, 0x0

    goto :goto_0

    .line 83
    :cond_1
    const-string v10, "WeatherData"

    const-string v11, "forecastDate is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 88
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v1       #dateFirst:Ljava/util/Date;
    .restart local v2       #dateLast:Ljava/util/Date;
    .restart local v4       #ldateFirst:J
    .restart local v6       #ldateLast:J
    .restart local v8       #strDateFirst:Ljava/lang/String;
    .restart local v9       #strDateLast:Ljava/lang/String;
    :cond_2
    const/4 v10, 0x1

    goto :goto_0
.end method

.method public getCityCode()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 254
    iget-object v5, p0, Lcom/htc/calendar/WeatherData;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/htc/calendar/CalendarPreferenceActivity;->getCityCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 255
    .local v0, cityCode:Ljava/lang/String;
    const-string v5, "WeatherData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCityCode cityCode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v2, 0x0

    .line 260
    .local v2, selectedIndex:I
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 261
    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 264
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "Current"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 266
    iget-object v5, p0, Lcom/htc/calendar/WeatherData;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v5, v0, v6}, Lcom/htc/calendar/Utils;->isExistingCitycode(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 269
    iput-boolean v9, p0, Lcom/htc/calendar/WeatherData;->mIsUsingCurrentLocation:Z

    .line 270
    iput-boolean v8, p0, Lcom/htc/calendar/WeatherData;->mIsCleanBoot:Z

    .line 271
    const-string v5, ""

    iput-object v5, p0, Lcom/htc/calendar/WeatherData;->mCityCode:Ljava/lang/String;

    .line 272
    const/4 v2, 0x0

    .line 273
    const-string v0, "Current"

    .line 283
    :cond_1
    :goto_0
    if-nez v2, :cond_3

    .line 284
    iget-object v5, p0, Lcom/htc/calendar/WeatherData;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/htc/util/weather/WSPUtility;->generateWSPReqestForCurrentLocation()Lcom/htc/util/weather/WSPRequest;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/util/weather/WSPUtility;->request(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)Lcom/htc/util/weather/WSPData;

    move-result-object v3

    .line 290
    .local v3, tempWSPdata:Lcom/htc/util/weather/WSPData;
    if-nez v3, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "Current"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 294
    :cond_2
    new-array v1, v10, [Ljava/lang/String;

    const-string v5, "com.htc.htclocationservice"

    aput-object v5, v1, v8

    const-string v5, "com.htc.elroy.Weather"

    aput-object v5, v1, v9

    .line 296
    .local v1, pkgname:[Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/calendar/WeatherData;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/htc/util/weather/WeatherUtility;->loadMultiAppLocations(Landroid/content/ContentResolver;[Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v4

    .line 301
    .local v4, weather_locs:[Lcom/htc/util/weather/WeatherLocation;
    array-length v5, v4

    if-lez v5, :cond_5

    .line 302
    aget-object v5, v4, v8

    invoke-virtual {v5}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/calendar/WeatherData;->mCityName:Ljava/lang/String;

    .line 303
    aget-object v5, v4, v8

    invoke-virtual {v5}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/calendar/WeatherData;->mCityCode:Ljava/lang/String;

    .line 313
    :goto_1
    iput-boolean v8, p0, Lcom/htc/calendar/WeatherData;->mIsUsingCurrentLocation:Z

    .line 314
    iput-boolean v9, p0, Lcom/htc/calendar/WeatherData;->mIsCleanBoot:Z

    .line 334
    .end local v1           #pkgname:[Ljava/lang/String;
    .end local v3           #tempWSPdata:Lcom/htc/util/weather/WSPData;
    .end local v4           #weather_locs:[Lcom/htc/util/weather/WeatherLocation;
    :cond_3
    :goto_2
    const-string v5, "WeatherData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCityCode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/calendar/WeatherData;->mCityCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    return-void

    .line 276
    :cond_4
    iput-boolean v8, p0, Lcom/htc/calendar/WeatherData;->mIsUsingCurrentLocation:Z

    .line 277
    iput-boolean v8, p0, Lcom/htc/calendar/WeatherData;->mIsCleanBoot:Z

    .line 278
    iput-object v0, p0, Lcom/htc/calendar/WeatherData;->mCityCode:Ljava/lang/String;

    .line 279
    const/4 v2, 0x1

    goto :goto_0

    .line 306
    .restart local v1       #pkgname:[Ljava/lang/String;
    .restart local v3       #tempWSPdata:Lcom/htc/util/weather/WSPData;
    .restart local v4       #weather_locs:[Lcom/htc/util/weather/WeatherLocation;
    :cond_5
    const-string v5, ""

    iput-object v5, p0, Lcom/htc/calendar/WeatherData;->mCityName:Ljava/lang/String;

    .line 307
    const-string v5, ""

    iput-object v5, p0, Lcom/htc/calendar/WeatherData;->mCityCode:Ljava/lang/String;

    goto :goto_1

    .line 318
    .end local v1           #pkgname:[Ljava/lang/String;
    .end local v4           #weather_locs:[Lcom/htc/util/weather/WeatherLocation;
    :cond_6
    if-nez v3, :cond_7

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 320
    iput-boolean v8, p0, Lcom/htc/calendar/WeatherData;->mIsUsingCurrentLocation:Z

    .line 321
    iput-boolean v8, p0, Lcom/htc/calendar/WeatherData;->mIsCleanBoot:Z

    .line 322
    iput-object v0, p0, Lcom/htc/calendar/WeatherData;->mCityCode:Ljava/lang/String;

    goto :goto_2

    .line 325
    :cond_7
    iput-boolean v9, p0, Lcom/htc/calendar/WeatherData;->mIsUsingCurrentLocation:Z

    .line 326
    iput-boolean v8, p0, Lcom/htc/calendar/WeatherData;->mIsCleanBoot:Z

    .line 327
    const-string v5, ""

    iput-object v5, p0, Lcom/htc/calendar/WeatherData;->mCityCode:Ljava/lang/String;

    goto :goto_2
.end method

.method public getCurrentCityCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/htc/calendar/WeatherData;->mCityCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentCityName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/htc/calendar/WeatherData;->mCityName:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentConditionDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/htc/calendar/WeatherData;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getFirstDateMillis()J
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    invoke-virtual {v0}, Lcom/htc/util/weather/WSPData;->getFstDate()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    invoke-virtual {v0}, Lcom/htc/util/weather/WSPData;->getFstDate()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/calendar/WeatherData;->getMillisByDate(Ljava/lang/String;)J

    move-result-wide v0

    .line 106
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getLastDateMillis()J
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    invoke-virtual {v0}, Lcom/htc/util/weather/WSPData;->getFstDate()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    invoke-virtual {v0}, Lcom/htc/util/weather/WSPData;->getFstDate()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/calendar/WeatherData;->getMillisByDate(Ljava/lang/String;)J

    move-result-wide v0

    .line 114
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getWeatherDataDetail(IIII)Ljava/lang/String;
    .locals 7
    .parameter "year"
    .parameter "month"
    .parameter "monthday"
    .parameter "type"

    .prologue
    .line 144
    iget-object v2, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPData;->getFstDate()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 145
    const-string v2, "WeatherData"

    const-string v3, "mWspData.getFstDate().size() == 0"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :goto_0
    const-string v2, ""

    :goto_1
    return-object v2

    .line 147
    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%d/%d/%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, strDate:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v2, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPData;->getFstDate()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 149
    iget-object v2, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPData;->getFstDate()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    packed-switch p4, :pswitch_data_0

    .line 148
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 152
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/calendar/WeatherData;->checkToday(III)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 154
    iget-object v2, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPData;->getCurConditionId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 157
    :cond_2
    iget-object v2, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPData;->getFstConditionId()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    .line 161
    :pswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/calendar/WeatherData;->checkToday(III)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 163
    iget-object v2, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPData;->getCurConditionId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 166
    :cond_3
    iget-object v2, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPData;->getFstConditionId()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    .line 170
    :pswitch_2
    iget-object v2, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPData;->getFstHighTempC()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto/16 :goto_1

    .line 172
    :pswitch_3
    iget-object v2, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPData;->getFstLowTempC()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto/16 :goto_1

    .line 174
    :pswitch_4
    iget-object v2, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPData;->getFstHighTempF()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto/16 :goto_1

    .line 176
    :pswitch_5
    iget-object v2, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPData;->getFstLowTempF()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto/16 :goto_1

    .line 178
    :pswitch_6
    iget-object v2, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPData;->getCurTempC()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 180
    :pswitch_7
    iget-object v2, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPData;->getCurTempF()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 182
    :pswitch_8
    iget-object v2, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPData;->getCurConditionId()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 187
    :cond_4
    const-string v2, "WeatherData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWeatherDataDetail() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mWspData.getFstDate() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    invoke-virtual {v4}, Lcom/htc/util/weather/WSPData;->getFstDate()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public hasWspData()Z
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    invoke-virtual {v0}, Lcom/htc/util/weather/WSPData;->hasWeatherData()Z

    move-result v0

    return v0
.end method

.method public isCleanBoot()Z
    .locals 1

    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/htc/calendar/WeatherData;->mIsCleanBoot:Z

    return v0
.end method

.method public isUsingCurrentLocation()Z
    .locals 1

    .prologue
    .line 365
    iget-boolean v0, p0, Lcom/htc/calendar/WeatherData;->mIsUsingCurrentLocation:Z

    return v0
.end method

.method public isWspDataNull()Z
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCurrentConditionDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "currentConditionDrawable"

    .prologue
    .line 353
    iput-object p1, p0, Lcom/htc/calendar/WeatherData;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 354
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 195
    const-string v1, "\n"

    .line 196
    .local v1, ret:Ljava/lang/String;
    const-string v2, "~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~."

    invoke-direct {p0, v1, v2}, Lcom/htc/calendar/WeatherData;->conbindString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 197
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastupdate      : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/calendar/WeatherData;->mLastUpdate:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/htc/calendar/WeatherData;->conbindString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name            : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/calendar/WeatherData;->mCityName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/htc/calendar/WeatherData;->conbindString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "country         : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/calendar/WeatherData;->mCountry:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/htc/calendar/WeatherData;->conbindString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentTempC    : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    invoke-virtual {v3}, Lcom/htc/util/weather/WSPData;->getCurTempC()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/htc/calendar/WeatherData;->conbindString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentTempF    : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    invoke-virtual {v3}, Lcom/htc/util/weather/WSPData;->getCurTempF()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/htc/calendar/WeatherData;->conbindString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentIcon     : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    invoke-virtual {v3}, Lcom/htc/util/weather/WSPData;->getCurConditionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/htc/calendar/WeatherData;->conbindString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentCondition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    invoke-virtual {v3}, Lcom/htc/util/weather/WSPData;->getCurConditionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/htc/calendar/WeatherData;->conbindString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentTime     : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/calendar/WeatherData;->mCurrentTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/htc/calendar/WeatherData;->conbindString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "totalForecast   : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    invoke-virtual {v3}, Lcom/htc/util/weather/WSPData;->getFstDate()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/htc/calendar/WeatherData;->conbindString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    const-string v2, "~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~.~."

    invoke-direct {p0, v1, v2}, Lcom/htc/calendar/WeatherData;->conbindString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 207
    const/4 v0, 0x0

    .line 208
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPData;->getFstDate()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">> Date     : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPData;->getFstDate()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/htc/calendar/WeatherData;->conbindString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">> C        : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPData;->getFstHighTempC()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPData;->getFstLowTempC()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/htc/calendar/WeatherData;->conbindString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">> F        : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPData;->getFstHighTempF()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPData;->getFstLowTempF()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/htc/calendar/WeatherData;->conbindString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 212
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">> icon     : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPData;->getFstConditionId()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/htc/calendar/WeatherData;->conbindString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">> Condition: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPData;->getFstConditionId()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/htc/calendar/WeatherData;->conbindString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 214
    const-string v2, "----------------------------"

    invoke-direct {p0, v1, v2}, Lcom/htc/calendar/WeatherData;->conbindString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 216
    :cond_0
    return-object v1
.end method

.method public updateWspData()V
    .locals 4

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/htc/calendar/WeatherData;->getCityCode()V

    .line 224
    :try_start_0
    iget-boolean v2, p0, Lcom/htc/calendar/WeatherData;->mIsUsingCurrentLocation:Z

    if-eqz v2, :cond_2

    .line 225
    iget-object v2, p0, Lcom/htc/calendar/WeatherData;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/htc/util/weather/WSPUtility;->generateWSPReqestForCurrentLocation()Lcom/htc/util/weather/WSPRequest;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/util/weather/WSPUtility;->request(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)Lcom/htc/util/weather/WSPData;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    .line 226
    iget-object v2, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPData;->getCurLocName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/calendar/WeatherData;->mCityName:Ljava/lang/String;

    .line 227
    iget-object v2, p0, Lcom/htc/calendar/WeatherData;->mCityName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    iget-object v2, p0, Lcom/htc/calendar/WeatherData;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 229
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f080035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/calendar/WeatherData;->mCityName:Ljava/lang/String;

    .line 237
    .end local v1           #res:Landroid/content/res/Resources;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    if-nez v2, :cond_3

    .line 238
    const-string v2, "WeatherData"

    const-string v3, "mWspData is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_1
    :goto_1
    return-void

    .line 232
    :cond_2
    iget-object v2, p0, Lcom/htc/calendar/WeatherData;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/calendar/WeatherData;->mCityCode:Ljava/lang/String;

    invoke-static {v3}, Lcom/htc/util/weather/WSPUtility;->generateWSPRequestForLocCode(Ljava/lang/String;)Lcom/htc/util/weather/WSPRequest;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/util/weather/WSPUtility;->request(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)Lcom/htc/util/weather/WSPData;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    .line 233
    iget-boolean v2, p0, Lcom/htc/calendar/WeatherData;->mIsCleanBoot:Z

    if-nez v2, :cond_0

    .line 234
    iget-object v2, p0, Lcom/htc/calendar/WeatherData;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/calendar/CalendarPreferenceActivity;->getCityName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/calendar/WeatherData;->mCityName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WeatherData"

    const-string v3, "Crash on WSPUtility"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    goto :goto_1

    .line 241
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/htc/calendar/WeatherData;->mWspData:Lcom/htc/util/weather/WSPData;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPData;->hasWeatherData()Z

    move-result v2

    if-nez v2, :cond_1

    .line 242
    const-string v2, "WeatherData"

    const-string v3, "mWspData is no weather data"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
