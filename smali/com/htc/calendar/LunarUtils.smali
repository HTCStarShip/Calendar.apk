.class public Lcom/htc/calendar/LunarUtils;
.super Ljava/lang/Object;
.source "LunarUtils.java"


# static fields
.field private static final BASE_YEAR:I = 0x76c

.field public static final DATE_MAX_BOUND_OBJ:Ljava/util/Calendar; = null

.field public static final DATE_MIN_BOUND_OBJ:Ljava/util/Calendar; = null

.field private static final GANZHI_BASE_YEAR:I = 0x748

.field public static final LOG_TAG:Ljava/lang/String; = "CnDate"

.field public static final LUNARDATE:I = -0x3

.field public static final LUNARMONTH:I = -0x2

.field public static final LUNARYEAR:I = -0x1

.field private static LunarHolidays:[Ljava/lang/String; = null

.field private static LunarHolidays_date:[Ljava/lang/String; = null

.field public static final MAX_YEAR:I = 0x833

.field private static final MILLISECS_PER_DAY:J = 0x5265c00L

.field public static final MIN_YEAR:I = 0x76c

.field private static SolarHolidays:[Ljava/lang/String;

.field private static SolarHolidays_date:[Ljava/lang/String;

.field private static final exception:[[I

.field public static final mBaseDate:Ljava/util/GregorianCalendar;

.field private static final mCnBaseDateOffsets:[I

.field private static mCnDays:[Ljava/lang/String;

.field private static mCnDaysSmall:[Ljava/lang/String;

.field private static mCnGans:[Ljava/lang/String;

.field private static mCnMonths:[Ljava/lang/String;

.field private static final mCnYearCodes:[I

.field private static mCnZhis:[Ljava/lang/String;

.field private static mCnZodiacs:[Ljava/lang/String;

.field private static final mErrArray:[Ljava/lang/String;

.field private static mLunarHolidays:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mSolarDaysInMonth:[I

.field private static mSolarHolidays:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSolarTerms:[Ljava/lang/String;


# instance fields
.field private mCurrentDate:Ljava/util/GregorianCalendar;

.field private mCurrentDateOffset:J

.field private mLunarDate:I

.field private mLunarDaysInMonth:[I

.field private mLunarLeapMonth:Z

.field private mLunarMonth:I

.field public mLunarSpecialDay:Z

.field private mLunarYear:I

.field private mLunarYearCache:I

.field private mSolarTermsThisYear:[J

.field private mYearCache:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/16 v3, 0x1f

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 20
    new-array v0, v11, [[I

    new-array v1, v12, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v2

    new-array v1, v12, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v7

    sput-object v0, Lcom/htc/calendar/LunarUtils;->exception:[[I

    .line 21
    const/16 v0, 0xc8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/htc/calendar/LunarUtils;->mCnYearCodes:[I

    .line 67
    new-instance v0, Ljava/util/GregorianCalendar;

    const/16 v1, 0x834

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    sput-object v0, Lcom/htc/calendar/LunarUtils;->DATE_MAX_BOUND_OBJ:Ljava/util/Calendar;

    .line 70
    new-instance v4, Ljava/util/GregorianCalendar;

    const/16 v5, 0x76c

    move v6, v11

    move v8, v2

    move v9, v2

    move v10, v2

    invoke-direct/range {v4 .. v10}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    sput-object v4, Lcom/htc/calendar/LunarUtils;->DATE_MIN_BOUND_OBJ:Ljava/util/Calendar;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/calendar/LunarUtils;->mSolarHolidays:Ljava/util/Map;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/calendar/LunarUtils;->mLunarHolidays:Ljava/util/Map;

    .line 96
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/htc/calendar/LunarUtils;->mSolarDaysInMonth:[I

    .line 109
    new-instance v0, Ljava/util/GregorianCalendar;

    const/16 v1, 0x76c

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Ljava/util/GregorianCalendar;-><init>(IIIII)V

    sput-object v0, Lcom/htc/calendar/LunarUtils;->mBaseDate:Ljava/util/GregorianCalendar;

    .line 112
    const/16 v0, 0xc9

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/htc/calendar/LunarUtils;->mCnBaseDateOffsets:[I

    .line 308
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Out of Year Bounds"

    aput-object v1, v0, v2

    const-string v1, "Incorrect Month Value"

    aput-object v1, v0, v7

    const-string v1, "Not A Leap Month"

    aput-object v1, v0, v11

    const-string v1, "Incorrect Date Value"

    aput-object v1, v0, v12

    const/4 v1, 0x4

    const-string v2, "Out of Date Bounds"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/calendar/LunarUtils;->mErrArray:[Ljava/lang/String;

    return-void

    .line 20
    :array_0
    .array-data 0x4
        0xdbt 0x7t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0xdft 0x7t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 21
    :array_2
    .array-data 0x4
        0xd8t 0x4bt 0x0t 0x0t
        0xe0t 0x4at 0x0t 0x0t
        0x70t 0xa5t 0x0t 0x0t
        0xd5t 0x54t 0x0t 0x0t
        0x60t 0xd2t 0x0t 0x0t
        0x50t 0xd9t 0x0t 0x0t
        0x54t 0x65t 0x1t 0x0t
        0xa0t 0x56t 0x0t 0x0t
        0xd0t 0x9at 0x0t 0x0t
        0xd2t 0x55t 0x0t 0x0t
        0xe0t 0x4at 0x0t 0x0t
        0xb6t 0xa5t 0x0t 0x0t
        0xd0t 0xa4t 0x0t 0x0t
        0x50t 0xd2t 0x0t 0x0t
        0x55t 0xd2t 0x1t 0x0t
        0x40t 0xb5t 0x0t 0x0t
        0xa0t 0xd6t 0x0t 0x0t
        0xa2t 0xadt 0x0t 0x0t
        0xb0t 0x95t 0x0t 0x0t
        0x77t 0x49t 0x1t 0x0t
        0x70t 0x49t 0x0t 0x0t
        0xb0t 0xa4t 0x0t 0x0t
        0xb5t 0xb4t 0x0t 0x0t
        0x50t 0x6at 0x0t 0x0t
        0x40t 0x6dt 0x0t 0x0t
        0x54t 0xabt 0x1t 0x0t
        0x60t 0x2bt 0x0t 0x0t
        0x70t 0x95t 0x0t 0x0t
        0xf2t 0x52t 0x0t 0x0t
        0x70t 0x49t 0x0t 0x0t
        0x66t 0x65t 0x0t 0x0t
        0xa0t 0xd4t 0x0t 0x0t
        0x50t 0xeat 0x0t 0x0t
        0x95t 0x6et 0x0t 0x0t
        0xd0t 0x5at 0x0t 0x0t
        0x60t 0x2bt 0x0t 0x0t
        0xe3t 0x86t 0x1t 0x0t
        0xe0t 0x92t 0x0t 0x0t
        0xd7t 0xc8t 0x1t 0x0t
        0x50t 0xc9t 0x0t 0x0t
        0xa0t 0xd4t 0x0t 0x0t
        0xa6t 0xd8t 0x1t 0x0t
        0x50t 0xb5t 0x0t 0x0t
        0xa0t 0x56t 0x0t 0x0t
        0xb4t 0xa5t 0x1t 0x0t
        0xd0t 0x25t 0x0t 0x0t
        0xd0t 0x92t 0x0t 0x0t
        0xb2t 0xd2t 0x0t 0x0t
        0x50t 0xa9t 0x0t 0x0t
        0x57t 0xb5t 0x0t 0x0t
        0xa0t 0x6ct 0x0t 0x0t
        0x50t 0xb5t 0x0t 0x0t
        0x55t 0x53t 0x1t 0x0t
        0xa0t 0x4dt 0x0t 0x0t
        0xd0t 0xa5t 0x0t 0x0t
        0x73t 0x45t 0x1t 0x0t
        0xd0t 0x52t 0x0t 0x0t
        0xa8t 0xa9t 0x0t 0x0t
        0x50t 0xe9t 0x0t 0x0t
        0xa0t 0x6at 0x0t 0x0t
        0xa6t 0xaet 0x0t 0x0t
        0x50t 0xabt 0x0t 0x0t
        0x60t 0x4bt 0x0t 0x0t
        0xe4t 0xaat 0x0t 0x0t
        0x70t 0xa5t 0x0t 0x0t
        0x60t 0x52t 0x0t 0x0t
        0x63t 0xf2t 0x0t 0x0t
        0x50t 0xd9t 0x0t 0x0t
        0x57t 0x5bt 0x0t 0x0t
        0xa0t 0x56t 0x0t 0x0t
        0xd0t 0x96t 0x0t 0x0t
        0xd5t 0x4dt 0x0t 0x0t
        0xd0t 0x4at 0x0t 0x0t
        0xd0t 0xa4t 0x0t 0x0t
        0xd4t 0xd4t 0x0t 0x0t
        0x50t 0xd2t 0x0t 0x0t
        0x58t 0xd5t 0x0t 0x0t
        0x40t 0xb5t 0x0t 0x0t
        0xa0t 0xb5t 0x0t 0x0t
        0xa6t 0x95t 0x1t 0x0t
        0xb0t 0x95t 0x0t 0x0t
        0xb0t 0x49t 0x0t 0x0t
        0x74t 0xa9t 0x0t 0x0t
        0xb0t 0xa4t 0x0t 0x0t
        0x7at 0xb2t 0x0t 0x0t
        0x50t 0x6at 0x0t 0x0t
        0x40t 0x6dt 0x0t 0x0t
        0x46t 0xaft 0x0t 0x0t
        0x60t 0xabt 0x0t 0x0t
        0x70t 0x95t 0x0t 0x0t
        0xf5t 0x4at 0x0t 0x0t
        0x70t 0x49t 0x0t 0x0t
        0xb0t 0x64t 0x0t 0x0t
        0xa3t 0x74t 0x0t 0x0t
        0x50t 0xeat 0x0t 0x0t
        0x58t 0x6bt 0x0t 0x0t
        0xc0t 0x55t 0x0t 0x0t
        0x60t 0xabt 0x0t 0x0t
        0xd5t 0x96t 0x0t 0x0t
        0xe0t 0x92t 0x0t 0x0t
        0x60t 0xc9t 0x0t 0x0t
        0x54t 0xd9t 0x0t 0x0t
        0xa0t 0xd4t 0x0t 0x0t
        0x50t 0xdat 0x0t 0x0t
        0x52t 0x75t 0x0t 0x0t
        0xa0t 0x56t 0x0t 0x0t
        0xb7t 0xabt 0x0t 0x0t
        0xd0t 0x25t 0x0t 0x0t
        0xd0t 0x92t 0x0t 0x0t
        0xb5t 0xcat 0x0t 0x0t
        0x50t 0xa9t 0x0t 0x0t
        0xa0t 0xb4t 0x0t 0x0t
        0xa4t 0xbat 0x0t 0x0t
        0x50t 0xadt 0x0t 0x0t
        0xd9t 0x55t 0x0t 0x0t
        0xa0t 0x4bt 0x0t 0x0t
        0xb0t 0xa5t 0x0t 0x0t
        0x76t 0x51t 0x1t 0x0t
        0xb0t 0x52t 0x0t 0x0t
        0x30t 0xa9t 0x0t 0x0t
        0x54t 0x79t 0x0t 0x0t
        0xa0t 0x6at 0x0t 0x0t
        0x50t 0xadt 0x0t 0x0t
        0x52t 0x5bt 0x0t 0x0t
        0x60t 0x4bt 0x0t 0x0t
        0xe6t 0xa6t 0x0t 0x0t
        0xe0t 0xa4t 0x0t 0x0t
        0x60t 0xd2t 0x0t 0x0t
        0x65t 0xeat 0x0t 0x0t
        0x30t 0xd5t 0x0t 0x0t
        0xa0t 0x5at 0x0t 0x0t
        0xa3t 0x76t 0x0t 0x0t
        0xd0t 0x96t 0x0t 0x0t
        0xd7t 0x4bt 0x0t 0x0t
        0xd0t 0x4at 0x0t 0x0t
        0xd0t 0xa4t 0x0t 0x0t
        0xb6t 0xd0t 0x1t 0x0t
        0x50t 0xd2t 0x0t 0x0t
        0x20t 0xd5t 0x0t 0x0t
        0x45t 0xddt 0x0t 0x0t
        0xa0t 0xb5t 0x0t 0x0t
        0xd0t 0x56t 0x0t 0x0t
        0xb2t 0x55t 0x0t 0x0t
        0xb0t 0x49t 0x0t 0x0t
        0x77t 0xa5t 0x0t 0x0t
        0xb0t 0xa4t 0x0t 0x0t
        0x50t 0xaat 0x0t 0x0t
        0x55t 0xb2t 0x1t 0x0t
        0x20t 0x6dt 0x0t 0x0t
        0xa0t 0xadt 0x0t 0x0t
        0x63t 0x4bt 0x1t 0x0t
        0x70t 0x93t 0x0t 0x0t
        0xf8t 0x49t 0x0t 0x0t
        0x70t 0x49t 0x0t 0x0t
        0xb0t 0x64t 0x0t 0x0t
        0xa6t 0x68t 0x1t 0x0t
        0x50t 0xeat 0x0t 0x0t
        0xa0t 0x6at 0x0t 0x0t
        0xc4t 0xa6t 0x1t 0x0t
        0xe0t 0xaat 0x0t 0x0t
        0xe0t 0x92t 0x0t 0x0t
        0xe3t 0xd2t 0x0t 0x0t
        0x60t 0xc9t 0x0t 0x0t
        0x57t 0xd5t 0x0t 0x0t
        0xa0t 0xd4t 0x0t 0x0t
        0x50t 0xdat 0x0t 0x0t
        0x55t 0x5dt 0x0t 0x0t
        0xa0t 0x56t 0x0t 0x0t
        0xd0t 0xa6t 0x0t 0x0t
        0xd4t 0x55t 0x0t 0x0t
        0xd0t 0x52t 0x0t 0x0t
        0xb8t 0xa9t 0x0t 0x0t
        0x50t 0xa9t 0x0t 0x0t
        0xa0t 0xb4t 0x0t 0x0t
        0xa6t 0xb6t 0x0t 0x0t
        0x50t 0xadt 0x0t 0x0t
        0xa0t 0x55t 0x0t 0x0t
        0xa4t 0xabt 0x0t 0x0t
        0xb0t 0xa5t 0x0t 0x0t
        0xb0t 0x52t 0x0t 0x0t
        0x73t 0xb2t 0x0t 0x0t
        0x30t 0x69t 0x0t 0x0t
        0x37t 0x73t 0x0t 0x0t
        0xa0t 0x6at 0x0t 0x0t
        0x50t 0xadt 0x0t 0x0t
        0x55t 0x4bt 0x1t 0x0t
        0x60t 0x4bt 0x0t 0x0t
        0x70t 0xa5t 0x0t 0x0t
        0xe4t 0x54t 0x0t 0x0t
        0x60t 0xd1t 0x0t 0x0t
        0x68t 0xe9t 0x0t 0x0t
        0x20t 0xd5t 0x0t 0x0t
        0xa0t 0xdat 0x0t 0x0t
        0xa6t 0x6at 0x1t 0x0t
        0xd0t 0x56t 0x0t 0x0t
        0xe0t 0x4at 0x0t 0x0t
        0xd4t 0xa9t 0x0t 0x0t
        0xd0t 0xa2t 0x0t 0x0t
        0x50t 0xd1t 0x0t 0x0t
        0x52t 0xf2t 0x0t 0x0t
    .end array-data

    .line 96
    :array_3
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
    .end array-data

    .line 112
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x80t 0x1t 0x0t 0x0t
        0xe2t 0x2t 0x0t 0x0t
        0x45t 0x4t 0x0t 0x0t
        0xc4t 0x5t 0x0t 0x0t
        0x26t 0x7t 0x0t 0x0t
        0x89t 0x8t 0x0t 0x0t
        0x9t 0xat 0x0t 0x0t
        0x6bt 0xbt 0x0t 0x0t
        0xcet 0xct 0x0t 0x0t
        0x4et 0xet 0x0t 0x0t
        0xb0t 0xft 0x0t 0x0t
        0x30t 0x11t 0x0t 0x0t
        0x92t 0x12t 0x0t 0x0t
        0xf4t 0x13t 0x0t 0x0t
        0x74t 0x15t 0x0t 0x0t
        0xd6t 0x16t 0x0t 0x0t
        0x39t 0x18t 0x0t 0x0t
        0xb9t 0x19t 0x0t 0x0t
        0x1ct 0x1bt 0x0t 0x0t
        0x9ct 0x1ct 0x0t 0x0t
        0xfet 0x1dt 0x0t 0x0t
        0x60t 0x1ft 0x0t 0x0t
        0xe0t 0x20t 0x0t 0x0t
        0x42t 0x22t 0x0t 0x0t
        0xa4t 0x23t 0x0t 0x0t
        0x25t 0x25t 0x0t 0x0t
        0x87t 0x26t 0x0t 0x0t
        0xeat 0x27t 0x0t 0x0t
        0x6at 0x29t 0x0t 0x0t
        0xcct 0x2at 0x0t 0x0t
        0x4bt 0x2ct 0x0t 0x0t
        0xadt 0x2dt 0x0t 0x0t
        0x10t 0x2ft 0x0t 0x0t
        0x90t 0x30t 0x0t 0x0t
        0xf3t 0x31t 0x0t 0x0t
        0x55t 0x33t 0x0t 0x0t
        0xd5t 0x34t 0x0t 0x0t
        0x37t 0x36t 0x0t 0x0t
        0xb7t 0x37t 0x0t 0x0t
        0x19t 0x39t 0x0t 0x0t
        0x7bt 0x3at 0x0t 0x0t
        0xfbt 0x3bt 0x0t 0x0t
        0x5et 0x3dt 0x0t 0x0t
        0xc0t 0x3et 0x0t 0x0t
        0x41t 0x40t 0x0t 0x0t
        0xa3t 0x41t 0x0t 0x0t
        0x5t 0x43t 0x0t 0x0t
        0x85t 0x44t 0x0t 0x0t
        0xe7t 0x45t 0x0t 0x0t
        0x67t 0x47t 0x0t 0x0t
        0xc9t 0x48t 0x0t 0x0t
        0x2ct 0x4at 0x0t 0x0t
        0xact 0x4bt 0x0t 0x0t
        0xet 0x4dt 0x0t 0x0t
        0x71t 0x4et 0x0t 0x0t
        0xf1t 0x4ft 0x0t 0x0t
        0x53t 0x51t 0x0t 0x0t
        0xd2t 0x52t 0x0t 0x0t
        0x35t 0x54t 0x0t 0x0t
        0x97t 0x55t 0x0t 0x0t
        0x17t 0x57t 0x0t 0x0t
        0x7at 0x58t 0x0t 0x0t
        0xdct 0x59t 0x0t 0x0t
        0x5ct 0x5bt 0x0t 0x0t
        0xbft 0x5ct 0x0t 0x0t
        0x20t 0x5et 0x0t 0x0t
        0xa0t 0x5ft 0x0t 0x0t
        0x3t 0x61t 0x0t 0x0t
        0x83t 0x62t 0x0t 0x0t
        0xe5t 0x63t 0x0t 0x0t
        0x48t 0x65t 0x0t 0x0t
        0xc8t 0x66t 0x0t 0x0t
        0x2at 0x68t 0x0t 0x0t
        0x8ct 0x69t 0x0t 0x0t
        0xct 0x6bt 0x0t 0x0t
        0x6et 0x6ct 0x0t 0x0t
        0xeet 0x6dt 0x0t 0x0t
        0x50t 0x6ft 0x0t 0x0t
        0xb3t 0x70t 0x0t 0x0t
        0x33t 0x72t 0x0t 0x0t
        0x96t 0x73t 0x0t 0x0t
        0xf8t 0x74t 0x0t 0x0t
        0x78t 0x76t 0x0t 0x0t
        0xdat 0x77t 0x0t 0x0t
        0x5at 0x79t 0x0t 0x0t
        0xbct 0x7at 0x0t 0x0t
        0x1et 0x7ct 0x0t 0x0t
        0x9et 0x7dt 0x0t 0x0t
        0x1t 0x7ft 0x0t 0x0t
        0x64t 0x80t 0x0t 0x0t
        0xe4t 0x81t 0x0t 0x0t
        0x46t 0x83t 0x0t 0x0t
        0xa8t 0x84t 0x0t 0x0t
        0x27t 0x86t 0x0t 0x0t
        0x8at 0x87t 0x0t 0x0t
        0xat 0x89t 0x0t 0x0t
        0x6ct 0x8at 0x0t 0x0t
        0xcft 0x8bt 0x0t 0x0t
        0x4ft 0x8dt 0x0t 0x0t
        0xb1t 0x8et 0x0t 0x0t
        0x13t 0x90t 0x0t 0x0t
        0x93t 0x91t 0x0t 0x0t
        0xf5t 0x92t 0x0t 0x0t
        0x58t 0x94t 0x0t 0x0t
        0xd8t 0x95t 0x0t 0x0t
        0x3at 0x97t 0x0t 0x0t
        0xbbt 0x98t 0x0t 0x0t
        0x1dt 0x9at 0x0t 0x0t
        0x7ft 0x9bt 0x0t 0x0t
        0xfft 0x9ct 0x0t 0x0t
        0x61t 0x9et 0x0t 0x0t
        0xc3t 0x9ft 0x0t 0x0t
        0x43t 0xa1t 0x0t 0x0t
        0xa6t 0xa2t 0x0t 0x0t
        0x26t 0xa4t 0x0t 0x0t
        0x88t 0xa5t 0x0t 0x0t
        0xebt 0xa6t 0x0t 0x0t
        0x6bt 0xa8t 0x0t 0x0t
        0xcdt 0xa9t 0x0t 0x0t
        0x2ft 0xabt 0x0t 0x0t
        0xaft 0xact 0x0t 0x0t
        0x11t 0xaet 0x0t 0x0t
        0x74t 0xaft 0x0t 0x0t
        0xf4t 0xb0t 0x0t 0x0t
        0x56t 0xb2t 0x0t 0x0t
        0xd6t 0xb3t 0x0t 0x0t
        0x38t 0xb5t 0x0t 0x0t
        0x9at 0xb6t 0x0t 0x0t
        0x1at 0xb8t 0x0t 0x0t
        0x7dt 0xb9t 0x0t 0x0t
        0xdft 0xbat 0x0t 0x0t
        0x5ft 0xbct 0x0t 0x0t
        0xc2t 0xbdt 0x0t 0x0t
        0x42t 0xbft 0x0t 0x0t
        0xa4t 0xc0t 0x0t 0x0t
        0x6t 0xc2t 0x0t 0x0t
        0x86t 0xc3t 0x0t 0x0t
        0xe8t 0xc4t 0x0t 0x0t
        0x4at 0xc6t 0x0t 0x0t
        0xcat 0xc7t 0x0t 0x0t
        0x2dt 0xc9t 0x0t 0x0t
        0x90t 0xcat 0x0t 0x0t
        0x10t 0xcct 0x0t 0x0t
        0x72t 0xcdt 0x0t 0x0t
        0xf2t 0xcet 0x0t 0x0t
        0x54t 0xd0t 0x0t 0x0t
        0xb6t 0xd1t 0x0t 0x0t
        0x36t 0xd3t 0x0t 0x0t
        0x98t 0xd4t 0x0t 0x0t
        0xfbt 0xd5t 0x0t 0x0t
        0x7bt 0xd7t 0x0t 0x0t
        0xdet 0xd8t 0x0t 0x0t
        0x5et 0xdat 0x0t 0x0t
        0xc0t 0xdbt 0x0t 0x0t
        0x22t 0xddt 0x0t 0x0t
        0xa1t 0xdet 0x0t 0x0t
        0x4t 0xe0t 0x0t 0x0t
        0x66t 0xe1t 0x0t 0x0t
        0xe6t 0xe2t 0x0t 0x0t
        0x49t 0xe4t 0x0t 0x0t
        0xabt 0xe5t 0x0t 0x0t
        0x2bt 0xe7t 0x0t 0x0t
        0x8dt 0xe8t 0x0t 0x0t
        0xdt 0xeat 0x0t 0x0t
        0x6ft 0xebt 0x0t 0x0t
        0xd2t 0xect 0x0t 0x0t
        0x52t 0xeet 0x0t 0x0t
        0xb4t 0xeft 0x0t 0x0t
        0x17t 0xf1t 0x0t 0x0t
        0x97t 0xf2t 0x0t 0x0t
        0xf9t 0xf3t 0x0t 0x0t
        0x79t 0xf5t 0x0t 0x0t
        0xdbt 0xf6t 0x0t 0x0t
        0x3dt 0xf8t 0x0t 0x0t
        0xbdt 0xf9t 0x0t 0x0t
        0x20t 0xfbt 0x0t 0x0t
        0x82t 0xfct 0x0t 0x0t
        0x2t 0xfet 0x0t 0x0t
        0x65t 0xfft 0x0t 0x0t
        0xc7t 0x0t 0x1t 0x0t
        0x47t 0x2t 0x1t 0x0t
        0xa9t 0x3t 0x1t 0x0t
        0x29t 0x5t 0x1t 0x0t
        0x8bt 0x6t 0x1t 0x0t
        0xeet 0x7t 0x1t 0x0t
        0x6et 0x9t 0x1t 0x0t
        0xd0t 0xat 0x1t 0x0t
        0x33t 0xct 0x1t 0x0t
        0xb2t 0xdt 0x1t 0x0t
        0x14t 0xft 0x1t 0x0t
        0x94t 0x10t 0x1t 0x0t
        0xf6t 0x11t 0x1t 0x0t
        0x59t 0x13t 0x1t 0x0t
        0xd9t 0x14t 0x1t 0x0t
        0x3ct 0x16t 0x1t 0x0t
        0x9et 0x17t 0x1t 0x0t
        0x1et 0x19t 0x1t 0x0t
        0x80t 0x1at 0x1t 0x0t
        0xe2t 0x1bt 0x1t 0x0t
        0x62t 0x1dt 0x1t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0xd

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 154
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/htc/calendar/LunarUtils;->mLunarDaysInMonth:[I

    .line 104
    const/16 v0, 0x18

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/htc/calendar/LunarUtils;->mSolarTermsThisYear:[J

    .line 138
    iput v1, p0, Lcom/htc/calendar/LunarUtils;->mYearCache:I

    .line 139
    iput v1, p0, Lcom/htc/calendar/LunarUtils;->mLunarYearCache:I

    .line 155
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    .line 156
    iget-object v0, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 157
    iget-object v0, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 158
    iget-object v0, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v0, v3, v2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 160
    invoke-direct {p0}, Lcom/htc/calendar/LunarUtils;->solarToLunar()V

    .line 161
    return-void
.end method

.method public constructor <init>(III)V
    .locals 7
    .parameter "year"
    .parameter "month"
    .parameter "date"

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x0

    .line 196
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/16 v0, 0xd

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/calendar/LunarUtils;->mLunarDaysInMonth:[I

    .line 104
    const/16 v0, 0x18

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/htc/calendar/LunarUtils;->mSolarTermsThisYear:[J

    .line 138
    iput v1, p0, Lcom/htc/calendar/LunarUtils;->mYearCache:I

    .line 139
    iput v1, p0, Lcom/htc/calendar/LunarUtils;->mLunarYearCache:I

    .line 197
    new-instance v0, Ljava/util/GregorianCalendar;

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    .line 199
    invoke-direct {p0}, Lcom/htc/calendar/LunarUtils;->solarToLunar()V

    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 6
    .parameter "res"

    .prologue
    const/16 v5, 0xd

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 162
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-array v2, v5, [I

    iput-object v2, p0, Lcom/htc/calendar/LunarUtils;->mLunarDaysInMonth:[I

    .line 104
    const/16 v2, 0x18

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/htc/calendar/LunarUtils;->mSolarTermsThisYear:[J

    .line 138
    iput v3, p0, Lcom/htc/calendar/LunarUtils;->mYearCache:I

    .line 139
    iput v3, p0, Lcom/htc/calendar/LunarUtils;->mLunarYearCache:I

    .line 163
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    iput-object v2, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    .line 164
    iget-object v2, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/16 v3, 0xa

    invoke-virtual {v2, v3, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 165
    iget-object v2, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/16 v3, 0xc

    invoke-virtual {v2, v3, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 166
    iget-object v2, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v2, v5, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 167
    const v2, 0x7f060010

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/calendar/LunarUtils;->mCnMonths:[Ljava/lang/String;

    .line 168
    const v2, 0x7f060011

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/calendar/LunarUtils;->mCnDays:[Ljava/lang/String;

    .line 169
    const v2, 0x7f060012

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/calendar/LunarUtils;->mCnDaysSmall:[Ljava/lang/String;

    .line 170
    const v2, 0x7f060013

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/calendar/LunarUtils;->mCnGans:[Ljava/lang/String;

    .line 171
    const v2, 0x7f060014

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/calendar/LunarUtils;->mCnZhis:[Ljava/lang/String;

    .line 172
    const v2, 0x7f060015

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/calendar/LunarUtils;->mCnZodiacs:[Ljava/lang/String;

    .line 173
    const v2, 0x7f060016

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/calendar/LunarUtils;->mSolarTerms:[Ljava/lang/String;

    .line 174
    const v2, 0x7f060017

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/calendar/LunarUtils;->SolarHolidays:[Ljava/lang/String;

    .line 175
    const v2, 0x7f060018

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/calendar/LunarUtils;->SolarHolidays_date:[Ljava/lang/String;

    .line 177
    sget-object v2, Lcom/htc/calendar/LunarUtils;->SolarHolidays:[Ljava/lang/String;

    array-length v1, v2

    .line 178
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 179
    sget-object v2, Lcom/htc/calendar/LunarUtils;->mSolarHolidays:Ljava/util/Map;

    sget-object v3, Lcom/htc/calendar/LunarUtils;->SolarHolidays_date:[Ljava/lang/String;

    aget-object v3, v3, v0

    sget-object v4, Lcom/htc/calendar/LunarUtils;->SolarHolidays:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_0
    const v2, 0x7f060019

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/calendar/LunarUtils;->LunarHolidays:[Ljava/lang/String;

    .line 183
    const v2, 0x7f06001a

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/htc/calendar/LunarUtils;->LunarHolidays_date:[Ljava/lang/String;

    .line 184
    sget-object v2, Lcom/htc/calendar/LunarUtils;->LunarHolidays_date:[Ljava/lang/String;

    array-length v1, v2

    .line 185
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 186
    sget-object v2, Lcom/htc/calendar/LunarUtils;->mLunarHolidays:Ljava/util/Map;

    sget-object v3, Lcom/htc/calendar/LunarUtils;->LunarHolidays_date:[Ljava/lang/String;

    aget-object v3, v3, v0

    sget-object v4, Lcom/htc/calendar/LunarUtils;->LunarHolidays:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 188
    :cond_1
    invoke-direct {p0}, Lcom/htc/calendar/LunarUtils;->solarToLunar()V

    .line 189
    return-void
.end method

.method public constructor <init>(Lcom/htc/calendar/LunarUtils;)V
    .locals 7
    .parameter "c1"

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x0

    .line 218
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/16 v0, 0xd

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/calendar/LunarUtils;->mLunarDaysInMonth:[I

    .line 104
    const/16 v0, 0x18

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/htc/calendar/LunarUtils;->mSolarTermsThisYear:[J

    .line 138
    iput v1, p0, Lcom/htc/calendar/LunarUtils;->mYearCache:I

    .line 139
    iput v1, p0, Lcom/htc/calendar/LunarUtils;->mLunarYearCache:I

    .line 219
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/htc/calendar/LunarUtils;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/htc/calendar/LunarUtils;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Lcom/htc/calendar/LunarUtils;->get(I)I

    move-result v3

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    .line 223
    invoke-direct {p0}, Lcom/htc/calendar/LunarUtils;->solarToLunar()V

    .line 224
    return-void
.end method

.method public constructor <init>(Ljava/util/Calendar;)V
    .locals 7
    .parameter "c1"

    .prologue
    const/4 v1, -0x1

    const/4 v4, 0x0

    .line 206
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/16 v0, 0xd

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/htc/calendar/LunarUtils;->mLunarDaysInMonth:[I

    .line 104
    const/16 v0, 0x18

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/htc/calendar/LunarUtils;->mSolarTermsThisYear:[J

    .line 138
    iput v1, p0, Lcom/htc/calendar/LunarUtils;->mYearCache:I

    .line 139
    iput v1, p0, Lcom/htc/calendar/LunarUtils;->mLunarYearCache:I

    .line 207
    new-instance v0, Ljava/util/GregorianCalendar;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    .line 211
    invoke-direct {p0}, Lcom/htc/calendar/LunarUtils;->solarToLunar()V

    .line 212
    return-void
.end method

.method private calcLunarDaysInMonth()V
    .locals 2

    .prologue
    .line 510
    iget v0, p0, Lcom/htc/calendar/LunarUtils;->mLunarYearCache:I

    iget v1, p0, Lcom/htc/calendar/LunarUtils;->mLunarYear:I

    if-ne v0, v1, :cond_0

    .line 516
    :goto_0
    return-void

    .line 513
    :cond_0
    iget v0, p0, Lcom/htc/calendar/LunarUtils;->mLunarYear:I

    iput v0, p0, Lcom/htc/calendar/LunarUtils;->mLunarYearCache:I

    .line 515
    iget v0, p0, Lcom/htc/calendar/LunarUtils;->mLunarYear:I

    iget-object v1, p0, Lcom/htc/calendar/LunarUtils;->mLunarDaysInMonth:[I

    invoke-static {v0, v1}, Lcom/htc/calendar/LunarUtils;->calcLunarDaysInMonthHelper(I[I)V

    goto :goto_0
.end method

.method private static calcLunarDaysInMonthHelper(I[I)V
    .locals 6
    .parameter "year"
    .parameter "daysinmonth"

    .prologue
    .line 525
    const/4 v4, 0x2

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    .line 526
    .local v0, aLunarMonthDay:[I
    sget-object v4, Lcom/htc/calendar/LunarUtils;->mCnYearCodes:[I

    add-int/lit16 v5, p0, -0x76c

    aget v1, v4, v5

    .line 528
    .local v1, code:I
    shr-int/lit8 v1, v1, 0x4

    .line 529
    const/4 v2, 0x0

    .local v2, iMonth:I
    :goto_0
    const/16 v4, 0xc

    if-ge v2, v4, :cond_0

    .line 530
    rsub-int/lit8 v4, v2, 0xb

    and-int/lit8 v5, v1, 0x1

    aget v5, v0, v5

    aput v5, p1, v4

    .line 531
    shr-int/lit8 v1, v1, 0x1

    .line 529
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 534
    :cond_0
    invoke-static {p0}, Lcom/htc/calendar/LunarUtils;->lunarLeapMonth(I)I

    move-result v4

    if-lez v4, :cond_2

    .line 535
    invoke-static {p0}, Lcom/htc/calendar/LunarUtils;->lunarLeapMonth(I)I

    move-result v3

    .line 536
    .local v3, lm:I
    const/16 v2, 0xc

    :goto_1
    if-lez v2, :cond_2

    .line 537
    if-le v2, v3, :cond_1

    .line 538
    add-int/lit8 v4, v2, -0x1

    aget v4, p1, v4

    aput v4, p1, v2

    .line 536
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 540
    :cond_1
    and-int/lit8 v4, v1, 0x1

    aget v4, v0, v4

    aput v4, p1, v2

    .line 545
    .end local v3           #lm:I
    :cond_2
    return-void

    .line 525
    :array_0
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private calcSolarTerms()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 560
    iget v3, p0, Lcom/htc/calendar/LunarUtils;->mYearCache:I

    iget-object v4, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v4, v11}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 570
    :cond_0
    return-void

    .line 563
    :cond_1
    iget-object v3, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v3, v11}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    iput v3, p0, Lcom/htc/calendar/LunarUtils;->mYearCache:I

    .line 565
    const-wide/16 v0, 0x0

    .line 566
    .local v0, f:D
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/16 v3, 0x18

    if-ge v2, v3, :cond_0

    .line 567
    const-wide v3, 0x4076d3df3b645a1dL

    iget-object v5, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v5, v11}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    add-int/lit16 v5, v5, -0x76c

    int-to-double v5, v5

    mul-double/2addr v3, v5

    const-wide v5, 0x4038cccccccccccdL

    sub-double/2addr v3, v5

    const-wide v5, 0x402e70a3d70a3d71L

    int-to-double v7, v2

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    const-wide v5, 0x3ffe666666666666L

    const-wide v7, 0x3fd0c49ba5e353f8L

    int-to-double v9, v2

    mul-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    sub-double v0, v3, v5

    .line 568
    iget-object v3, p0, Lcom/htc/calendar/LunarUtils;->mSolarTermsThisYear:[J

    double-to-long v4, v0

    iget-object v6, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v6, v11}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v6

    invoke-direct {p0, v4, v5, v6, v2}, Lcom/htc/calendar/LunarUtils;->correct(JII)J

    move-result-wide v4

    aput-wide v4, v3, v2

    .line 566
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private correct(JII)J
    .locals 5
    .parameter "offset"
    .parameter "year"
    .parameter "season"

    .prologue
    .line 572
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lcom/htc/calendar/LunarUtils;->exception:[[I

    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 573
    sget-object v3, Lcom/htc/calendar/LunarUtils;->exception:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x0

    aget v3, v3, v4

    if-ne p3, v3, :cond_0

    sget-object v3, Lcom/htc/calendar/LunarUtils;->exception:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x1

    aget v3, v3, v4

    if-ne p4, v3, :cond_0

    .line 574
    sget-object v3, Lcom/htc/calendar/LunarUtils;->exception:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x2

    aget v3, v3, v4

    int-to-long v3, v3

    add-long/2addr p1, v3

    move-wide v1, p1

    .line 576
    .end local p1
    .local v1, offset:J
    :goto_1
    return-wide v1

    .line 572
    .end local v1           #offset:J
    .restart local p1
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-wide v1, p1

    .line 576
    .end local p1
    .restart local v1       #offset:J
    goto :goto_1
.end method

.method public static lunarLeapMonth(I)I
    .locals 2
    .parameter "year"

    .prologue
    .line 502
    sget-object v0, Lcom/htc/calendar/LunarUtils;->mCnYearCodes:[I

    add-int/lit16 v1, p0, -0x76c

    aget v0, v0, v1

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public static lunarYearDays(I)I
    .locals 6
    .parameter "year"

    .prologue
    .line 583
    const/4 v3, 0x0

    .line 584
    .local v3, totaldays:I
    const/4 v4, 0x2

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    .line 585
    .local v0, aLunarMonthDay:[I
    sget-object v4, Lcom/htc/calendar/LunarUtils;->mCnYearCodes:[I

    add-int/lit16 v5, p0, -0x76c

    aget v1, v4, v5

    .line 587
    .local v1, code:I
    shr-int/lit8 v1, v1, 0x4

    .line 588
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/16 v4, 0xc

    if-ge v2, v4, :cond_0

    .line 589
    and-int/lit8 v4, v1, 0x1

    aget v4, v0, v4

    add-int/2addr v3, v4

    .line 590
    shr-int/lit8 v1, v1, 0x1

    .line 588
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 593
    :cond_0
    invoke-static {p0}, Lcom/htc/calendar/LunarUtils;->lunarLeapMonth(I)I

    move-result v4

    if-lez v4, :cond_1

    .line 594
    and-int/lit8 v4, v1, 0x1

    aget v4, v0, v4

    add-int/2addr v3, v4

    .line 595
    :cond_1
    return v3

    .line 584
    :array_0
    .array-data 0x4
        0x1dt 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static final main([Ljava/lang/String;)V
    .locals 8
    .parameter "argv"

    .prologue
    .line 863
    new-instance v0, Lcom/htc/calendar/LunarUtils;

    invoke-direct {v0}, Lcom/htc/calendar/LunarUtils;-><init>()V

    .line 865
    .local v0, c1:Lcom/htc/calendar/LunarUtils;
    invoke-virtual {v0}, Lcom/htc/calendar/LunarUtils;->debugInfo()V

    .line 866
    invoke-virtual {v0}, Lcom/htc/calendar/LunarUtils;->getLunarMonthSymbolsOfCurrentYear()[Ljava/lang/String;

    move-result-object v3

    .line 867
    .local v3, lms:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 868
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v5, v3, v2

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 867
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 870
    :cond_0
    const/16 v4, 0x7d8

    const/4 v5, 0x5

    const/16 v6, 0xf

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/htc/calendar/LunarUtils;->setLunarDate(IIIZ)I

    move-result v1

    .line 871
    .local v1, i:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_1

    .line 872
    invoke-virtual {v0}, Lcom/htc/calendar/LunarUtils;->debugInfo()V

    .line 873
    invoke-virtual {v0}, Lcom/htc/calendar/LunarUtils;->getLunarMonthSymbolsOfCurrentYear()[Ljava/lang/String;

    move-result-object v3

    .line 874
    const/4 v2, 0x0

    :goto_1
    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 875
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v5, v3, v2

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 874
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 878
    :cond_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v5, Lcom/htc/calendar/LunarUtils;->mErrArray:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 881
    :cond_2
    return-void
.end method

.method private solarToLunar()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 445
    invoke-virtual {p0}, Lcom/htc/calendar/LunarUtils;->solarDaysFromBaseDate()J

    move-result-wide v2

    .line 446
    .local v2, offset:J
    iput-wide v2, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDateOffset:J

    .line 458
    iget-object v4, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v4, v7}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    add-int/lit16 v1, v4, -0x76c

    .line 459
    .local v1, index:I
    sget-object v4, Lcom/htc/calendar/LunarUtils;->mCnBaseDateOffsets:[I

    aget v4, v4, v1

    int-to-long v4, v4

    cmp-long v4, v4, v2

    if-lez v4, :cond_2

    .line 460
    sget-object v4, Lcom/htc/calendar/LunarUtils;->mCnBaseDateOffsets:[I

    add-int/lit8 v5, v1, -0x1

    aget v4, v4, v5

    int-to-long v4, v4

    sub-long/2addr v2, v4

    .line 461
    add-int/lit8 v4, v1, -0x1

    add-int/lit16 v4, v4, 0x76c

    iput v4, p0, Lcom/htc/calendar/LunarUtils;->mLunarYear:I

    .line 468
    :goto_0
    invoke-direct {p0}, Lcom/htc/calendar/LunarUtils;->calcLunarDaysInMonth()V

    .line 469
    invoke-direct {p0}, Lcom/htc/calendar/LunarUtils;->calcSolarTerms()V

    .line 471
    const/4 v0, 0x0

    .local v0, iMonth:I
    :goto_1
    const/16 v4, 0xd

    if-ge v0, v4, :cond_0

    .line 472
    iget-object v4, p0, Lcom/htc/calendar/LunarUtils;->mLunarDaysInMonth:[I

    aget v4, v4, v0

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_3

    .line 473
    iput v0, p0, Lcom/htc/calendar/LunarUtils;->mLunarMonth:I

    .line 479
    :cond_0
    iget v4, p0, Lcom/htc/calendar/LunarUtils;->mLunarYear:I

    invoke-static {v4}, Lcom/htc/calendar/LunarUtils;->lunarLeapMonth(I)I

    move-result v4

    if-lez v4, :cond_5

    .line 481
    iget v4, p0, Lcom/htc/calendar/LunarUtils;->mLunarMonth:I

    iget v5, p0, Lcom/htc/calendar/LunarUtils;->mLunarYear:I

    invoke-static {v5}, Lcom/htc/calendar/LunarUtils;->lunarLeapMonth(I)I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 482
    iput-boolean v7, p0, Lcom/htc/calendar/LunarUtils;->mLunarLeapMonth:Z

    .line 487
    :goto_2
    iget v4, p0, Lcom/htc/calendar/LunarUtils;->mLunarMonth:I

    iget v5, p0, Lcom/htc/calendar/LunarUtils;->mLunarYear:I

    invoke-static {v5}, Lcom/htc/calendar/LunarUtils;->lunarLeapMonth(I)I

    move-result v5

    if-lt v4, v5, :cond_1

    .line 488
    iget v4, p0, Lcom/htc/calendar/LunarUtils;->mLunarMonth:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/htc/calendar/LunarUtils;->mLunarMonth:I

    .line 494
    :cond_1
    :goto_3
    long-to-int v4, v2

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/htc/calendar/LunarUtils;->mLunarDate:I

    .line 495
    return-void

    .line 464
    .end local v0           #iMonth:I
    :cond_2
    sget-object v4, Lcom/htc/calendar/LunarUtils;->mCnBaseDateOffsets:[I

    aget v4, v4, v1

    int-to-long v4, v4

    sub-long/2addr v2, v4

    .line 465
    add-int/lit16 v4, v1, 0x76c

    iput v4, p0, Lcom/htc/calendar/LunarUtils;->mLunarYear:I

    goto :goto_0

    .line 476
    .restart local v0       #iMonth:I
    :cond_3
    iget-object v4, p0, Lcom/htc/calendar/LunarUtils;->mLunarDaysInMonth:[I

    aget v4, v4, v0

    int-to-long v4, v4

    sub-long/2addr v2, v4

    .line 471
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 484
    :cond_4
    iput-boolean v6, p0, Lcom/htc/calendar/LunarUtils;->mLunarLeapMonth:Z

    goto :goto_2

    .line 491
    :cond_5
    iput-boolean v6, p0, Lcom/htc/calendar/LunarUtils;->mLunarLeapMonth:Z

    goto :goto_3
.end method


# virtual methods
.method public add(II)V
    .locals 6
    .parameter "field"
    .parameter "value"

    .prologue
    .line 233
    packed-switch p1, :pswitch_data_0

    .line 237
    :pswitch_0
    iget-object v2, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v2, p1, p2}, Ljava/util/GregorianCalendar;->add(II)V

    .line 240
    const/4 v2, 0x5

    if-ne v2, p1, :cond_1

    .line 241
    iget v2, p0, Lcom/htc/calendar/LunarUtils;->mLunarDate:I

    add-int v0, v2, p2

    .line 242
    .local v0, aNewDate:I
    invoke-virtual {p0}, Lcom/htc/calendar/LunarUtils;->getDaysInCurrentLunarMonth()I

    move-result v1

    .line 245
    .local v1, theDaysInThisMonth:I
    if-lez v0, :cond_0

    if-gt v0, v1, :cond_0

    .line 246
    iput v0, p0, Lcom/htc/calendar/LunarUtils;->mLunarDate:I

    .line 247
    iget-wide v2, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDateOffset:J

    int-to-long v4, p2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDateOffset:J

    .line 253
    .end local v0           #aNewDate:I
    .end local v1           #theDaysInThisMonth:I
    :goto_0
    :pswitch_1
    return-void

    .line 249
    .restart local v0       #aNewDate:I
    .restart local v1       #theDaysInThisMonth:I
    :cond_0
    invoke-direct {p0}, Lcom/htc/calendar/LunarUtils;->solarToLunar()V

    goto :goto_0

    .line 252
    .end local v0           #aNewDate:I
    .end local v1           #theDaysInThisMonth:I
    :cond_1
    invoke-direct {p0}, Lcom/htc/calendar/LunarUtils;->solarToLunar()V

    goto :goto_0

    .line 233
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public debugInfo()V
    .locals 3

    .prologue
    .line 848
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calendar Date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 856
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lunar dates: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/calendar/LunarUtils;->mLunarYear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/calendar/LunarUtils;->getLunarMonth()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/calendar/LunarUtils;->getLunarDate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 857
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5929\u5e72\u5730\u652f\u5c5e\u76f8\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/calendar/LunarUtils;->getTianGan()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/calendar/LunarUtils;->getDiZhi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/calendar/LunarUtils;->getLunarZodiac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 858
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8282\u65e5\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/calendar/LunarUtils;->getSolarHoliday()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 859
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 860
    return-void
.end method

.method public get(I)I
    .locals 1
    .parameter "field"

    .prologue
    .line 382
    packed-switch p1, :pswitch_data_0

    .line 390
    iget-object v0, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v0, p1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    :goto_0
    return v0

    .line 384
    :pswitch_0
    iget v0, p0, Lcom/htc/calendar/LunarUtils;->mLunarYear:I

    goto :goto_0

    .line 386
    :pswitch_1
    iget v0, p0, Lcom/htc/calendar/LunarUtils;->mLunarMonth:I

    goto :goto_0

    .line 388
    :pswitch_2
    iget v0, p0, Lcom/htc/calendar/LunarUtils;->mLunarDate:I

    goto :goto_0

    .line 382
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDaysInCurrentLunarMonth()I
    .locals 2

    .prologue
    .line 775
    iget v0, p0, Lcom/htc/calendar/LunarUtils;->mLunarYear:I

    invoke-static {v0}, Lcom/htc/calendar/LunarUtils;->lunarLeapMonth(I)I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/htc/calendar/LunarUtils;->mLunarMonth:I

    iget v1, p0, Lcom/htc/calendar/LunarUtils;->mLunarYear:I

    invoke-static {v1}, Lcom/htc/calendar/LunarUtils;->lunarLeapMonth(I)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 777
    iget-object v0, p0, Lcom/htc/calendar/LunarUtils;->mLunarDaysInMonth:[I

    iget v1, p0, Lcom/htc/calendar/LunarUtils;->mLunarMonth:I

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    .line 779
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/LunarUtils;->mLunarDaysInMonth:[I

    iget v1, p0, Lcom/htc/calendar/LunarUtils;->mLunarMonth:I

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getDiZhi()Ljava/lang/String;
    .locals 2

    .prologue
    .line 740
    sget-object v0, Lcom/htc/calendar/LunarUtils;->mCnZhis:[Ljava/lang/String;

    iget v1, p0, Lcom/htc/calendar/LunarUtils;->mLunarYear:I

    add-int/lit16 v1, v1, -0x748

    rem-int/lit8 v1, v1, 0xc

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getFirstSundayOfMonth()Lcom/htc/calendar/LunarUtils;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 762
    new-instance v0, Lcom/htc/calendar/LunarUtils;

    iget-object v1, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v1, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    invoke-direct {v0, v1, v2, v4}, Lcom/htc/calendar/LunarUtils;-><init>(III)V

    .line 766
    .local v0, tmp:Lcom/htc/calendar/LunarUtils;
    const/4 v1, 0x5

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Lcom/htc/calendar/LunarUtils;->get(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/htc/calendar/LunarUtils;->add(II)V

    .line 767
    return-object v0
.end method

.method public getLunarDate()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 628
    iget-boolean v3, p0, Lcom/htc/calendar/LunarUtils;->mLunarLeapMonth:Z

    if-nez v3, :cond_2

    .line 629
    iget v3, p0, Lcom/htc/calendar/LunarUtils;->mLunarMonth:I

    const/16 v4, 0x9

    if-ge v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/calendar/LunarUtils;->mLunarMonth:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 631
    .local v2, lmon:Ljava/lang/String;
    :goto_0
    iget v3, p0, Lcom/htc/calendar/LunarUtils;->mLunarDate:I

    const/16 v4, 0xa

    if-ge v3, v4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/calendar/LunarUtils;->mLunarDate:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 633
    .local v1, lday:Ljava/lang/String;
    :goto_1
    sget-object v3, Lcom/htc/calendar/LunarUtils;->mLunarHolidays:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 634
    iput-boolean v7, p0, Lcom/htc/calendar/LunarUtils;->mLunarSpecialDay:Z

    .line 635
    sget-object v3, Lcom/htc/calendar/LunarUtils;->mLunarHolidays:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 665
    .end local v1           #lday:Ljava/lang/String;
    .end local v2           #lmon:Ljava/lang/String;
    :goto_2
    return-object v3

    .line 629
    :cond_0
    iget v3, p0, Lcom/htc/calendar/LunarUtils;->mLunarMonth:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 631
    .restart local v2       #lmon:Ljava/lang/String;
    :cond_1
    iget v3, p0, Lcom/htc/calendar/LunarUtils;->mLunarDate:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 640
    .end local v2           #lmon:Ljava/lang/String;
    :cond_2
    iget v3, p0, Lcom/htc/calendar/LunarUtils;->mLunarMonth:I

    const/16 v4, 0xb

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/htc/calendar/LunarUtils;->mLunarDate:I

    invoke-virtual {p0}, Lcom/htc/calendar/LunarUtils;->getDaysInCurrentLunarMonth()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 641
    iput-boolean v7, p0, Lcom/htc/calendar/LunarUtils;->mLunarSpecialDay:Z

    .line 642
    const-string v3, "\u9664\u5915"

    goto :goto_2

    .line 646
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    const/16 v3, 0x18

    if-ge v0, v3, :cond_5

    .line 647
    iget-wide v3, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDateOffset:J

    iget-object v5, p0, Lcom/htc/calendar/LunarUtils;->mSolarTermsThisYear:[J

    aget-wide v5, v5, v0

    cmp-long v3, v3, v5

    if-nez v3, :cond_4

    .line 648
    iput-boolean v7, p0, Lcom/htc/calendar/LunarUtils;->mLunarSpecialDay:Z

    .line 649
    sget-object v3, Lcom/htc/calendar/LunarUtils;->mSolarTerms:[Ljava/lang/String;

    aget-object v3, v3, v0

    goto :goto_2

    .line 651
    :cond_4
    iget-wide v3, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDateOffset:J

    iget-object v5, p0, Lcom/htc/calendar/LunarUtils;->mSolarTermsThisYear:[J

    aget-wide v5, v5, v0

    cmp-long v3, v3, v5

    if-gez v3, :cond_6

    .line 656
    :cond_5
    iget v3, p0, Lcom/htc/calendar/LunarUtils;->mLunarDate:I

    if-ne v3, v7, :cond_8

    .line 657
    iput-boolean v7, p0, Lcom/htc/calendar/LunarUtils;->mLunarSpecialDay:Z

    .line 658
    iget-boolean v3, p0, Lcom/htc/calendar/LunarUtils;->mLunarLeapMonth:Z

    if-eqz v3, :cond_7

    .line 659
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u95f0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/htc/calendar/LunarUtils;->mCnMonths:[Ljava/lang/String;

    iget v5, p0, Lcom/htc/calendar/LunarUtils;->mLunarMonth:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 646
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 661
    :cond_7
    sget-object v3, Lcom/htc/calendar/LunarUtils;->mCnMonths:[Ljava/lang/String;

    iget v4, p0, Lcom/htc/calendar/LunarUtils;->mLunarMonth:I

    aget-object v3, v3, v4

    goto :goto_2

    .line 664
    :cond_8
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/calendar/LunarUtils;->mLunarSpecialDay:Z

    .line 665
    sget-object v3, Lcom/htc/calendar/LunarUtils;->mCnDays:[Ljava/lang/String;

    iget v4, p0, Lcom/htc/calendar/LunarUtils;->mLunarDate:I

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    goto :goto_2
.end method

.method public getLunarDateSymbolsOfCurrentMonth()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 812
    invoke-virtual {p0}, Lcom/htc/calendar/LunarUtils;->getDaysInCurrentLunarMonth()I

    move-result v0

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    .line 813
    sget-object v0, Lcom/htc/calendar/LunarUtils;->mCnDays:[Ljava/lang/String;

    .line 815
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/htc/calendar/LunarUtils;->mCnDaysSmall:[Ljava/lang/String;

    goto :goto_0
.end method

.method public getLunarMonth()Ljava/lang/String;
    .locals 3

    .prologue
    .line 602
    iget-boolean v0, p0, Lcom/htc/calendar/LunarUtils;->mLunarLeapMonth:Z

    if-eqz v0, :cond_0

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u95f0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/calendar/LunarUtils;->mCnMonths:[Ljava/lang/String;

    iget v2, p0, Lcom/htc/calendar/LunarUtils;->mLunarMonth:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 605
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/htc/calendar/LunarUtils;->mCnMonths:[Ljava/lang/String;

    iget v1, p0, Lcom/htc/calendar/LunarUtils;->mLunarMonth:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getLunarMonthSymbolsOfCurrentYear()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 787
    iget v4, p0, Lcom/htc/calendar/LunarUtils;->mLunarYear:I

    invoke-static {v4}, Lcom/htc/calendar/LunarUtils;->lunarLeapMonth(I)I

    move-result v0

    .line 788
    .local v0, aLeapMonth:I
    if-nez v0, :cond_1

    .line 789
    sget-object v3, Lcom/htc/calendar/LunarUtils;->mCnMonths:[Ljava/lang/String;

    .line 797
    :cond_0
    return-object v3

    .line 791
    :cond_1
    const/16 v4, 0xd

    new-array v3, v4, [Ljava/lang/String;

    .line 792
    .local v3, theLunarMonthSymbols:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    const/16 v4, 0xc

    if-ge v1, v4, :cond_0

    .line 793
    sget-object v4, Lcom/htc/calendar/LunarUtils;->mCnMonths:[Ljava/lang/String;

    aget-object v4, v4, v1

    aput-object v4, v3, v2

    .line 794
    add-int/lit8 v4, v1, 0x1

    if-ne v0, v4, :cond_2

    .line 795
    add-int/lit8 v2, v2, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u95f0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/htc/calendar/LunarUtils;->mCnMonths:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    .line 792
    :cond_2
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public final getLunarPlainDate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 618
    sget-object v0, Lcom/htc/calendar/LunarUtils;->mCnDays:[Ljava/lang/String;

    iget v1, p0, Lcom/htc/calendar/LunarUtils;->mLunarDate:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getLunarZodiac()Ljava/lang/String;
    .locals 2

    .prologue
    .line 748
    sget-object v0, Lcom/htc/calendar/LunarUtils;->mCnZodiacs:[Ljava/lang/String;

    iget v1, p0, Lcom/htc/calendar/LunarUtils;->mLunarYear:I

    add-int/lit16 v1, v1, -0x748

    rem-int/lit8 v1, v1, 0xc

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getSolarHoliday()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    .line 687
    iget-object v3, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v3, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    const/16 v4, 0x9

    if-ge v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v4, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 690
    .local v2, lmon:Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v3, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v4, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 699
    .local v1, lday:Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 705
    .local v0, aOtherFormat:Ljava/lang/String;
    sget-object v3, Lcom/htc/calendar/LunarUtils;->mSolarHolidays:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 706
    sget-object v3, Lcom/htc/calendar/LunarUtils;->mSolarHolidays:Ljava/util/Map;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 710
    :goto_2
    return-object v3

    .line 687
    .end local v0           #aOtherFormat:Ljava/lang/String;
    .end local v1           #lday:Ljava/lang/String;
    .end local v2           #lmon:Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v3, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 690
    .restart local v2       #lmon:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v3, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 707
    .restart local v0       #aOtherFormat:Ljava/lang/String;
    .restart local v1       #lday:Ljava/lang/String;
    :cond_2
    sget-object v3, Lcom/htc/calendar/LunarUtils;->mSolarHolidays:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 708
    sget-object v3, Lcom/htc/calendar/LunarUtils;->mSolarHolidays:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_2

    .line 710
    :cond_3
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public getTianGan()Ljava/lang/String;
    .locals 2

    .prologue
    .line 732
    sget-object v0, Lcom/htc/calendar/LunarUtils;->mCnGans:[Ljava/lang/String;

    iget v1, p0, Lcom/htc/calendar/LunarUtils;->mLunarYear:I

    add-int/lit16 v1, v1, -0x748

    rem-int/lit8 v1, v1, 0xa

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isLunarLeapMonth()Z
    .locals 1

    .prologue
    .line 823
    iget-boolean v0, p0, Lcom/htc/calendar/LunarUtils;->mLunarLeapMonth:Z

    return v0
.end method

.method public isSolarLeapYear()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 403
    iget-object v2, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v2, v1}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    .line 404
    .local v0, year:I
    rem-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_0

    rem-int/lit8 v2, v0, 0x64

    if-nez v2, :cond_1

    :cond_0
    rem-int/lit16 v2, v0, 0x190

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTheSameDay(Lcom/htc/calendar/LunarUtils;)Z
    .locals 5
    .parameter "c1"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v0, 0x1

    .line 839
    iget-object v1, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v1, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Lcom/htc/calendar/LunarUtils;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v3}, Lcom/htc/calendar/LunarUtils;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v1, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v4}, Lcom/htc/calendar/LunarUtils;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTheSameDay(Ljava/util/Calendar;)Z
    .locals 5
    .parameter "c1"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v0, 0x1

    .line 830
    iget-object v1, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v1, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v1, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(II)V
    .locals 1
    .parameter "field"
    .parameter "value"

    .prologue
    .line 261
    packed-switch p1, :pswitch_data_0

    .line 265
    :pswitch_0
    iget-object v0, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/GregorianCalendar;->set(II)V

    .line 268
    invoke-direct {p0}, Lcom/htc/calendar/LunarUtils;->solarToLunar()V

    .line 269
    :pswitch_1
    return-void

    .line 261
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public set(III)V
    .locals 7
    .parameter "year"
    .parameter "month"
    .parameter "date"

    .prologue
    const/4 v4, 0x0

    .line 278
    iget-object v0, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 280
    invoke-direct {p0}, Lcom/htc/calendar/LunarUtils;->solarToLunar()V

    .line 281
    return-void
.end method

.method public set(Lcom/htc/calendar/LunarUtils;)V
    .locals 7
    .parameter "c1"

    .prologue
    const/4 v4, 0x0

    .line 300
    iget-object v0, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/htc/calendar/LunarUtils;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/htc/calendar/LunarUtils;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Lcom/htc/calendar/LunarUtils;->get(I)I

    move-result v3

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 304
    invoke-direct {p0}, Lcom/htc/calendar/LunarUtils;->solarToLunar()V

    .line 305
    return-void
.end method

.method public set(Ljava/util/Calendar;)V
    .locals 7
    .parameter "c1"

    .prologue
    const/4 v4, 0x0

    .line 288
    iget-object v0, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 292
    invoke-direct {p0}, Lcom/htc/calendar/LunarUtils;->solarToLunar()V

    .line 293
    return-void
.end method

.method public setLunarDate(IIIZ)I
    .locals 10
    .parameter "year"
    .parameter "month"
    .parameter "date"
    .parameter "leap"

    .prologue
    const/4 v4, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v9, 0x5

    .line 325
    const/16 v7, 0x76c

    if-lt p1, v7, :cond_0

    const/16 v7, 0x833

    if-le p1, v7, :cond_2

    :cond_0
    move v4, v6

    .line 373
    :cond_1
    :goto_0
    return v4

    .line 327
    :cond_2
    if-ltz p2, :cond_3

    const/16 v7, 0xb

    if-le p2, v7, :cond_4

    :cond_3
    move v4, v5

    .line 328
    goto :goto_0

    .line 329
    :cond_4
    if-eqz p4, :cond_5

    invoke-static {p1}, Lcom/htc/calendar/LunarUtils;->lunarLeapMonth(I)I

    move-result v7

    add-int/lit8 v8, p2, 0x1

    if-eq v7, v8, :cond_5

    .line 330
    const/4 v4, 0x2

    goto :goto_0

    .line 331
    :cond_5
    if-lt p3, v5, :cond_1

    const/16 v7, 0x1e

    if-gt p3, v7, :cond_1

    .line 334
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 335
    .local v0, aBaseCalDate:Ljava/util/Calendar;
    add-int/lit16 v1, p1, -0x76c

    .line 336
    .local v1, index:I
    sget-object v7, Lcom/htc/calendar/LunarUtils;->mBaseDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v7}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 337
    sget-object v7, Lcom/htc/calendar/LunarUtils;->mCnBaseDateOffsets:[I

    aget v7, v7, v1

    invoke-virtual {v0, v9, v7}, Ljava/util/Calendar;->add(II)V

    .line 339
    const/16 v7, 0xd

    new-array v3, v7, [I

    .line 340
    .local v3, theLunarDaysInMonth:[I
    invoke-static {p1, v3}, Lcom/htc/calendar/LunarUtils;->calcLunarDaysInMonthHelper(I[I)V

    .line 341
    const/4 v1, 0x0

    move v2, v1

    .end local v1           #index:I
    .local v2, index:I
    :goto_1
    if-ge v2, p2, :cond_6

    .line 342
    aget v7, v3, v2

    invoke-virtual {v0, v9, v7}, Ljava/util/Calendar;->add(II)V

    .line 341
    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    move v2, v1

    .end local v1           #index:I
    .restart local v2       #index:I
    goto :goto_1

    .line 344
    :cond_6
    if-nez p4, :cond_7

    invoke-static {p1}, Lcom/htc/calendar/LunarUtils;->lunarLeapMonth(I)I

    move-result v7

    if-lez v7, :cond_c

    invoke-static {p1}, Lcom/htc/calendar/LunarUtils;->lunarLeapMonth(I)I

    move-result v7

    if-gt v7, p2, :cond_c

    .line 346
    :cond_7
    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    aget v7, v3, v2

    invoke-virtual {v0, v9, v7}, Ljava/util/Calendar;->add(II)V

    .line 347
    :goto_2
    aget v7, v3, v1

    if-gt p3, v7, :cond_1

    .line 350
    add-int/lit8 v4, p3, -0x1

    invoke-virtual {v0, v9, v4}, Ljava/util/Calendar;->add(II)V

    .line 352
    sget-object v4, Lcom/htc/calendar/LunarUtils;->DATE_MAX_BOUND_OBJ:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    sget-object v4, Lcom/htc/calendar/LunarUtils;->DATE_MIN_BOUND_OBJ:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 354
    :cond_8
    const/4 v4, 0x4

    goto :goto_0

    .line 356
    :cond_9
    iget-object v4, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 357
    iput p1, p0, Lcom/htc/calendar/LunarUtils;->mLunarYear:I

    .line 358
    iput p2, p0, Lcom/htc/calendar/LunarUtils;->mLunarMonth:I

    .line 359
    iput p3, p0, Lcom/htc/calendar/LunarUtils;->mLunarDate:I

    .line 360
    if-eqz p4, :cond_b

    .line 361
    iput-boolean v5, p0, Lcom/htc/calendar/LunarUtils;->mLunarLeapMonth:Z

    .line 365
    :goto_3
    iget v4, p0, Lcom/htc/calendar/LunarUtils;->mLunarYear:I

    iget v5, p0, Lcom/htc/calendar/LunarUtils;->mLunarYearCache:I

    if-eq v4, v5, :cond_a

    .line 366
    iput-object v3, p0, Lcom/htc/calendar/LunarUtils;->mLunarDaysInMonth:[I

    .line 367
    iget v4, p0, Lcom/htc/calendar/LunarUtils;->mLunarYear:I

    iput v4, p0, Lcom/htc/calendar/LunarUtils;->mLunarYearCache:I

    .line 369
    :cond_a
    invoke-direct {p0}, Lcom/htc/calendar/LunarUtils;->calcSolarTerms()V

    .line 371
    invoke-virtual {p0}, Lcom/htc/calendar/LunarUtils;->solarDaysFromBaseDate()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDateOffset:J

    .line 373
    const/4 v4, -0x1

    goto/16 :goto_0

    .line 363
    :cond_b
    iput-boolean v6, p0, Lcom/htc/calendar/LunarUtils;->mLunarLeapMonth:Z

    goto :goto_3

    .end local v1           #index:I
    .restart local v2       #index:I
    :cond_c
    move v1, v2

    .end local v2           #index:I
    .restart local v1       #index:I
    goto :goto_2
.end method

.method public solarDaysFromBaseDate()J
    .locals 9

    .prologue
    .line 423
    iget-object v4, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v4}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v6}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v7}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v6

    int-to-long v6, v6

    add-long v0, v4, v6

    .line 424
    .local v0, endl:J
    sget-object v4, Lcom/htc/calendar/LunarUtils;->mBaseDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v4}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    sget-object v6, Lcom/htc/calendar/LunarUtils;->mBaseDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v6}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v6

    sget-object v7, Lcom/htc/calendar/LunarUtils;->mBaseDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v7}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v6

    int-to-long v6, v6

    add-long v2, v4, v6

    .line 425
    .local v2, startl:J
    sub-long v4, v0, v2

    const-wide/32 v6, 0x5265c00

    div-long/2addr v4, v6

    return-wide v4
.end method

.method public solarDaysFromDate(Ljava/util/Calendar;)J
    .locals 9
    .parameter "cc"

    .prologue
    .line 433
    iget-object v4, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v4}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v6}, Ljava/util/GregorianCalendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v7}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v6

    int-to-long v6, v6

    add-long v0, v4, v6

    .line 434
    .local v0, endl:J
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v6

    int-to-long v6, v6

    add-long v2, v4, v6

    .line 435
    .local v2, startl:J
    sub-long v4, v0, v2

    const-wide/32 v6, 0x5265c00

    div-long/2addr v4, v6

    return-wide v4
.end method

.method public solarDaysInMonth()I
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 412
    invoke-virtual {p0}, Lcom/htc/calendar/LunarUtils;->isSolarLeapYear()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 413
    const/16 v0, 0x1d

    .line 415
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/htc/calendar/LunarUtils;->mSolarDaysInMonth:[I

    iget-object v1, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    aget v0, v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/htc/calendar/LunarUtils;->mCurrentDate:Ljava/util/GregorianCalendar;

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
