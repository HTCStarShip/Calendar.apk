.class public Lcom/htc/calendar/MonthView;
.super Landroid/view/View;
.source "MonthView.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/calendar/MonthView$DismissPopup;,
        Lcom/htc/calendar/MonthView$ContextMenuHandler;
    }
.end annotation


# static fields
.field private static BUSY_BITS_MARGIN:I = 0x0

.field private static BUSY_BITS_WIDTH:I = 0x0

.field private static DAY_NUMBER_OFFSET:I = 0x0

.field private static EVENT_DOT_LEFT_MARGIN:I = 0x0

.field private static EVENT_DOT_TOP_MARGIN:I = 0x0

.field private static EVENT_DOT_W_H:I = 0x0

.field private static EVENT_NUM_DAYS:I = 0x0

.field private static HORIZONTAL_FLING_THRESHOLD:I = 0x0

.field private static HOUR_GAP:F = 0.0f

.field private static MIN_EVENT_HEIGHT:F = 0.0f

.field private static final MODULO_SHIFT:I = 0x10

.field private static MONTH_DAY_GAP:I = 0x0

.field private static MONTH_DAY_NUMBER_LEFT_RIGHT:I = 0x0

.field private static MONTH_DAY_NUMBER_UP_DOWN:I = 0x0

.field private static MONTH_DAY_TEXT_SIZE:I = 0x0

.field private static MONTH_LUNAR_TEXT_SIZE:I = 0x0

.field private static MONTH_NUMBER_PENDDING_TOP:I = 0x0

.field private static final POPUP_DISMISS_DELAY:I = 0xbb8

.field private static final POPUP_HEIGHT:I = 0x64

.field private static final PROFILE_LOAD_TIME:Z = false

.field private static final SELECTION_HIDDEN:I = 0x0

.field private static final SELECTION_LONGPRESS:I = 0x3

.field private static final SELECTION_PRESSED:I = 0x1

.field private static final SELECTION_SELECTED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MonthView"

.field private static TEXT_TOP_MARGIN:I

.field private static WEEK_BANNER_HEIGHT:I

.field private static WEEK_GAP:I

.field private static WEEK_TEXT_PADDING:I

.field private static WEEK_TEXT_SIZE:I

.field private static lunar:Lcom/htc/calendar/LunarUtils;

.field private static mBusyBitPositionBGCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mBusyBitPositionDrawableCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mChineseTextX:I

.field private static mChineseTextY:I

.field private static mEventTriangleHeight:I

.field private static mEventTriangleMargin:I

.field private static mEventTriangleWidth:I

.field private static mLunarTextX:I

.field private static mLunarTextY:I

.field private static mScale:F


# instance fields
.field private eventDay:[Z

.field private mAnimating:Z

.field private mBitmapRect:Landroid/graphics/Rect;

.field private mBorder:I

.field private mBoxLongPressed:Landroid/graphics/drawable/Drawable;

.field private mBoxPressed:Landroid/graphics/drawable/Drawable;

.field private mBoxSelected:Landroid/graphics/drawable/Drawable;

.field private mBusybitsColor:I

.field private mCellHeight:I

.field private mCellWidth:I

.field private mContextMenuHandler:Lcom/htc/calendar/MonthView$ContextMenuHandler;

.field private mCursor:Lcom/htc/calendar/DayOfMonthCursor;

.field private mDayBitmapCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mDetailedView:Ljava/lang/String;

.field private mDismissPopup:Lcom/htc/calendar/MonthView$DismissPopup;

.field private mEnableLunar:Z

.field private mEnableSolarHoliday:Z

.field private final mEventGeometry:Lcom/htc/calendar/EventGeometry;

.field private final mEventLoader:Lcom/htc/calendar/EventLoader;

.field private mEventTriangle:Landroid/graphics/drawable/Drawable;

.field private mEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/calendar/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstJulianDay:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mInManipulation:Z

.field private mInterpolator:Lcom/htc/calendar/ManipulateInterpolator;

.field mIsNext:I

.field private mLaunchDayView:Z

.field private mMonthBgColor:I

.field private mMonthDayNumberColor:I

.field private mMonthOtherMonthBannerColor:I

.field private mMonthOtherMonthColor:I

.field private mMonthOtherMonthDayNumberColor:I

.field private mMonthSaturdayColor:I

.field private mMonthSundayColor:I

.field private mMonthTodayNumberColor:I

.field private mMonthWeekBannerColor:I

.field private mNavigator:Lcom/htc/calendar/Navigator;

.field private mOtherViewCalendar:Landroid/text/format/Time;

.field private mParentActivity:Lcom/htc/calendar/MonthActivity;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mPopupView:Landroid/view/View;

.field private mPrevSelectedDayOfMonth:I

.field private mPrevSelectedMonth:I

.field private mPrevTitleTextViewText:Ljava/lang/CharSequence;

.field private mPreviousPopupHeight:I

.field private mRect:Landroid/graphics/Rect;

.field private mRectF:Landroid/graphics/RectF;

.field private mResources:Landroid/content/res/Resources;

.field private mSavedTime:Landroid/text/format/Time;

.field private mSelectionMode:I

.field private mShowToast:Z

.field private mShowWeekNumbers:Z

.field private mStartDay:I

.field private mTempTime:Landroid/text/format/Time;

.field private mToday:Landroid/text/format/Time;

.field private mTodayBackground:Landroid/graphics/drawable/Drawable;

.field private mTodayEventTriangle:Landroid/graphics/drawable/Drawable;

.field private mUpdateTZ:Ljava/lang/Runnable;

.field private mViewCalendar:Landroid/text/format/Time;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x2

    const/4 v0, 0x0

    const/4 v2, 0x5

    const/4 v1, 0x0

    .line 83
    sput v0, Lcom/htc/calendar/MonthView;->mScale:F

    .line 85
    sput v3, Lcom/htc/calendar/MonthView;->WEEK_GAP:I

    .line 86
    sput v3, Lcom/htc/calendar/MonthView;->MONTH_DAY_GAP:I

    .line 87
    sput v0, Lcom/htc/calendar/MonthView;->HOUR_GAP:F

    .line 88
    const/high16 v0, 0x4080

    sput v0, Lcom/htc/calendar/MonthView;->MIN_EVENT_HEIGHT:F

    .line 89
    const/16 v0, 0x14

    sput v0, Lcom/htc/calendar/MonthView;->MONTH_DAY_TEXT_SIZE:I

    .line 90
    const/16 v0, 0xf

    sput v0, Lcom/htc/calendar/MonthView;->WEEK_BANNER_HEIGHT:I

    .line 91
    const/16 v0, 0xf

    sput v0, Lcom/htc/calendar/MonthView;->WEEK_TEXT_SIZE:I

    .line 92
    const/4 v0, 0x3

    sput v0, Lcom/htc/calendar/MonthView;->WEEK_TEXT_PADDING:I

    .line 93
    sput v2, Lcom/htc/calendar/MonthView;->EVENT_DOT_TOP_MARGIN:I

    .line 94
    sput v4, Lcom/htc/calendar/MonthView;->EVENT_DOT_LEFT_MARGIN:I

    .line 95
    const/16 v0, 0xa

    sput v0, Lcom/htc/calendar/MonthView;->EVENT_DOT_W_H:I

    .line 96
    const/16 v0, 0x1f

    sput v0, Lcom/htc/calendar/MonthView;->EVENT_NUM_DAYS:I

    .line 97
    sput v4, Lcom/htc/calendar/MonthView;->TEXT_TOP_MARGIN:I

    .line 98
    const/4 v0, 0x6

    sput v0, Lcom/htc/calendar/MonthView;->BUSY_BITS_WIDTH:I

    .line 99
    sput v2, Lcom/htc/calendar/MonthView;->BUSY_BITS_MARGIN:I

    .line 100
    const/16 v0, 0xa

    sput v0, Lcom/htc/calendar/MonthView;->DAY_NUMBER_OFFSET:I

    .line 101
    const/16 v0, 0x32

    sput v0, Lcom/htc/calendar/MonthView;->HORIZONTAL_FLING_THRESHOLD:I

    .line 103
    sput v1, Lcom/htc/calendar/MonthView;->mChineseTextX:I

    .line 104
    sput v1, Lcom/htc/calendar/MonthView;->mChineseTextY:I

    .line 105
    sput v1, Lcom/htc/calendar/MonthView;->mLunarTextX:I

    .line 106
    sput v1, Lcom/htc/calendar/MonthView;->mLunarTextY:I

    .line 1813
    sput v1, Lcom/htc/calendar/MonthView;->MONTH_DAY_NUMBER_LEFT_RIGHT:I

    .line 1814
    sput v1, Lcom/htc/calendar/MonthView;->MONTH_DAY_NUMBER_UP_DOWN:I

    .line 1815
    sput v2, Lcom/htc/calendar/MonthView;->MONTH_NUMBER_PENDDING_TOP:I

    .line 1816
    const/16 v0, 0xb

    sput v0, Lcom/htc/calendar/MonthView;->MONTH_LUNAR_TEXT_SIZE:I

    .line 1817
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/calendar/MonthView;->lunar:Lcom/htc/calendar/LunarUtils;

    .line 1824
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/calendar/MonthView;->mBusyBitPositionBGCache:Ljava/util/HashMap;

    .line 1825
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/calendar/MonthView;->mBusyBitPositionDrawableCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/htc/calendar/MonthActivity;Lcom/htc/calendar/Navigator;)V
    .locals 5
    .parameter "activity"
    .parameter "navigator"

    .prologue
    const/4 v4, 0x0

    .line 244
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 117
    sget-object v2, Lcom/htc/calendar/CalendarPreferenceActivity;->DEFAULT_DETAILED_VIEW:Ljava/lang/String;

    iput-object v2, p0, Lcom/htc/calendar/MonthView;->mDetailedView:Ljava/lang/String;

    .line 144
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/htc/calendar/MonthView;->mRect:Landroid/graphics/Rect;

    .line 147
    const/16 v2, 0x1f

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/htc/calendar/MonthView;->eventDay:[Z

    .line 154
    new-instance v2, Lcom/htc/calendar/MonthView$DismissPopup;

    invoke-direct {v2, p0}, Lcom/htc/calendar/MonthView$DismissPopup;-><init>(Lcom/htc/calendar/MonthView;)V

    iput-object v2, p0, Lcom/htc/calendar/MonthView;->mDismissPopup:Lcom/htc/calendar/MonthView$DismissPopup;

    .line 160
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/htc/calendar/MonthView;->mBitmapRect:Landroid/graphics/Rect;

    .line 161
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/htc/calendar/MonthView;->mRectF:Landroid/graphics/RectF;

    .line 165
    iput-boolean v4, p0, Lcom/htc/calendar/MonthView;->mShowWeekNumbers:Z

    .line 166
    iput-boolean v4, p0, Lcom/htc/calendar/MonthView;->mShowToast:Z

    .line 172
    new-instance v2, Landroid/util/SparseArray;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v2, p0, Lcom/htc/calendar/MonthView;->mDayBitmapCache:Landroid/util/SparseArray;

    .line 174
    new-instance v2, Lcom/htc/calendar/MonthView$ContextMenuHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/htc/calendar/MonthView$ContextMenuHandler;-><init>(Lcom/htc/calendar/MonthView;Lcom/htc/calendar/MonthView$1;)V

    iput-object v2, p0, Lcom/htc/calendar/MonthView;->mContextMenuHandler:Lcom/htc/calendar/MonthView$ContextMenuHandler;

    .line 187
    iput v4, p0, Lcom/htc/calendar/MonthView;->mSelectionMode:I

    .line 198
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/htc/calendar/MonthView;->mEvents:Ljava/util/ArrayList;

    .line 225
    new-instance v2, Lcom/htc/calendar/MonthView$1;

    invoke-direct {v2, p0}, Lcom/htc/calendar/MonthView$1;-><init>(Lcom/htc/calendar/MonthView;)V

    iput-object v2, p0, Lcom/htc/calendar/MonthView;->mUpdateTZ:Ljava/lang/Runnable;

    .line 1810
    iput-boolean v4, p0, Lcom/htc/calendar/MonthView;->mInManipulation:Z

    .line 1811
    iput v4, p0, Lcom/htc/calendar/MonthView;->mIsNext:I

    .line 1818
    iput-boolean v4, p0, Lcom/htc/calendar/MonthView;->mEnableLunar:Z

    .line 1819
    iput-boolean v4, p0, Lcom/htc/calendar/MonthView;->mEnableSolarHoliday:Z

    .line 245
    invoke-virtual {p0}, Lcom/htc/calendar/MonthView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 247
    .local v0, res:Landroid/content/res/Resources;
    sget v2, Lcom/htc/calendar/MonthView;->mScale:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 248
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/htc/calendar/MonthView;->mScale:F

    .line 249
    sget v2, Lcom/htc/calendar/MonthView;->mScale:F

    const/high16 v3, 0x3f80

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 252
    sget v2, Lcom/htc/calendar/MonthView;->HOUR_GAP:F

    sget v3, Lcom/htc/calendar/MonthView;->mScale:F

    mul-float/2addr v2, v3

    sput v2, Lcom/htc/calendar/MonthView;->HOUR_GAP:F

    .line 255
    sget v2, Lcom/htc/calendar/MonthView;->WEEK_BANNER_HEIGHT:I

    int-to-float v2, v2

    sget v3, Lcom/htc/calendar/MonthView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/htc/calendar/MonthView;->WEEK_BANNER_HEIGHT:I

    .line 256
    sget v2, Lcom/htc/calendar/MonthView;->WEEK_TEXT_SIZE:I

    int-to-float v2, v2

    sget v3, Lcom/htc/calendar/MonthView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/htc/calendar/MonthView;->WEEK_TEXT_SIZE:I

    .line 257
    sget v2, Lcom/htc/calendar/MonthView;->WEEK_TEXT_PADDING:I

    int-to-float v2, v2

    sget v3, Lcom/htc/calendar/MonthView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/htc/calendar/MonthView;->WEEK_TEXT_PADDING:I

    .line 258
    sget v2, Lcom/htc/calendar/MonthView;->EVENT_DOT_TOP_MARGIN:I

    int-to-float v2, v2

    sget v3, Lcom/htc/calendar/MonthView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/htc/calendar/MonthView;->EVENT_DOT_TOP_MARGIN:I

    .line 259
    sget v2, Lcom/htc/calendar/MonthView;->EVENT_DOT_LEFT_MARGIN:I

    int-to-float v2, v2

    sget v3, Lcom/htc/calendar/MonthView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/htc/calendar/MonthView;->EVENT_DOT_LEFT_MARGIN:I

    .line 260
    sget v2, Lcom/htc/calendar/MonthView;->EVENT_DOT_W_H:I

    int-to-float v2, v2

    sget v3, Lcom/htc/calendar/MonthView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/htc/calendar/MonthView;->EVENT_DOT_W_H:I

    .line 261
    sget v2, Lcom/htc/calendar/MonthView;->TEXT_TOP_MARGIN:I

    int-to-float v2, v2

    sget v3, Lcom/htc/calendar/MonthView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/htc/calendar/MonthView;->TEXT_TOP_MARGIN:I

    .line 262
    sget v2, Lcom/htc/calendar/MonthView;->HORIZONTAL_FLING_THRESHOLD:I

    int-to-float v2, v2

    sget v3, Lcom/htc/calendar/MonthView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/htc/calendar/MonthView;->HORIZONTAL_FLING_THRESHOLD:I

    .line 263
    sget v2, Lcom/htc/calendar/MonthView;->MIN_EVENT_HEIGHT:F

    sget v3, Lcom/htc/calendar/MonthView;->mScale:F

    mul-float/2addr v2, v3

    sput v2, Lcom/htc/calendar/MonthView;->MIN_EVENT_HEIGHT:F

    .line 264
    sget v2, Lcom/htc/calendar/MonthView;->BUSY_BITS_WIDTH:I

    int-to-float v2, v2

    sget v3, Lcom/htc/calendar/MonthView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/htc/calendar/MonthView;->BUSY_BITS_WIDTH:I

    .line 265
    sget v2, Lcom/htc/calendar/MonthView;->BUSY_BITS_MARGIN:I

    int-to-float v2, v2

    sget v3, Lcom/htc/calendar/MonthView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/htc/calendar/MonthView;->BUSY_BITS_MARGIN:I

    .line 266
    sget v2, Lcom/htc/calendar/MonthView;->DAY_NUMBER_OFFSET:I

    int-to-float v2, v2

    sget v3, Lcom/htc/calendar/MonthView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/htc/calendar/MonthView;->DAY_NUMBER_OFFSET:I

    .line 269
    sget v2, Lcom/htc/calendar/MonthView;->MONTH_NUMBER_PENDDING_TOP:I

    int-to-float v2, v2

    sget v3, Lcom/htc/calendar/MonthView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/htc/calendar/MonthView;->MONTH_NUMBER_PENDDING_TOP:I

    .line 270
    sget v2, Lcom/htc/calendar/MonthView;->MONTH_LUNAR_TEXT_SIZE:I

    int-to-float v2, v2

    sget v3, Lcom/htc/calendar/MonthView;->mScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    sput v2, Lcom/htc/calendar/MonthView;->MONTH_LUNAR_TEXT_SIZE:I

    .line 276
    :cond_0
    const v2, 0x7f0a0008

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/htc/calendar/MonthView;->BUSY_BITS_WIDTH:I

    .line 277
    const v2, 0x7f0a0009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/htc/calendar/MonthView;->BUSY_BITS_MARGIN:I

    .line 279
    const v2, 0x7f0a000b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/htc/calendar/MonthView;->MONTH_DAY_NUMBER_LEFT_RIGHT:I

    .line 280
    const v2, 0x7f0a000c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/htc/calendar/MonthView;->MONTH_DAY_NUMBER_UP_DOWN:I

    .line 283
    const v2, 0x7f0a000d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/htc/calendar/MonthView;->mEventTriangleWidth:I

    .line 284
    const v2, 0x7f0a000e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/htc/calendar/MonthView;->mEventTriangleHeight:I

    .line 285
    const v2, 0x7f0a000f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/htc/calendar/MonthView;->mEventTriangleMargin:I

    .line 289
    const v2, 0x7f0a0011

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/htc/calendar/MonthView;->mChineseTextX:I

    .line 290
    const v2, 0x7f0a0012

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/htc/calendar/MonthView;->mChineseTextY:I

    .line 291
    const v2, 0x7f0a0013

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/htc/calendar/MonthView;->mLunarTextX:I

    .line 292
    const v2, 0x7f0a0014

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sput v2, Lcom/htc/calendar/MonthView;->mLunarTextY:I

    .line 295
    const v2, 0x7f09001f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    sput v2, Lcom/htc/calendar/MonthView;->MONTH_DAY_TEXT_SIZE:I

    .line 308
    iget-object v2, p0, Lcom/htc/calendar/MonthView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/htc/calendar/MonthView;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v2, v3}, Lcom/htc/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, tz:Ljava/lang/String;
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/htc/calendar/MonthView;->mSavedTime:Landroid/text/format/Time;

    .line 310
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/htc/calendar/MonthView;->mOtherViewCalendar:Landroid/text/format/Time;

    .line 311
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/htc/calendar/MonthView;->mTempTime:Landroid/text/format/Time;

    .line 314
    iget-object v2, p1, Lcom/htc/calendar/MonthActivity;->mEventLoader:Lcom/htc/calendar/EventLoader;

    iput-object v2, p0, Lcom/htc/calendar/MonthView;->mEventLoader:Lcom/htc/calendar/EventLoader;

    .line 315
    iput-object p2, p0, Lcom/htc/calendar/MonthView;->mNavigator:Lcom/htc/calendar/Navigator;

    .line 316
    new-instance v2, Lcom/htc/calendar/EventGeometry;

    invoke-direct {v2}, Lcom/htc/calendar/EventGeometry;-><init>()V

    iput-object v2, p0, Lcom/htc/calendar/MonthView;->mEventGeometry:Lcom/htc/calendar/EventGeometry;

    .line 317
    iget-object v2, p0, Lcom/htc/calendar/MonthView;->mEventGeometry:Lcom/htc/calendar/EventGeometry;

    sget v3, Lcom/htc/calendar/MonthView;->MIN_EVENT_HEIGHT:F

    invoke-virtual {v2, v3}, Lcom/htc/calendar/EventGeometry;->setMinEventHeight(F)V

    .line 318
    iget-object v2, p0, Lcom/htc/calendar/MonthView;->mEventGeometry:Lcom/htc/calendar/EventGeometry;

    sget v3, Lcom/htc/calendar/MonthView;->HOUR_GAP:F

    invoke-virtual {v2, v3}, Lcom/htc/calendar/EventGeometry;->setHourGap(F)V

    .line 319
    invoke-direct {p0, p1, v1}, Lcom/htc/calendar/MonthView;->init(Lcom/htc/calendar/MonthActivity;Ljava/lang/String;)V

    .line 321
    iget-object v2, p1, Lcom/htc/calendar/MonthActivity;->mInterpolator:Lcom/htc/calendar/ManipulateInterpolator;

    iput-object v2, p0, Lcom/htc/calendar/MonthView;->mInterpolator:Lcom/htc/calendar/ManipulateInterpolator;

    .line 322
    return-void
.end method

.method static synthetic access$100(Lcom/htc/calendar/MonthView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/calendar/MonthView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/calendar/MonthView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/htc/calendar/MonthView;->mCellHeight:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/calendar/MonthView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/htc/calendar/MonthView;->mBorder:I

    return v0
.end method

.method static synthetic access$1200()I
    .locals 1

    .prologue
    .line 79
    sget v0, Lcom/htc/calendar/MonthView;->MONTH_DAY_GAP:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/calendar/MonthView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/htc/calendar/MonthView;->mCellWidth:I

    return v0
.end method

.method static synthetic access$1400(Lcom/htc/calendar/MonthView;)Lcom/htc/calendar/DayOfMonthCursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/calendar/MonthView;->mCursor:Lcom/htc/calendar/DayOfMonthCursor;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/htc/calendar/MonthView;II)J
    .locals 2
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/htc/calendar/MonthView;->getSelectedMillisFor(II)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/htc/calendar/MonthView;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/htc/calendar/MonthView;->checkValideTime(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/calendar/MonthView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/htc/calendar/MonthView;->mSelectionMode:I

    return v0
.end method

.method static synthetic access$1702(Lcom/htc/calendar/MonthView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/htc/calendar/MonthView;->mSelectionMode:I

    return p1
.end method

.method static synthetic access$1800(Lcom/htc/calendar/MonthView;)Lcom/htc/calendar/ManipulateInterpolator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/calendar/MonthView;->mInterpolator:Lcom/htc/calendar/ManipulateInterpolator;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/calendar/MonthView;)Lcom/htc/calendar/MonthActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/calendar/MonthView;->mParentActivity:Lcom/htc/calendar/MonthActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/calendar/MonthView;)Landroid/text/format/Time;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/calendar/MonthView;->mSavedTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/calendar/MonthView;)Lcom/htc/calendar/Navigator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/calendar/MonthView;->mNavigator:Lcom/htc/calendar/Navigator;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/htc/calendar/MonthView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/htc/calendar/MonthView;->mEvents:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2200()I
    .locals 1

    .prologue
    .line 79
    sget v0, Lcom/htc/calendar/MonthView;->EVENT_NUM_DAYS:I

    return v0
.end method

.method static synthetic access$2300(Lcom/htc/calendar/MonthView;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/calendar/MonthView;->eventDay:[Z

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/calendar/MonthView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/htc/calendar/MonthView;->mFirstJulianDay:I

    return v0
.end method

.method static synthetic access$2500(Lcom/htc/calendar/MonthView;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/calendar/MonthView;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/calendar/MonthView;)Landroid/text/format/Time;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/calendar/MonthView;->mToday:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/calendar/MonthView;)Landroid/text/format/Time;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/calendar/MonthView;->mTempTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/calendar/MonthView;)Landroid/text/format/Time;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/calendar/MonthView;)Landroid/text/format/Time;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/htc/calendar/MonthView;->mOtherViewCalendar:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/calendar/MonthView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/htc/calendar/MonthView;->mInManipulation:Z

    return v0
.end method

.method static synthetic access$702(Lcom/htc/calendar/MonthView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/htc/calendar/MonthView;->mInManipulation:Z

    return p1
.end method

.method static synthetic access$800(Lcom/htc/calendar/MonthView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/htc/calendar/MonthView;->mLaunchDayView:Z

    return v0
.end method

.method static synthetic access$802(Lcom/htc/calendar/MonthView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/htc/calendar/MonthView;->mLaunchDayView:Z

    return p1
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 79
    sget v0, Lcom/htc/calendar/MonthView;->WEEK_GAP:I

    return v0
.end method

.method private checkValideTime(J)Z
    .locals 4
    .parameter "millis"

    .prologue
    const/4 v1, 0x0

    .line 1884
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 1885
    .local v0, selectedTime:Landroid/text/format/Time;
    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 1886
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1888
    iget v2, v0, Landroid/text/format/Time;->year:I

    const/16 v3, 0x7ee

    if-le v2, v3, :cond_1

    .line 1893
    :cond_0
    :goto_0
    return v1

    .line 1890
    :cond_1
    iget v2, v0, Landroid/text/format/Time;->year:I

    const/16 v3, 0x7d0

    if-lt v2, v3, :cond_0

    .line 1893
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private clearBitmapCache()V
    .locals 1

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/htc/calendar/MonthView;->mDayBitmapCache:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lcom/htc/calendar/MonthView;->recycleAndClearBitmapCache(Landroid/util/SparseArray;)V

    .line 1040
    return-void
.end method

.method private doDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    .line 857
    invoke-virtual {p0}, Lcom/htc/calendar/MonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v0, v5, :cond_1

    const/4 v8, 0x1

    .line 860
    .local v8, isLandscape:Z
    :goto_0
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 861
    .local v6, p:Landroid/graphics/Paint;
    iget-object v7, p0, Lcom/htc/calendar/MonthView;->mRect:Landroid/graphics/Rect;

    .line 862
    .local v7, r:Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/htc/calendar/MonthView;->mCursor:Lcom/htc/calendar/DayOfMonthCursor;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/htc/calendar/DayOfMonthCursor;->getColumnOf(I)I

    move-result v10

    .line 865
    .local v10, columnDay1:I
    iget v0, p0, Lcom/htc/calendar/MonthView;->mFirstJulianDay:I

    sub-int v1, v0, v10

    .line 867
    .local v1, day:I
    const/4 v2, 0x0

    .line 868
    .local v2, weekNum:I
    const/4 v9, 0x0

    .line 869
    .local v9, calendar:Ljava/util/Calendar;
    iget-boolean v0, p0, Lcom/htc/calendar/MonthView;->mShowWeekNumbers:Z

    if-eqz v0, :cond_0

    .line 870
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 871
    if-nez v10, :cond_2

    const/4 v12, 0x1

    .line 874
    .local v12, noPrevMonth:Z
    :goto_1
    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v0, v5, v12, v9}, Lcom/htc/calendar/MonthView;->getWeekOfYear(IIZLjava/util/Calendar;)I

    move-result v2

    .line 877
    .end local v12           #noPrevMonth:Z
    :cond_0
    invoke-direct {p0, p1, v6}, Lcom/htc/calendar/MonthView;->drawGrid(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 879
    sget-object v0, Lcom/htc/calendar/MonthView;->mBusyBitPositionBGCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 880
    sget-object v0, Lcom/htc/calendar/MonthView;->mBusyBitPositionDrawableCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 882
    const/4 v3, 0x0

    .local v3, row:I
    :goto_2
    const/4 v0, 0x6

    if-ge v3, v0, :cond_6

    .line 883
    const/4 v4, 0x0

    .local v4, column:I
    :goto_3
    const/4 v0, 0x7

    if-ge v4, v0, :cond_3

    move-object v0, p0

    move-object v5, p1

    .line 884
    invoke-direct/range {v0 .. v8}, Lcom/htc/calendar/MonthView;->drawBox(IIIILandroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;Z)V

    .line 885
    add-int/lit8 v1, v1, 0x1

    .line 883
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 857
    .end local v1           #day:I
    .end local v2           #weekNum:I
    .end local v3           #row:I
    .end local v4           #column:I
    .end local v6           #p:Landroid/graphics/Paint;
    .end local v7           #r:Landroid/graphics/Rect;
    .end local v8           #isLandscape:Z
    .end local v9           #calendar:Ljava/util/Calendar;
    .end local v10           #columnDay1:I
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 871
    .restart local v1       #day:I
    .restart local v2       #weekNum:I
    .restart local v6       #p:Landroid/graphics/Paint;
    .restart local v7       #r:Landroid/graphics/Rect;
    .restart local v8       #isLandscape:Z
    .restart local v9       #calendar:Ljava/util/Calendar;
    .restart local v10       #columnDay1:I
    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    .line 888
    .restart local v3       #row:I
    .restart local v4       #column:I
    :cond_3
    iget-boolean v0, p0, Lcom/htc/calendar/MonthView;->mShowWeekNumbers:Z

    if-eqz v0, :cond_4

    .line 889
    add-int/lit8 v2, v2, 0x1

    .line 890
    const/16 v0, 0x35

    if-lt v2, v0, :cond_4

    .line 891
    iget v0, p0, Lcom/htc/calendar/MonthView;->mFirstJulianDay:I

    sub-int v0, v1, v0

    const/16 v5, 0x1f

    if-ge v0, v5, :cond_5

    const/4 v11, 0x1

    .line 892
    .local v11, inCurrentMonth:Z
    :goto_4
    add-int/lit8 v0, v3, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, v0, v5, v11, v9}, Lcom/htc/calendar/MonthView;->getWeekOfYear(IIZLjava/util/Calendar;)I

    move-result v2

    .line 882
    .end local v11           #inCurrentMonth:Z
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 891
    :cond_5
    const/4 v11, 0x0

    goto :goto_4

    .line 896
    .end local v4           #column:I
    :cond_6
    return-void
.end method

.method private drawAllDayEventRect(Landroid/graphics/Rect;Lcom/htc/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/RectF;
    .locals 5
    .parameter "rect"
    .parameter "event"
    .parameter "canvas"
    .parameter "p"

    .prologue
    const/high16 v4, 0x3f80

    .line 1867
    iget v2, p0, Lcom/htc/calendar/MonthView;->mBusybitsColor:I

    invoke-virtual {p4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1870
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    sget v3, Lcom/htc/calendar/MonthView;->BUSY_BITS_MARGIN:I

    sub-int v0, v2, v3

    .line 1872
    .local v0, bottom:I
    iget-object v1, p0, Lcom/htc/calendar/MonthView;->mRectF:Landroid/graphics/RectF;

    .line 1873
    .local v1, rf:Landroid/graphics/RectF;
    iget v2, p2, Lcom/htc/calendar/Event;->top:F

    sub-float/2addr v2, v4

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 1874
    iget v2, p2, Lcom/htc/calendar/Event;->top:F

    sget v3, Lcom/htc/calendar/MonthView;->BUSY_BITS_WIDTH:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 1875
    iget v2, p1, Landroid/graphics/Rect;->left:I

    sget v3, Lcom/htc/calendar/MonthView;->BUSY_BITS_MARGIN:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 1876
    iget v2, v1, Landroid/graphics/RectF;->left:F

    sget v3, Lcom/htc/calendar/MonthView;->BUSY_BITS_WIDTH:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-float/2addr v2, v4

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 1878
    invoke-virtual {p3, v1, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1880
    return-object v1
.end method

.method private drawBox(IIIILandroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;Z)V
    .locals 28
    .parameter "day"
    .parameter "weekNum"
    .parameter "row"
    .parameter "column"
    .parameter "canvas"
    .parameter "p"
    .parameter "r"
    .parameter "isLandscape"

    .prologue
    .line 1104
    const/16 v16, 0x0

    .line 1105
    .local v16, drawSelection:Z
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/MonthView;->mSelectionMode:I

    if-eqz v3, :cond_0

    .line 1106
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/MonthView;->mCursor:Lcom/htc/calendar/DayOfMonthCursor;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-virtual {v3, v0, v1}, Lcom/htc/calendar/DayOfMonthCursor;->isSelected(II)Z

    move-result v16

    .line 1108
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/MonthView;->mContext:Landroid/content/Context;

    move/from16 v0, p4

    invoke-static {v0, v3}, Lcom/htc/calendar/HtcUtils;->getCorrectPosition(ILandroid/content/Context;)I

    move-result v14

    .line 1109
    .local v14, correctColumn:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/MonthView;->mContext:Landroid/content/Context;

    move/from16 v0, p1

    move/from16 v1, p4

    invoke-static {v0, v1, v3}, Lcom/htc/calendar/HtcUtils;->getCorrectDate(IILandroid/content/Context;)I

    move-result v4

    .line 1110
    .local v4, correctDate:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/MonthView;->mCursor:Lcom/htc/calendar/DayOfMonthCursor;

    move/from16 v0, p3

    invoke-virtual {v3, v0, v14}, Lcom/htc/calendar/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v25

    .line 1111
    .local v25, withinCurrentMonth:Z
    const/16 v18, 0x0

    .line 1113
    .local v18, isToday:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/MonthView;->mCursor:Lcom/htc/calendar/DayOfMonthCursor;

    move/from16 v0, p3

    invoke-virtual {v3, v0, v14}, Lcom/htc/calendar/DayOfMonthCursor;->getDayAt(II)I

    move-result v15

    .line 1115
    .local v15, dayOfBox:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/MonthView;->mToday:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->monthDay:I

    if-ne v15, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/MonthView;->mCursor:Lcom/htc/calendar/DayOfMonthCursor;

    invoke-virtual {v3}, Lcom/htc/calendar/DayOfMonthCursor;->getYear()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/MonthView;->mToday:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->year:I

    if-ne v3, v5, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/MonthView;->mCursor:Lcom/htc/calendar/DayOfMonthCursor;

    invoke-virtual {v3}, Lcom/htc/calendar/DayOfMonthCursor;->getMonth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/MonthView;->mToday:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->month:I

    if-ne v3, v5, :cond_1

    .line 1119
    const/16 v18, 0x1

    .line 1123
    :cond_1
    sget v3, Lcom/htc/calendar/MonthView;->WEEK_GAP:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/calendar/MonthView;->mCellHeight:I

    add-int/2addr v3, v5

    mul-int v27, p3, v3

    .line 1124
    .local v27, y:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/MonthView;->mBorder:I

    sget v5, Lcom/htc/calendar/MonthView;->MONTH_DAY_GAP:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/calendar/MonthView;->mCellWidth:I

    add-int/2addr v5, v6

    mul-int v5, v5, p4

    add-int v26, v3, v5

    .line 1126
    .local v26, x:I
    move/from16 v0, v26

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 1127
    move/from16 v0, v27

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1128
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/MonthView;->mCellWidth:I

    add-int v3, v3, v26

    move-object/from16 v0, p7

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 1129
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/MonthView;->mCellHeight:I

    add-int v3, v3, v27

    move-object/from16 v0, p7

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 1134
    if-nez p4, :cond_7

    .line 1135
    const/4 v3, -0x1

    move-object/from16 v0, p7

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 1140
    :cond_2
    :goto_0
    const/4 v3, 0x5

    move/from16 v0, p3

    if-ne v0, v3, :cond_3

    .line 1141
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/MonthView;->getMeasuredHeight()I

    move-result v3

    move-object/from16 v0, p7

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 1146
    :cond_3
    if-nez v25, :cond_8

    .line 1149
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p7

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 1150
    if-eqz p4, :cond_4

    .line 1151
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p7

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 1187
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/calendar/MonthView;->mShowWeekNumbers:Z

    if-eqz v3, :cond_5

    if-nez p4, :cond_5

    .line 1189
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1190
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/MonthView;->mMonthWeekBannerColor:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1191
    if-eqz p8, :cond_e

    .line 1192
    move-object/from16 v0, p7

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    .line 1193
    .local v13, bottom:I
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sget v5, Lcom/htc/calendar/MonthView;->WEEK_BANNER_HEIGHT:I

    add-int/2addr v3, v5

    move-object/from16 v0, p7

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 1194
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p7

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 1195
    move-object/from16 v0, p5

    move-object/from16 v1, p7

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1196
    move-object/from16 v0, p7

    iput v13, v0, Landroid/graphics/Rect;->bottom:I

    .line 1197
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p7

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 1208
    .end local v13           #bottom:I
    :goto_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/MonthView;->mMonthOtherMonthBannerColor:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1209
    const/4 v3, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1210
    const/4 v3, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1211
    sget v3, Lcom/htc/calendar/MonthView;->WEEK_TEXT_SIZE:I

    int-to-float v3, v3

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1212
    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1214
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sget v5, Lcom/htc/calendar/MonthView;->WEEK_TEXT_PADDING:I

    add-int v22, v3, v5

    .line 1216
    .local v22, textX:I
    if-eqz p8, :cond_f

    .line 1217
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sget v5, Lcom/htc/calendar/MonthView;->WEEK_BANNER_HEIGHT:I

    add-int/2addr v3, v5

    sget v5, Lcom/htc/calendar/MonthView;->WEEK_TEXT_PADDING:I

    sub-int v23, v3, v5

    .line 1222
    .local v23, textY:I
    :goto_3
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v22

    int-to-float v5, v0

    move/from16 v0, v23

    int-to-float v6, v0

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-virtual {v0, v3, v5, v6, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1226
    .end local v22           #textX:I
    .end local v23           #textY:I
    :cond_5
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1227
    const/4 v3, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1228
    const/4 v3, 0x0

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1229
    sget v3, Lcom/htc/calendar/MonthView;->MONTH_DAY_TEXT_SIZE:I

    int-to-float v3, v3

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1231
    const/16 v17, 0x0

    .line 1233
    .local v17, drawTodayShadow:Z
    if-nez v25, :cond_10

    .line 1234
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/MonthView;->mMonthOtherMonthDayNumberColor:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1266
    :cond_6
    :goto_4
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p7

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int v22, v3, v5

    .line 1267
    .restart local v22       #textX:I
    const/16 v23, 0x0

    .line 1268
    .restart local v23       #textY:I
    move/from16 v19, v22

    .line 1269
    .local v19, lunarX:I
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sget v5, Lcom/htc/calendar/MonthView;->BUSY_BITS_MARGIN:I

    sub-int/2addr v3, v5

    add-int/lit8 v20, v3, -0x2

    .line 1271
    .local v20, lunarY:I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/calendar/MonthView;->mEnableLunar:Z

    if-nez v3, :cond_14

    .line 1272
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1273
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    move-object/from16 v0, p7

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p7

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Paint;->getTextSize()F

    move-result v6

    add-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    add-float/2addr v3, v5

    float-to-int v0, v3

    move/from16 v23, v0

    .line 1282
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/MonthView;->mCursor:Lcom/htc/calendar/DayOfMonthCursor;

    move/from16 v0, p3

    invoke-virtual {v3, v0, v14}, Lcom/htc/calendar/DayOfMonthCursor;->getDayAt(II)I

    move-result v21

    .line 1283
    .local v21, monthDay:I
    if-eqz v17, :cond_15

    .line 1284
    const/high16 v3, -0x100

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1285
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v5, v22, -0x1

    int-to-float v5, v5

    add-int/lit8 v6, v23, -0x1

    int-to-float v6, v6

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-virtual {v0, v3, v5, v6, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1286
    add-int/lit8 v10, v19, -0x1

    add-int/lit8 v11, v20, -0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v5 .. v11}, Lcom/htc/calendar/MonthView;->drawLunarString(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 1288
    sget v3, Lcom/htc/calendar/MonthView;->MONTH_DAY_TEXT_SIZE:I

    int-to-float v3, v3

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1289
    const/4 v3, -0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1290
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v22

    int-to-float v5, v0

    move/from16 v0, v23

    int-to-float v6, v0

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-virtual {v0, v3, v5, v6, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v5, p0

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, v19

    move/from16 v11, v20

    .line 1291
    invoke-direct/range {v5 .. v11}, Lcom/htc/calendar/MonthView;->drawLunarString(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    .line 1297
    :goto_6
    return-void

    .line 1136
    .end local v17           #drawTodayShadow:Z
    .end local v19           #lunarX:I
    .end local v20           #lunarY:I
    .end local v21           #monthDay:I
    .end local v22           #textX:I
    .end local v23           #textY:I
    :cond_7
    const/4 v3, 0x6

    move/from16 v0, p4

    if-ne v0, v3, :cond_2

    .line 1137
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/calendar/MonthView;->mBorder:I

    add-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    move-object/from16 v0, p7

    iput v3, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_0

    .line 1156
    :cond_8
    if-eqz v16, :cond_b

    .line 1157
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/MonthView;->mSelectionMode:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_9

    .line 1158
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/MonthView;->mBoxSelected:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1159
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/MonthView;->mBoxSelected:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1169
    :goto_7
    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p6

    invoke-direct/range {v3 .. v8}, Lcom/htc/calendar/MonthView;->drawEvents(ILandroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;Z)V

    .line 1170
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/calendar/MonthView;->mAnimating:Z

    if-nez v3, :cond_4

    .line 1171
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/calendar/MonthView;->updateEventDetails(I)V

    goto/16 :goto_1

    .line 1160
    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/MonthView;->mSelectionMode:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_a

    .line 1161
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/MonthView;->mBoxPressed:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1162
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/MonthView;->mBoxPressed:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_7

    .line 1164
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/MonthView;->mBoxLongPressed:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1165
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/MonthView;->mBoxLongPressed:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_7

    .line 1175
    :cond_b
    if-eqz v18, :cond_c

    .line 1178
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/calendar/MonthView;->mTodayBackground:Landroid/graphics/drawable/Drawable;

    .line 1179
    .local v12, background:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p7

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1180
    move-object/from16 v0, p5

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1183
    .end local v12           #background:Landroid/graphics/drawable/Drawable;
    :cond_c
    if-nez v18, :cond_d

    const/4 v8, 0x1

    :goto_8
    move-object/from16 v3, p0

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p6

    invoke-direct/range {v3 .. v8}, Lcom/htc/calendar/MonthView;->drawEvents(ILandroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;Z)V

    goto/16 :goto_1

    :cond_d
    const/4 v8, 0x0

    goto :goto_8

    .line 1199
    :cond_e
    move-object/from16 v0, p7

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    .line 1200
    .local v24, top:I
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sget v5, Lcom/htc/calendar/MonthView;->WEEK_BANNER_HEIGHT:I

    sub-int/2addr v3, v5

    move-object/from16 v0, p7

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 1201
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p7

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 1202
    move-object/from16 v0, p5

    move-object/from16 v1, p7

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1203
    move/from16 v0, v24

    move-object/from16 v1, p7

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1204
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p7

    iput v3, v0, Landroid/graphics/Rect;->left:I

    goto/16 :goto_2

    .line 1219
    .end local v24           #top:I
    .restart local v22       #textX:I
    :cond_f
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    sget v5, Lcom/htc/calendar/MonthView;->WEEK_TEXT_PADDING:I

    sub-int v23, v3, v5

    .restart local v23       #textY:I
    goto/16 :goto_3

    .line 1236
    .end local v22           #textX:I
    .end local v23           #textY:I
    .restart local v17       #drawTodayShadow:Z
    :cond_10
    if-eqz v18, :cond_11

    if-nez v16, :cond_11

    .line 1237
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/MonthView;->mMonthTodayNumberColor:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1238
    const/16 v17, 0x1

    .line 1248
    :goto_9
    if-eqz v16, :cond_6

    if-eqz v25, :cond_6

    .line 1249
    const/4 v3, -0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_4

    .line 1239
    :cond_11
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/MonthView;->mStartDay:I

    move/from16 v0, p4

    invoke-static {v0, v3}, Lcom/htc/calendar/Utils;->isSunday(II)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1240
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/MonthView;->mMonthSundayColor:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_9

    .line 1241
    :cond_12
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/MonthView;->mStartDay:I

    move/from16 v0, p4

    invoke-static {v0, v3}, Lcom/htc/calendar/Utils;->isSaturday(II)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1242
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/MonthView;->mMonthSaturdayColor:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_9

    .line 1244
    :cond_13
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/MonthView;->mMonthDayNumberColor:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_9

    .line 1276
    .restart local v19       #lunarX:I
    .restart local v20       #lunarY:I
    .restart local v22       #textX:I
    .restart local v23       #textY:I
    :cond_14
    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1277
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sget v5, Lcom/htc/calendar/MonthView;->mChineseTextX:I

    add-int v22, v3, v5

    .line 1278
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sget v5, Lcom/htc/calendar/MonthView;->mChineseTextY:I

    add-int v23, v3, v5

    .line 1279
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sget v5, Lcom/htc/calendar/MonthView;->mLunarTextX:I

    add-int v19, v3, v5

    .line 1280
    move-object/from16 v0, p7

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sget v5, Lcom/htc/calendar/MonthView;->mLunarTextY:I

    add-int v20, v3, v5

    goto/16 :goto_5

    .line 1293
    .restart local v21       #monthDay:I
    :cond_15
    sget v3, Lcom/htc/calendar/MonthView;->MONTH_DAY_TEXT_SIZE:I

    int-to-float v3, v3

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1294
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    move/from16 v0, v22

    int-to-float v5, v0

    move/from16 v0, v23

    int-to-float v6, v0

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    invoke-virtual {v0, v3, v5, v6, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v5, p0

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, v19

    move/from16 v11, v20

    .line 1295
    invoke-direct/range {v5 .. v11}, Lcom/htc/calendar/MonthView;->drawLunarString(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V

    goto/16 :goto_6
.end method

.method private drawEventRect(Landroid/graphics/Rect;Lcom/htc/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;)Landroid/graphics/RectF;
    .locals 5
    .parameter "rect"
    .parameter "event"
    .parameter "canvas"
    .parameter "p"

    .prologue
    const/high16 v4, 0x3f80

    .line 1336
    iget v2, p0, Lcom/htc/calendar/MonthView;->mBusybitsColor:I

    invoke-virtual {p4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1341
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v2, -0x2

    .line 1343
    .local v0, bottom:I
    iget-object v1, p0, Lcom/htc/calendar/MonthView;->mRectF:Landroid/graphics/RectF;

    .line 1344
    .local v1, rf:Landroid/graphics/RectF;
    iget v2, p2, Lcom/htc/calendar/Event;->top:F

    sub-float/2addr v2, v4

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 1346
    iget v2, p2, Lcom/htc/calendar/Event;->bottom:F

    int-to-float v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 1347
    iget v2, p1, Landroid/graphics/Rect;->left:I

    sget v3, Lcom/htc/calendar/MonthView;->BUSY_BITS_MARGIN:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/RectF;->left:F

    .line 1348
    iget v2, v1, Landroid/graphics/RectF;->left:F

    sget v3, Lcom/htc/calendar/MonthView;->BUSY_BITS_WIDTH:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-float/2addr v2, v4

    iput v2, v1, Landroid/graphics/RectF;->right:F

    .line 1350
    invoke-virtual {p3, v1, p4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1352
    return-object v1
.end method

.method private drawEvents(ILandroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;Z)V
    .locals 14
    .parameter "date"
    .parameter "canvas"
    .parameter "rect"
    .parameter "p"
    .parameter "drawBg"

    .prologue
    .line 1303
    move-object/from16 v0, p3

    iget v12, v0, Landroid/graphics/Rect;->top:I

    sget v13, Lcom/htc/calendar/MonthView;->mEventTriangleMargin:I

    add-int v11, v12, v13

    .line 1304
    .local v11, top:I
    move-object/from16 v0, p3

    iget v12, v0, Landroid/graphics/Rect;->top:I

    sget v13, Lcom/htc/calendar/MonthView;->mEventTriangleHeight:I

    add-int v1, v12, v13

    .line 1305
    .local v1, bottom:I
    move-object/from16 v0, p3

    iget v12, v0, Landroid/graphics/Rect;->right:I

    sget v13, Lcom/htc/calendar/MonthView;->mEventTriangleMargin:I

    sub-int v9, v12, v13

    .line 1306
    .local v9, right:I
    move-object/from16 v0, p3

    iget v12, v0, Landroid/graphics/Rect;->right:I

    sget v13, Lcom/htc/calendar/MonthView;->mEventTriangleWidth:I

    sub-int v7, v12, v13

    .line 1308
    .local v7, left:I
    iget-object v4, p0, Lcom/htc/calendar/MonthView;->mEvents:Ljava/util/ArrayList;

    .line 1309
    .local v4, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/Event;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1311
    .local v8, numEvents:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v8, :cond_2

    .line 1312
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/calendar/Event;

    .line 1313
    .local v3, event:Lcom/htc/calendar/Event;
    iget v10, v3, Lcom/htc/calendar/Event;->startDay:I

    .line 1314
    .local v10, startDay:I
    iget v2, v3, Lcom/htc/calendar/Event;->endDay:I

    .line 1315
    .local v2, endDay:I
    if-gt v10, p1, :cond_0

    if-lt v2, p1, :cond_0

    .line 1317
    if-nez p5, :cond_1

    .line 1318
    :try_start_0
    iget-object v12, p0, Lcom/htc/calendar/MonthView;->mTodayEventTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v7, v11, v9, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1319
    iget-object v12, p0, Lcom/htc/calendar/MonthView;->mTodayEventTriangle:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1311
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1321
    :cond_1
    iget-object v12, p0, Lcom/htc/calendar/MonthView;->mEventTriangle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v7, v11, v9, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1322
    iget-object v12, p0, Lcom/htc/calendar/MonthView;->mEventTriangle:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1324
    :catch_0
    move-exception v5

    .line 1325
    .local v5, ex:Ljava/lang/Exception;
    const-string v12, "MonthView"

    const-string v13, "draw event exception"

    invoke-static {v12, v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1331
    .end local v2           #endDay:I
    .end local v3           #event:Lcom/htc/calendar/Event;
    .end local v5           #ex:Ljava/lang/Exception;
    .end local v10           #startDay:I
    :cond_2
    return-void
.end method

.method private drawGrid(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 12
    .parameter "canvas"
    .parameter "p"

    .prologue
    const/4 v11, 0x0

    .line 1059
    const v8, -0x333334

    invoke-virtual {p2, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 1061
    invoke-virtual {p2, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1063
    invoke-virtual {p0}, Lcom/htc/calendar/MonthView;->getMeasuredWidth()I

    move-result v5

    .line 1064
    .local v5, width:I
    invoke-virtual {p0}, Lcom/htc/calendar/MonthView;->getMeasuredHeight()I

    move-result v3

    .line 1067
    .local v3, height:I
    iget-object v8, p0, Lcom/htc/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    const v9, 0x2080700

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1068
    .local v1, divider:Landroid/graphics/drawable/Drawable;
    const/4 v4, 0x1

    .local v4, row:I
    :goto_0
    const/4 v8, 0x6

    if-ge v4, v8, :cond_0

    .line 1069
    sget v8, Lcom/htc/calendar/MonthView;->WEEK_GAP:I

    iget v9, p0, Lcom/htc/calendar/MonthView;->mCellHeight:I

    add-int/2addr v8, v9

    mul-int/2addr v8, v4

    sget v9, Lcom/htc/calendar/MonthView;->WEEK_GAP:I

    sub-int v7, v8, v9

    .line 1071
    .local v7, y:I
    sget v8, Lcom/htc/calendar/MonthView;->WEEK_GAP:I

    add-int/2addr v8, v7

    invoke-virtual {v1, v11, v7, v5, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1072
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1068
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1075
    .end local v7           #y:I
    :cond_0
    iget-object v8, p0, Lcom/htc/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    const v9, 0x2080701

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1077
    .local v2, divider_vertical:Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x1

    .local v0, column:I
    :goto_1
    const/4 v8, 0x7

    if-ge v0, v8, :cond_1

    .line 1078
    iget v8, p0, Lcom/htc/calendar/MonthView;->mBorder:I

    sget v9, Lcom/htc/calendar/MonthView;->MONTH_DAY_GAP:I

    iget v10, p0, Lcom/htc/calendar/MonthView;->mCellWidth:I

    add-int/2addr v9, v10

    mul-int/2addr v9, v0

    add-int/2addr v8, v9

    sget v9, Lcom/htc/calendar/MonthView;->MONTH_DAY_GAP:I

    sub-int v6, v8, v9

    .line 1082
    .local v6, x:I
    sget v8, Lcom/htc/calendar/MonthView;->MONTH_DAY_GAP:I

    add-int/2addr v8, v6

    invoke-virtual {v2, v6, v11, v8, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1083
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1077
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1086
    .end local v6           #x:I
    :cond_1
    return-void
.end method

.method private drawLunarString(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIII)V
    .locals 8
    .parameter "canvas"
    .parameter "p"
    .parameter "row"
    .parameter "column"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1833
    iget-boolean v5, p0, Lcom/htc/calendar/MonthView;->mEnableLunar:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/htc/calendar/MonthView;->lunar:Lcom/htc/calendar/LunarUtils;

    if-nez v5, :cond_1

    .line 1859
    :cond_0
    :goto_0
    return-void

    .line 1836
    :cond_1
    iget-object v5, p0, Lcom/htc/calendar/MonthView;->mCursor:Lcom/htc/calendar/DayOfMonthCursor;

    invoke-virtual {v5, p3, p4}, Lcom/htc/calendar/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    .line 1838
    .local v0, bInCurrentMonth:Z
    iget-object v5, p0, Lcom/htc/calendar/MonthView;->mCursor:Lcom/htc/calendar/DayOfMonthCursor;

    invoke-virtual {v5, p3, p4}, Lcom/htc/calendar/DayOfMonthCursor;->getDayAt(II)I

    move-result v2

    .line 1839
    .local v2, monthDay:I
    iget-object v5, p0, Lcom/htc/calendar/MonthView;->mCursor:Lcom/htc/calendar/DayOfMonthCursor;

    invoke-virtual {v5}, Lcom/htc/calendar/DayOfMonthCursor;->getMonth()I

    move-result v1

    .line 1840
    .local v1, month:I
    iget-object v5, p0, Lcom/htc/calendar/MonthView;->mCursor:Lcom/htc/calendar/DayOfMonthCursor;

    invoke-virtual {v5}, Lcom/htc/calendar/DayOfMonthCursor;->getYear()I

    move-result v4

    .line 1842
    .local v4, year:I
    if-nez v0, :cond_2

    .line 1843
    if-nez p3, :cond_3

    .line 1844
    add-int/lit8 v1, v1, -0x1

    .line 1850
    :cond_2
    :goto_1
    sget-object v5, Lcom/htc/calendar/MonthView;->lunar:Lcom/htc/calendar/LunarUtils;

    invoke-virtual {v5, v4, v1, v2}, Lcom/htc/calendar/LunarUtils;->set(III)V

    .line 1851
    sget-object v5, Lcom/htc/calendar/MonthView;->lunar:Lcom/htc/calendar/LunarUtils;

    invoke-virtual {v5}, Lcom/htc/calendar/LunarUtils;->getSolarHoliday()Ljava/lang/String;

    move-result-object v3

    .line 1853
    .local v3, solarHolidays:Ljava/lang/String;
    sget v5, Lcom/htc/calendar/MonthView;->MONTH_LUNAR_TEXT_SIZE:I

    int-to-float v5, v5

    invoke-virtual {p2, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1854
    iget-boolean v5, p0, Lcom/htc/calendar/MonthView;->mEnableSolarHoliday:Z

    if-eqz v5, :cond_4

    if-eqz v3, :cond_4

    .line 1855
    int-to-float v5, p5

    int-to-float v6, p6

    invoke-virtual {p1, v3, v5, v6, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 1846
    .end local v3           #solarHolidays:Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1857
    .restart local v3       #solarHolidays:Ljava/lang/String;
    :cond_4
    sget-object v5, Lcom/htc/calendar/MonthView;->lunar:Lcom/htc/calendar/LunarUtils;

    invoke-virtual {v5}, Lcom/htc/calendar/LunarUtils;->getLunarDate()Ljava/lang/String;

    move-result-object v5

    int-to-float v6, p5

    int-to-float v7, p6

    invoke-virtual {p1, v5, v6, v7, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawingCalc(II)V
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1447
    iget-object v0, p0, Lcom/htc/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f090021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/calendar/MonthView;->mCellWidth:I

    .line 1448
    iget-object v0, p0, Lcom/htc/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f090022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/htc/calendar/MonthView;->mCellHeight:I

    .line 1449
    iget-object v0, p0, Lcom/htc/calendar/MonthView;->mEventGeometry:Lcom/htc/calendar/EventGeometry;

    iget v1, p0, Lcom/htc/calendar/MonthView;->mCellHeight:I

    sget v2, Lcom/htc/calendar/MonthView;->BUSY_BITS_MARGIN:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x2

    int-to-float v1, v1

    const/high16 v2, 0x41c0

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/htc/calendar/EventGeometry;->setHourHeight(F)V

    .line 1451
    iget-boolean v0, p0, Lcom/htc/calendar/MonthView;->mShowToast:Z

    if-eqz v0, :cond_0

    .line 1452
    iget-object v0, p0, Lcom/htc/calendar/MonthView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1453
    iget-object v0, p0, Lcom/htc/calendar/MonthView;->mPopup:Landroid/widget/PopupWindow;

    add-int/lit8 v1, p1, -0x14

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1454
    iget-object v0, p0, Lcom/htc/calendar/MonthView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1474
    :cond_0
    return-void
.end method

.method private getSelectedMillisFor(II)J
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 994
    sget v4, Lcom/htc/calendar/MonthView;->WEEK_GAP:I

    sub-int v4, p2, v4

    sget v5, Lcom/htc/calendar/MonthView;->WEEK_GAP:I

    iget v6, p0, Lcom/htc/calendar/MonthView;->mCellHeight:I

    add-int/2addr v5, v6

    div-int v2, v4, v5

    .line 995
    .local v2, row:I
    iget v4, p0, Lcom/htc/calendar/MonthView;->mBorder:I

    sub-int v4, p1, v4

    sget v5, Lcom/htc/calendar/MonthView;->MONTH_DAY_GAP:I

    iget v6, p0, Lcom/htc/calendar/MonthView;->mCellWidth:I

    add-int/2addr v5, v6

    div-int/2addr v4, v5

    iget-object v5, p0, Lcom/htc/calendar/MonthView;->mContext:Landroid/content/Context;

    invoke-static {v4, v5}, Lcom/htc/calendar/HtcUtils;->getCorrectPosition(ILandroid/content/Context;)I

    move-result v1

    .line 996
    .local v1, column:I
    const/4 v4, 0x6

    if-le v1, v4, :cond_0

    .line 997
    const/4 v1, 0x6

    .line 1000
    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/MonthView;->mCursor:Lcom/htc/calendar/DayOfMonthCursor;

    .line 1001
    .local v0, c:Lcom/htc/calendar/DayOfMonthCursor;
    iget-object v3, p0, Lcom/htc/calendar/MonthView;->mTempTime:Landroid/text/format/Time;

    .line 1002
    .local v3, time:Landroid/text/format/Time;
    iget-object v4, p0, Lcom/htc/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1009
    mul-int/lit8 v4, v2, 0x7

    add-int/2addr v4, v1

    invoke-virtual {v0}, Lcom/htc/calendar/DayOfMonthCursor;->getOffset()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/text/format/Time;->monthDay:I

    .line 1010
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    return-wide v4
.end method

.method private getWeekOfYear(IIZLjava/util/Calendar;)I
    .locals 6
    .parameter "row"
    .parameter "column"
    .parameter "isWithinCurrentMonth"
    .parameter "calendar"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 1367
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/htc/calendar/MonthView;->mCursor:Lcom/htc/calendar/DayOfMonthCursor;

    invoke-virtual {v3, p1, p2}, Lcom/htc/calendar/DayOfMonthCursor;->getDayAt(II)I

    move-result v3

    invoke-virtual {p4, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1368
    if-eqz p3, :cond_0

    .line 1369
    iget-object v2, p0, Lcom/htc/calendar/MonthView;->mCursor:Lcom/htc/calendar/DayOfMonthCursor;

    invoke-virtual {v2}, Lcom/htc/calendar/DayOfMonthCursor;->getMonth()I

    move-result v2

    invoke-virtual {p4, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 1370
    iget-object v2, p0, Lcom/htc/calendar/MonthView;->mCursor:Lcom/htc/calendar/DayOfMonthCursor;

    invoke-virtual {v2}, Lcom/htc/calendar/DayOfMonthCursor;->getYear()I

    move-result v2

    invoke-virtual {p4, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 1395
    :goto_0
    const/4 v2, 0x3

    invoke-virtual {p4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    return v2

    .line 1372
    :cond_0
    iget-object v2, p0, Lcom/htc/calendar/MonthView;->mCursor:Lcom/htc/calendar/DayOfMonthCursor;

    invoke-virtual {v2}, Lcom/htc/calendar/DayOfMonthCursor;->getMonth()I

    move-result v0

    .line 1373
    .local v0, month:I
    iget-object v2, p0, Lcom/htc/calendar/MonthView;->mCursor:Lcom/htc/calendar/DayOfMonthCursor;

    invoke-virtual {v2}, Lcom/htc/calendar/DayOfMonthCursor;->getYear()I

    move-result v1

    .line 1374
    .local v1, year:I
    if-ge p1, v4, :cond_2

    .line 1376
    if-nez v0, :cond_1

    .line 1377
    add-int/lit8 v1, v1, -0x1

    .line 1378
    const/16 v0, 0xb

    .line 1391
    :goto_1
    invoke-virtual {p4, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 1392
    invoke-virtual {p4, v5, v1}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 1380
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1384
    :cond_2
    const/16 v2, 0xb

    if-ne v0, v2, :cond_3

    .line 1385
    add-int/lit8 v1, v1, 0x1

    .line 1386
    const/4 v0, 0x0

    goto :goto_1

    .line 1388
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private init(Lcom/htc/calendar/MonthActivity;Ljava/lang/String;)V
    .locals 12
    .parameter "activity"
    .parameter "timeZone"

    .prologue
    .line 325
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/htc/calendar/MonthView;->setFocusable(Z)V

    .line 326
    const/4 v7, 0x1

    invoke-virtual {p0, v7}, Lcom/htc/calendar/MonthView;->setClickable(Z)V

    .line 329
    const v7, -0xd0d0e

    invoke-virtual {p0, v7}, Lcom/htc/calendar/MonthView;->setBackgroundColor(I)V

    .line 333
    invoke-virtual {p0, p0}, Lcom/htc/calendar/MonthView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 334
    iput-object p1, p0, Lcom/htc/calendar/MonthView;->mParentActivity:Lcom/htc/calendar/MonthActivity;

    .line 335
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7, p2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/htc/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    .line 336
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 337
    .local v4, now:J
    iget-object v7, p0, Lcom/htc/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v7, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 338
    iget-object v7, p0, Lcom/htc/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    const/4 v8, 0x1

    iput v8, v7, Landroid/text/format/Time;->monthDay:I

    .line 339
    iget-object v7, p0, Lcom/htc/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 340
    .local v2, millis:J
    iget-object v7, p0, Lcom/htc/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iget-wide v7, v7, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v7, v8}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v7

    iput v7, p0, Lcom/htc/calendar/MonthView;->mFirstJulianDay:I

    .line 342
    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/calendar/CalendarContext;->getWeekStartDay()I

    move-result v7

    iput v7, p0, Lcom/htc/calendar/MonthView;->mStartDay:I

    .line 344
    iget-object v7, p0, Lcom/htc/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v7, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 346
    new-instance v7, Lcom/htc/calendar/DayOfMonthCursor;

    iget-object v8, p0, Lcom/htc/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iget v8, v8, Landroid/text/format/Time;->year:I

    iget-object v9, p0, Lcom/htc/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iget v9, v9, Landroid/text/format/Time;->month:I

    iget-object v10, p0, Lcom/htc/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iget v10, v10, Landroid/text/format/Time;->monthDay:I

    iget v11, p0, Lcom/htc/calendar/MonthView;->mStartDay:I

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/htc/calendar/DayOfMonthCursor;-><init>(IIII)V

    iput-object v7, p0, Lcom/htc/calendar/MonthView;->mCursor:Lcom/htc/calendar/DayOfMonthCursor;

    .line 348
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7, p2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/htc/calendar/MonthView;->mToday:Landroid/text/format/Time;

    .line 349
    iget-object v7, p0, Lcom/htc/calendar/MonthView;->mToday:Landroid/text/format/Time;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 351
    invoke-virtual {p1}, Lcom/htc/calendar/MonthActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    .line 355
    iget-object v7, p0, Lcom/htc/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f020045

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/calendar/MonthView;->mBoxSelected:Landroid/graphics/drawable/Drawable;

    .line 356
    iget-object v7, p0, Lcom/htc/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f020043

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/calendar/MonthView;->mBoxPressed:Landroid/graphics/drawable/Drawable;

    .line 357
    iget-object v7, p0, Lcom/htc/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f020045

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/calendar/MonthView;->mBoxLongPressed:Landroid/graphics/drawable/Drawable;

    .line 361
    iget-object v7, p0, Lcom/htc/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f020044

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/calendar/MonthView;->mTodayBackground:Landroid/graphics/drawable/Drawable;

    .line 364
    iget-object v7, p0, Lcom/htc/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f07001e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iput v7, p0, Lcom/htc/calendar/MonthView;->mMonthOtherMonthColor:I

    .line 365
    iget-object v7, p0, Lcom/htc/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f070021

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iput v7, p0, Lcom/htc/calendar/MonthView;->mMonthWeekBannerColor:I

    .line 366
    iget-object v7, p0, Lcom/htc/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f070020

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iput v7, p0, Lcom/htc/calendar/MonthView;->mMonthOtherMonthBannerColor:I

    .line 367
    iget-object v7, p0, Lcom/htc/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f07001f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iput v7, p0, Lcom/htc/calendar/MonthView;->mMonthOtherMonthDayNumberColor:I

    .line 368
    iget-object v7, p0, Lcom/htc/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f07001a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iput v7, p0, Lcom/htc/calendar/MonthView;->mMonthDayNumberColor:I

    .line 369
    iget-object v7, p0, Lcom/htc/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f07001d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iput v7, p0, Lcom/htc/calendar/MonthView;->mMonthTodayNumberColor:I

    .line 370
    iget-object v7, p0, Lcom/htc/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f07001b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iput v7, p0, Lcom/htc/calendar/MonthView;->mMonthSaturdayColor:I

    .line 371
    iget-object v7, p0, Lcom/htc/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f07001c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iput v7, p0, Lcom/htc/calendar/MonthView;->mMonthSundayColor:I

    .line 372
    iget-object v7, p0, Lcom/htc/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f070022

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iput v7, p0, Lcom/htc/calendar/MonthView;->mBusybitsColor:I

    .line 373
    iget-object v7, p0, Lcom/htc/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f070023

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    iput v7, p0, Lcom/htc/calendar/MonthView;->mMonthBgColor:I

    .line 377
    invoke-static {}, Lcom/htc/calendar/Utils;->isShowSolarHoilday()Z

    move-result v7

    iput-boolean v7, p0, Lcom/htc/calendar/MonthView;->mEnableSolarHoliday:Z

    .line 379
    iget-object v7, p0, Lcom/htc/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    iget-object v8, p0, Lcom/htc/calendar/MonthView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/htc/calendar/HtcUtils;->getCalendarIndicatorToday(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/calendar/MonthView;->mTodayEventTriangle:Landroid/graphics/drawable/Drawable;

    .line 380
    iget-object v7, p0, Lcom/htc/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f020029

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/calendar/MonthView;->mEventTriangle:Landroid/graphics/drawable/Drawable;

    .line 383
    iget-boolean v7, p0, Lcom/htc/calendar/MonthView;->mShowToast:Z

    if-eqz v7, :cond_0

    .line 385
    const-string v7, "layout_inflater"

    invoke-virtual {p1, v7}, Lcom/htc/calendar/MonthActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 386
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v7, 0x7f030033

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/calendar/MonthView;->mPopupView:Landroid/view/View;

    .line 387
    new-instance v7, Landroid/widget/PopupWindow;

    invoke-direct {v7, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/htc/calendar/MonthView;->mPopup:Landroid/widget/PopupWindow;

    .line 388
    iget-object v7, p0, Lcom/htc/calendar/MonthView;->mPopup:Landroid/widget/PopupWindow;

    iget-object v8, p0, Lcom/htc/calendar/MonthView;->mPopupView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 389
    invoke-virtual {p0}, Lcom/htc/calendar/MonthView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 390
    .local v0, dialogTheme:Landroid/content/res/Resources$Theme;
    const v7, 0x103000b

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 391
    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    const v9, 0x1010054

    aput v9, v7, v8

    invoke-virtual {v0, v7}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 393
    .local v6, ta:Landroid/content/res/TypedArray;
    iget-object v7, p0, Lcom/htc/calendar/MonthView;->mPopup:Landroid/widget/PopupWindow;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 394
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 397
    .end local v0           #dialogTheme:Landroid/content/res/Resources$Theme;
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v6           #ta:Landroid/content/res/TypedArray;
    :cond_0
    invoke-static {}, Lcom/htc/calendar/Utils;->isEnableTheme()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {}, Lcom/htc/calendar/Utils;->isEnableSkin()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 399
    :cond_1
    iget-object v7, p0, Lcom/htc/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    invoke-static {p1}, Lcom/htc/calendar/HtcUtils;->getDaybaseTodayRest(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/calendar/MonthView;->mTodayBackground:Landroid/graphics/drawable/Drawable;

    .line 402
    iget-object v7, p0, Lcom/htc/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    invoke-static {p1}, Lcom/htc/calendar/HtcUtils;->getDaybaseTodayPress(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/calendar/MonthView;->mBoxPressed:Landroid/graphics/drawable/Drawable;

    .line 405
    iget-object v7, p0, Lcom/htc/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    invoke-static {p1}, Lcom/htc/calendar/HtcUtils;->getDaybaseTodaySelect(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/calendar/MonthView;->mBoxSelected:Landroid/graphics/drawable/Drawable;

    .line 406
    iget-object v7, p0, Lcom/htc/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    invoke-static {p1}, Lcom/htc/calendar/HtcUtils;->getDaybaseTodaySelect(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/calendar/MonthView;->mBoxLongPressed:Landroid/graphics/drawable/Drawable;

    .line 408
    iget-object v7, p0, Lcom/htc/calendar/MonthView;->mBoxSelected:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_2

    .line 409
    const-string v7, "MonthView"

    const-string v8, "mBoxSelected is null"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v7, p0, Lcom/htc/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f020045

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/calendar/MonthView;->mBoxSelected:Landroid/graphics/drawable/Drawable;

    .line 411
    iget-object v7, p0, Lcom/htc/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f020045

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/calendar/MonthView;->mBoxLongPressed:Landroid/graphics/drawable/Drawable;

    .line 414
    :cond_2
    iget-object v7, p0, Lcom/htc/calendar/MonthView;->mBoxPressed:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_3

    .line 415
    iget-object v7, p0, Lcom/htc/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f020043

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/htc/calendar/MonthView;->mBoxPressed:Landroid/graphics/drawable/Drawable;

    .line 418
    :cond_3
    invoke-static {p1}, Lcom/htc/calendar/HtcUtils;->getBusyBitColor(Landroid/content/Context;)I

    move-result v7

    iput v7, p0, Lcom/htc/calendar/MonthView;->mBusybitsColor:I

    .line 421
    :cond_4
    new-instance v7, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/htc/calendar/MonthView;->getContext()Landroid/content/Context;

    move-result-object v8

    new-instance v9, Lcom/htc/calendar/MonthView$2;

    invoke-direct {v9, p0}, Lcom/htc/calendar/MonthView$2;-><init>(Lcom/htc/calendar/MonthView;)V

    invoke-direct {v7, v8, v9}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v7, p0, Lcom/htc/calendar/MonthView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 644
    return-void
.end method

.method private isFirstDayOfNextMonth(II)Z
    .locals 1
    .parameter "row"
    .parameter "column"

    .prologue
    .line 1356
    if-nez p2, :cond_0

    .line 1357
    const/4 p2, 0x6

    .line 1358
    add-int/lit8 p1, p1, -0x1

    .line 1362
    :goto_0
    iget-object v0, p0, Lcom/htc/calendar/MonthView;->mCursor:Lcom/htc/calendar/DayOfMonthCursor;

    invoke-virtual {v0, p1, p2}, Lcom/htc/calendar/DayOfMonthCursor;->isWithinCurrentMonth(II)Z

    move-result v0

    return v0

    .line 1360
    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0
.end method

.method private recycleAndClearBitmapCache(Landroid/util/SparseArray;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1043
    .local p1, bitmapCache:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/graphics/Bitmap;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1044
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1045
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1044
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1047
    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 1049
    return-void
.end method

.method private sendAccessibilityEvents()V
    .locals 5

    .prologue
    .line 900
    invoke-virtual {p0}, Lcom/htc/calendar/MonthView;->isShown()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/calendar/MonthView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 924
    :cond_0
    :goto_0
    return-void

    .line 906
    :cond_1
    iget-object v4, p0, Lcom/htc/calendar/MonthView;->mParentActivity:Lcom/htc/calendar/MonthActivity;

    invoke-static {v4}, Lcom/htc/calendar/HtcUtils;->getHtc_Title_21(Landroid/app/Activity;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 909
    .local v3, titleTextViewText:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/htc/calendar/MonthView;->mPrevTitleTextViewText:Ljava/lang/CharSequence;

    if-eq v3, v4, :cond_4

    const/4 v2, 0x1

    .line 910
    .local v2, titleChanged:Z
    :goto_1
    if-eqz v2, :cond_2

    .line 911
    iput-object v3, p0, Lcom/htc/calendar/MonthView;->mPrevTitleTextViewText:Ljava/lang/CharSequence;

    .line 912
    const/16 v4, 0x20

    invoke-virtual {p0, v4}, Lcom/htc/calendar/MonthView;->sendAccessibilityEvent(I)V

    .line 914
    :cond_2
    iget-object v4, p0, Lcom/htc/calendar/MonthView;->mCursor:Lcom/htc/calendar/DayOfMonthCursor;

    invoke-virtual {v4}, Lcom/htc/calendar/DayOfMonthCursor;->getMonth()I

    move-result v1

    .line 915
    .local v1, selectedMonth:I
    iget-object v4, p0, Lcom/htc/calendar/MonthView;->mCursor:Lcom/htc/calendar/DayOfMonthCursor;

    invoke-virtual {v4}, Lcom/htc/calendar/DayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v0

    .line 918
    .local v0, selectedDayOfMonth:I
    if-nez v2, :cond_3

    iget v4, p0, Lcom/htc/calendar/MonthView;->mPrevSelectedMonth:I

    if-ne v4, v1, :cond_3

    iget v4, p0, Lcom/htc/calendar/MonthView;->mPrevSelectedDayOfMonth:I

    if-eq v4, v0, :cond_0

    .line 920
    :cond_3
    iput v1, p0, Lcom/htc/calendar/MonthView;->mPrevSelectedMonth:I

    .line 921
    iput v0, p0, Lcom/htc/calendar/MonthView;->mPrevSelectedDayOfMonth:I

    .line 922
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/htc/calendar/MonthView;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 909
    .end local v0           #selectedDayOfMonth:I
    .end local v1           #selectedMonth:I
    .end local v2           #titleChanged:Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateEventDetails(I)V
    .locals 23
    .parameter "date"

    .prologue
    .line 1477
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/calendar/MonthView;->mShowToast:Z

    if-nez v2, :cond_0

    .line 1637
    :goto_0
    return-void

    .line 1481
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/MonthView;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/MonthView;->mDismissPopup:Lcom/htc/calendar/MonthView$DismissPopup;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1482
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/calendar/MonthView;->mEvents:Ljava/util/ArrayList;

    .line 1483
    .local v10, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/Event;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 1484
    .local v14, numEvents:I
    if-nez v14, :cond_1

    .line 1485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MonthView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 1489
    :cond_1
    const/4 v9, 0x0

    .line 1490
    .local v9, eventIndex:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    if-ge v12, v14, :cond_9

    .line 1491
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/calendar/Event;

    .line 1493
    .local v8, event:Lcom/htc/calendar/Event;
    iget v2, v8, Lcom/htc/calendar/Event;->startDay:I

    move/from16 v0, p1

    if-gt v2, v0, :cond_2

    iget v2, v8, Lcom/htc/calendar/Event;->endDay:I

    move/from16 v0, p1

    if-ge v2, v0, :cond_3

    .line 1490
    :cond_2
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1499
    :cond_3
    const/4 v2, 0x4

    if-lt v9, v2, :cond_4

    .line 1500
    add-int/lit8 v9, v9, 0x1

    .line 1501
    goto :goto_2

    .line 1505
    :cond_4
    const/16 v17, 0x0

    .line 1506
    .local v17, showEndTime:Z
    iget-boolean v2, v8, Lcom/htc/calendar/Event;->allDay:Z

    if-eqz v2, :cond_7

    .line 1507
    iget v2, v8, Lcom/htc/calendar/Event;->endDay:I

    iget v3, v8, Lcom/htc/calendar/Event;->startDay:I

    sub-int v13, v2, v3

    .line 1508
    .local v13, numDays:I
    if-nez v13, :cond_6

    .line 1509
    const v7, 0x82012

    .line 1524
    .end local v13           #numDays:I
    .local v7, flags:I
    :cond_5
    :goto_3
    if-eqz v17, :cond_8

    .line 1527
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MonthView;->mParentActivity:Lcom/htc/calendar/MonthActivity;

    iget-wide v3, v8, Lcom/htc/calendar/Event;->startMillis:J

    iget-wide v5, v8, Lcom/htc/calendar/Event;->endMillis:J

    invoke-static/range {v2 .. v7}, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v18

    .line 1536
    .local v18, timeRange:Ljava/lang/String;
    :goto_4
    const/16 v19, 0x0

    .line 1537
    .local v19, timeView:Landroid/widget/TextView;
    const/16 v20, 0x0

    .line 1538
    .local v20, titleView:Landroid/widget/TextView;
    packed-switch v9, :pswitch_data_0

    .line 1557
    :goto_5
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1558
    iget-object v2, v8, Lcom/htc/calendar/Event;->title:Ljava/lang/CharSequence;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1559
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1512
    .end local v7           #flags:I
    .end local v18           #timeRange:Ljava/lang/String;
    .end local v19           #timeView:Landroid/widget/TextView;
    .end local v20           #titleView:Landroid/widget/TextView;
    .restart local v13       #numDays:I
    :cond_6
    const/16 v17, 0x1

    .line 1513
    const v7, 0x82010

    .restart local v7       #flags:I
    goto :goto_3

    .line 1517
    .end local v7           #flags:I
    .end local v13           #numDays:I
    :cond_7
    const/16 v7, 0x1401

    .line 1518
    .restart local v7       #flags:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MonthView;->mParentActivity:Lcom/htc/calendar/MonthActivity;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1519
    or-int/lit16 v7, v7, 0x80

    goto :goto_3

    .line 1532
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MonthView;->mParentActivity:Lcom/htc/calendar/MonthActivity;

    iget-wide v3, v8, Lcom/htc/calendar/Event;->startMillis:J

    iget-wide v5, v8, Lcom/htc/calendar/Event;->startMillis:J

    invoke-static/range {v2 .. v7}, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v18

    .restart local v18       #timeRange:Ljava/lang/String;
    goto :goto_4

    .line 1540
    .restart local v19       #timeView:Landroid/widget/TextView;
    .restart local v20       #titleView:Landroid/widget/TextView;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MonthView;->mPopupView:Landroid/view/View;

    const v3, 0x7f0d00e1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .end local v19           #timeView:Landroid/widget/TextView;
    check-cast v19, Landroid/widget/TextView;

    .line 1541
    .restart local v19       #timeView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MonthView;->mPopupView:Landroid/view/View;

    const v3, 0x7f0d00e2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .end local v20           #titleView:Landroid/widget/TextView;
    check-cast v20, Landroid/widget/TextView;

    .line 1542
    .restart local v20       #titleView:Landroid/widget/TextView;
    goto :goto_5

    .line 1544
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MonthView;->mPopupView:Landroid/view/View;

    const v3, 0x7f0d00e4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .end local v19           #timeView:Landroid/widget/TextView;
    check-cast v19, Landroid/widget/TextView;

    .line 1545
    .restart local v19       #timeView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MonthView;->mPopupView:Landroid/view/View;

    const v3, 0x7f0d00e5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .end local v20           #titleView:Landroid/widget/TextView;
    check-cast v20, Landroid/widget/TextView;

    .line 1546
    .restart local v20       #titleView:Landroid/widget/TextView;
    goto :goto_5

    .line 1548
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MonthView;->mPopupView:Landroid/view/View;

    const v3, 0x7f0d00e7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .end local v19           #timeView:Landroid/widget/TextView;
    check-cast v19, Landroid/widget/TextView;

    .line 1549
    .restart local v19       #timeView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MonthView;->mPopupView:Landroid/view/View;

    const v3, 0x7f0d00e8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .end local v20           #titleView:Landroid/widget/TextView;
    check-cast v20, Landroid/widget/TextView;

    .line 1550
    .restart local v20       #titleView:Landroid/widget/TextView;
    goto/16 :goto_5

    .line 1552
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MonthView;->mPopupView:Landroid/view/View;

    const v3, 0x7f0d00ea

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .end local v19           #timeView:Landroid/widget/TextView;
    check-cast v19, Landroid/widget/TextView;

    .line 1553
    .restart local v19       #timeView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MonthView;->mPopupView:Landroid/view/View;

    const v3, 0x7f0d00eb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .end local v20           #titleView:Landroid/widget/TextView;
    check-cast v20, Landroid/widget/TextView;

    .restart local v20       #titleView:Landroid/widget/TextView;
    goto/16 :goto_5

    .line 1561
    .end local v7           #flags:I
    .end local v8           #event:Lcom/htc/calendar/Event;
    .end local v17           #showEndTime:Z
    .end local v18           #timeRange:Ljava/lang/String;
    .end local v19           #timeView:Landroid/widget/TextView;
    .end local v20           #titleView:Landroid/widget/TextView;
    :cond_9
    if-nez v9, :cond_a

    .line 1563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MonthView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_0

    .line 1569
    :cond_a
    packed-switch v9, :pswitch_data_1

    .line 1611
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MonthView;->mPopupView:Landroid/view/View;

    const v3, 0x7f0d00e3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 1612
    .local v22, view:Landroid/view/View;
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1613
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MonthView;->mPopupView:Landroid/view/View;

    const v3, 0x7f0d00e6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 1614
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1615
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MonthView;->mPopupView:Landroid/view/View;

    const v3, 0x7f0d00e9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 1616
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1617
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MonthView;->mPopupView:Landroid/view/View;

    const v3, 0x7f0d00ec

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 1618
    .local v21, tv:Landroid/widget/TextView;
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1619
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f080083

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1620
    .local v11, format:Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, v9, -0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v11, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 1621
    .local v15, plusMore:Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1625
    .end local v11           #format:Ljava/lang/String;
    .end local v15           #plusMore:Ljava/lang/String;
    .end local v21           #tv:Landroid/widget/TextView;
    :goto_6
    const/4 v2, 0x5

    if-le v9, v2, :cond_b

    .line 1626
    const/4 v9, 0x5

    .line 1628
    :cond_b
    mul-int/lit8 v2, v9, 0x14

    add-int/lit8 v16, v2, 0xf

    .line 1629
    .local v16, popupHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MonthView;->mPopup:Landroid/widget/PopupWindow;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1631
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/calendar/MonthView;->mPreviousPopupHeight:I

    move/from16 v0, v16

    if-eq v2, v0, :cond_c

    .line 1632
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/calendar/MonthView;->mPreviousPopupHeight:I

    .line 1633
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MonthView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1635
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MonthView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v3, 0x53

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1636
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MonthView;->mDismissPopup:Lcom/htc/calendar/MonthView$DismissPopup;

    const-wide/16 v3, 0xbb8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/htc/calendar/MonthView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1571
    .end local v16           #popupHeight:I
    .end local v22           #view:Landroid/view/View;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MonthView;->mPopupView:Landroid/view/View;

    const v3, 0x7f0d00e3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 1572
    .restart local v22       #view:Landroid/view/View;
    const/16 v2, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MonthView;->mPopupView:Landroid/view/View;

    const v3, 0x7f0d00e6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 1574
    const/16 v2, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MonthView;->mPopupView:Landroid/view/View;

    const v3, 0x7f0d00e9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 1576
    const/16 v2, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MonthView;->mPopupView:Landroid/view/View;

    const v3, 0x7f0d00ec

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 1578
    const/16 v2, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 1581
    .end local v22           #view:Landroid/view/View;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MonthView;->mPopupView:Landroid/view/View;

    const v3, 0x7f0d00e3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 1582
    .restart local v22       #view:Landroid/view/View;
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MonthView;->mPopupView:Landroid/view/View;

    const v3, 0x7f0d00e6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 1584
    const/16 v2, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MonthView;->mPopupView:Landroid/view/View;

    const v3, 0x7f0d00e9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 1586
    const/16 v2, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1587
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MonthView;->mPopupView:Landroid/view/View;

    const v3, 0x7f0d00ec

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 1588
    const/16 v2, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 1591
    .end local v22           #view:Landroid/view/View;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MonthView;->mPopupView:Landroid/view/View;

    const v3, 0x7f0d00e3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 1592
    .restart local v22       #view:Landroid/view/View;
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MonthView;->mPopupView:Landroid/view/View;

    const v3, 0x7f0d00e6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 1594
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1595
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MonthView;->mPopupView:Landroid/view/View;

    const v3, 0x7f0d00e9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 1596
    const/16 v2, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1597
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MonthView;->mPopupView:Landroid/view/View;

    const v3, 0x7f0d00ec

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 1598
    const/16 v2, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 1601
    .end local v22           #view:Landroid/view/View;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MonthView;->mPopupView:Landroid/view/View;

    const v3, 0x7f0d00e3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 1602
    .restart local v22       #view:Landroid/view/View;
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1603
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MonthView;->mPopupView:Landroid/view/View;

    const v3, 0x7f0d00e6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 1604
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MonthView;->mPopupView:Landroid/view/View;

    const v3, 0x7f0d00e9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 1606
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1607
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/MonthView;->mPopupView:Landroid/view/View;

    const v3, 0x7f0d00ec

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    .line 1608
    const/16 v2, 0x8

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 1538
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1569
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method animationFinished()V
    .locals 1

    .prologue
    .line 786
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/calendar/MonthView;->mAnimating:Z

    .line 788
    invoke-virtual {p0}, Lcom/htc/calendar/MonthView;->invalidate()V

    .line 789
    return-void
.end method

.method animationStarted()V
    .locals 1

    .prologue
    .line 782
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/calendar/MonthView;->mAnimating:Z

    .line 783
    return-void
.end method

.method protected createBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "drawable"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1032
    const/4 v0, 0x0

    return-object v0
.end method

.method dismissPopup()V
    .locals 2

    .prologue
    .line 1783
    iget-boolean v1, p0, Lcom/htc/calendar/MonthView;->mShowToast:Z

    if-nez v1, :cond_1

    .line 1796
    :cond_0
    :goto_0
    return-void

    .line 1788
    :cond_1
    iget-object v1, p0, Lcom/htc/calendar/MonthView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_2

    .line 1789
    iget-object v1, p0, Lcom/htc/calendar/MonthView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1792
    :cond_2
    invoke-virtual {p0}, Lcom/htc/calendar/MonthView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1793
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 1794
    iget-object v1, p0, Lcom/htc/calendar/MonthView;->mDismissPopup:Lcom/htc/calendar/MonthView$DismissPopup;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    .line 960
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_1

    .line 963
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/calendar/MonthView;->mPrevTitleTextViewText:Ljava/lang/CharSequence;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 989
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 964
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    .line 966
    invoke-virtual {p0}, Lcom/htc/calendar/MonthView;->getSelectedTimeInMillis()J

    move-result-wide v1

    .line 967
    .local v1, startMillis:J
    const v5, 0x10012

    .line 969
    .local v5, flags:I
    iget-object v0, p0, Lcom/htc/calendar/MonthView;->mParentActivity:Lcom/htc/calendar/MonthActivity;

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v12

    .line 970
    .local v12, text:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 973
    const/4 v13, 0x0

    .line 974
    .local v13, todayEventCount:I
    iget-object v0, p0, Lcom/htc/calendar/MonthView;->mCursor:Lcom/htc/calendar/DayOfMonthCursor;

    invoke-virtual {v0}, Lcom/htc/calendar/DayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v10

    .line 975
    .local v10, selectedDayOfMonth:I
    const/4 v9, 0x0

    .local v9, i:I
    iget-object v0, p0, Lcom/htc/calendar/MonthView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, count:I
    :goto_1
    if-ge v9, v7, :cond_3

    .line 976
    iget-object v0, p0, Lcom/htc/calendar/MonthView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/calendar/Event;

    .line 977
    .local v6, calendarEvent:Lcom/htc/calendar/Event;
    iget v0, v6, Lcom/htc/calendar/Event;->startDay:I

    iget v3, p0, Lcom/htc/calendar/MonthView;->mFirstJulianDay:I

    sub-int/2addr v0, v3

    add-int/lit8 v11, v0, 0x1

    .line 978
    .local v11, startDay:I
    iget v0, v6, Lcom/htc/calendar/Event;->endDay:I

    iget v3, p0, Lcom/htc/calendar/MonthView;->mFirstJulianDay:I

    sub-int/2addr v0, v3

    add-int/lit8 v8, v0, 0x1

    .line 979
    .local v8, endDay:I
    if-gt v11, v10, :cond_2

    if-lt v8, v10, :cond_2

    .line 980
    add-int/lit8 v13, v13, 0x1

    .line 975
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 986
    .end local v6           #calendarEvent:Lcom/htc/calendar/Event;
    .end local v8           #endDay:I
    .end local v11           #startDay:I
    :cond_3
    invoke-virtual {p1, v13}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    goto :goto_0
.end method

.method public getNavigator()Lcom/htc/calendar/Navigator;
    .locals 1

    .prologue
    .line 1828
    iget-object v0, p0, Lcom/htc/calendar/MonthView;->mNavigator:Lcom/htc/calendar/Navigator;

    return-object v0
.end method

.method public getSelectedTimeInMillis()J
    .locals 3

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/htc/calendar/MonthView;->mTempTime:Landroid/text/format/Time;

    .line 1421
    .local v0, time:Landroid/text/format/Time;
    iget-object v1, p0, Lcom/htc/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1423
    iget v1, v0, Landroid/text/format/Time;->month:I

    iget-object v2, p0, Lcom/htc/calendar/MonthView;->mCursor:Lcom/htc/calendar/DayOfMonthCursor;

    invoke-virtual {v2}, Lcom/htc/calendar/DayOfMonthCursor;->getSelectedMonthOffset()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/text/format/Time;->month:I

    .line 1424
    iget-object v1, p0, Lcom/htc/calendar/MonthView;->mCursor:Lcom/htc/calendar/DayOfMonthCursor;

    invoke-virtual {v1}, Lcom/htc/calendar/DayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v1

    iput v1, v0, Landroid/text/format/Time;->monthDay:I

    .line 1428
    iget-object v1, p0, Lcom/htc/calendar/MonthView;->mSavedTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->second:I

    iput v1, v0, Landroid/text/format/Time;->second:I

    .line 1429
    iget-object v1, p0, Lcom/htc/calendar/MonthView;->mSavedTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->minute:I

    iput v1, v0, Landroid/text/format/Time;->minute:I

    .line 1430
    iget-object v1, p0, Lcom/htc/calendar/MonthView;->mSavedTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->hour:I

    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 1431
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    return-wide v1
.end method

.method public getSelectionMode()I
    .locals 1

    .prologue
    .line 1439
    iget v0, p0, Lcom/htc/calendar/MonthView;->mSelectionMode:I

    return v0
.end method

.method getTime()Landroid/text/format/Time;
    .locals 1

    .prologue
    .line 1435
    iget-object v0, p0, Lcom/htc/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    const/4 v7, 0x0

    .line 649
    invoke-virtual {p0}, Lcom/htc/calendar/MonthView;->getSelectedTimeInMillis()J

    move-result-wide v2

    .line 651
    .local v2, startMillis:J
    invoke-direct {p0, v2, v3}, Lcom/htc/calendar/MonthView;->checkValideTime(J)Z

    move-result v5

    if-nez v5, :cond_0

    .line 675
    :goto_0
    return-void

    .line 655
    :cond_0
    const v0, 0x10012

    .line 658
    .local v0, flags:I
    iget-object v5, p0, Lcom/htc/calendar/MonthView;->mParentActivity:Lcom/htc/calendar/MonthActivity;

    const v6, 0x10012

    invoke-static {v5, v2, v3, v6}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    .line 659
    .local v4, title:Ljava/lang/String;
    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 661
    const/4 v5, 0x3

    const v6, 0x7f08007a

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 662
    .local v1, item:Landroid/view/MenuItem;
    iget-object v5, p0, Lcom/htc/calendar/MonthView;->mContextMenuHandler:Lcom/htc/calendar/MonthView$ContextMenuHandler;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 663
    const v5, 0x108003b

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 666
    const/4 v5, 0x2

    const v6, 0x7f080079

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 667
    iget-object v5, p0, Lcom/htc/calendar/MonthView;->mContextMenuHandler:Lcom/htc/calendar/MonthView$ContextMenuHandler;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 668
    const v5, 0x1080034

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 671
    const/4 v5, 0x6

    const v6, 0x7f080080

    invoke-interface {p1, v7, v5, v7, v6}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 672
    iget-object v5, p0, Lcom/htc/calendar/MonthView;->mContextMenuHandler:Lcom/htc/calendar/MonthView$ContextMenuHandler;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 673
    const v5, 0x1080033

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 800
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 802
    invoke-direct {p0}, Lcom/htc/calendar/MonthView;->clearBitmapCache()V

    .line 810
    sget-object v0, Lcom/htc/calendar/MonthView;->mBusyBitPositionBGCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 811
    sget-object v0, Lcom/htc/calendar/MonthView;->mBusyBitPositionDrawableCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 815
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 820
    invoke-static {}, Lcom/htc/calendar/Utils;->isSupportLunarCalendar()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 821
    invoke-virtual {p0}, Lcom/htc/calendar/MonthView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/htc/calendar/CalendarPreferenceActivity;->getLunarSettings(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 822
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/calendar/MonthView;->mEnableLunar:Z

    .line 823
    new-instance v1, Lcom/htc/calendar/LunarUtils;

    iget-object v2, p0, Lcom/htc/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    invoke-direct {v1, v2}, Lcom/htc/calendar/LunarUtils;-><init>(Landroid/content/res/Resources;)V

    sput-object v1, Lcom/htc/calendar/MonthView;->lunar:Lcom/htc/calendar/LunarUtils;

    .line 837
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 839
    move-object v0, p1

    .line 840
    .local v0, bitmapCanvas:Landroid/graphics/Canvas;
    iget-object v1, p0, Lcom/htc/calendar/MonthView;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f07004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 841
    invoke-direct {p0, v0}, Lcom/htc/calendar/MonthView;->doDraw(Landroid/graphics/Canvas;)V

    .line 853
    .end local v0           #bitmapCanvas:Landroid/graphics/Canvas;
    :cond_1
    invoke-direct {p0}, Lcom/htc/calendar/MonthView;->sendAccessibilityEvents()V

    .line 854
    return-void

    .line 825
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/calendar/MonthView;->mEnableLunar:Z

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x2

    const-wide/16 v7, 0x1f4

    const/4 v4, 0x1

    .line 1677
    iget v5, p0, Lcom/htc/calendar/MonthView;->mSelectionMode:I

    if-nez v5, :cond_3

    .line 1678
    const/16 v5, 0x42

    if-eq p1, v5, :cond_0

    const/16 v5, 0x16

    if-eq p1, v5, :cond_0

    const/16 v5, 0x15

    if-eq p1, v5, :cond_0

    const/16 v5, 0x13

    if-eq p1, v5, :cond_0

    const/16 v5, 0x14

    if-ne p1, v5, :cond_2

    .line 1683
    :cond_0
    iput v6, p0, Lcom/htc/calendar/MonthView;->mSelectionMode:I

    .line 1685
    invoke-virtual {p0}, Lcom/htc/calendar/MonthView;->invalidate()V

    move v3, v4

    .line 1771
    :cond_1
    :goto_0
    return v3

    .line 1687
    :cond_2
    const/16 v5, 0x17

    if-ne p1, v5, :cond_3

    .line 1690
    iput v4, p0, Lcom/htc/calendar/MonthView;->mSelectionMode:I

    .line 1692
    invoke-virtual {p0}, Lcom/htc/calendar/MonthView;->invalidate()V

    move v3, v4

    .line 1693
    goto :goto_0

    .line 1697
    :cond_3
    iput v6, p0, Lcom/htc/calendar/MonthView;->mSelectionMode:I

    .line 1698
    const/4 v3, 0x0

    .line 1699
    .local v3, redraw:Z
    const/4 v2, 0x0

    .line 1701
    .local v2, other:Landroid/text/format/Time;
    sparse-switch p1, :sswitch_data_0

    .line 1763
    :goto_1
    if-eqz v2, :cond_8

    .line 1764
    invoke-virtual {v2, v4}, Landroid/text/format/Time;->normalize(Z)J

    .line 1765
    iget-object v5, p0, Lcom/htc/calendar/MonthView;->mNavigator:Lcom/htc/calendar/Navigator;

    invoke-interface {v5, v2, v4}, Lcom/htc/calendar/Navigator;->goTo(Landroid/text/format/Time;Z)V

    goto :goto_0

    .line 1703
    :sswitch_0
    invoke-virtual {p0}, Lcom/htc/calendar/MonthView;->getSelectedTimeInMillis()J

    move-result-wide v0

    .line 1704
    .local v0, millis:J
    invoke-virtual {p0}, Lcom/htc/calendar/MonthView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/calendar/MonthView;->mDetailedView:Ljava/lang/String;

    invoke-static {v5, v6, v0, v1}, Lcom/htc/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    move v3, v4

    .line 1705
    goto :goto_0

    .line 1707
    .end local v0           #millis:J
    :sswitch_1
    iget-object v5, p0, Lcom/htc/calendar/MonthView;->mCursor:Lcom/htc/calendar/DayOfMonthCursor;

    invoke-virtual {v5}, Lcom/htc/calendar/DayOfMonthCursor;->up()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1708
    iget-object v2, p0, Lcom/htc/calendar/MonthView;->mOtherViewCalendar:Landroid/text/format/Time;

    .line 1709
    iget-object v5, p0, Lcom/htc/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v2, v5}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1710
    iget v5, v2, Landroid/text/format/Time;->month:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v2, Landroid/text/format/Time;->month:I

    .line 1711
    iget-object v5, p0, Lcom/htc/calendar/MonthView;->mCursor:Lcom/htc/calendar/DayOfMonthCursor;

    invoke-virtual {v5}, Lcom/htc/calendar/DayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v5

    iput v5, v2, Landroid/text/format/Time;->monthDay:I

    .line 1713
    iget-object v5, p0, Lcom/htc/calendar/MonthView;->mParentActivity:Lcom/htc/calendar/MonthActivity;

    iget-object v6, p0, Lcom/htc/calendar/MonthView;->mParentActivity:Lcom/htc/calendar/MonthActivity;

    invoke-virtual {v5, v7, v8}, Lcom/htc/calendar/MonthActivity;->gotoAnimationPass(J)V

    .line 1715
    iget-object v5, p0, Lcom/htc/calendar/MonthView;->mCursor:Lcom/htc/calendar/DayOfMonthCursor;

    invoke-virtual {v5}, Lcom/htc/calendar/DayOfMonthCursor;->down()Z

    .line 1717
    :cond_4
    const/4 v3, 0x1

    .line 1718
    goto :goto_1

    .line 1721
    :sswitch_2
    iget-object v5, p0, Lcom/htc/calendar/MonthView;->mCursor:Lcom/htc/calendar/DayOfMonthCursor;

    invoke-virtual {v5}, Lcom/htc/calendar/DayOfMonthCursor;->down()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1722
    iget-object v2, p0, Lcom/htc/calendar/MonthView;->mOtherViewCalendar:Landroid/text/format/Time;

    .line 1723
    iget-object v5, p0, Lcom/htc/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v2, v5}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1724
    iget v5, v2, Landroid/text/format/Time;->month:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v2, Landroid/text/format/Time;->month:I

    .line 1725
    iget-object v5, p0, Lcom/htc/calendar/MonthView;->mCursor:Lcom/htc/calendar/DayOfMonthCursor;

    invoke-virtual {v5}, Lcom/htc/calendar/DayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v5

    iput v5, v2, Landroid/text/format/Time;->monthDay:I

    .line 1727
    iget-object v5, p0, Lcom/htc/calendar/MonthView;->mParentActivity:Lcom/htc/calendar/MonthActivity;

    iget-object v6, p0, Lcom/htc/calendar/MonthView;->mParentActivity:Lcom/htc/calendar/MonthActivity;

    invoke-virtual {v5, v7, v8}, Lcom/htc/calendar/MonthActivity;->gotoAnimationFuture(J)V

    .line 1729
    iget-object v5, p0, Lcom/htc/calendar/MonthView;->mCursor:Lcom/htc/calendar/DayOfMonthCursor;

    invoke-virtual {v5}, Lcom/htc/calendar/DayOfMonthCursor;->up()Z

    .line 1731
    :cond_5
    const/4 v3, 0x1

    .line 1732
    goto :goto_1

    .line 1735
    :sswitch_3
    iget-object v5, p0, Lcom/htc/calendar/MonthView;->mCursor:Lcom/htc/calendar/DayOfMonthCursor;

    invoke-virtual {v5}, Lcom/htc/calendar/DayOfMonthCursor;->left()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1736
    iget-object v2, p0, Lcom/htc/calendar/MonthView;->mOtherViewCalendar:Landroid/text/format/Time;

    .line 1737
    iget-object v5, p0, Lcom/htc/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v2, v5}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1738
    iget v5, v2, Landroid/text/format/Time;->month:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v2, Landroid/text/format/Time;->month:I

    .line 1739
    iget-object v5, p0, Lcom/htc/calendar/MonthView;->mCursor:Lcom/htc/calendar/DayOfMonthCursor;

    invoke-virtual {v5}, Lcom/htc/calendar/DayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v5

    iput v5, v2, Landroid/text/format/Time;->monthDay:I

    .line 1741
    iget-object v5, p0, Lcom/htc/calendar/MonthView;->mParentActivity:Lcom/htc/calendar/MonthActivity;

    iget-object v6, p0, Lcom/htc/calendar/MonthView;->mParentActivity:Lcom/htc/calendar/MonthActivity;

    invoke-virtual {v5, v7, v8}, Lcom/htc/calendar/MonthActivity;->gotoAnimationPass(J)V

    .line 1743
    iget-object v5, p0, Lcom/htc/calendar/MonthView;->mCursor:Lcom/htc/calendar/DayOfMonthCursor;

    invoke-virtual {v5}, Lcom/htc/calendar/DayOfMonthCursor;->right()Z

    .line 1745
    :cond_6
    const/4 v3, 0x1

    .line 1746
    goto/16 :goto_1

    .line 1749
    :sswitch_4
    iget-object v5, p0, Lcom/htc/calendar/MonthView;->mCursor:Lcom/htc/calendar/DayOfMonthCursor;

    invoke-virtual {v5}, Lcom/htc/calendar/DayOfMonthCursor;->right()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1750
    iget-object v2, p0, Lcom/htc/calendar/MonthView;->mOtherViewCalendar:Landroid/text/format/Time;

    .line 1751
    iget-object v5, p0, Lcom/htc/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v2, v5}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1752
    iget v5, v2, Landroid/text/format/Time;->month:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v2, Landroid/text/format/Time;->month:I

    .line 1753
    iget-object v5, p0, Lcom/htc/calendar/MonthView;->mCursor:Lcom/htc/calendar/DayOfMonthCursor;

    invoke-virtual {v5}, Lcom/htc/calendar/DayOfMonthCursor;->getSelectedDayOfMonth()I

    move-result v5

    iput v5, v2, Landroid/text/format/Time;->monthDay:I

    .line 1755
    iget-object v5, p0, Lcom/htc/calendar/MonthView;->mParentActivity:Lcom/htc/calendar/MonthActivity;

    iget-object v6, p0, Lcom/htc/calendar/MonthView;->mParentActivity:Lcom/htc/calendar/MonthActivity;

    invoke-virtual {v5, v7, v8}, Lcom/htc/calendar/MonthActivity;->gotoAnimationFuture(J)V

    .line 1757
    iget-object v5, p0, Lcom/htc/calendar/MonthView;->mCursor:Lcom/htc/calendar/DayOfMonthCursor;

    invoke-virtual {v5}, Lcom/htc/calendar/DayOfMonthCursor;->left()Z

    .line 1759
    :cond_7
    const/4 v3, 0x1

    goto/16 :goto_1

    .line 1766
    :cond_8
    if-eqz v3, :cond_1

    .line 1768
    invoke-virtual {p0}, Lcom/htc/calendar/MonthView;->invalidate()V

    goto/16 :goto_0

    .line 1701
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1641
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 1643
    .local v0, duration:J
    packed-switch p1, :pswitch_data_0

    .line 1672
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v4

    return v4

    .line 1645
    :pswitch_0
    iget v4, p0, Lcom/htc/calendar/MonthView;->mSelectionMode:I

    if-eqz v4, :cond_0

    .line 1650
    iget v4, p0, Lcom/htc/calendar/MonthView;->mSelectionMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 1655
    const/4 v4, 0x2

    iput v4, p0, Lcom/htc/calendar/MonthView;->mSelectionMode:I

    .line 1657
    invoke-virtual {p0}, Lcom/htc/calendar/MonthView;->invalidate()V

    goto :goto_0

    .line 1662
    :cond_1
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_2

    .line 1663
    invoke-virtual {p0}, Lcom/htc/calendar/MonthView;->getSelectedTimeInMillis()J

    move-result-wide v2

    .line 1664
    .local v2, millis:J
    invoke-virtual {p0}, Lcom/htc/calendar/MonthView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/calendar/MonthView;->mDetailedView:Ljava/lang/String;

    invoke-static {v4, v5, v2, v3}, Lcom/htc/calendar/Utils;->startActivity(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    .line 1666
    .end local v2           #millis:J
    :cond_2
    const/4 v4, 0x3

    iput v4, p0, Lcom/htc/calendar/MonthView;->mSelectionMode:I

    .line 1668
    invoke-virtual {p0}, Lcom/htc/calendar/MonthView;->invalidate()V

    .line 1669
    invoke-virtual {p0}, Lcom/htc/calendar/MonthView;->performLongClick()Z

    goto :goto_0

    .line 1643
    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "width"
    .parameter "height"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 793
    invoke-direct {p0, p1, p2}, Lcom/htc/calendar/MonthView;->drawingCalc(II)V

    .line 795
    invoke-direct {p0}, Lcom/htc/calendar/MonthView;->clearBitmapCache()V

    .line 796
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 930
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 931
    :cond_0
    iget-boolean v1, p0, Lcom/htc/calendar/MonthView;->mInManipulation:Z

    if-eqz v1, :cond_1

    .line 932
    iget-object v1, p0, Lcom/htc/calendar/MonthView;->mInterpolator:Lcom/htc/calendar/ManipulateInterpolator;

    invoke-virtual {v1}, Lcom/htc/calendar/ManipulateInterpolator;->finish()V

    .line 933
    iget v1, p0, Lcom/htc/calendar/MonthView;->mIsNext:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/calendar/MonthView;->mInterpolator:Lcom/htc/calendar/ManipulateInterpolator;

    invoke-virtual {v1}, Lcom/htc/calendar/ManipulateInterpolator;->getCurrentInterpolation()F

    move-result v1

    iget-object v2, p0, Lcom/htc/calendar/MonthView;->mInterpolator:Lcom/htc/calendar/ManipulateInterpolator;

    invoke-virtual {v2}, Lcom/htc/calendar/ManipulateInterpolator;->getMaxInterpolation()F

    move-result v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 940
    :cond_1
    iget-object v1, p0, Lcom/htc/calendar/MonthView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 944
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method reloadEvents()V
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 721
    iget-object v7, p0, Lcom/htc/calendar/MonthView;->mTempTime:Landroid/text/format/Time;

    .line 722
    .local v7, monthStart:Landroid/text/format/Time;
    iget-object v0, p0, Lcom/htc/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v7, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 723
    iput v5, v7, Landroid/text/format/Time;->monthDay:I

    .line 724
    iput v1, v7, Landroid/text/format/Time;->hour:I

    .line 725
    iput v1, v7, Landroid/text/format/Time;->minute:I

    .line 726
    iput v1, v7, Landroid/text/format/Time;->second:I

    .line 727
    invoke-virtual {v7, v5}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    .line 728
    .local v3, millis:J
    iget-wide v0, v7, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v3, v4, v0, v1}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v8

    .line 737
    .local v8, startDay:I
    const-wide/16 v9, 0x0

    .line 740
    .local v9, startMillis:J
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 741
    .local v2, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/Event;>;"
    iget-object v0, p0, Lcom/htc/calendar/MonthView;->mEventLoader:Lcom/htc/calendar/EventLoader;

    sget v1, Lcom/htc/calendar/MonthView;->EVENT_NUM_DAYS:I

    new-instance v5, Lcom/htc/calendar/MonthView$3;

    invoke-direct {v5, p0, v2}, Lcom/htc/calendar/MonthView$3;-><init>(Lcom/htc/calendar/MonthView;Ljava/util/ArrayList;)V

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/calendar/EventLoader;->loadEventsInBackground(ILjava/util/ArrayList;JLjava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 779
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1
    .parameter "eventType"

    .prologue
    .line 952
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 956
    :goto_0
    return-void

    .line 955
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method setDetailedView(Ljava/lang/String;)V
    .locals 0
    .parameter "detailedView"

    .prologue
    .line 1399
    iput-object p1, p0, Lcom/htc/calendar/MonthView;->mDetailedView:Ljava/lang/String;

    .line 1400
    return-void
.end method

.method setSelectedTime(Landroid/text/format/Time;)V
    .locals 7
    .parameter "time"

    .prologue
    const/4 v3, 0x1

    .line 1404
    iget-object v2, p0, Lcom/htc/calendar/MonthView;->mSavedTime:Landroid/text/format/Time;

    invoke-virtual {v2, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1406
    iget-object v2, p0, Lcom/htc/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v2, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1407
    iget-object v2, p0, Lcom/htc/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iput v3, v2, Landroid/text/format/Time;->monthDay:I

    .line 1408
    iget-object v2, p0, Lcom/htc/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    .line 1409
    .local v0, millis:J
    iget-object v2, p0, Lcom/htc/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    iget-wide v2, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    iput v2, p0, Lcom/htc/calendar/MonthView;->mFirstJulianDay:I

    .line 1410
    iget-object v2, p0, Lcom/htc/calendar/MonthView;->mViewCalendar:Landroid/text/format/Time;

    invoke-virtual {v2, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1412
    new-instance v2, Lcom/htc/calendar/DayOfMonthCursor;

    iget v3, p1, Landroid/text/format/Time;->year:I

    iget v4, p1, Landroid/text/format/Time;->month:I

    iget v5, p1, Landroid/text/format/Time;->monthDay:I

    iget-object v6, p0, Lcom/htc/calendar/MonthView;->mCursor:Lcom/htc/calendar/DayOfMonthCursor;

    invoke-virtual {v6}, Lcom/htc/calendar/DayOfMonthCursor;->getWeekStartDay()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/htc/calendar/DayOfMonthCursor;-><init>(IIII)V

    iput-object v2, p0, Lcom/htc/calendar/MonthView;->mCursor:Lcom/htc/calendar/DayOfMonthCursor;

    .line 1416
    invoke-virtual {p0}, Lcom/htc/calendar/MonthView;->invalidate()V

    .line 1417
    return-void
.end method

.method public setSelectionMode(I)V
    .locals 0
    .parameter "selectionMode"

    .prologue
    .line 1443
    iput p1, p0, Lcom/htc/calendar/MonthView;->mSelectionMode:I

    .line 1444
    return-void
.end method

.method public updateToday(Landroid/text/format/Time;)V
    .locals 0
    .parameter "today"

    .prologue
    .line 1862
    iput-object p1, p0, Lcom/htc/calendar/MonthView;->mToday:Landroid/text/format/Time;

    .line 1864
    return-void
.end method

.method public updateView()V
    .locals 1

    .prologue
    .line 1799
    iget-object v0, p0, Lcom/htc/calendar/MonthView;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1800
    return-void
.end method
