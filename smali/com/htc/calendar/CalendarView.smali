.class public Lcom/htc/calendar/CalendarView;
.super Landroid/view/View;
.source "CalendarView.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/calendar/CalendarView$BackgroundHandler;,
        Lcom/htc/calendar/CalendarView$UpdateCurrentTime;,
        Lcom/htc/calendar/CalendarView$DismissPopup;,
        Lcom/htc/calendar/CalendarView$ContinueScroll;,
        Lcom/htc/calendar/CalendarView$ContextMenuHandler;,
        Lcom/htc/calendar/CalendarView$DayHeader;
    }
.end annotation


# static fields
.field private static final ACCESS_LEVEL_DELETE:I = 0x1

.field private static final ACCESS_LEVEL_EDIT:I = 0x2

.field private static final ACCESS_LEVEL_NONE:I = 0x0

.field private static ALLDAY_BOTTOM_MARGIN:I = 0x0

.field private static ALLDAY_TOP_MARGIN:I = 0x0

.field private static final ALL_DAY_TEXT_TOP_MARGIN:I = 0x0

.field private static AMPM_FONT_SIZE:I = 0x0

.field private static final ATTENDEES_INDEX_RELATIONSHIP:I = 0x1

.field private static final ATTENDEES_PROJECTION:[Ljava/lang/String; = null

.field private static final ATTENDEES_WHERE:Ljava/lang/String; = "event_id=%d"

.field private static final CALENDARS_INDEX_ACCESS_LEVEL:I = 0x1

.field private static final CALENDARS_INDEX_OWNER_ACCOUNT:I = 0x2

.field private static final CALENDARS_INDEX_SYNC_ACCOUNT_TYPE:I = 0x3

.field private static final CALENDARS_PROJECTION:[Ljava/lang/String; = null

.field private static final CALENDARS_WHERE:Ljava/lang/String; = "_id=%d"

.field private static CURRENT_TIME_LINE_BORDER_WIDTH:I = 0x0

.field private static CURRENT_TIME_LINE_HEIGHT:I = 0x0

.field private static CURRENT_TIME_LINE_SIDE_BUFFER:I = 0x0

.field private static CURRENT_TIME_MARKER_HEIGHT:I = 0x0

.field private static CURRENT_TIME_MARKER_INNER_WIDTH:I = 0x0

.field private static CURRENT_TIME_MARKER_WIDTH:I = 0x0

.field private static final DAY_GAP:I = 0x1

.field private static DAY_HEADER_HEIGHT:I = 0x0

.field static EVENT_OVERWRAP_MARGIN_TIME:J = 0x0L

.field private static EVENT_SMAL_TEXT_FONT_SIZE:I = 0x0

.field private static EVENT_TEXT_FONT_SIZE:I = 0x0

.field private static final FROM_ABOVE:I = 0x1

.field private static final FROM_BELOW:I = 0x2

.field private static final FROM_LEFT:I = 0x4

.field private static final FROM_NONE:I = 0x0

.field private static final FROM_RIGHT:I = 0x8

.field private static HORIZONTAL_SCROLL_THRESHOLD:I = 0x0

.field private static HOURS_FONT_SIZE:I = 0x0

.field private static final HOURS_LEFT_MARGIN:I = 0x6

.field private static final HOURS_MARGIN:I = 0xd

.field private static final HOURS_RIGHT_MARGIN:I = 0x7

.field private static final HOUR_GAP:I = 0x1

.field private static final INVALID_EVENT_ID:J = -0x1L

.field private static final MAX_EVENT_TEXT_LEN:I = 0x1f4

.field static final MILLIS_PER_DAY:I = 0x5265c00

.field static final MILLIS_PER_HOUR:I = 0x36ee80

.field static final MILLIS_PER_MINUTE:I = 0xea60

.field static final MINUTES_PER_DAY:I = 0x5a0

.field static final MINUTES_PER_HOUR:I = 0x3c

.field private static MIN_ALL_DAY_EVENT_HEIGHT:I = 0x0

.field private static MIN_CELL_WIDTH_FOR_TEXT:I = 0x0

.field private static MIN_EVENT_HEIGHT:F = 0.0f

.field private static MIN_Y_SPAN:I = 0x0

.field private static final MSG_GET_TIME_ZONE:I = 0x0

.field private static NORMAL_FONT_SIZE:I = 0x0

.field private static final NORMAL_TEXT_TOP_MARGIN:I = 0x2

.field private static final POPUP_DISMISS_DELAY:I = 0xbb8

.field private static final SELECTION_HIDDEN:I = 0x0

.field private static final SELECTION_LONGPRESS:I = 0x3

.field private static final SELECTION_PRESSED:I = 0x1

.field private static final SELECTION_SELECTED:I = 0x2

.field private static SMALLER_ROUND_RADIUS:F = 0.0f

.field private static SMALL_ROUND_RADIUS:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "CalendarView"

.field private static final TOUCH_MODE_DOWN:I = 0x1

.field private static final TOUCH_MODE_HSCROLL:I = 0x40

.field private static final TOUCH_MODE_INITIAL_STATE:I = 0x0

.field private static final TOUCH_MODE_VSCROLL:I = 0x20

.field private static final UPDATE_CURRENT_TIME_DELAY:I = 0x493e0

.field private static final WEEK_NUMBER_PREFIX:Ljava/lang/String; = "w"

.field private static mAllDayTitle:Ljava/lang/String;

.field private static mCalendarAllDayBackground:I

.field private static mCalendarAmPmLabel:I

.field private static mCalendarDateBannerBackground:I

.field private static mCalendarDateBannerTextColor:I

.field private static mCalendarDateSelected:I

.field private static mCalendarGridAreaBackground:I

.field private static mCalendarGridAreaSelected:I

.field private static mCalendarGridLineHorizontalColor:I

.field private static mCalendarGridLineVerticalColor:I

.field private static mCalendarHourBackground:I

.field private static mCalendarHourLabel:I

.field private static mCalendarHourNoonColor:I

.field private static mCalendarHourSelected:I

.field private static mCellHeight:I

.field private static mCurrentTimeLineColor:I

.field private static mCurrentTimeMarkerBorderColor:I

.field private static mCurrentTimeMarkerColor:I

.field private static mEventTextColor:I

.field private static mHaveEvent:Ljava/lang/String;

.field private static mHaveEvents:Ljava/lang/String;

.field private static mHighLightDay:I

.field private static mHighLightHour:I

.field private static mMaxCellHeight:I

.field private static mMeetingConflict:Ljava/lang/String;

.field private static mMeetingConflicts:Ljava/lang/String;

.field private static mMinCellHeight:I

.field private static mPressedColor:I

.field private static mScale:F

.field private static mSelectedEventTextColor:I

.field private static mSelectionColor:I

.field private static mSplitWindow:I

.field private static mWeek_saturdayColor:I

.field private static mWeek_sundayColor:I

.field private static sLooper:Landroid/os/Looper;


# instance fields
.field private dayHeaders:[Lcom/htc/calendar/CalendarView$DayHeader;

.field private drawTextSanitizerFilter:Ljava/util/regex/Pattern;

.field private draw_event_drawable_1_all_day_padding_right:I

.field private draw_event_drawable_7_all_day_padding_right:I

.field private isSmallerAllDay:Z

.field private mAllDayDividerHeight:I

.field private mAllDayHeight:I

.field private mAllDayTitleHeight:I

.field private mAmString:Ljava/lang/String;

.field private mBackgroundThreadHandler:Landroid/os/Handler;

.field private mBannerPlusMargin:I

.field mBaseDate:Landroid/text/format/Time;

.field private mBitmapHeight:I

.field private mBold:Landroid/graphics/Typeface;

.field protected mCalendarApp:Lcom/htc/calendar/CalendarApplication;

.field private mCancelCallback:Ljava/lang/Runnable;

.field private mCellHeightBeforeScaleGesture:I

.field private mCellWidth:I

.field private mCharWidths:[F

.field private mComputeSelectedEvents:Z

.field private mContextMenuHandler:Lcom/htc/calendar/CalendarView$ContextMenuHandler;

.field private mContinueScroll:Lcom/htc/calendar/CalendarView$ContinueScroll;

.field private mCurrentTime:Landroid/text/format/Time;

.field private mDateRange:Ljava/lang/String;

.field private mDateStrWidth:I

.field private mDayStrs:[Ljava/lang/String;

.field private mDayStrs2Letter:[Ljava/lang/String;

.field private mDeleteEventHelper:Lcom/htc/calendar/DeleteEventHelper;

.field private mDestRect:Landroid/graphics/Rect;

.field private mDetailedView:Ljava/lang/String;

.field private mDismissPopup:Lcom/htc/calendar/CalendarView$DismissPopup;

.field protected mDrawTextInEventRect:Z

.field private mEarliestStartHour:[I

.field protected final mEventGeometry:Lcom/htc/calendar/EventGeometry;

.field private final mEventLoader:Lcom/htc/calendar/EventLoader;

.field private mEventTextAscent:I

.field private mEventTextHeight:I

.field private mEventTextPaint:Landroid/graphics/Paint;

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

.field private mFirstCell:I

.field private mFirstDate:I

.field private mFirstHour:I

.field private mFirstHourOffset:I

.field private mFirstJulianDay:I

.field private mGestureCenterHour:F

.field private mGridAreaHeight:I

.field private mHandleActionUp:Z

.field private mHasAllDayEvent:[Z

.field private mHourStrs:[Ljava/lang/String;

.field private mHoursTextHeight:I

.field private mHoursWidth:I

.field private mInitialScrollX:F

.field private mInitialScrollY:F

.field private mIs24HourFormat:Z

.field private mLastJulianDay:I

.field private mLastPopupEventID:J

.field private mLastReloadMillis:J

.field private mLaunchNewView:Z

.field private mMaxAllDayEventHeight:I

.field private mMaxAllDayEvents:I

.field private mMaxAllDayHeight:I

.field private mMaxViewStartY:I

.field private mMonthLength:I

.field private mMoveMode:I

.field protected mNumDays:I

.field private mNumHours:I

.field private final mOffsetY:I

.field private mOnFlingCalled:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintBorder:Landroid/graphics/Paint;

.field protected mParentActivity:Lcom/htc/calendar/CalendarActivity;

.field private mPath:Landroid/graphics/Path;

.field private mPmString:Ljava/lang/String;

.field private mPopup:Landroid/widget/PopupWindow;

.field private mPopupView:Landroid/view/View;

.field private mPrevBox:Landroid/graphics/Rect;

.field private mPrevSelectedEvent:Lcom/htc/calendar/Event;

.field private mPrevSelectionDay:I

.field private mPrevSelectionHour:I

.field private mPrevTitleTextViewText:Ljava/lang/CharSequence;

.field private mPreviewEvent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/calendar/Event;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousDirection:I

.field private mPreviousDistanceX:I

.field private mProcessedGroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessedMeetingConflict:Z

.field private mRect:Landroid/graphics/Rect;

.field private mRectF:Landroid/graphics/RectF;

.field private mRedrawScreen:Z

.field private mRemeasure:Z

.field protected mResources:Landroid/content/res/Resources;

.field mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScrollStartY:I

.field private mScrolling:Z

.field private mSelectedEvent:Lcom/htc/calendar/Event;

.field private mSelectedEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/calendar/Event;",
            ">;"
        }
    .end annotation
.end field

.field mSelectionAllDay:Z

.field private mSelectionDay:I

.field private mSelectionHour:I

.field private mSelectionMode:I

.field private mSelectionPaint:Landroid/graphics/Paint;

.field private mSingleAllDayHeight:I

.field private mSrcRect:Landroid/graphics/Rect;

.field private mStartDay:I

.field private mStartingScroll:Z

.field private mStartingSpanY:F

.field private mTempEventBundle:Landroid/os/Bundle;

.field private mTimeZone:Ljava/util/TimeZone;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mTitleTextViewShadow:Landroid/widget/TextView;

.field private mTodayJulianDay:I

.field private mTouchMode:I

.field private mTouchStartedInAlldayArea:Z

.field private mUpdateCurrentTime:Lcom/htc/calendar/CalendarView$UpdateCurrentTime;

.field private mUpdateTZ:Ljava/lang/Runnable;

.field private mUpdateUIFromBackgroundHandler:Ljava/lang/Runnable;

.field private mViewHeight:I

.field private mViewStartX:I

.field private mViewStartY:I

.field private mViewWidth:I

.field private mWeekHourDayMargin:I

.field private onLongClickListener:Landroid/view/View$OnLongClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x40a0

    const/16 v5, 0xc

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 114
    const/4 v0, 0x0

    sput v0, Lcom/htc/calendar/CalendarView;->mScale:F

    .line 164
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v7

    const-string v1, "calendar_access_level"

    aput-object v1, v0, v3

    const-string v1, "ownerAccount"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "account_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/calendar/CalendarView;->CALENDARS_PROJECTION:[Ljava/lang/String;

    .line 175
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v7

    const-string v1, "attendeeRelationship"

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/calendar/CalendarView;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    .line 182
    sput v6, Lcom/htc/calendar/CalendarView;->SMALL_ROUND_RADIUS:F

    .line 183
    sput v6, Lcom/htc/calendar/CalendarView;->SMALLER_ROUND_RADIUS:F

    .line 195
    const/16 v0, 0x32

    sput v0, Lcom/htc/calendar/CalendarView;->HORIZONTAL_SCROLL_THRESHOLD:I

    .line 283
    const/4 v0, 0x3

    sput v0, Lcom/htc/calendar/CalendarView;->ALLDAY_TOP_MARGIN:I

    .line 284
    const/4 v0, 0x5

    sput v0, Lcom/htc/calendar/CalendarView;->ALLDAY_BOTTOM_MARGIN:I

    .line 301
    sput v4, Lcom/htc/calendar/CalendarView;->CURRENT_TIME_LINE_HEIGHT:I

    .line 302
    sput v3, Lcom/htc/calendar/CalendarView;->CURRENT_TIME_LINE_BORDER_WIDTH:I

    .line 303
    const/4 v0, 0x6

    sput v0, Lcom/htc/calendar/CalendarView;->CURRENT_TIME_MARKER_INNER_WIDTH:I

    .line 304
    const/4 v0, 0x6

    sput v0, Lcom/htc/calendar/CalendarView;->CURRENT_TIME_MARKER_HEIGHT:I

    .line 305
    const/16 v0, 0x8

    sput v0, Lcom/htc/calendar/CalendarView;->CURRENT_TIME_MARKER_WIDTH:I

    .line 306
    sput v3, Lcom/htc/calendar/CalendarView;->CURRENT_TIME_LINE_SIDE_BUFFER:I

    .line 314
    sput v5, Lcom/htc/calendar/CalendarView;->NORMAL_FONT_SIZE:I

    .line 316
    const/16 v0, 0x10

    sput v0, Lcom/htc/calendar/CalendarView;->EVENT_TEXT_FONT_SIZE:I

    .line 318
    sput v5, Lcom/htc/calendar/CalendarView;->HOURS_FONT_SIZE:I

    .line 319
    const/16 v0, 0x9

    sput v0, Lcom/htc/calendar/CalendarView;->AMPM_FONT_SIZE:I

    .line 320
    const/16 v0, 0xf

    sput v0, Lcom/htc/calendar/CalendarView;->MIN_CELL_WIDTH_FOR_TEXT:I

    .line 321
    const/16 v0, 0x12

    sput v0, Lcom/htc/calendar/CalendarView;->MIN_ALL_DAY_EVENT_HEIGHT:I

    .line 323
    const/high16 v0, 0x4170

    sput v0, Lcom/htc/calendar/CalendarView;->MIN_EVENT_HEIGHT:F

    .line 345
    const-wide/32 v0, 0xdbba0

    sput-wide v0, Lcom/htc/calendar/CalendarView;->EVENT_OVERWRAP_MARGIN_TIME:J

    .line 4601
    sput v5, Lcom/htc/calendar/CalendarView;->EVENT_SMAL_TEXT_FONT_SIZE:I

    .line 4604
    sput v3, Lcom/htc/calendar/CalendarView;->mSplitWindow:I

    .line 4613
    const-string v0, ""

    sput-object v0, Lcom/htc/calendar/CalendarView;->mMeetingConflict:Ljava/lang/String;

    .line 4614
    const-string v0, ""

    sput-object v0, Lcom/htc/calendar/CalendarView;->mMeetingConflicts:Ljava/lang/String;

    .line 4615
    const-string v0, ""

    sput-object v0, Lcom/htc/calendar/CalendarView;->mHaveEvent:Ljava/lang/String;

    .line 4616
    const-string v0, ""

    sput-object v0, Lcom/htc/calendar/CalendarView;->mHaveEvents:Ljava/lang/String;

    .line 4618
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/calendar/CalendarView;->sLooper:Landroid/os/Looper;

    .line 5701
    const/16 v0, 0x64

    sput v0, Lcom/htc/calendar/CalendarView;->MIN_Y_SPAN:I

    .line 5705
    const/16 v0, 0x2d

    sput v0, Lcom/htc/calendar/CalendarView;->DAY_HEADER_HEIGHT:I

    .line 5709
    const/16 v0, 0x2d

    sput v0, Lcom/htc/calendar/CalendarView;->mMinCellHeight:I

    .line 5710
    const/16 v0, 0x96

    sput v0, Lcom/htc/calendar/CalendarView;->mMaxCellHeight:I

    return-void
.end method

.method public constructor <init>(Lcom/htc/calendar/CalendarActivity;)V
    .locals 7
    .parameter "activity"

    .prologue
    const/4 v6, -0x3

    const/high16 v5, 0x3f80

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 472
    invoke-virtual {p1}, Lcom/htc/calendar/CalendarActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 132
    new-instance v0, Lcom/htc/calendar/CalendarView$1;

    invoke-direct {v0, p0}, Lcom/htc/calendar/CalendarView$1;-><init>(Lcom/htc/calendar/CalendarView;)V

    iput-object v0, p0, Lcom/htc/calendar/CalendarView;->mUpdateTZ:Ljava/lang/Runnable;

    .line 197
    new-instance v0, Lcom/htc/calendar/CalendarView$ContinueScroll;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/calendar/CalendarView$ContinueScroll;-><init>(Lcom/htc/calendar/CalendarView;Lcom/htc/calendar/CalendarView$1;)V

    iput-object v0, p0, Lcom/htc/calendar/CalendarView;->mContinueScroll:Lcom/htc/calendar/CalendarView$ContinueScroll;

    .line 205
    const/16 v0, 0x20

    new-array v0, v0, [Lcom/htc/calendar/CalendarView$DayHeader;

    iput-object v0, p0, Lcom/htc/calendar/CalendarView;->dayHeaders:[Lcom/htc/calendar/CalendarView$DayHeader;

    .line 215
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    iput-object v0, p0, Lcom/htc/calendar/CalendarView;->mBold:Landroid/graphics/Typeface;

    .line 224
    sget-object v0, Lcom/htc/calendar/CalendarPreferenceActivity;->DEFAULT_DETAILED_VIEW:Ljava/lang/String;

    iput-object v0, p0, Lcom/htc/calendar/CalendarView;->mDetailedView:Ljava/lang/String;

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    .line 250
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/CalendarView;->mRect:Landroid/graphics/Rect;

    .line 251
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/CalendarView;->mRectF:Landroid/graphics/RectF;

    .line 252
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/CalendarView;->mSrcRect:Landroid/graphics/Rect;

    .line 253
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/CalendarView;->mDestRect:Landroid/graphics/Rect;

    .line 254
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/CalendarView;->mPaint:Landroid/graphics/Paint;

    .line 255
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/CalendarView;->mPaintBorder:Landroid/graphics/Paint;

    .line 256
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/CalendarView;->mEventTextPaint:Landroid/graphics/Paint;

    .line 257
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/CalendarView;->mSelectionPaint:Landroid/graphics/Paint;

    .line 258
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/CalendarView;->mPath:Landroid/graphics/Path;

    .line 268
    new-instance v0, Lcom/htc/calendar/CalendarView$DismissPopup;

    invoke-direct {v0, p0}, Lcom/htc/calendar/CalendarView$DismissPopup;-><init>(Lcom/htc/calendar/CalendarView;)V

    iput-object v0, p0, Lcom/htc/calendar/CalendarView;->mDismissPopup:Lcom/htc/calendar/CalendarView$DismissPopup;

    .line 273
    iput-boolean v4, p0, Lcom/htc/calendar/CalendarView;->mRedrawScreen:Z

    .line 274
    iput-boolean v4, p0, Lcom/htc/calendar/CalendarView;->mRemeasure:Z

    .line 389
    const/4 v0, 0x7

    iput v0, p0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    .line 390
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/calendar/CalendarView;->mNumHours:I

    .line 394
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/calendar/CalendarView;->mFirstHour:I

    .line 396
    iput v2, p0, Lcom/htc/calendar/CalendarView;->mWeekHourDayMargin:I

    .line 410
    const/16 v0, 0x1f4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/htc/calendar/CalendarView;->mCharWidths:[F

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    .line 415
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    .line 421
    new-instance v0, Lcom/htc/calendar/CalendarView$ContextMenuHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/htc/calendar/CalendarView$ContextMenuHandler;-><init>(Lcom/htc/calendar/CalendarView;Lcom/htc/calendar/CalendarView$1;)V

    iput-object v0, p0, Lcom/htc/calendar/CalendarView;->mContextMenuHandler:Lcom/htc/calendar/CalendarView$ContextMenuHandler;

    .line 423
    iput-boolean v2, p0, Lcom/htc/calendar/CalendarView;->isSmallerAllDay:Z

    .line 446
    iput v2, p0, Lcom/htc/calendar/CalendarView;->mTouchMode:I

    .line 456
    iput v2, p0, Lcom/htc/calendar/CalendarView;->mSelectionMode:I

    .line 458
    iput-boolean v2, p0, Lcom/htc/calendar/CalendarView;->mScrolling:Z

    .line 1616
    new-instance v0, Lcom/htc/calendar/CalendarView$2;

    invoke-direct {v0, p0}, Lcom/htc/calendar/CalendarView$2;-><init>(Lcom/htc/calendar/CalendarView;)V

    iput-object v0, p0, Lcom/htc/calendar/CalendarView;->mCancelCallback:Ljava/lang/Runnable;

    .line 3325
    const-string v0, "[\t\n],"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/CalendarView;->drawTextSanitizerFilter:Ljava/util/regex/Pattern;

    .line 4603
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/calendar/CalendarView;->mOffsetY:I

    .line 4606
    iput v2, p0, Lcom/htc/calendar/CalendarView;->mMoveMode:I

    .line 4610
    iput v6, p0, Lcom/htc/calendar/CalendarView;->draw_event_drawable_1_all_day_padding_right:I

    .line 4611
    iput v6, p0, Lcom/htc/calendar/CalendarView;->draw_event_drawable_7_all_day_padding_right:I

    .line 4755
    new-instance v0, Lcom/htc/calendar/CalendarView$4;

    invoke-direct {v0, p0}, Lcom/htc/calendar/CalendarView$4;-><init>(Lcom/htc/calendar/CalendarView;)V

    iput-object v0, p0, Lcom/htc/calendar/CalendarView;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 4807
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/CalendarView;->mPreviewEvent:Ljava/util/ArrayList;

    .line 4808
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/CalendarView;->mProcessedGroup:Ljava/util/ArrayList;

    .line 4809
    iput-boolean v2, p0, Lcom/htc/calendar/CalendarView;->mProcessedMeetingConflict:Z

    .line 5635
    new-instance v0, Lcom/htc/calendar/CalendarView$5;

    invoke-direct {v0, p0}, Lcom/htc/calendar/CalendarView$5;-><init>(Lcom/htc/calendar/CalendarView;)V

    iput-object v0, p0, Lcom/htc/calendar/CalendarView;->mUpdateUIFromBackgroundHandler:Ljava/lang/Runnable;

    .line 5689
    iput v3, p0, Lcom/htc/calendar/CalendarView;->mStartingSpanY:F

    .line 5693
    iput v3, p0, Lcom/htc/calendar/CalendarView;->mGestureCenterHour:F

    .line 5699
    iput-boolean v4, p0, Lcom/htc/calendar/CalendarView;->mHandleActionUp:Z

    .line 5711
    iput-boolean v2, p0, Lcom/htc/calendar/CalendarView;->mStartingScroll:Z

    .line 5713
    iput-boolean v2, p0, Lcom/htc/calendar/CalendarView;->mTouchStartedInAlldayArea:Z

    .line 473
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x205013a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/htc/calendar/CalendarView;->NORMAL_FONT_SIZE:I

    .line 474
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x205003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/htc/calendar/CalendarView;->EVENT_TEXT_FONT_SIZE:I

    .line 475
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/htc/calendar/CalendarView;->HOURS_FONT_SIZE:I

    .line 476
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x205003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/htc/calendar/CalendarView;->AMPM_FONT_SIZE:I

    .line 477
    sget v0, Lcom/htc/calendar/CalendarView;->mScale:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    .line 478
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/htc/calendar/CalendarView;->mScale:F

    .line 479
    sget v0, Lcom/htc/calendar/CalendarView;->mScale:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_0

    .line 486
    sget v0, Lcom/htc/calendar/CalendarView;->NORMAL_FONT_SIZE:I

    int-to-float v0, v0

    sget v1, Lcom/htc/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/htc/calendar/CalendarView;->NORMAL_FONT_SIZE:I

    .line 487
    sget v0, Lcom/htc/calendar/CalendarView;->EVENT_TEXT_FONT_SIZE:I

    int-to-float v0, v0

    sget v1, Lcom/htc/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/htc/calendar/CalendarView;->EVENT_TEXT_FONT_SIZE:I

    .line 488
    sget v0, Lcom/htc/calendar/CalendarView;->HOURS_FONT_SIZE:I

    int-to-float v0, v0

    sget v1, Lcom/htc/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/htc/calendar/CalendarView;->HOURS_FONT_SIZE:I

    .line 489
    sget v0, Lcom/htc/calendar/CalendarView;->AMPM_FONT_SIZE:I

    int-to-float v0, v0

    sget v1, Lcom/htc/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/htc/calendar/CalendarView;->AMPM_FONT_SIZE:I

    .line 490
    sget v0, Lcom/htc/calendar/CalendarView;->MIN_CELL_WIDTH_FOR_TEXT:I

    int-to-float v0, v0

    sget v1, Lcom/htc/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/htc/calendar/CalendarView;->MIN_CELL_WIDTH_FOR_TEXT:I

    .line 491
    sget v0, Lcom/htc/calendar/CalendarView;->MIN_EVENT_HEIGHT:F

    sget v1, Lcom/htc/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    sput v0, Lcom/htc/calendar/CalendarView;->MIN_EVENT_HEIGHT:F

    .line 493
    sget v0, Lcom/htc/calendar/CalendarView;->HORIZONTAL_SCROLL_THRESHOLD:I

    int-to-float v0, v0

    sget v1, Lcom/htc/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/htc/calendar/CalendarView;->HORIZONTAL_SCROLL_THRESHOLD:I

    .line 495
    sget v0, Lcom/htc/calendar/CalendarView;->CURRENT_TIME_MARKER_HEIGHT:I

    int-to-float v0, v0

    sget v1, Lcom/htc/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/htc/calendar/CalendarView;->CURRENT_TIME_MARKER_HEIGHT:I

    .line 496
    sget v0, Lcom/htc/calendar/CalendarView;->CURRENT_TIME_MARKER_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/htc/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/htc/calendar/CalendarView;->CURRENT_TIME_MARKER_WIDTH:I

    .line 497
    sget v0, Lcom/htc/calendar/CalendarView;->CURRENT_TIME_LINE_HEIGHT:I

    int-to-float v0, v0

    sget v1, Lcom/htc/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/htc/calendar/CalendarView;->CURRENT_TIME_LINE_HEIGHT:I

    .line 498
    sget v0, Lcom/htc/calendar/CalendarView;->CURRENT_TIME_LINE_BORDER_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/htc/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/htc/calendar/CalendarView;->CURRENT_TIME_LINE_BORDER_WIDTH:I

    .line 499
    sget v0, Lcom/htc/calendar/CalendarView;->CURRENT_TIME_MARKER_INNER_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/htc/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/htc/calendar/CalendarView;->CURRENT_TIME_MARKER_INNER_WIDTH:I

    .line 500
    sget v0, Lcom/htc/calendar/CalendarView;->CURRENT_TIME_LINE_SIDE_BUFFER:I

    int-to-float v0, v0

    sget v1, Lcom/htc/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/htc/calendar/CalendarView;->CURRENT_TIME_LINE_SIDE_BUFFER:I

    .line 502
    sget v0, Lcom/htc/calendar/CalendarView;->SMALL_ROUND_RADIUS:F

    sget v1, Lcom/htc/calendar/CalendarView;->mScale:F

    mul-float/2addr v0, v1

    sput v0, Lcom/htc/calendar/CalendarView;->SMALL_ROUND_RADIUS:F

    .line 506
    :cond_0
    invoke-virtual {p1}, Lcom/htc/calendar/CalendarActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    .line 507
    iget-object v0, p1, Lcom/htc/calendar/CalendarActivity;->mEventLoader:Lcom/htc/calendar/EventLoader;

    iput-object v0, p0, Lcom/htc/calendar/CalendarView;->mEventLoader:Lcom/htc/calendar/EventLoader;

    .line 508
    new-instance v0, Lcom/htc/calendar/EventGeometry;

    invoke-direct {v0}, Lcom/htc/calendar/EventGeometry;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/CalendarView;->mEventGeometry:Lcom/htc/calendar/EventGeometry;

    .line 509
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mEventGeometry:Lcom/htc/calendar/EventGeometry;

    sget v1, Lcom/htc/calendar/CalendarView;->MIN_EVENT_HEIGHT:F

    invoke-virtual {v0, v1}, Lcom/htc/calendar/EventGeometry;->setMinEventHeight(F)V

    .line 510
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mEventGeometry:Lcom/htc/calendar/EventGeometry;

    invoke-virtual {v0, v5}, Lcom/htc/calendar/EventGeometry;->setHourGap(F)V

    .line 511
    iput-object p1, p0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    .line 512
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    invoke-virtual {v0}, Lcom/htc/calendar/CalendarActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/CalendarApplication;

    iput-object v0, p0, Lcom/htc/calendar/CalendarView;->mCalendarApp:Lcom/htc/calendar/CalendarApplication;

    .line 513
    new-instance v0, Lcom/htc/calendar/DeleteEventHelper;

    invoke-direct {v0, p1, v2}, Lcom/htc/calendar/DeleteEventHelper;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcom/htc/calendar/CalendarView;->mDeleteEventHelper:Lcom/htc/calendar/DeleteEventHelper;

    .line 514
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/calendar/CalendarView;->mLastPopupEventID:J

    .line 515
    new-instance v0, Lcom/htc/calendar/CalendarView$UpdateCurrentTime;

    invoke-direct {v0, p0}, Lcom/htc/calendar/CalendarView$UpdateCurrentTime;-><init>(Lcom/htc/calendar/CalendarView;)V

    iput-object v0, p0, Lcom/htc/calendar/CalendarView;->mUpdateCurrentTime:Lcom/htc/calendar/CalendarView$UpdateCurrentTime;

    .line 516
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/htc/calendar/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/htc/calendar/CalendarView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 517
    invoke-virtual {p1}, Lcom/htc/calendar/CalendarActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/calendar/CalendarView;->init(Landroid/content/Context;)V

    .line 518
    return-void
.end method

.method static synthetic access$000(Lcom/htc/calendar/CalendarView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/calendar/CalendarView;)Landroid/text/format/Time;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mCurrentTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/calendar/CalendarView;)Lcom/htc/calendar/Event;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/htc/calendar/CalendarView;Lcom/htc/calendar/Event;)Lcom/htc/calendar/Event;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/htc/calendar/CalendarView;Lcom/htc/calendar/Event;)Lcom/htc/calendar/Event;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/htc/calendar/CalendarView;->mPrevSelectedEvent:Lcom/htc/calendar/Event;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/htc/calendar/CalendarView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/calendar/CalendarView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/htc/calendar/CalendarView;->recalc()V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/calendar/CalendarView;)Lcom/htc/calendar/DeleteEventHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mDeleteEventHelper:Lcom/htc/calendar/DeleteEventHelper;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/calendar/CalendarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mViewStartY:I

    return v0
.end method

.method static synthetic access$1602(Lcom/htc/calendar/CalendarView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput p1, p0, Lcom/htc/calendar/CalendarView;->mViewStartY:I

    return p1
.end method

.method static synthetic access$1612(Lcom/htc/calendar/CalendarView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mViewStartY:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/htc/calendar/CalendarView;->mViewStartY:I

    return v0
.end method

.method static synthetic access$1620(Lcom/htc/calendar/CalendarView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mViewStartY:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/htc/calendar/CalendarView;->mViewStartY:I

    return v0
.end method

.method static synthetic access$1700(Lcom/htc/calendar/CalendarView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mMaxViewStartY:I

    return v0
.end method

.method static synthetic access$1800(Lcom/htc/calendar/CalendarView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/htc/calendar/CalendarView;->computeFirstHour()V

    return-void
.end method

.method static synthetic access$1902(Lcom/htc/calendar/CalendarView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/htc/calendar/CalendarView;->mScrolling:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/htc/calendar/CalendarView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/htc/calendar/CalendarView;->resetSelectedHour()V

    return-void
.end method

.method static synthetic access$202(Lcom/htc/calendar/CalendarView;Ljava/util/TimeZone;)Ljava/util/TimeZone;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/htc/calendar/CalendarView;->mTimeZone:Ljava/util/TimeZone;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/htc/calendar/CalendarView;)Landroid/widget/PopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/htc/calendar/CalendarView;)Lcom/htc/calendar/CalendarView$UpdateCurrentTime;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mUpdateCurrentTime:Lcom/htc/calendar/CalendarView$UpdateCurrentTime;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/htc/calendar/CalendarView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput p1, p0, Lcom/htc/calendar/CalendarView;->mTodayJulianDay:I

    return p1
.end method

.method static synthetic access$2400(Lcom/htc/calendar/CalendarView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mDateRange:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/calendar/CalendarView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/htc/calendar/CalendarView;->setHtcTitle(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/calendar/CalendarView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mUpdateUIFromBackgroundHandler:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$602(Lcom/htc/calendar/CalendarView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/htc/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$702(Lcom/htc/calendar/CalendarView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/htc/calendar/CalendarView;->mRemeasure:Z

    return p1
.end method

.method static synthetic access$802(Lcom/htc/calendar/CalendarView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/htc/calendar/CalendarView;->mRedrawScreen:Z

    return p1
.end method

.method static synthetic access$902(Lcom/htc/calendar/CalendarView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 110
    iput-boolean p1, p0, Lcom/htc/calendar/CalendarView;->mComputeSelectedEvents:Z

    return p1
.end method

.method private adjuestPosition(IF)I
    .locals 1
    .parameter "position"
    .parameter "adjust"

    .prologue
    .line 4686
    float-to-int v0, p2

    add-int/2addr v0, p1

    return v0
.end method

.method private adjustHourSelection()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v2, 0x17

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1556
    iget v1, p0, Lcom/htc/calendar/CalendarView;->mSelectionHour:I

    if-gez v1, :cond_1

    .line 1557
    iput v3, p0, Lcom/htc/calendar/CalendarView;->mSelectionHour:I

    .line 1558
    iget v1, p0, Lcom/htc/calendar/CalendarView;->mMaxAllDayEvents:I

    if-gtz v1, :cond_0

    invoke-direct {p0}, Lcom/htc/calendar/CalendarView;->isDrawPreviewAllDayEvent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1559
    :cond_0
    iput-object v5, p0, Lcom/htc/calendar/CalendarView;->mPrevSelectedEvent:Lcom/htc/calendar/Event;

    .line 1560
    iput-boolean v4, p0, Lcom/htc/calendar/CalendarView;->mSelectionAllDay:Z

    .line 1564
    :cond_1
    iget v1, p0, Lcom/htc/calendar/CalendarView;->mSelectionHour:I

    if-le v1, v2, :cond_2

    .line 1565
    iput v2, p0, Lcom/htc/calendar/CalendarView;->mSelectionHour:I

    .line 1570
    :cond_2
    iget v1, p0, Lcom/htc/calendar/CalendarView;->mSelectionHour:I

    iget v2, p0, Lcom/htc/calendar/CalendarView;->mFirstHour:I

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_6

    .line 1578
    iget v1, p0, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    iget v2, p0, Lcom/htc/calendar/CalendarView;->mFirstJulianDay:I

    sub-int v0, v1, v2

    .line 1579
    .local v0, daynum:I
    iget v1, p0, Lcom/htc/calendar/CalendarView;->mMaxAllDayEvents:I

    if-gtz v1, :cond_3

    invoke-direct {p0}, Lcom/htc/calendar/CalendarView;->isDrawPreviewAllDayEvent()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    iget-object v1, p0, Lcom/htc/calendar/CalendarView;->mEarliestStartHour:[I

    aget v1, v1, v0

    iget v2, p0, Lcom/htc/calendar/CalendarView;->mSelectionHour:I

    if-le v1, v2, :cond_5

    iget v1, p0, Lcom/htc/calendar/CalendarView;->mFirstHour:I

    if-lez v1, :cond_5

    iget v1, p0, Lcom/htc/calendar/CalendarView;->mFirstHour:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_5

    .line 1582
    iput-object v5, p0, Lcom/htc/calendar/CalendarView;->mPrevSelectedEvent:Lcom/htc/calendar/Event;

    .line 1583
    iput-boolean v4, p0, Lcom/htc/calendar/CalendarView;->mSelectionAllDay:Z

    .line 1584
    iget v1, p0, Lcom/htc/calendar/CalendarView;->mFirstHour:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/calendar/CalendarView;->mSelectionHour:I

    .line 1610
    .end local v0           #daynum:I
    :cond_4
    :goto_0
    return-void

    .line 1588
    .restart local v0       #daynum:I
    :cond_5
    iget v1, p0, Lcom/htc/calendar/CalendarView;->mFirstHour:I

    if-lez v1, :cond_6

    .line 1589
    iget v1, p0, Lcom/htc/calendar/CalendarView;->mFirstHour:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/htc/calendar/CalendarView;->mFirstHour:I

    .line 1590
    iget v1, p0, Lcom/htc/calendar/CalendarView;->mViewStartY:I

    sget v2, Lcom/htc/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/htc/calendar/CalendarView;->mViewStartY:I

    .line 1591
    iget v1, p0, Lcom/htc/calendar/CalendarView;->mViewStartY:I

    if-gez v1, :cond_4

    .line 1592
    iput v3, p0, Lcom/htc/calendar/CalendarView;->mViewStartY:I

    goto :goto_0

    .line 1598
    .end local v0           #daynum:I
    :cond_6
    iget v1, p0, Lcom/htc/calendar/CalendarView;->mSelectionHour:I

    iget v2, p0, Lcom/htc/calendar/CalendarView;->mFirstHour:I

    iget v3, p0, Lcom/htc/calendar/CalendarView;->mNumHours:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x3

    if-le v1, v2, :cond_4

    .line 1599
    iget v1, p0, Lcom/htc/calendar/CalendarView;->mFirstHour:I

    iget v2, p0, Lcom/htc/calendar/CalendarView;->mNumHours:I

    rsub-int/lit8 v2, v2, 0x18

    if-ge v1, v2, :cond_7

    .line 1600
    iget v1, p0, Lcom/htc/calendar/CalendarView;->mFirstHour:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/htc/calendar/CalendarView;->mFirstHour:I

    .line 1601
    iget v1, p0, Lcom/htc/calendar/CalendarView;->mViewStartY:I

    sget v2, Lcom/htc/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/htc/calendar/CalendarView;->mViewStartY:I

    .line 1602
    iget v1, p0, Lcom/htc/calendar/CalendarView;->mViewStartY:I

    iget v2, p0, Lcom/htc/calendar/CalendarView;->mBitmapHeight:I

    iget v3, p0, Lcom/htc/calendar/CalendarView;->mGridAreaHeight:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_4

    .line 1603
    iget v1, p0, Lcom/htc/calendar/CalendarView;->mBitmapHeight:I

    iget v2, p0, Lcom/htc/calendar/CalendarView;->mGridAreaHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/htc/calendar/CalendarView;->mViewStartY:I

    goto :goto_0

    .line 1606
    :cond_7
    iget v1, p0, Lcom/htc/calendar/CalendarView;->mFirstHour:I

    iget v2, p0, Lcom/htc/calendar/CalendarView;->mNumHours:I

    rsub-int/lit8 v2, v2, 0x18

    if-ne v1, v2, :cond_4

    iget v1, p0, Lcom/htc/calendar/CalendarView;->mFirstHourOffset:I

    if-lez v1, :cond_4

    .line 1607
    iget v1, p0, Lcom/htc/calendar/CalendarView;->mBitmapHeight:I

    iget v2, p0, Lcom/htc/calendar/CalendarView;->mGridAreaHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/htc/calendar/CalendarView;->mViewStartY:I

    goto :goto_0
.end method

.method private checkFirstHour()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 940
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mViewStartY:I

    if-gtz v0, :cond_0

    .line 941
    iput v1, p0, Lcom/htc/calendar/CalendarView;->mViewStartY:I

    .line 942
    iput v1, p0, Lcom/htc/calendar/CalendarView;->mFirstHour:I

    .line 943
    iput v1, p0, Lcom/htc/calendar/CalendarView;->mFirstHourOffset:I

    .line 946
    :cond_0
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mViewStartY:I

    iget v1, p0, Lcom/htc/calendar/CalendarView;->mMaxViewStartY:I

    if-le v0, v1, :cond_1

    .line 947
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mMaxViewStartY:I

    iput v0, p0, Lcom/htc/calendar/CalendarView;->mViewStartY:I

    .line 948
    invoke-direct {p0}, Lcom/htc/calendar/CalendarView;->computeFirstHour()V

    .line 953
    :cond_1
    return-void
.end method

.method private checkMeetingConflict(Lcom/htc/calendar/Event;)V
    .locals 12
    .parameter "combinedEvent"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 5580
    iget-object v6, p0, Lcom/htc/calendar/CalendarView;->mPreviewEvent:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_0

    .line 5581
    const-string v6, "CalendarView"

    const-string v7, "It no have any preview event."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5617
    :goto_0
    return-void

    .line 5585
    :cond_0
    iget-boolean v6, p0, Lcom/htc/calendar/CalendarView;->mProcessedMeetingConflict:Z

    if-eqz v6, :cond_1

    .line 5586
    const-string v6, "CalendarView"

    const-string v7, "It already check before, so skip it."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5590
    :cond_1
    iget-object v6, p0, Lcom/htc/calendar/CalendarView;->mPreviewEvent:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/calendar/Event;

    .line 5592
    .local v3, previewEvent:Lcom/htc/calendar/Event;
    const/4 v0, 0x1

    .line 5594
    .local v0, conflict:Z
    iget-wide v6, v3, Lcom/htc/calendar/Event;->endMillis:J

    iget-wide v8, p1, Lcom/htc/calendar/Event;->startMillis:J

    cmp-long v6, v6, v8

    if-ltz v6, :cond_2

    iget-wide v6, v3, Lcom/htc/calendar/Event;->startMillis:J

    iget-wide v8, p1, Lcom/htc/calendar/Event;->endMillis:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    .line 5596
    :cond_2
    const/4 v0, 0x0

    .line 5598
    :cond_3
    iput-boolean v11, p0, Lcom/htc/calendar/CalendarView;->mProcessedMeetingConflict:Z

    .line 5599
    const-string v6, "CalendarView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "conflict:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5600
    if-eqz v0, :cond_5

    .line 5601
    invoke-direct {p0, v11}, Lcom/htc/calendar/CalendarView;->setMeetingConflictArea(Z)V

    .line 5604
    const/4 v2, 0x1

    .line 5605
    .local v2, flags:I
    iget-object v6, p0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    invoke-static {v6}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 5606
    or-int/lit16 v2, v2, 0x80

    .line 5608
    :cond_4
    iget-object v6, p0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    iget-wide v7, p1, Lcom/htc/calendar/Event;->startMillis:J

    invoke-static {v6, v7, v8, v2}, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    .line 5609
    .local v4, start:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    iget-wide v7, p1, Lcom/htc/calendar/Event;->endMillis:J

    invoke-static {v6, v7, v8, v2}, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 5610
    .local v1, end:Ljava/lang/String;
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "%s: %s-%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    sget-object v9, Lcom/htc/calendar/CalendarView;->mMeetingConflict:Ljava/lang/String;

    aput-object v9, v8, v10

    aput-object v4, v8, v11

    const/4 v9, 0x2

    aput-object v1, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 5611
    .local v5, text_start_end:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    const v7, 0x7f0d0044

    invoke-virtual {v6, v7}, Lcom/htc/calendar/CalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5612
    const-string v6, "CalendarView"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "text_start_end: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5614
    .end local v1           #end:Ljava/lang/String;
    .end local v2           #flags:I
    .end local v4           #start:Ljava/lang/String;
    .end local v5           #text_start_end:Ljava/lang/String;
    :cond_5
    invoke-direct {p0, v10}, Lcom/htc/calendar/CalendarView;->setMeetingConflictArea(Z)V

    .line 5615
    iput-boolean v10, p0, Lcom/htc/calendar/CalendarView;->mProcessedMeetingConflict:Z

    goto/16 :goto_0
.end method

.method private checkProcessed(I)Z
    .locals 3
    .parameter "group"

    .prologue
    .line 5155
    iget-object v2, p0, Lcom/htc/calendar/CalendarView;->mProcessedGroup:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 5156
    .local v1, ii:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 5157
    const/4 v2, 0x1

    .line 5160
    .end local v1           #ii:Ljava/lang/Integer;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private computeAllDayNeighbors()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 2742
    iget-object v11, p0, Lcom/htc/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2743
    .local v3, len:I
    if-eqz v3, :cond_0

    iget-object v11, p0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    if-eqz v11, :cond_1

    .line 2797
    :cond_0
    :goto_0
    return-void

    .line 2748
    :cond_1
    const/4 v1, 0x0

    .local v1, ii:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 2749
    iget-object v11, p0, Lcom/htc/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/Event;

    .line 2750
    .local v0, ev:Lcom/htc/calendar/Event;
    iput-object v12, v0, Lcom/htc/calendar/Event;->nextUp:Lcom/htc/calendar/Event;

    .line 2751
    iput-object v12, v0, Lcom/htc/calendar/Event;->nextDown:Lcom/htc/calendar/Event;

    .line 2752
    iput-object v12, v0, Lcom/htc/calendar/Event;->nextLeft:Lcom/htc/calendar/Event;

    .line 2753
    iput-object v12, v0, Lcom/htc/calendar/Event;->nextRight:Lcom/htc/calendar/Event;

    .line 2748
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2763
    .end local v0           #ev:Lcom/htc/calendar/Event;
    :cond_2
    const/4 v10, -0x1

    .line 2764
    .local v10, startPosition:I
    iget-object v11, p0, Lcom/htc/calendar/CalendarView;->mPrevSelectedEvent:Lcom/htc/calendar/Event;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/htc/calendar/CalendarView;->mPrevSelectedEvent:Lcom/htc/calendar/Event;

    iget-boolean v11, v11, Lcom/htc/calendar/Event;->allDay:Z

    if-eqz v11, :cond_3

    .line 2765
    iget-object v11, p0, Lcom/htc/calendar/CalendarView;->mPrevSelectedEvent:Lcom/htc/calendar/Event;

    invoke-virtual {v11}, Lcom/htc/calendar/Event;->getColumn()I

    move-result v10

    .line 2767
    :cond_3
    const/4 v4, -0x1

    .line 2768
    .local v4, maxPosition:I
    const/4 v9, 0x0

    .line 2769
    .local v9, startEvent:Lcom/htc/calendar/Event;
    const/4 v5, 0x0

    .line 2770
    .local v5, maxPositionEvent:Lcom/htc/calendar/Event;
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_a

    .line 2771
    iget-object v11, p0, Lcom/htc/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/Event;

    .line 2772
    .restart local v0       #ev:Lcom/htc/calendar/Event;
    invoke-virtual {v0}, Lcom/htc/calendar/Event;->getColumn()I

    move-result v8

    .line 2773
    .local v8, position:I
    if-ne v8, v10, :cond_6

    .line 2774
    move-object v9, v0

    .line 2779
    :cond_4
    :goto_3
    const/4 v2, 0x0

    .local v2, jj:I
    :goto_4
    if-ge v2, v3, :cond_9

    .line 2780
    if-ne v2, v1, :cond_7

    .line 2779
    :cond_5
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2775
    .end local v2           #jj:I
    :cond_6
    if-le v8, v4, :cond_4

    .line 2776
    move-object v5, v0

    .line 2777
    move v4, v8

    goto :goto_3

    .line 2783
    .restart local v2       #jj:I
    :cond_7
    iget-object v11, p0, Lcom/htc/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/calendar/Event;

    .line 2784
    .local v6, neighbor:Lcom/htc/calendar/Event;
    invoke-virtual {v6}, Lcom/htc/calendar/Event;->getColumn()I

    move-result v7

    .line 2785
    .local v7, neighborPosition:I
    add-int/lit8 v11, v8, -0x1

    if-ne v7, v11, :cond_8

    .line 2786
    iput-object v6, v0, Lcom/htc/calendar/Event;->nextUp:Lcom/htc/calendar/Event;

    goto :goto_5

    .line 2787
    :cond_8
    add-int/lit8 v11, v8, 0x1

    if-ne v7, v11, :cond_5

    .line 2788
    iput-object v6, v0, Lcom/htc/calendar/Event;->nextDown:Lcom/htc/calendar/Event;

    goto :goto_5

    .line 2770
    .end local v6           #neighbor:Lcom/htc/calendar/Event;
    .end local v7           #neighborPosition:I
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2792
    .end local v0           #ev:Lcom/htc/calendar/Event;
    .end local v2           #jj:I
    .end local v8           #position:I
    :cond_a
    if-eqz v9, :cond_b

    .line 2793
    iput-object v9, p0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    goto :goto_0

    .line 2795
    :cond_b
    iput-object v5, p0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    goto :goto_0
.end method

.method private computeFirstHour()V
    .locals 2

    .prologue
    .line 1551
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mViewStartY:I

    sget v1, Lcom/htc/calendar/CalendarView;->mCellHeight:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, -0x1

    sget v1, Lcom/htc/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    div-int/2addr v0, v1

    iput v0, p0, Lcom/htc/calendar/CalendarView;->mFirstHour:I

    .line 1552
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mFirstHour:I

    sget v1, Lcom/htc/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/htc/calendar/CalendarView;->mViewStartY:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/calendar/CalendarView;->mFirstHourOffset:I

    .line 1553
    return-void
.end method

.method private computeMaxStringWidth(I[Ljava/lang/String;Landroid/graphics/Paint;)I
    .locals 9
    .parameter "currentMax"
    .parameter "strings"
    .parameter "p"

    .prologue
    .line 2483
    const/4 v3, 0x0

    .line 2485
    .local v3, maxWidthF:F
    array-length v1, p2

    .line 2486
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2487
    aget-object v5, p2, v0

    invoke-virtual {p3, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 2488
    .local v4, width:F
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 2486
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2490
    .end local v4           #width:F
    :cond_0
    float-to-double v5, v3

    const-wide/high16 v7, 0x3fe0

    add-double/2addr v5, v7

    double-to-int v2, v5

    .line 2491
    .local v2, maxWidth:I
    if-ge v2, p1, :cond_1

    .line 2492
    move v2, p1

    .line 2494
    :cond_1
    return v2
.end method

.method private computeNeighbors()V
    .locals 45

    .prologue
    .line 2947
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    invoke-virtual/range {v43 .. v43}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 2948
    .local v20, len:I
    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    move-object/from16 v43, v0

    if-eqz v43, :cond_1

    .line 3229
    :cond_0
    :goto_0
    return-void

    .line 2953
    :cond_1
    const/4 v15, 0x0

    .local v15, ii:I
    :goto_1
    move/from16 v0, v20

    if-ge v15, v0, :cond_2

    .line 2954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/calendar/Event;

    .line 2955
    .local v14, ev:Lcom/htc/calendar/Event;
    const/16 v43, 0x0

    move-object/from16 v0, v43

    iput-object v0, v14, Lcom/htc/calendar/Event;->nextUp:Lcom/htc/calendar/Event;

    .line 2956
    const/16 v43, 0x0

    move-object/from16 v0, v43

    iput-object v0, v14, Lcom/htc/calendar/Event;->nextDown:Lcom/htc/calendar/Event;

    .line 2957
    const/16 v43, 0x0

    move-object/from16 v0, v43

    iput-object v0, v14, Lcom/htc/calendar/Event;->nextLeft:Lcom/htc/calendar/Event;

    .line 2958
    const/16 v43, 0x0

    move-object/from16 v0, v43

    iput-object v0, v14, Lcom/htc/calendar/Event;->nextRight:Lcom/htc/calendar/Event;

    .line 2953
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 2961
    .end local v14           #ev:Lcom/htc/calendar/Event;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    invoke-virtual/range {v43 .. v44}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/htc/calendar/Event;

    .line 2962
    .local v36, startEvent:Lcom/htc/calendar/Event;
    const v37, 0x186a0

    .line 2963
    .local v37, startEventDistance1:I
    const v38, 0x186a0

    .line 2964
    .local v38, startEventDistance2:I
    const/16 v30, 0x0

    .line 2969
    .local v30, prevLocation:I
    const/16 v28, 0x0

    .line 2970
    .local v28, prevCenter:I
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->getCurrentSelectionPosition()Landroid/graphics/Rect;

    move-result-object v3

    .line 2971
    .local v3, box:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mPrevSelectedEvent:Lcom/htc/calendar/Event;

    move-object/from16 v43, v0

    if-eqz v43, :cond_f

    .line 2972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mPrevSelectedEvent:Lcom/htc/calendar/Event;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/htc/calendar/Event;->top:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v32, v0

    .line 2973
    .local v32, prevTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mPrevSelectedEvent:Lcom/htc/calendar/Event;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/htc/calendar/Event;->bottom:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v27, v0

    .line 2974
    .local v27, prevBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mPrevSelectedEvent:Lcom/htc/calendar/Event;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/htc/calendar/Event;->left:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v29, v0

    .line 2975
    .local v29, prevLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mPrevSelectedEvent:Lcom/htc/calendar/Event;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Lcom/htc/calendar/Event;->right:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v31, v0

    .line 2979
    .local v31, prevRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v43, v0

    move/from16 v0, v32

    move/from16 v1, v43

    if-ge v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v43, v0

    move/from16 v0, v27

    move/from16 v1, v43

    if-le v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v43, v0

    move/from16 v0, v31

    move/from16 v1, v43

    if-le v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v43, v0

    move/from16 v0, v29

    move/from16 v1, v43

    if-lt v0, v1, :cond_d

    .line 2981
    :cond_3
    const/16 v43, 0x0

    move-object/from16 v0, v43

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/calendar/CalendarView;->mPrevSelectedEvent:Lcom/htc/calendar/Event;

    .line 2982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    .line 2983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    .line 2984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    .line 2985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    .line 3004
    :cond_4
    :goto_2
    iget v0, v3, Landroid/graphics/Rect;->right:I

    move/from16 v43, v0

    move/from16 v0, v29

    move/from16 v1, v43

    if-lt v0, v1, :cond_10

    .line 3006
    const/16 v30, 0x8

    .line 3007
    add-int v43, v32, v27

    div-int/lit8 v28, v43, 0x2

    .line 3025
    :cond_5
    :goto_3
    const/4 v15, 0x0

    :goto_4
    move/from16 v0, v20

    if-ge v15, v0, :cond_32

    .line 3026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/calendar/Event;

    .line 3028
    .restart local v14       #ev:Lcom/htc/calendar/Event;
    iget v0, v14, Lcom/htc/calendar/Event;->startTime:I

    move/from16 v39, v0

    .line 3029
    .local v39, startTime:I
    iget v13, v14, Lcom/htc/calendar/Event;->endTime:I

    .line 3030
    .local v13, endTime:I
    iget v0, v14, Lcom/htc/calendar/Event;->left:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v17, v0

    .line 3031
    .local v17, left:I
    iget v0, v14, Lcom/htc/calendar/Event;->right:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v33, v0

    .line 3032
    .local v33, right:I
    iget v0, v14, Lcom/htc/calendar/Event;->top:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v40, v0

    .line 3033
    .local v40, top:I
    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v43, v0

    move/from16 v0, v40

    move/from16 v1, v43

    if-ge v0, v1, :cond_6

    .line 3034
    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v40, v0

    .line 3036
    :cond_6
    iget v0, v14, Lcom/htc/calendar/Event;->bottom:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v2, v0

    .line 3037
    .local v2, bottom:I
    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    move/from16 v43, v0

    move/from16 v0, v43

    if-le v2, v0, :cond_7

    .line 3038
    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    .line 3051
    :cond_7
    const/16 v41, 0x2710

    .line 3052
    .local v41, upDistanceMin:I
    const/16 v11, 0x2710

    .line 3053
    .local v11, downDistanceMin:I
    const/16 v18, 0x2710

    .line 3054
    .local v18, leftDistanceMin:I
    const/16 v34, 0x2710

    .line 3055
    .local v34, rightDistanceMin:I
    const/16 v42, 0x0

    .line 3056
    .local v42, upEvent:Lcom/htc/calendar/Event;
    const/4 v12, 0x0

    .line 3057
    .local v12, downEvent:Lcom/htc/calendar/Event;
    const/16 v19, 0x0

    .line 3058
    .local v19, leftEvent:Lcom/htc/calendar/Event;
    const/16 v35, 0x0

    .line 3062
    .local v35, rightEvent:Lcom/htc/calendar/Event;
    const/4 v9, 0x0

    .line 3063
    .local v9, distance1:I
    const/4 v10, 0x0

    .line 3064
    .local v10, distance2:I
    const/16 v43, 0x1

    move/from16 v0, v30

    move/from16 v1, v43

    if-ne v0, v1, :cond_14

    .line 3065
    move/from16 v0, v17

    move/from16 v1, v28

    if-lt v0, v1, :cond_13

    .line 3066
    sub-int v9, v17, v28

    .line 3070
    :cond_8
    :goto_5
    sub-int v10, v40, v27

    .line 3093
    :cond_9
    :goto_6
    move/from16 v0, v37

    if-lt v9, v0, :cond_a

    move/from16 v0, v37

    if-ne v9, v0, :cond_b

    move/from16 v0, v38

    if-ge v10, v0, :cond_b

    .line 3095
    :cond_a
    move-object/from16 v36, v14

    .line 3096
    move/from16 v37, v9

    .line 3097
    move/from16 v38, v10

    .line 3102
    :cond_b
    const/16 v16, 0x0

    .local v16, jj:I
    :goto_7
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_31

    .line 3103
    move/from16 v0, v16

    if-ne v0, v15, :cond_1d

    .line 3102
    :cond_c
    :goto_8
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 2988
    .end local v2           #bottom:I
    .end local v9           #distance1:I
    .end local v10           #distance2:I
    .end local v11           #downDistanceMin:I
    .end local v12           #downEvent:Lcom/htc/calendar/Event;
    .end local v13           #endTime:I
    .end local v14           #ev:Lcom/htc/calendar/Event;
    .end local v16           #jj:I
    .end local v17           #left:I
    .end local v18           #leftDistanceMin:I
    .end local v19           #leftEvent:Lcom/htc/calendar/Event;
    .end local v33           #right:I
    .end local v34           #rightDistanceMin:I
    .end local v35           #rightEvent:Lcom/htc/calendar/Event;
    .end local v39           #startTime:I
    .end local v40           #top:I
    .end local v41           #upDistanceMin:I
    .end local v42           #upEvent:Lcom/htc/calendar/Event;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v43, v0

    move/from16 v0, v32

    move/from16 v1, v43

    if-ge v0, v1, :cond_e

    .line 2989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    .line 2991
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v43, v0

    move/from16 v0, v27

    move/from16 v1, v43

    if-le v0, v1, :cond_4

    .line 2992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    goto/16 :goto_2

    .line 2997
    .end local v27           #prevBottom:I
    .end local v29           #prevLeft:I
    .end local v31           #prevRight:I
    .end local v32           #prevTop:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    .line 2998
    .restart local v32       #prevTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v27, v0

    .line 2999
    .restart local v27       #prevBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    .line 3000
    .restart local v29       #prevLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    .restart local v31       #prevRight:I
    goto/16 :goto_2

    .line 3008
    :cond_10
    iget v0, v3, Landroid/graphics/Rect;->left:I

    move/from16 v43, v0

    move/from16 v0, v31

    move/from16 v1, v43

    if-gt v0, v1, :cond_11

    .line 3010
    const/16 v30, 0x4

    .line 3011
    add-int v43, v32, v27

    div-int/lit8 v28, v43, 0x2

    goto/16 :goto_3

    .line 3012
    :cond_11
    iget v0, v3, Landroid/graphics/Rect;->top:I

    move/from16 v43, v0

    move/from16 v0, v27

    move/from16 v1, v43

    if-gt v0, v1, :cond_12

    .line 3014
    const/16 v30, 0x1

    .line 3015
    add-int v43, v29, v31

    div-int/lit8 v28, v43, 0x2

    goto/16 :goto_3

    .line 3016
    :cond_12
    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    move/from16 v43, v0

    move/from16 v0, v32

    move/from16 v1, v43

    if-lt v0, v1, :cond_5

    .line 3018
    const/16 v30, 0x2

    .line 3019
    add-int v43, v29, v31

    div-int/lit8 v28, v43, 0x2

    goto/16 :goto_3

    .line 3067
    .restart local v2       #bottom:I
    .restart local v9       #distance1:I
    .restart local v10       #distance2:I
    .restart local v11       #downDistanceMin:I
    .restart local v12       #downEvent:Lcom/htc/calendar/Event;
    .restart local v13       #endTime:I
    .restart local v14       #ev:Lcom/htc/calendar/Event;
    .restart local v17       #left:I
    .restart local v18       #leftDistanceMin:I
    .restart local v19       #leftEvent:Lcom/htc/calendar/Event;
    .restart local v33       #right:I
    .restart local v34       #rightDistanceMin:I
    .restart local v35       #rightEvent:Lcom/htc/calendar/Event;
    .restart local v39       #startTime:I
    .restart local v40       #top:I
    .restart local v41       #upDistanceMin:I
    .restart local v42       #upEvent:Lcom/htc/calendar/Event;
    :cond_13
    move/from16 v0, v33

    move/from16 v1, v28

    if-gt v0, v1, :cond_8

    .line 3068
    sub-int v9, v28, v33

    goto/16 :goto_5

    .line 3071
    :cond_14
    const/16 v43, 0x2

    move/from16 v0, v30

    move/from16 v1, v43

    if-ne v0, v1, :cond_17

    .line 3072
    move/from16 v0, v17

    move/from16 v1, v28

    if-lt v0, v1, :cond_16

    .line 3073
    sub-int v9, v17, v28

    .line 3077
    :cond_15
    :goto_9
    sub-int v10, v32, v2

    goto/16 :goto_6

    .line 3074
    :cond_16
    move/from16 v0, v33

    move/from16 v1, v28

    if-gt v0, v1, :cond_15

    .line 3075
    sub-int v9, v28, v33

    goto :goto_9

    .line 3078
    :cond_17
    const/16 v43, 0x4

    move/from16 v0, v30

    move/from16 v1, v43

    if-ne v0, v1, :cond_1a

    .line 3079
    move/from16 v0, v28

    if-gt v2, v0, :cond_19

    .line 3080
    sub-int v9, v28, v2

    .line 3084
    :cond_18
    :goto_a
    sub-int v10, v17, v31

    goto/16 :goto_6

    .line 3081
    :cond_19
    move/from16 v0, v40

    move/from16 v1, v28

    if-lt v0, v1, :cond_18

    .line 3082
    sub-int v9, v40, v28

    goto :goto_a

    .line 3085
    :cond_1a
    const/16 v43, 0x8

    move/from16 v0, v30

    move/from16 v1, v43

    if-ne v0, v1, :cond_9

    .line 3086
    move/from16 v0, v28

    if-gt v2, v0, :cond_1c

    .line 3087
    sub-int v9, v28, v2

    .line 3091
    :cond_1b
    :goto_b
    sub-int v10, v29, v33

    goto/16 :goto_6

    .line 3088
    :cond_1c
    move/from16 v0, v40

    move/from16 v1, v28

    if-lt v0, v1, :cond_1b

    .line 3089
    sub-int v9, v40, v28

    goto :goto_b

    .line 3106
    .restart local v16       #jj:I
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    move-object/from16 v43, v0

    move-object/from16 v0, v43

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/htc/calendar/Event;

    .line 3107
    .local v21, neighbor:Lcom/htc/calendar/Event;
    move-object/from16 v0, v21

    iget v0, v0, Lcom/htc/calendar/Event;->left:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v24, v0

    .line 3108
    .local v24, neighborLeft:I
    move-object/from16 v0, v21

    iget v0, v0, Lcom/htc/calendar/Event;->right:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v25, v0

    .line 3109
    .local v25, neighborRight:I
    move-object/from16 v0, v21

    iget v0, v0, Lcom/htc/calendar/Event;->endTime:I

    move/from16 v43, v0

    move/from16 v0, v43

    move/from16 v1, v39

    if-gt v0, v1, :cond_25

    .line 3112
    move/from16 v0, v24

    move/from16 v1, v33

    if-ge v0, v1, :cond_1e

    move/from16 v0, v25

    move/from16 v1, v17

    if-le v0, v1, :cond_1e

    .line 3113
    move-object/from16 v0, v21

    iget v0, v0, Lcom/htc/calendar/Event;->endTime:I

    move/from16 v43, v0

    sub-int v8, v39, v43

    .line 3114
    .local v8, distance:I
    move/from16 v0, v41

    if-ge v8, v0, :cond_20

    .line 3115
    move/from16 v41, v8

    .line 3116
    move-object/from16 v42, v21

    .line 3173
    .end local v8           #distance:I
    :cond_1e
    :goto_c
    move/from16 v0, v24

    move/from16 v1, v33

    if-lt v0, v1, :cond_2d

    .line 3176
    add-int v43, v40, v2

    div-int/lit8 v4, v43, 0x2

    .line 3177
    .local v4, center:I
    const/4 v8, 0x0

    .line 3178
    .restart local v8       #distance:I
    move-object/from16 v0, v21

    iget v0, v0, Lcom/htc/calendar/Event;->bottom:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v22, v0

    .line 3179
    .local v22, neighborBottom:I
    move-object/from16 v0, v21

    iget v0, v0, Lcom/htc/calendar/Event;->top:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v26, v0

    .line 3180
    .local v26, neighborTop:I
    move/from16 v0, v22

    if-gt v0, v4, :cond_2b

    .line 3181
    sub-int v8, v4, v22

    .line 3185
    :cond_1f
    :goto_d
    move/from16 v0, v34

    if-ge v8, v0, :cond_2c

    .line 3186
    move/from16 v34, v8

    .line 3187
    move-object/from16 v35, v21

    goto/16 :goto_8

    .line 3117
    .end local v4           #center:I
    .end local v22           #neighborBottom:I
    .end local v26           #neighborTop:I
    :cond_20
    move/from16 v0, v41

    if-ne v8, v0, :cond_1e

    .line 3118
    add-int v43, v17, v33

    div-int/lit8 v4, v43, 0x2

    .line 3119
    .restart local v4       #center:I
    const/4 v5, 0x0

    .line 3120
    .local v5, currentDistance:I
    move-object/from16 v0, v42

    iget v0, v0, Lcom/htc/calendar/Event;->left:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v6, v0

    .line 3121
    .local v6, currentLeft:I
    move-object/from16 v0, v42

    iget v0, v0, Lcom/htc/calendar/Event;->right:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v7, v0

    .line 3122
    .local v7, currentRight:I
    if-gt v7, v4, :cond_23

    .line 3123
    sub-int v5, v4, v7

    .line 3128
    :cond_21
    :goto_e
    const/16 v23, 0x0

    .line 3129
    .local v23, neighborDistance:I
    move/from16 v0, v25

    if-gt v0, v4, :cond_24

    .line 3130
    sub-int v23, v4, v25

    .line 3134
    :cond_22
    :goto_f
    move/from16 v0, v23

    if-ge v0, v5, :cond_1e

    .line 3135
    move/from16 v41, v8

    .line 3136
    move-object/from16 v42, v21

    goto :goto_c

    .line 3124
    .end local v23           #neighborDistance:I
    :cond_23
    if-lt v6, v4, :cond_21

    .line 3125
    sub-int v5, v6, v4

    goto :goto_e

    .line 3131
    .restart local v23       #neighborDistance:I
    :cond_24
    move/from16 v0, v24

    if-lt v0, v4, :cond_22

    .line 3132
    sub-int v23, v24, v4

    goto :goto_f

    .line 3140
    .end local v4           #center:I
    .end local v5           #currentDistance:I
    .end local v6           #currentLeft:I
    .end local v7           #currentRight:I
    .end local v8           #distance:I
    .end local v23           #neighborDistance:I
    :cond_25
    move-object/from16 v0, v21

    iget v0, v0, Lcom/htc/calendar/Event;->startTime:I

    move/from16 v43, v0

    move/from16 v0, v43

    if-lt v0, v13, :cond_1e

    .line 3143
    move/from16 v0, v24

    move/from16 v1, v33

    if-ge v0, v1, :cond_1e

    move/from16 v0, v25

    move/from16 v1, v17

    if-le v0, v1, :cond_1e

    .line 3144
    move-object/from16 v0, v21

    iget v0, v0, Lcom/htc/calendar/Event;->startTime:I

    move/from16 v43, v0

    sub-int v8, v43, v13

    .line 3145
    .restart local v8       #distance:I
    if-ge v8, v11, :cond_26

    .line 3146
    move v11, v8

    .line 3147
    move-object/from16 v12, v21

    goto/16 :goto_c

    .line 3148
    :cond_26
    if-ne v8, v11, :cond_1e

    .line 3149
    add-int v43, v17, v33

    div-int/lit8 v4, v43, 0x2

    .line 3150
    .restart local v4       #center:I
    const/4 v5, 0x0

    .line 3151
    .restart local v5       #currentDistance:I
    iget v0, v12, Lcom/htc/calendar/Event;->left:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v6, v0

    .line 3152
    .restart local v6       #currentLeft:I
    iget v0, v12, Lcom/htc/calendar/Event;->right:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v7, v0

    .line 3153
    .restart local v7       #currentRight:I
    if-gt v7, v4, :cond_29

    .line 3154
    sub-int v5, v4, v7

    .line 3159
    :cond_27
    :goto_10
    const/16 v23, 0x0

    .line 3160
    .restart local v23       #neighborDistance:I
    move/from16 v0, v25

    if-gt v0, v4, :cond_2a

    .line 3161
    sub-int v23, v4, v25

    .line 3165
    :cond_28
    :goto_11
    move/from16 v0, v23

    if-ge v0, v5, :cond_1e

    .line 3166
    move v11, v8

    .line 3167
    move-object/from16 v12, v21

    goto/16 :goto_c

    .line 3155
    .end local v23           #neighborDistance:I
    :cond_29
    if-lt v6, v4, :cond_27

    .line 3156
    sub-int v5, v6, v4

    goto :goto_10

    .line 3162
    .restart local v23       #neighborDistance:I
    :cond_2a
    move/from16 v0, v24

    if-lt v0, v4, :cond_28

    .line 3163
    sub-int v23, v24, v4

    goto :goto_11

    .line 3182
    .end local v5           #currentDistance:I
    .end local v6           #currentLeft:I
    .end local v7           #currentRight:I
    .end local v23           #neighborDistance:I
    .restart local v22       #neighborBottom:I
    .restart local v26       #neighborTop:I
    :cond_2b
    move/from16 v0, v26

    if-lt v0, v4, :cond_1f

    .line 3183
    sub-int v8, v26, v4

    goto/16 :goto_d

    .line 3188
    :cond_2c
    move/from16 v0, v34

    if-ne v8, v0, :cond_c

    .line 3190
    sub-int v23, v24, v33

    .line 3191
    .restart local v23       #neighborDistance:I
    move-object/from16 v0, v35

    iget v0, v0, Lcom/htc/calendar/Event;->left:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v43, v0

    sub-int v5, v43, v33

    .line 3192
    .restart local v5       #currentDistance:I
    move/from16 v0, v23

    if-ge v0, v5, :cond_c

    .line 3193
    move/from16 v34, v8

    .line 3194
    move-object/from16 v35, v21

    goto/16 :goto_8

    .line 3197
    .end local v4           #center:I
    .end local v5           #currentDistance:I
    .end local v8           #distance:I
    .end local v22           #neighborBottom:I
    .end local v23           #neighborDistance:I
    .end local v26           #neighborTop:I
    :cond_2d
    move/from16 v0, v25

    move/from16 v1, v17

    if-gt v0, v1, :cond_c

    .line 3200
    add-int v43, v40, v2

    div-int/lit8 v4, v43, 0x2

    .line 3201
    .restart local v4       #center:I
    const/4 v8, 0x0

    .line 3202
    .restart local v8       #distance:I
    move-object/from16 v0, v21

    iget v0, v0, Lcom/htc/calendar/Event;->bottom:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v22, v0

    .line 3203
    .restart local v22       #neighborBottom:I
    move-object/from16 v0, v21

    iget v0, v0, Lcom/htc/calendar/Event;->top:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v26, v0

    .line 3204
    .restart local v26       #neighborTop:I
    move/from16 v0, v22

    if-gt v0, v4, :cond_2f

    .line 3205
    sub-int v8, v4, v22

    .line 3209
    :cond_2e
    :goto_12
    move/from16 v0, v18

    if-ge v8, v0, :cond_30

    .line 3210
    move/from16 v18, v8

    .line 3211
    move-object/from16 v19, v21

    goto/16 :goto_8

    .line 3206
    :cond_2f
    move/from16 v0, v26

    if-lt v0, v4, :cond_2e

    .line 3207
    sub-int v8, v26, v4

    goto :goto_12

    .line 3212
    :cond_30
    move/from16 v0, v18

    if-ne v8, v0, :cond_c

    .line 3214
    sub-int v23, v17, v25

    .line 3215
    .restart local v23       #neighborDistance:I
    move-object/from16 v0, v19

    iget v0, v0, Lcom/htc/calendar/Event;->right:F

    move/from16 v43, v0

    move/from16 v0, v43

    float-to-int v0, v0

    move/from16 v43, v0

    sub-int v5, v17, v43

    .line 3216
    .restart local v5       #currentDistance:I
    move/from16 v0, v23

    if-ge v0, v5, :cond_c

    .line 3217
    move/from16 v18, v8

    .line 3218
    move-object/from16 v19, v21

    goto/16 :goto_8

    .line 3223
    .end local v4           #center:I
    .end local v5           #currentDistance:I
    .end local v8           #distance:I
    .end local v21           #neighbor:Lcom/htc/calendar/Event;
    .end local v22           #neighborBottom:I
    .end local v23           #neighborDistance:I
    .end local v24           #neighborLeft:I
    .end local v25           #neighborRight:I
    .end local v26           #neighborTop:I
    :cond_31
    move-object/from16 v0, v42

    iput-object v0, v14, Lcom/htc/calendar/Event;->nextUp:Lcom/htc/calendar/Event;

    .line 3224
    iput-object v12, v14, Lcom/htc/calendar/Event;->nextDown:Lcom/htc/calendar/Event;

    .line 3225
    move-object/from16 v0, v19

    iput-object v0, v14, Lcom/htc/calendar/Event;->nextLeft:Lcom/htc/calendar/Event;

    .line 3226
    move-object/from16 v0, v35

    iput-object v0, v14, Lcom/htc/calendar/Event;->nextRight:Lcom/htc/calendar/Event;

    .line 3025
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_4

    .line 3228
    .end local v2           #bottom:I
    .end local v9           #distance1:I
    .end local v10           #distance2:I
    .end local v11           #downDistanceMin:I
    .end local v12           #downEvent:Lcom/htc/calendar/Event;
    .end local v13           #endTime:I
    .end local v14           #ev:Lcom/htc/calendar/Event;
    .end local v16           #jj:I
    .end local v17           #left:I
    .end local v18           #leftDistanceMin:I
    .end local v19           #leftEvent:Lcom/htc/calendar/Event;
    .end local v33           #right:I
    .end local v34           #rightDistanceMin:I
    .end local v35           #rightEvent:Lcom/htc/calendar/Event;
    .end local v39           #startTime:I
    .end local v40           #top:I
    .end local v41           #upDistanceMin:I
    .end local v42           #upEvent:Lcom/htc/calendar/Event;
    :cond_32
    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    goto/16 :goto_0
.end method

.method private doDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .parameter "canvas"

    .prologue
    .line 1932
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/calendar/CalendarView;->mPaint:Landroid/graphics/Paint;

    .line 1933
    .local v7, p:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/CalendarView;->mRect:Landroid/graphics/Rect;

    .line 1934
    .local v9, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/CalendarView;->mCurrentTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    sget v5, Lcom/htc/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v5, v5, 0x1

    mul-int/2addr v2, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/CalendarView;->mCurrentTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->minute:I

    sget v6, Lcom/htc/calendar/CalendarView;->mCellHeight:I

    mul-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x3c

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v11, v2, 0x8

    .line 1939
    .local v11, lineY:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v9, v1, v7}, Lcom/htc/calendar/CalendarView;->drawGridBackground(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1940
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v9, v1, v7}, Lcom/htc/calendar/CalendarView;->drawHours(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1946
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v5, 0x2080694

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 1948
    .local v14, bottomRound:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v14}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v17

    .line 1950
    .local v17, roundHeight:I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/calendar/CalendarView;->mBitmapHeight:I

    sub-int v5, v5, v17

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/calendar/CalendarView;->mViewWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/calendar/CalendarView;->mBitmapHeight:I

    invoke-virtual {v14, v2, v5, v6, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1951
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1957
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/calendar/CalendarView;->mHoursWidth:I

    .line 1958
    .local v4, x:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    add-int/lit8 v16, v2, 0x1

    .line 1959
    .local v16, deltaX:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mFirstJulianDay:I

    .line 1960
    .local v3, cell:I
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->isWeekView()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/CalendarView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/calendar/HtcUtils;->getSystemLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "ar"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1961
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/calendar/CalendarView;->mHoursWidth:I

    mul-int/lit8 v5, v16, 0x6

    add-int v4, v2, v5

    .line 1963
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->isPreviewMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1964
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/htc/calendar/CalendarView;->setMeetingConflictArea(Z)V

    .line 1965
    const/16 v5, 0x9

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/htc/calendar/CalendarView;->drawPreviewEvent(IIILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1966
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    sget v5, Lcom/htc/calendar/CalendarView;->mSplitWindow:I

    div-int/2addr v2, v5

    add-int/2addr v4, v2

    .line 1969
    :cond_1
    const/4 v15, 0x0

    .local v15, day:I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    if-ge v15, v2, :cond_4

    .line 1971
    const/16 v5, 0x9

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/htc/calendar/CalendarView;->drawEvents(IIILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1974
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/calendar/CalendarView;->mTodayJulianDay:I

    if-ne v3, v2, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->isPreviewMode()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1976
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/calendar/CalendarView;->mViewStartY:I

    if-lt v11, v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/calendar/CalendarView;->mViewStartY:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/calendar/CalendarView;->mViewHeight:I

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, -0x2

    if-ge v11, v2, :cond_2

    .line 1978
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v11, v1, v7}, Lcom/htc/calendar/CalendarView;->drawCurrentTimeMarker(ILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    move-object/from16 v8, p0

    move v10, v4

    move-object/from16 v12, p1

    move-object v13, v7

    .line 1979
    invoke-direct/range {v8 .. v13}, Lcom/htc/calendar/CalendarView;->drawCurrentTimeLine(Landroid/graphics/Rect;IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1982
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/CalendarView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/calendar/HtcUtils;->getSystemLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "ar"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1983
    sub-int v4, v4, v16

    .line 1969
    :goto_1
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1985
    :cond_3
    add-int v4, v4, v16

    goto :goto_1

    .line 1987
    :cond_4
    return-void
.end method

.method private drawAfterScroll(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 1760
    iget-object v5, p0, Lcom/htc/calendar/CalendarView;->mPaint:Landroid/graphics/Paint;

    .line 1761
    .local v5, p:Landroid/graphics/Paint;
    iget-object v3, p0, Lcom/htc/calendar/CalendarView;->mRect:Landroid/graphics/Rect;

    .line 1763
    .local v3, r:Landroid/graphics/Rect;
    invoke-direct {p0}, Lcom/htc/calendar/CalendarView;->isDrawPreviewAllDayEvent()Z

    move-result v6

    .line 1764
    .local v6, bDrawPreviewAllDayEvent:Z
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mMaxAllDayEvents:I

    if-nez v0, :cond_0

    if-eqz v6, :cond_1

    .line 1766
    :cond_0
    invoke-direct {p0, v3, p1, v5}, Lcom/htc/calendar/CalendarView;->drawUpperLeftCorner(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1767
    iget v1, p0, Lcom/htc/calendar/CalendarView;->mFirstJulianDay:I

    iget v2, p0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/calendar/CalendarView;->drawAllDayEvents(IILandroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1768
    if-eqz v6, :cond_1

    .line 1769
    iget v1, p0, Lcom/htc/calendar/CalendarView;->mFirstJulianDay:I

    iget v2, p0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/htc/calendar/CalendarView;->drawPreviewAllDayEvent(IILandroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1774
    :cond_1
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 1775
    invoke-direct {p0, v3, p1, v5}, Lcom/htc/calendar/CalendarView;->drawDayHeaderLoop(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1779
    :cond_2
    iget-boolean v0, p0, Lcom/htc/calendar/CalendarView;->mIs24HourFormat:Z

    if-nez v0, :cond_3

    .line 1787
    :cond_3
    iget-boolean v0, p0, Lcom/htc/calendar/CalendarView;->mScrolling:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/htc/calendar/CalendarView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1792
    :cond_4
    return-void
.end method

.method private drawAllDayEvents(IILandroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 37
    .parameter "firstDay"
    .parameter "numDays"
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 2516
    sget v3, Lcom/htc/calendar/CalendarView;->NORMAL_FONT_SIZE:I

    int-to-float v3, v3

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2517
    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2518
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/calendar/CalendarView;->mEventTextPaint:Landroid/graphics/Paint;

    .line 2521
    .local v7, eventTextPaint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mBannerPlusMargin:I

    move-object/from16 v0, p3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 2522
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/calendar/CalendarView;->mAllDayHeight:I

    add-int/2addr v3, v6

    move-object/from16 v0, p3

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 2528
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    .line 2529
    const/4 v3, 0x0

    move-object/from16 v0, p3

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 2530
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mHoursWidth:I

    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    add-int/lit8 v13, v13, 0x1

    mul-int/2addr v6, v13

    add-int/2addr v3, v6

    move-object/from16 v0, p3

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 2536
    :goto_0
    sget v3, Lcom/htc/calendar/CalendarView;->mCalendarAllDayBackground:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2537
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2539
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v6, 0x2080700

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 2540
    .local v20, eventShadow:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v6, v6, -0x2

    move-object/from16 v0, p3

    iget v13, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v36, v0

    move-object/from16 v0, v20

    move/from16 v1, v36

    invoke-virtual {v0, v3, v6, v13, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2541
    move-object/from16 v0, v20

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2544
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p3

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 2549
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_1

    .line 2550
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mViewWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/calendar/CalendarView;->mHoursWidth:I

    add-int/2addr v3, v6

    move-object/from16 v0, p3

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 2555
    :goto_1
    sget v3, Lcom/htc/calendar/CalendarView;->mCalendarGridAreaBackground:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2556
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2559
    sget v3, Lcom/htc/calendar/CalendarView;->mCalendarGridLineVerticalColor:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2560
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2561
    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2562
    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2563
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v3

    move/from16 v30, v0

    .line 2564
    .local v30, startY:F
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v3

    move/from16 v31, v0

    .line 2565
    .local v31, stopY:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v0, v3

    move/from16 v16, v0

    .line 2571
    .local v16, deltaX:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v6, 0x2080701

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    .line 2573
    .local v21, eventShadow_vertical:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mHoursWidth:I

    int-to-float v0, v3

    move/from16 v33, v0

    .line 2574
    .local v33, x:F
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->isWeekView()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2575
    const/4 v14, 0x0

    .local v14, day:I
    :goto_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    if-ge v14, v3, :cond_2

    .line 2576
    move/from16 v0, v33

    float-to-int v3, v0

    move/from16 v0, v30

    float-to-int v6, v0

    move/from16 v0, v33

    float-to-int v13, v0

    add-int/lit8 v13, v13, 0x2

    move/from16 v0, v31

    float-to-int v0, v0

    move/from16 v36, v0

    move-object/from16 v0, v21

    move/from16 v1, v36

    invoke-virtual {v0, v3, v6, v13, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2577
    move-object/from16 v0, v21

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2578
    add-float v33, v33, v16

    .line 2575
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 2532
    .end local v14           #day:I
    .end local v16           #deltaX:F
    .end local v20           #eventShadow:Landroid/graphics/drawable/Drawable;
    .end local v21           #eventShadow_vertical:Landroid/graphics/drawable/Drawable;
    .end local v30           #startY:F
    .end local v31           #stopY:F
    .end local v33           #x:F
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mHoursWidth:I

    move-object/from16 v0, p3

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 2533
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    add-int/lit8 v13, v13, 0x1

    mul-int/2addr v6, v13

    add-int/2addr v3, v6

    move-object/from16 v0, p3

    iput v3, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_0

    .line 2552
    .restart local v20       #eventShadow:Landroid/graphics/drawable/Drawable;
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mViewWidth:I

    move-object/from16 v0, p3

    iput v3, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_1

    .line 2589
    .restart local v16       #deltaX:F
    .restart local v21       #eventShadow_vertical:Landroid/graphics/drawable/Drawable;
    .restart local v30       #startY:F
    .restart local v31       #stopY:F
    .restart local v33       #x:F
    :cond_2
    const/4 v3, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2590
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2592
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mBannerPlusMargin:I

    sget v6, Lcom/htc/calendar/CalendarView;->ALLDAY_TOP_MARGIN:I

    add-int v35, v3, v6

    .line 2598
    .local v35, y:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_5

    .line 2599
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->isPreviewMode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2600
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    sget v6, Lcom/htc/calendar/CalendarView;->mSplitWindow:I

    div-int/2addr v3, v6

    int-to-float v9, v3

    .line 2608
    .local v9, left:F
    :goto_3
    add-int v3, p1, p2

    add-int/lit8 v25, v3, -0x1

    .line 2609
    .local v25, lastDay:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    .line 2610
    .local v22, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/Event;>;"
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v26

    .line 2611
    .local v26, numEvents:I
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->isWeekView()Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mAllDayHeight:I

    sget v6, Lcom/htc/calendar/CalendarView;->ALLDAY_BOTTOM_MARGIN:I

    sub-int/2addr v3, v6

    :goto_4
    int-to-float v0, v3

    move/from16 v17, v0

    .line 2613
    .local v17, drawHeight:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mMaxAllDayEvents:I

    int-to-float v0, v3

    move/from16 v27, v0

    .line 2614
    .local v27, numRectangles:F
    const/16 v24, 0x0

    .local v24, i:I
    :goto_5
    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_f

    .line 2615
    move-object/from16 v0, v22

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/calendar/Event;

    .line 2616
    .local v4, event:Lcom/htc/calendar/Event;
    iget-boolean v3, v4, Lcom/htc/calendar/Event;->allDay:Z

    if-nez v3, :cond_7

    .line 2614
    :cond_3
    :goto_6
    add-int/lit8 v24, v24, 0x1

    goto :goto_5

    .line 2602
    .end local v4           #event:Lcom/htc/calendar/Event;
    .end local v9           #left:F
    .end local v17           #drawHeight:F
    .end local v22           #events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/Event;>;"
    .end local v24           #i:I
    .end local v25           #lastDay:I
    .end local v26           #numEvents:I
    .end local v27           #numRectangles:F
    :cond_4
    const/4 v9, 0x0

    .restart local v9       #left:F
    goto :goto_3

    .line 2605
    .end local v9           #left:F
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mHoursWidth:I

    int-to-float v9, v3

    .restart local v9       #left:F
    goto :goto_3

    .line 2611
    .restart local v22       #events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/Event;>;"
    .restart local v25       #lastDay:I
    .restart local v26       #numEvents:I
    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mAllDayHeight:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/calendar/CalendarView;->mAllDayTitleHeight:I

    sub-int/2addr v3, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/calendar/CalendarView;->mAllDayDividerHeight:I

    sub-int/2addr v3, v6

    sget v6, Lcom/htc/calendar/CalendarView;->ALLDAY_BOTTOM_MARGIN:I

    sub-int/2addr v3, v6

    goto :goto_4

    .line 2618
    .restart local v4       #event:Lcom/htc/calendar/Event;
    .restart local v17       #drawHeight:F
    .restart local v24       #i:I
    .restart local v27       #numRectangles:F
    :cond_7
    iget v0, v4, Lcom/htc/calendar/Event;->startDay:I

    move/from16 v28, v0

    .line 2619
    .local v28, startDay:I
    iget v0, v4, Lcom/htc/calendar/Event;->endDay:I

    move/from16 v18, v0

    .line 2620
    .local v18, endDay:I
    move/from16 v0, v28

    move/from16 v1, v25

    if-gt v0, v1, :cond_3

    move/from16 v0, v18

    move/from16 v1, p1

    if-lt v0, v1, :cond_3

    .line 2622
    move/from16 v0, v28

    move/from16 v1, p1

    if-ge v0, v1, :cond_8

    .line 2623
    move/from16 v28, p1

    .line 2624
    :cond_8
    move/from16 v0, v18

    move/from16 v1, v25

    if-le v0, v1, :cond_9

    .line 2625
    move/from16 v18, v25

    .line 2626
    :cond_9
    sub-int v29, v28, p1

    .line 2627
    .local v29, startIndex:I
    sub-int v19, v18, p1

    .line 2628
    .local v19, endIndex:I
    div-float v23, v17, v27

    .line 2629
    .local v23, height:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v32, v3, 0x7

    .line 2631
    .local v32, width:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mMaxAllDayEventHeight:I

    int-to-float v3, v3

    cmpl-float v3, v23, v3

    if-lez v3, :cond_a

    .line 2632
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mMaxAllDayEventHeight:I

    int-to-float v0, v3

    move/from16 v23, v0

    .line 2639
    :cond_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_d

    .line 2640
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    sget v6, Lcom/htc/calendar/CalendarView;->mSplitWindow:I

    div-int/2addr v3, v6

    add-int/lit8 v3, v3, 0x1

    mul-int v3, v3, v29

    int-to-float v3, v3

    add-float/2addr v3, v9

    const/high16 v6, 0x4110

    add-float/2addr v3, v6

    iput v3, v4, Lcom/htc/calendar/Event;->left:F

    .line 2641
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    sget v6, Lcom/htc/calendar/CalendarView;->mSplitWindow:I

    div-int/2addr v3, v6

    add-int/lit8 v3, v3, 0x1

    mul-int v3, v3, v19

    int-to-float v3, v3

    add-float/2addr v3, v9

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    sget v13, Lcom/htc/calendar/CalendarView;->mSplitWindow:I

    div-int/2addr v6, v13

    int-to-float v6, v6

    add-float/2addr v3, v6

    const/high16 v6, 0x4040

    sub-float/2addr v3, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/calendar/CalendarView;->mHoursWidth:I

    int-to-float v6, v6

    add-float/2addr v3, v6

    iput v3, v4, Lcom/htc/calendar/Event;->right:F

    .line 2653
    :cond_b
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->isWeekView()Z

    move-result v3

    if-nez v3, :cond_c

    .line 2654
    iget v3, v4, Lcom/htc/calendar/Event;->left:F

    float-to-int v3, v3

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v3}, Lcom/htc/calendar/CalendarView;->drawAllDayTitle(Landroid/graphics/Canvas;I)V

    .line 2657
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->isWeekView()Z

    move-result v3

    if-eqz v3, :cond_e

    move/from16 v0, v35

    int-to-float v3, v0

    invoke-virtual {v4}, Lcom/htc/calendar/Event;->getColumn()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v23

    add-float/2addr v3, v6

    :goto_8
    iput v3, v4, Lcom/htc/calendar/Event;->top:F

    .line 2661
    iget v3, v4, Lcom/htc/calendar/Event;->top:F

    const v6, 0x3f666666

    mul-float v6, v6, v23

    add-float/2addr v3, v6

    iput v3, v4, Lcom/htc/calendar/Event;->bottom:F

    .line 2664
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v0, v4, v1, v2, v7}, Lcom/htc/calendar/CalendarView;->drawAllDayEventRect(Lcom/htc/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;)Landroid/graphics/RectF;

    move-result-object v5

    .line 2667
    .local v5, rf:Landroid/graphics/RectF;
    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v6, p4

    invoke-direct/range {v3 .. v8}, Lcom/htc/calendar/CalendarView;->drawEventText(Lcom/htc/calendar/Event;Landroid/graphics/RectF;Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    .line 2670
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/calendar/CalendarView;->mSelectionAllDay:Z

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/calendar/CalendarView;->mComputeSelectedEvents:Z

    if-eqz v3, :cond_3

    .line 2671
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    move/from16 v0, v28

    if-gt v0, v3, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    move/from16 v0, v18

    if-lt v0, v3, :cond_3

    .line 2672
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 2643
    .end local v5           #rf:Landroid/graphics/RectF;
    :cond_d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    add-int/lit8 v3, v3, 0x1

    mul-int v3, v3, v29

    int-to-float v3, v3

    add-float/2addr v3, v9

    const/high16 v6, 0x3f80

    add-float/2addr v3, v6

    iput v3, v4, Lcom/htc/calendar/Event;->left:F

    .line 2644
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    add-int/lit8 v3, v3, 0x1

    mul-int v3, v3, v19

    int-to-float v3, v3

    add-float/2addr v3, v9

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    int-to-float v6, v6

    add-float/2addr v3, v6

    const/high16 v6, 0x3f80

    add-float/2addr v3, v6

    iput v3, v4, Lcom/htc/calendar/Event;->right:F

    .line 2645
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/calendar/HtcUtils;->getSystemLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "ar"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2646
    iget v0, v4, Lcom/htc/calendar/Event;->left:F

    move/from16 v34, v0

    .line 2647
    .local v34, xe:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mHoursWidth:I

    iget v6, v4, Lcom/htc/calendar/Event;->right:F

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/calendar/CalendarView;->mContext:Landroid/content/Context;

    move/from16 v0, v32

    invoke-static {v3, v0, v6, v13}, Lcom/htc/calendar/HtcUtils;->MirrorForARA(IIILandroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    iput v3, v4, Lcom/htc/calendar/Event;->left:F

    .line 2648
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mHoursWidth:I

    move/from16 v0, v34

    float-to-int v6, v0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/calendar/CalendarView;->mContext:Landroid/content/Context;

    move/from16 v0, v32

    invoke-static {v3, v0, v6, v13}, Lcom/htc/calendar/HtcUtils;->MirrorForARA(IIILandroid/content/Context;)I

    move-result v3

    int-to-float v3, v3

    iput v3, v4, Lcom/htc/calendar/Event;->right:F

    goto/16 :goto_7

    .line 2657
    .end local v34           #xe:F
    :cond_e
    move/from16 v0, v35

    int-to-float v3, v0

    invoke-virtual {v4}, Lcom/htc/calendar/Event;->getColumn()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v23

    add-float/2addr v3, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/calendar/CalendarView;->mAllDayTitleHeight:I

    int-to-float v6, v6

    add-float/2addr v3, v6

    goto/16 :goto_8

    .line 2677
    .end local v4           #event:Lcom/htc/calendar/Event;
    .end local v18           #endDay:I
    .end local v19           #endIndex:I
    .end local v23           #height:F
    .end local v28           #startDay:I
    .end local v29           #startIndex:I
    .end local v32           #width:I
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/calendar/CalendarView;->mSelectionAllDay:Z

    if-eqz v3, :cond_13

    .line 2680
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->computeAllDayNeighbors()V

    .line 2681
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    if-eqz v3, :cond_10

    .line 2682
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    .line 2684
    .restart local v4       #event:Lcom/htc/calendar/Event;
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v0, v4, v1, v2, v7}, Lcom/htc/calendar/CalendarView;->drawAllDayEventRect(Lcom/htc/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;)Landroid/graphics/RectF;

    move-result-object v5

    .line 2687
    .restart local v5       #rf:Landroid/graphics/RectF;
    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v6, p4

    invoke-direct/range {v3 .. v8}, Lcom/htc/calendar/CalendarView;->drawEventText(Lcom/htc/calendar/Event;Landroid/graphics/RectF;Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    .line 2694
    .end local v4           #event:Lcom/htc/calendar/Event;
    .end local v5           #rf:Landroid/graphics/RectF;
    :cond_10
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/calendar/CalendarView;->mFirstJulianDay:I

    sub-int v15, v3, v6

    .line 2695
    .local v15, daynum:I
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->isWeekView()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 2696
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mBannerPlusMargin:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v10, v3

    .line 2697
    .local v10, top:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mAllDayHeight:I

    int-to-float v3, v3

    add-float/2addr v3, v10

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/calendar/CalendarView;->mAllDayDividerHeight:I

    int-to-float v6, v6

    sub-float/2addr v3, v6

    sget v6, Lcom/htc/calendar/CalendarView;->ALLDAY_TOP_MARGIN:I

    int-to-float v6, v6

    sub-float/2addr v3, v6

    const/high16 v6, 0x3f80

    sub-float v12, v3, v6

    .line 2698
    .local v12, bottom:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/calendar/HtcUtils;->getSystemLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "ar"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2699
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mHoursWidth:I

    rsub-int/lit8 v6, v15, 0x6

    move-object/from16 v0, p0

    iget v13, v0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    add-int/lit8 v13, v13, 0x1

    mul-int/2addr v6, v13

    add-int/2addr v3, v6

    add-int/lit8 v3, v3, 0x1

    int-to-float v9, v3

    .line 2702
    :goto_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    int-to-float v3, v3

    add-float/2addr v3, v9

    const/high16 v6, 0x3f80

    add-float/2addr v3, v6

    const/high16 v6, 0x3f80

    sub-float v11, v3, v6

    .line 2710
    .local v11, right:F
    :goto_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_11

    .line 2712
    const/high16 v3, 0x3f80

    sub-float/2addr v11, v3

    .line 2716
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->isPreviewMode()Z

    move-result v3

    if-nez v3, :cond_12

    .line 2717
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/calendar/CalendarView;->mPath:Landroid/graphics/Path;

    .line 2718
    .local v8, path:Landroid/graphics/Path;
    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    .line 2719
    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 2720
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView;->mSelectionPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p4

    invoke-virtual {v0, v8, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2724
    .end local v8           #path:Landroid/graphics/Path;
    :cond_12
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v13, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-direct {v0, v3, v6, v13, v1}, Lcom/htc/calendar/CalendarView;->saveSelectionPosition(FFFF)V

    .line 2727
    .end local v10           #top:F
    .end local v11           #right:F
    .end local v12           #bottom:F
    .end local v15           #daynum:I
    :cond_13
    return-void

    .line 2701
    .restart local v10       #top:F
    .restart local v12       #bottom:F
    .restart local v15       #daynum:I
    :cond_14
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mHoursWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    add-int/lit8 v6, v6, 0x1

    mul-int/2addr v6, v15

    add-int/2addr v3, v6

    add-int/lit8 v3, v3, 0x1

    int-to-float v9, v3

    goto :goto_9

    .line 2704
    .end local v10           #top:F
    .end local v12           #bottom:F
    :cond_15
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mBannerPlusMargin:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/calendar/CalendarView;->mAllDayTitleHeight:I

    add-int/2addr v3, v6

    int-to-float v10, v3

    .line 2705
    .restart local v10       #top:F
    const/high16 v9, 0x40e0

    .line 2706
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mAllDayHeight:I

    int-to-float v3, v3

    add-float/2addr v3, v10

    const/high16 v6, 0x3f80

    sub-float/2addr v3, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/calendar/CalendarView;->mAllDayTitleHeight:I

    int-to-float v6, v6

    sub-float/2addr v3, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/calendar/CalendarView;->mAllDayDividerHeight:I

    int-to-float v6, v6

    sub-float/2addr v3, v6

    const/high16 v6, 0x4000

    sub-float v12, v3, v6

    .line 2707
    .restart local v12       #bottom:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mViewWidth:I

    add-int/lit8 v3, v3, -0x7

    add-int/lit8 v3, v3, 0x3

    int-to-float v11, v3

    .restart local v11       #right:F
    goto :goto_a
.end method

.method private drawAllDayTitle(Landroid/graphics/Canvas;I)V
    .locals 4
    .parameter "canvas"
    .parameter "startX"

    .prologue
    const/high16 v3, 0x3f80

    .line 2730
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 2731
    .local v0, p:Landroid/graphics/Paint;
    iget-object v1, p0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v2, 0x205002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2732
    const v1, -0x99999a

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2733
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2734
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2735
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2736
    const/4 v1, -0x1

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 2737
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2738
    sget-object v1, Lcom/htc/calendar/CalendarView;->mAllDayTitle:Ljava/lang/String;

    int-to-float v2, p2

    iget v3, p0, Lcom/htc/calendar/CalendarView;->mAllDayTitleHeight:I

    add-int/lit8 v3, v3, -0x2

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2739
    return-void
.end method

.method private drawAmPm(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6
    .parameter "canvas"
    .parameter "p"

    .prologue
    const/16 v5, 0xc

    .line 1882
    sget v3, Lcom/htc/calendar/CalendarView;->mCalendarAmPmLabel:I

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1883
    sget v3, Lcom/htc/calendar/CalendarView;->AMPM_FONT_SIZE:I

    int-to-float v3, v3

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1884
    iget-object v3, p0, Lcom/htc/calendar/CalendarView;->mBold:Landroid/graphics/Typeface;

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1885
    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1886
    iget-object v3, p0, Lcom/htc/calendar/CalendarView;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1887
    iget-object v1, p0, Lcom/htc/calendar/CalendarView;->mAmString:Ljava/lang/String;

    .line 1888
    .local v1, text:Ljava/lang/String;
    iget v3, p0, Lcom/htc/calendar/CalendarView;->mFirstHour:I

    if-lt v3, v5, :cond_0

    .line 1889
    iget-object v1, p0, Lcom/htc/calendar/CalendarView;->mPmString:Ljava/lang/String;

    .line 1891
    :cond_0
    iget v3, p0, Lcom/htc/calendar/CalendarView;->mFirstCell:I

    iget v4, p0, Lcom/htc/calendar/CalendarView;->mFirstHourOffset:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/calendar/CalendarView;->mHoursTextHeight:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/lit8 v2, v3, 0x1

    .line 1892
    .local v2, y:I
    iget v3, p0, Lcom/htc/calendar/CalendarView;->mHoursWidth:I

    add-int/lit8 v0, v3, -0x7

    .line 1893
    .local v0, right:I
    int-to-float v3, v0

    int-to-float v4, v2

    invoke-virtual {p1, v1, v3, v4, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1895
    iget v3, p0, Lcom/htc/calendar/CalendarView;->mFirstHour:I

    if-ge v3, v5, :cond_1

    iget v3, p0, Lcom/htc/calendar/CalendarView;->mFirstHour:I

    iget v4, p0, Lcom/htc/calendar/CalendarView;->mNumHours:I

    add-int/2addr v3, v4

    if-le v3, v5, :cond_1

    .line 1897
    iget-object v1, p0, Lcom/htc/calendar/CalendarView;->mPmString:Ljava/lang/String;

    .line 1898
    iget v3, p0, Lcom/htc/calendar/CalendarView;->mFirstCell:I

    iget v4, p0, Lcom/htc/calendar/CalendarView;->mFirstHourOffset:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/calendar/CalendarView;->mFirstHour:I

    rsub-int/lit8 v4, v4, 0xc

    sget v5, Lcom/htc/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v5, v5, 0x1

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iget v4, p0, Lcom/htc/calendar/CalendarView;->mHoursTextHeight:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/lit8 v2, v3, 0x1

    .line 1900
    int-to-float v3, v0

    int-to-float v4, v2

    invoke-virtual {p1, v1, v3, v4, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1902
    :cond_1
    return-void
.end method

.method private drawCombinedEventRect(Lcom/htc/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;)Landroid/graphics/RectF;
    .locals 8
    .parameter "event"
    .parameter "canvas"
    .parameter "p"
    .parameter "eventTextPaint"

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/high16 v6, 0x4000

    const/high16 v5, 0x3f80

    .line 5211
    const/4 v4, -0x1

    invoke-virtual {p3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 5212
    sget v4, Lcom/htc/calendar/CalendarView;->mEventTextColor:I

    invoke-virtual {p4, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 5214
    iget-object v1, p0, Lcom/htc/calendar/CalendarView;->mRectF:Landroid/graphics/RectF;

    .line 5215
    .local v1, rf:Landroid/graphics/RectF;
    iget v4, p1, Lcom/htc/calendar/Event;->top:F

    iput v4, v1, Landroid/graphics/RectF;->top:F

    .line 5216
    iget v4, p1, Lcom/htc/calendar/Event;->bottom:F

    iput v4, v1, Landroid/graphics/RectF;->bottom:F

    .line 5217
    iget v4, p1, Lcom/htc/calendar/Event;->left:F

    iput v4, v1, Landroid/graphics/RectF;->left:F

    .line 5218
    iget v4, p1, Lcom/htc/calendar/Event;->right:F

    add-float/2addr v4, v5

    iput v4, v1, Landroid/graphics/RectF;->right:F

    .line 5223
    const/4 v4, 0x3

    new-array v0, v4, [F

    .line 5224
    .local v0, hsv:[F
    invoke-virtual {p3}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    invoke-static {v4, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 5225
    aput v5, v0, v3

    .line 5226
    aget v4, v0, v7

    const/high16 v5, 0x3f40

    mul-float/2addr v4, v5

    aput v4, v0, v7

    .line 5227
    iget-object v4, p0, Lcom/htc/calendar/CalendarView;->mPaintBorder:Landroid/graphics/Paint;

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 5229
    const/4 v2, 0x0

    .line 5230
    .local v2, textPaddingLeft:F
    invoke-virtual {p1}, Lcom/htc/calendar/Event;->getMaxColumns()I

    move-result v4

    if-le v4, v7, :cond_0

    :goto_0
    invoke-direct {p0, v1, p2, v3}, Lcom/htc/calendar/CalendarView;->drawCombinedEventRectBackground(Landroid/graphics/RectF;Landroid/graphics/Canvas;Z)F

    move-result v2

    .line 5232
    iget v3, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v6

    add-float/2addr v3, v2

    iput v3, v1, Landroid/graphics/RectF;->left:F

    .line 5234
    iget v3, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v6

    iput v3, v1, Landroid/graphics/RectF;->right:F

    .line 5236
    return-object v1

    .line 5230
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private drawCombinedEventRectBackground(Landroid/graphics/RectF;Landroid/graphics/Canvas;Z)F
    .locals 9
    .parameter "rf"
    .parameter "canvas"
    .parameter "over"

    .prologue
    .line 5240
    iget v7, p1, Landroid/graphics/RectF;->left:F

    float-to-int v3, v7

    .line 5241
    .local v3, left:I
    iget v7, p1, Landroid/graphics/RectF;->top:F

    float-to-int v6, v7

    .line 5242
    .local v6, top:I
    iget v7, p1, Landroid/graphics/RectF;->right:F

    float-to-int v4, v7

    .line 5243
    .local v4, right:I
    iget v7, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v7

    .line 5245
    .local v0, bottom:I
    iget-object v7, p0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f09005e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 5247
    .local v2, htcTransparentPadding:F
    const/high16 v5, 0x4000

    .line 5249
    .local v5, textPadding:F
    neg-float v7, v2

    invoke-direct {p0, v3, v7}, Lcom/htc/calendar/CalendarView;->adjuestPosition(IF)I

    move-result v3

    .line 5250
    neg-float v7, v2

    invoke-direct {p0, v6, v7}, Lcom/htc/calendar/CalendarView;->adjuestPosition(IF)I

    move-result v6

    .line 5251
    invoke-direct {p0, v4, v2}, Lcom/htc/calendar/CalendarView;->adjuestPosition(IF)I

    move-result v4

    .line 5252
    invoke-direct {p0, v0, v2}, Lcom/htc/calendar/CalendarView;->adjuestPosition(IF)I

    move-result v0

    .line 5254
    const/4 v1, 0x0

    .line 5255
    .local v1, drawableHTC:Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v8, 0x7f02007c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 5256
    if-eqz v1, :cond_0

    .line 5257
    invoke-virtual {v1, v3, v6, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 5258
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 5261
    :cond_0
    const/high16 v7, 0x4000

    return v7
.end method

.method private drawCombinedEventsText(Lcom/htc/calendar/Event;Landroid/graphics/RectF;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIILcom/htc/calendar/Event;)V
    .locals 48
    .parameter "event"
    .parameter "rf"
    .parameter "canvas"
    .parameter "p"
    .parameter "topMargin"
    .parameter "group"
    .parameter "maxCount"
    .parameter "combinedEvent"

    .prologue
    .line 5372
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/calendar/CalendarView;->mDrawTextInEventRect:Z

    if-nez v2, :cond_1

    .line 5573
    :cond_0
    :goto_0
    return-void

    .line 5376
    :cond_1
    const/16 v32, 0x5

    .line 5377
    .local v32, LINE_PADDING_TOP_BOTTOM:I
    const/high16 v30, 0x41c8

    .line 5378
    .local v30, LINE_LIMIT_HEIGHT:F
    const/16 v31, 0x12

    .line 5381
    .local v31, LINE_LIMIT_WORDING_COUNT:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    const/16 v41, 0x1

    .line 5384
    .local v41, isLandscape:Z
    :goto_1
    if-eqz v41, :cond_2

    .line 5385
    const/16 v31, 0x20

    .line 5388
    :cond_2
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/RectF;->left:F

    sub-float v47, v2, v3

    .line 5389
    .local v47, width:F
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    sub-float v8, v2, v3

    .line 5392
    .local v8, height:F
    const/16 v29, 0x0

    .line 5393
    .local v29, DRAW_INFO_MODE_NONE:I
    const/16 v25, 0x1

    .line 5394
    .local v25, DRAW_INFO_MODE_LINE_1:I
    const/16 v26, 0x2

    .line 5395
    .local v26, DRAW_INFO_MODE_LINE_2:I
    const/16 v27, 0x3

    .line 5396
    .local v27, DRAW_INFO_MODE_LINE_3:I
    const/16 v28, 0x4

    .line 5397
    .local v28, DRAW_INFO_MODE_LINE_MORE:I
    move/from16 v42, v27

    .line 5400
    .local v42, mode:I
    const/16 v46, 0xa

    .line 5402
    .local v46, totalPadding_TOP_BOTTOM:I
    move/from16 v0, v46

    int-to-float v2, v0

    sub-float v2, v8, v2

    div-float v2, v2, v30

    float-to-int v0, v2

    move/from16 v38, v0

    .line 5403
    .local v38, howManyLines:I
    const/16 v44, 0x0

    .line 5405
    .local v44, showMorePlus:Z
    if-gtz v38, :cond_6

    .line 5406
    move/from16 v42, v29

    .line 5417
    :goto_2
    add-int/lit8 v2, v38, -0x2

    move/from16 v0, p7

    if-ge v2, v0, :cond_3

    .line 5418
    const/16 v44, 0x1

    .line 5420
    :cond_3
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const/high16 v5, 0x7f0a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    sub-float v6, v2, v3

    .line 5421
    .local v6, newtop:F
    const-string v2, "CalendarView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CombinedEvent rect width:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v47

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " height:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mode:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v42

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5423
    const/4 v9, 0x0

    .line 5425
    .local v9, smallWording:Z
    move/from16 v0, v42

    move/from16 v1, v29

    if-ne v0, v1, :cond_4

    .line 5426
    const-string v2, "CalendarView"

    const-string v3, "drawCombinedEventText: DRAW_INFO_MODE_NONE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5427
    const/4 v9, 0x1

    .line 5428
    move/from16 v42, v25

    .line 5429
    sget v2, Lcom/htc/calendar/CalendarView;->EVENT_SMAL_TEXT_FONT_SIZE:I

    int-to-float v2, v2

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 5432
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    .line 5435
    .local v36, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/Event;>;"
    const/high16 v2, -0x100

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 5437
    move/from16 v0, v42

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    .line 5438
    const-string v2, "CalendarView"

    const-string v3, "drawCombinedEventText: DRAW_INFO_MODE_LINE_1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5440
    const/4 v2, -0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 5442
    const-string v4, ""

    .line 5444
    .local v4, text:Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, p7

    if-ne v0, v2, :cond_a

    .line 5445
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%d %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v7

    const/4 v7, 0x1

    sget-object v10, Lcom/htc/calendar/CalendarView;->mHaveEvent:Ljava/lang/String;

    aput-object v10, v5, v7

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 5446
    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v9}, Lcom/htc/calendar/CalendarView;->draw_combinedOneLineHeader(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;FZ)V

    goto/16 :goto_0

    .line 5381
    .end local v4           #text:Ljava/lang/String;
    .end local v6           #newtop:F
    .end local v8           #height:F
    .end local v9           #smallWording:Z
    .end local v25           #DRAW_INFO_MODE_LINE_1:I
    .end local v26           #DRAW_INFO_MODE_LINE_2:I
    .end local v27           #DRAW_INFO_MODE_LINE_3:I
    .end local v28           #DRAW_INFO_MODE_LINE_MORE:I
    .end local v29           #DRAW_INFO_MODE_NONE:I
    .end local v36           #events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/Event;>;"
    .end local v38           #howManyLines:I
    .end local v41           #isLandscape:Z
    .end local v42           #mode:I
    .end local v44           #showMorePlus:Z
    .end local v46           #totalPadding_TOP_BOTTOM:I
    .end local v47           #width:F
    :cond_5
    const/16 v41, 0x0

    goto/16 :goto_1

    .line 5407
    .restart local v8       #height:F
    .restart local v25       #DRAW_INFO_MODE_LINE_1:I
    .restart local v26       #DRAW_INFO_MODE_LINE_2:I
    .restart local v27       #DRAW_INFO_MODE_LINE_3:I
    .restart local v28       #DRAW_INFO_MODE_LINE_MORE:I
    .restart local v29       #DRAW_INFO_MODE_NONE:I
    .restart local v38       #howManyLines:I
    .restart local v41       #isLandscape:Z
    .restart local v42       #mode:I
    .restart local v44       #showMorePlus:Z
    .restart local v46       #totalPadding_TOP_BOTTOM:I
    .restart local v47       #width:F
    :cond_6
    const/4 v2, 0x1

    move/from16 v0, v38

    if-ne v0, v2, :cond_7

    .line 5408
    move/from16 v42, v25

    goto/16 :goto_2

    .line 5409
    :cond_7
    const/4 v2, 0x2

    move/from16 v0, v38

    if-ne v0, v2, :cond_8

    .line 5410
    move/from16 v42, v26

    goto/16 :goto_2

    .line 5411
    :cond_8
    const/4 v2, 0x3

    move/from16 v0, v38

    if-ne v0, v2, :cond_9

    .line 5412
    move/from16 v42, v27

    goto/16 :goto_2

    .line 5414
    :cond_9
    move/from16 v42, v38

    goto/16 :goto_2

    .line 5448
    .restart local v4       #text:Ljava/lang/String;
    .restart local v6       #newtop:F
    .restart local v9       #smallWording:Z
    .restart local v36       #events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/Event;>;"
    :cond_a
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%d %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v7

    const/4 v7, 0x1

    sget-object v10, Lcom/htc/calendar/CalendarView;->mHaveEvents:Ljava/lang/String;

    aput-object v10, v5, v7

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 5449
    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v9}, Lcom/htc/calendar/CalendarView;->draw_combinedOneLineHeader(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;FZ)V

    goto/16 :goto_0

    .line 5460
    .end local v4           #text:Ljava/lang/String;
    :cond_b
    const/16 v37, 0x1

    .line 5461
    .local v37, flags:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 5462
    move/from16 v0, v37

    or-int/lit16 v0, v0, 0x80

    move/from16 v37, v0

    .line 5464
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    move-object/from16 v0, p8

    iget-wide v10, v0, Lcom/htc/calendar/Event;->startMillis:J

    move/from16 v0, v37

    invoke-static {v2, v10, v11, v0}, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v45

    .line 5465
    .local v45, start:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    move-object/from16 v0, p8

    iget-wide v10, v0, Lcom/htc/calendar/Event;->endMillis:J

    move/from16 v0, v37

    invoke-static {v2, v10, v11, v0}, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v34

    .line 5466
    .local v34, end:Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%s-%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v45, v5, v7

    const/4 v7, 0x1

    aput-object v34, v5, v7

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 5468
    .local v12, drawText_start_end:Ljava/lang/String;
    move/from16 v0, v42

    move/from16 v1, v26

    if-ne v0, v1, :cond_e

    .line 5469
    const-string v2, "CalendarView"

    const-string v3, "drawCombinedEventText: DRAW_INFO_MODE_LINE_2"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5471
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v10, p0

    move-object/from16 v11, p3

    move-object/from16 v15, p4

    invoke-direct/range {v10 .. v15}, Lcom/htc/calendar/CalendarView;->draw_ConflictTime(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 5474
    const/4 v2, 0x1

    move/from16 v0, p7

    if-ne v0, v2, :cond_d

    .line 5475
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%d %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v7

    const/4 v7, 0x1

    sget-object v10, Lcom/htc/calendar/CalendarView;->mHaveEvent:Ljava/lang/String;

    aput-object v10, v5, v7

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 5476
    .restart local v4       #text:Ljava/lang/String;
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v16, v0

    const/16 v19, 0x2

    move-object/from16 v13, p0

    move-object/from16 v14, p3

    move-object v15, v4

    move/from16 v17, v6

    move-object/from16 v18, p4

    invoke-direct/range {v13 .. v19}, Lcom/htc/calendar/CalendarView;->draw_combinedOneLine(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;I)V

    goto/16 :goto_0

    .line 5479
    .end local v4           #text:Ljava/lang/String;
    :cond_d
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%d %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v7

    const/4 v7, 0x1

    sget-object v10, Lcom/htc/calendar/CalendarView;->mHaveEvents:Ljava/lang/String;

    aput-object v10, v5, v7

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 5480
    .restart local v4       #text:Ljava/lang/String;
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v16, v0

    const/16 v19, 0x2

    move-object/from16 v13, p0

    move-object/from16 v14, p3

    move-object v15, v4

    move/from16 v17, v6

    move-object/from16 v18, p4

    invoke-direct/range {v13 .. v19}, Lcom/htc/calendar/CalendarView;->draw_combinedOneLine(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;I)V

    goto/16 :goto_0

    .line 5487
    .end local v4           #text:Ljava/lang/String;
    :cond_e
    new-instance v17, Landroid/graphics/Paint;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/Paint;-><init>()V

    .line 5488
    .local v17, circlePaint:Landroid/graphics/Paint;
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5489
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 5491
    move/from16 v0, v42

    move/from16 v1, v27

    if-ne v0, v1, :cond_10

    .line 5492
    const-string v2, "CalendarView"

    const-string v3, "drawCombinedEventText: DRAW_INFO_MODE_LINE_3"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5494
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/RectF;->top:F

    move-object/from16 v10, p0

    move-object/from16 v11, p3

    move-object/from16 v15, p4

    invoke-direct/range {v10 .. v15}, Lcom/htc/calendar/CalendarView;->draw_ConflictTime(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 5497
    const-string v4, ""

    .line 5501
    .restart local v4       #text:Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/calendar/Event;

    iget-object v2, v2, Lcom/htc/calendar/Event;->title:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v2, v1}, Lcom/htc/calendar/CalendarView;->getCombinedEventFitTitle(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v4

    .line 5505
    move-object/from16 v0, p2

    iget v15, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v16, v0

    const/4 v2, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/calendar/Event;

    iget v0, v2, Lcom/htc/calendar/Event;->color:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move-object/from16 v13, p0

    move-object/from16 v14, p3

    invoke-direct/range {v13 .. v19}, Lcom/htc/calendar/CalendarView;->draw_ColorChip(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;II)V

    .line 5508
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v21, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v22, v0

    const/16 v24, 0x2

    move-object/from16 v18, p0

    move-object/from16 v19, p3

    move-object/from16 v20, v4

    move-object/from16 v23, p4

    invoke-direct/range {v18 .. v24}, Lcom/htc/calendar/CalendarView;->draw_combinedOneLine(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;I)V

    .line 5511
    if-eqz v44, :cond_f

    .line 5513
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "+%d more"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    add-int/lit8 v10, p7, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v7

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 5515
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v21, v0

    const/16 v24, 0x3

    move-object/from16 v18, p0

    move-object/from16 v19, p3

    move-object/from16 v20, v4

    move/from16 v22, v6

    move-object/from16 v23, p4

    invoke-direct/range {v18 .. v24}, Lcom/htc/calendar/CalendarView;->draw_combinedOneLine(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;I)V

    goto/16 :goto_0

    .line 5518
    :cond_f
    const/4 v2, 0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/calendar/Event;

    iget-object v2, v2, Lcom/htc/calendar/Event;->title:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v2, v1}, Lcom/htc/calendar/CalendarView;->getCombinedEventFitTitle(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v4

    .line 5519
    const/4 v2, 0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/calendar/Event;

    iget v2, v2, Lcom/htc/calendar/Event;->color:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 5520
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    const/high16 v3, 0x40a0

    add-float/2addr v2, v3

    const/high16 v3, 0x4040

    mul-float v3, v3, v30

    add-float/2addr v2, v3

    const/high16 v3, 0x40e0

    sub-float v33, v2, v3

    .line 5522
    .local v33, circleY:F
    move-object/from16 v0, p2

    iget v15, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v16, v0

    const/4 v2, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/calendar/Event;

    iget v0, v2, Lcom/htc/calendar/Event;->color:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move-object/from16 v13, p0

    move-object/from16 v14, p3

    invoke-direct/range {v13 .. v19}, Lcom/htc/calendar/CalendarView;->draw_ColorChip(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;II)V

    .line 5524
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v21, v0

    const/16 v24, 0x3

    move-object/from16 v18, p0

    move-object/from16 v19, p3

    move-object/from16 v20, v4

    move/from16 v22, v6

    move-object/from16 v23, p4

    invoke-direct/range {v18 .. v24}, Lcom/htc/calendar/CalendarView;->draw_combinedOneLine(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;I)V

    goto/16 :goto_0

    .line 5529
    .end local v4           #text:Ljava/lang/String;
    .end local v33           #circleY:F
    :cond_10
    move/from16 v0, v42

    move/from16 v1, v28

    if-lt v0, v1, :cond_0

    .line 5530
    const-string v2, "CalendarView"

    const-string v3, "drawCombinedEventText: DRAW_INFO_MODE_LINE_MORE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5533
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v10, p0

    move-object/from16 v11, p3

    move v14, v6

    move-object/from16 v15, p4

    invoke-direct/range {v10 .. v15}, Lcom/htc/calendar/CalendarView;->draw_ConflictTime(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 5536
    const-string v4, ""

    .line 5538
    .restart local v4       #text:Ljava/lang/String;
    add-int/lit8 v43, v38, -0x1

    .line 5539
    .local v43, showHowManyEvents:I
    move/from16 v0, v43

    move/from16 v1, p7

    if-le v0, v1, :cond_13

    .line 5540
    move/from16 v43, p7

    .line 5547
    :cond_11
    :goto_3
    const-string v2, "CalendarView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showHowManyEvents:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v43

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5550
    const/16 v40, 0x0

    .line 5551
    .local v40, idx:I
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v39

    .local v39, i$:Ljava/util/Iterator;
    :cond_12
    :goto_4
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/htc/calendar/Event;

    .line 5552
    .local v35, ev:Lcom/htc/calendar/Event;
    move-object/from16 v0, v35

    iget v2, v0, Lcom/htc/calendar/Event;->mGroup:I

    move/from16 v0, p6

    if-ne v2, v0, :cond_14

    move/from16 v0, v40

    move/from16 v1, v43

    if-ge v0, v1, :cond_14

    .line 5553
    move-object/from16 v0, v35

    iget-object v2, v0, Lcom/htc/calendar/Event;->title:Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v2, v1}, Lcom/htc/calendar/CalendarView;->getCombinedEventFitTitle(Ljava/lang/CharSequence;I)Ljava/lang/String;

    move-result-object v4

    .line 5554
    move-object/from16 v0, v35

    iget v2, v0, Lcom/htc/calendar/Event;->color:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 5555
    move-object/from16 v0, p2

    iget v2, v0, Landroid/graphics/RectF;->top:F

    const/high16 v3, 0x40a0

    add-float/2addr v2, v3

    add-int/lit8 v3, v40, 0x2

    int-to-float v3, v3

    mul-float v3, v3, v30

    add-float/2addr v2, v3

    const/high16 v3, 0x40e0

    sub-float v33, v2, v3

    .line 5557
    .restart local v33       #circleY:F
    move-object/from16 v0, p2

    iget v15, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v16, v0

    const/4 v2, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/calendar/Event;

    iget v0, v2, Lcom/htc/calendar/Event;->color:I

    move/from16 v18, v0

    add-int/lit8 v19, v40, 0x2

    move-object/from16 v13, p0

    move-object/from16 v14, p3

    invoke-direct/range {v13 .. v19}, Lcom/htc/calendar/CalendarView;->draw_ColorChip(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;II)V

    .line 5559
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v21, v0

    add-int/lit8 v24, v40, 0x2

    move-object/from16 v18, p0

    move-object/from16 v19, p3

    move-object/from16 v20, v4

    move/from16 v22, v6

    move-object/from16 v23, p4

    invoke-direct/range {v18 .. v24}, Lcom/htc/calendar/CalendarView;->draw_combinedOneLine(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;I)V

    .line 5560
    add-int/lit8 v40, v40, 0x1

    goto :goto_4

    .line 5542
    .end local v33           #circleY:F
    .end local v35           #ev:Lcom/htc/calendar/Event;
    .end local v39           #i$:Ljava/util/Iterator;
    .end local v40           #idx:I
    :cond_13
    if-eqz v44, :cond_11

    .line 5543
    add-int/lit8 v43, v43, -0x1

    goto/16 :goto_3

    .line 5561
    .restart local v35       #ev:Lcom/htc/calendar/Event;
    .restart local v39       #i$:Ljava/util/Iterator;
    .restart local v40       #idx:I
    :cond_14
    move/from16 v0, v40

    move/from16 v1, v43

    if-lt v0, v1, :cond_12

    .line 5567
    .end local v35           #ev:Lcom/htc/calendar/Event;
    :cond_15
    if-eqz v44, :cond_0

    .line 5568
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "+%d more"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    sub-int v10, p7, v43

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v7

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 5570
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v21, v0

    move-object/from16 v18, p0

    move-object/from16 v19, p3

    move-object/from16 v20, v4

    move/from16 v22, v6

    move-object/from16 v23, p4

    move/from16 v24, v38

    invoke-direct/range {v18 .. v24}, Lcom/htc/calendar/CalendarView;->draw_combinedOneLine(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;I)V

    goto/16 :goto_0
.end method

.method private drawCurrentTimeLine(Landroid/graphics/Rect;IILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 2
    .parameter "r"
    .parameter "left"
    .parameter "top"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 1918
    sget v0, Lcom/htc/calendar/CalendarView;->mCurrentTimeMarkerBorderColor:I

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1919
    sget v0, Lcom/htc/calendar/CalendarView;->CURRENT_TIME_LINE_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p3, v0

    sget v1, Lcom/htc/calendar/CalendarView;->CURRENT_TIME_LINE_BORDER_WIDTH:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 1920
    sget v0, Lcom/htc/calendar/CalendarView;->CURRENT_TIME_LINE_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    sget v1, Lcom/htc/calendar/CalendarView;->CURRENT_TIME_LINE_BORDER_WIDTH:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 1921
    sget v0, Lcom/htc/calendar/CalendarView;->CURRENT_TIME_LINE_SIDE_BUFFER:I

    add-int/2addr v0, p2

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1922
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    add-int/2addr v0, v1

    sget v1, Lcom/htc/calendar/CalendarView;->CURRENT_TIME_LINE_SIDE_BUFFER:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1923
    invoke-virtual {p4, p1, p5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1925
    sget v0, Lcom/htc/calendar/CalendarView;->mCurrentTimeLineColor:I

    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1926
    sget v0, Lcom/htc/calendar/CalendarView;->CURRENT_TIME_LINE_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p3, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 1927
    sget v0, Lcom/htc/calendar/CalendarView;->CURRENT_TIME_LINE_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 1928
    invoke-virtual {p4, p1, p5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1929
    return-void
.end method

.method private drawCurrentTimeMarker(ILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 2
    .parameter "top"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 1906
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1907
    .local v0, r:Landroid/graphics/Rect;
    sget v1, Lcom/htc/calendar/CalendarView;->CURRENT_TIME_LINE_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1908
    sget v1, Lcom/htc/calendar/CalendarView;->CURRENT_TIME_LINE_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1909
    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1910
    iget v1, p0, Lcom/htc/calendar/CalendarView;->mHoursWidth:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1912
    sget v1, Lcom/htc/calendar/CalendarView;->mCurrentTimeMarkerColor:I

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1913
    invoke-virtual {p2, v0, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1914
    return-void
.end method

.method private drawDayHeader(Ljava/lang/String;IIILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 14
    .parameter "dateStr"
    .parameter "day"
    .parameter "cell"
    .parameter "x"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 2272
    move/from16 v0, p4

    int-to-float v11, v0

    iget v12, p0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    int-to-float v12, v12

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    add-float v9, v11, v12

    .line 2275
    .local v9, xCenter:F
    iget-object v11, p0, Lcom/htc/calendar/CalendarView;->mBold:Landroid/graphics/Typeface;

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2276
    const/4 v11, 0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2279
    const/4 v6, 0x0

    .line 2280
    .local v6, isWeekend:Z
    iget v11, p0, Lcom/htc/calendar/CalendarView;->mStartDay:I

    if-nez v11, :cond_0

    if-eqz p2, :cond_2

    const/4 v11, 0x6

    move/from16 v0, p2

    if-eq v0, v11, :cond_2

    :cond_0
    iget v11, p0, Lcom/htc/calendar/CalendarView;->mStartDay:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    const/4 v11, 0x5

    move/from16 v0, p2

    if-eq v0, v11, :cond_2

    const/4 v11, 0x6

    move/from16 v0, p2

    if-eq v0, v11, :cond_2

    :cond_1
    iget v11, p0, Lcom/htc/calendar/CalendarView;->mStartDay:I

    const/4 v12, 0x6

    if-ne v11, v12, :cond_3

    if-eqz p2, :cond_2

    const/4 v11, 0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_3

    .line 2283
    :cond_2
    const/4 v6, 0x1

    .line 2286
    :cond_3
    iget v11, p0, Lcom/htc/calendar/CalendarView;->mStartDay:I

    move/from16 v0, p2

    invoke-static {v0, v11}, Lcom/htc/calendar/Utils;->isSaturday(II)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 2287
    sget v11, Lcom/htc/calendar/CalendarView;->mWeek_saturdayColor:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 2294
    :goto_0
    iget v11, p0, Lcom/htc/calendar/CalendarView;->mFirstDate:I

    add-int v1, v11, p2

    .line 2295
    .local v1, dateNum:I
    iget v11, p0, Lcom/htc/calendar/CalendarView;->mMonthLength:I

    if-le v1, v11, :cond_4

    .line 2296
    iget v11, p0, Lcom/htc/calendar/CalendarView;->mMonthLength:I

    sub-int/2addr v1, v11

    .line 2301
    :cond_4
    const/16 v11, 0xa

    if-ge v1, v11, :cond_9

    .line 2302
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "0"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2307
    .local v2, dateNumStr:Ljava/lang/String;
    :goto_1
    iget-object v11, p0, Lcom/htc/calendar/CalendarView;->dayHeaders:[Lcom/htc/calendar/CalendarView$DayHeader;

    aget-object v5, v11, p2

    .line 2308
    .local v5, header:Lcom/htc/calendar/CalendarView$DayHeader;
    if-eqz v5, :cond_5

    iget v11, v5, Lcom/htc/calendar/CalendarView$DayHeader;->cell:I

    move/from16 v0, p3

    if-eq v11, v0, :cond_6

    .line 2312
    :cond_5
    iget-object v11, p0, Lcom/htc/calendar/CalendarView;->dayHeaders:[Lcom/htc/calendar/CalendarView$DayHeader;

    new-instance v12, Lcom/htc/calendar/CalendarView$DayHeader;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/htc/calendar/CalendarView$DayHeader;-><init>(Lcom/htc/calendar/CalendarView$1;)V

    aput-object v12, v11, p2

    .line 2313
    iget-object v11, p0, Lcom/htc/calendar/CalendarView;->dayHeaders:[Lcom/htc/calendar/CalendarView$DayHeader;

    aget-object v11, v11, p2

    move/from16 v0, p3

    iput v0, v11, Lcom/htc/calendar/CalendarView$DayHeader;->cell:I

    .line 2319
    iget-object v11, p0, Lcom/htc/calendar/CalendarView;->dayHeaders:[Lcom/htc/calendar/CalendarView$DayHeader;

    aget-object v11, v11, p2

    iput-object p1, v11, Lcom/htc/calendar/CalendarView$DayHeader;->dateString:Ljava/lang/String;

    .line 2320
    iget-object v11, p0, Lcom/htc/calendar/CalendarView;->dayHeaders:[Lcom/htc/calendar/CalendarView$DayHeader;

    aget-object v11, v11, p2

    iput-object v2, v11, Lcom/htc/calendar/CalendarView$DayHeader;->dateNumString:Ljava/lang/String;

    .line 2325
    :cond_6
    iget-object v11, p0, Lcom/htc/calendar/CalendarView;->dayHeaders:[Lcom/htc/calendar/CalendarView$DayHeader;

    aget-object v11, v11, p2

    iget-object p1, v11, Lcom/htc/calendar/CalendarView$DayHeader;->dateString:Ljava/lang/String;

    .line 2326
    iget-object v11, p0, Lcom/htc/calendar/CalendarView;->dayHeaders:[Lcom/htc/calendar/CalendarView$DayHeader;

    aget-object v11, v11, p2

    iget-object v2, v11, Lcom/htc/calendar/CalendarView$DayHeader;->dateNumString:Ljava/lang/String;

    .line 2328
    iget v11, p0, Lcom/htc/calendar/CalendarView;->mBannerPlusMargin:I

    add-int/lit8 v11, v11, -0x7

    int-to-float v10, v11

    .line 2331
    .local v10, y:F
    iget-object v11, p0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    invoke-virtual {v11}, Lcom/htc/calendar/CalendarActivity;->getDayBarTextViews()[Landroid/widget/TextView;

    move-result-object v4

    .line 2332
    .local v4, dayBarTv:[Landroid/widget/TextView;
    aget-object v11, v4, p2

    invoke-virtual {v11, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2334
    iget-object v11, p0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    invoke-virtual {v11}, Lcom/htc/calendar/CalendarActivity;->getDayBarNumberTextViews()[Landroid/widget/TextView;

    move-result-object v3

    .line 2335
    .local v3, dayBarNumTv:[Landroid/widget/TextView;
    iget-object v11, p0, Lcom/htc/calendar/CalendarView;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/htc/calendar/HtcUtils;->getSystemLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "ar"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 2336
    aget-object v11, v3, p2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2343
    :goto_2
    iget-object v11, p0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    invoke-virtual {v11}, Lcom/htc/calendar/CalendarActivity;->getDayBarWeekNumberTextView()Landroid/widget/TextView;

    move-result-object v8

    .line 2344
    .local v8, weekNumTv:Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/htc/calendar/CalendarView;->getWeekNumber()I

    move-result v7

    .line 2345
    .local v7, weekNum:I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "w"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2348
    return-void

    .line 2288
    .end local v1           #dateNum:I
    .end local v2           #dateNumStr:Ljava/lang/String;
    .end local v3           #dayBarNumTv:[Landroid/widget/TextView;
    .end local v4           #dayBarTv:[Landroid/widget/TextView;
    .end local v5           #header:Lcom/htc/calendar/CalendarView$DayHeader;
    .end local v7           #weekNum:I
    .end local v8           #weekNumTv:Landroid/widget/TextView;
    .end local v10           #y:F
    :cond_7
    iget v11, p0, Lcom/htc/calendar/CalendarView;->mStartDay:I

    move/from16 v0, p2

    invoke-static {v0, v11}, Lcom/htc/calendar/Utils;->isSunday(II)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 2289
    sget v11, Lcom/htc/calendar/CalendarView;->mWeek_sundayColor:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    .line 2291
    :cond_8
    sget v11, Lcom/htc/calendar/CalendarView;->mCalendarDateBannerTextColor:I

    move-object/from16 v0, p6

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_0

    .line 2304
    .restart local v1       #dateNum:I
    :cond_9
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #dateNumStr:Ljava/lang/String;
    goto/16 :goto_1

    .line 2339
    .restart local v3       #dayBarNumTv:[Landroid/widget/TextView;
    .restart local v4       #dayBarTv:[Landroid/widget/TextView;
    .restart local v5       #header:Lcom/htc/calendar/CalendarView$DayHeader;
    .restart local v10       #y:F
    :cond_a
    rsub-int/lit8 v11, p2, 0x6

    aget-object v11, v3, v11

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private drawDayHeaderLoop(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 10
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 1808
    sget v0, Lcom/htc/calendar/CalendarView;->mCalendarDateBannerBackground:I

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1809
    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 1810
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mBannerPlusMargin:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 1811
    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 1812
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mHoursWidth:I

    iget v1, p0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    iget v5, p0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    add-int/lit8 v5, v5, 0x1

    mul-int/2addr v1, v5

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1818
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1819
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mViewWidth:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1820
    sget v0, Lcom/htc/calendar/CalendarView;->mCalendarGridAreaBackground:I

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1827
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mSelectionMode:I

    invoke-virtual {p0, v0}, Lcom/htc/calendar/CalendarView;->getSelectedMode(I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1828
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    if-le v0, v6, :cond_0

    .line 1829
    sget v0, Lcom/htc/calendar/CalendarView;->mCalendarDateSelected:I

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1831
    const/16 v0, 0x8

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 1833
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mBannerPlusMargin:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 1834
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    iget v1, p0, Lcom/htc/calendar/CalendarView;->mFirstJulianDay:I

    sub-int v8, v0, v1

    .line 1835
    .local v8, daynum:I
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mHoursWidth:I

    iget v1, p0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v1, v8

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1836
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1843
    .end local v8           #daynum:I
    :cond_0
    sget v0, Lcom/htc/calendar/CalendarView;->NORMAL_FONT_SIZE:I

    int-to-float v0, v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1844
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1845
    iget v4, p0, Lcom/htc/calendar/CalendarView;->mHoursWidth:I

    .line 1846
    .local v4, x:I
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    add-int/lit8 v9, v0, 0x1

    .line 1847
    .local v9, deltaX:I
    const/4 v3, 0x0

    .line 1848
    .local v3, cell:I
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/calendar/HtcUtils;->getSystemLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1849
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mFirstJulianDay:I

    add-int/lit8 v3, v0, 0x6

    .line 1862
    :goto_0
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/calendar/HtcUtils;->isDayNamestruncate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1863
    iget-object v7, p0, Lcom/htc/calendar/CalendarView;->mDayStrs2Letter:[Ljava/lang/String;

    .line 1869
    .local v7, dayNames:[Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mBold:Landroid/graphics/Typeface;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1870
    invoke-virtual {p3, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1871
    const/4 v2, 0x0

    .local v2, day:I
    :goto_2
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    if-ge v2, v0, :cond_5

    .line 1872
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mStartDay:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/calendar/HtcUtils;->getSystemLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1873
    :cond_1
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mStartDay:I

    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/htc/calendar/CalendarView;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/htc/calendar/HtcUtils;->getCorrectPosition(ILandroid/content/Context;)I

    move-result v0

    aget-object v1, v7, v0

    move-object v0, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/htc/calendar/CalendarView;->drawDayHeader(Ljava/lang/String;IIILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 1877
    :goto_3
    add-int/2addr v4, v9

    .line 1871
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1851
    .end local v2           #day:I
    .end local v7           #dayNames:[Ljava/lang/String;
    :cond_2
    iget v3, p0, Lcom/htc/calendar/CalendarView;->mFirstJulianDay:I

    goto :goto_0

    .line 1866
    :cond_3
    iget-object v7, p0, Lcom/htc/calendar/CalendarView;->mDayStrs:[Ljava/lang/String;

    .restart local v7       #dayNames:[Ljava/lang/String;
    goto :goto_1

    .line 1875
    .restart local v2       #day:I
    :cond_4
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mStartDay:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x5

    rem-int/lit8 v0, v0, 0x7

    iget-object v1, p0, Lcom/htc/calendar/CalendarView;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/htc/calendar/HtcUtils;->getCorrectPosition(ILandroid/content/Context;)I

    move-result v0

    aget-object v1, v7, v0

    move-object v0, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/htc/calendar/CalendarView;->drawDayHeader(Ljava/lang/String;IIILandroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_3

    .line 1879
    :cond_5
    return-void
.end method

.method private drawEventRect(Lcom/htc/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;)Landroid/graphics/RectF;
    .locals 6
    .parameter "event"
    .parameter "canvas"
    .parameter "p"
    .parameter "eventTextPaint"

    .prologue
    .line 3235
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/htc/calendar/CalendarView;->drawEventRect(Lcom/htc/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method private drawEventRect(Lcom/htc/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)Landroid/graphics/RectF;
    .locals 17
    .parameter "event"
    .parameter "canvas"
    .parameter "p"
    .parameter "eventTextPaint"
    .parameter "preViewMode"

    .prologue
    .line 3240
    move-object/from16 v0, p1

    iget v14, v0, Lcom/htc/calendar/Event;->color:I

    const/16 v15, 0x20

    invoke-static {v14, v15}, Lcom/htc/calendar/HtcUtils;->getColor(II)I

    move-result v5

    .line 3241
    .local v5, color:I
    move-object/from16 v0, p1

    iget v14, v0, Lcom/htc/calendar/Event;->color:I

    const/16 v15, 0x30

    invoke-static {v14, v15}, Lcom/htc/calendar/HtcUtils;->getColor(II)I

    move-result v6

    .line 3242
    .local v6, color_pressed:I
    move-object/from16 v0, p1

    iget v14, v0, Lcom/htc/calendar/Event;->color:I

    const/16 v15, 0x40

    invoke-static {v14, v15}, Lcom/htc/calendar/HtcUtils;->getColor(II)I

    move-result v7

    .line 3245
    .local v7, color_selector:I
    move-object/from16 v0, p1

    iget v14, v0, Lcom/htc/calendar/Event;->selfAttendeeStatus:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_3

    const/4 v8, 0x1

    .line 3246
    .local v8, declined:Z
    :goto_0
    if-eqz v8, :cond_0

    .line 3247
    const/high16 v14, -0x100

    and-int v3, v5, v14

    .line 3248
    .local v3, alpha:I
    const v14, 0xffffff

    and-int/2addr v5, v14

    .line 3249
    const/high16 v14, 0xff

    and-int/2addr v14, v5

    shr-int/lit8 v11, v14, 0x10

    .line 3250
    .local v11, red:I
    const v14, 0xff00

    and-int/2addr v14, v5

    shr-int/lit8 v9, v14, 0x8

    .line 3251
    .local v9, green:I
    and-int/lit16 v4, v5, 0xff

    .line 3252
    .local v4, blue:I
    shr-int/lit8 v14, v11, 0x1

    shl-int/lit8 v14, v14, 0x10

    shr-int/lit8 v15, v9, 0x1

    shl-int/lit8 v15, v15, 0x8

    or-int/2addr v14, v15

    shr-int/lit8 v15, v4, 0x1

    or-int v5, v14, v15

    .line 3253
    const v14, 0x7f7f7f

    add-int/2addr v14, v3

    add-int/2addr v5, v14

    .line 3257
    .end local v3           #alpha:I
    .end local v4           #blue:I
    .end local v9           #green:I
    .end local v11           #red:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    move-object/from16 v0, p1

    if-ne v14, v0, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->isPreviewMode()Z

    move-result v14

    if-nez v14, :cond_7

    .line 3258
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/calendar/CalendarView;->mSelectionMode:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/calendar/CalendarView;->getSelectedMode(I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_4

    .line 3260
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/calendar/CalendarView;->mPrevSelectedEvent:Lcom/htc/calendar/Event;

    .line 3262
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 3263
    sget v14, Lcom/htc/calendar/CalendarView;->mSelectedEventTextColor:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 3284
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/calendar/CalendarView;->mRectF:Landroid/graphics/RectF;

    .line 3285
    .local v12, rf:Landroid/graphics/RectF;
    move-object/from16 v0, p1

    iget v14, v0, Lcom/htc/calendar/Event;->top:F

    iput v14, v12, Landroid/graphics/RectF;->top:F

    .line 3286
    move-object/from16 v0, p1

    iget v14, v0, Lcom/htc/calendar/Event;->bottom:F

    iput v14, v12, Landroid/graphics/RectF;->bottom:F

    .line 3287
    move-object/from16 v0, p1

    iget v14, v0, Lcom/htc/calendar/Event;->left:F

    iput v14, v12, Landroid/graphics/RectF;->left:F

    .line 3288
    move-object/from16 v0, p1

    iget v14, v0, Lcom/htc/calendar/Event;->right:F

    const/high16 v15, 0x3f80

    add-float/2addr v14, v15

    iput v14, v12, Landroid/graphics/RectF;->right:F

    .line 3293
    sget v14, Lcom/htc/calendar/CalendarView;->mScale:F

    const/high16 v15, 0x3f80

    cmpl-float v14, v14, v15

    if-nez v14, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->isWeekView()Z

    move-result v14

    if-nez v14, :cond_1

    .line 3294
    iget v14, v12, Landroid/graphics/RectF;->bottom:F

    const/high16 v15, 0x3f80

    add-float/2addr v14, v15

    iput v14, v12, Landroid/graphics/RectF;->bottom:F

    .line 3298
    :cond_1
    if-eqz p5, :cond_2

    .line 3299
    iget v14, v12, Landroid/graphics/RectF;->top:F

    const/high16 v15, 0x3f80

    sub-float/2addr v14, v15

    iput v14, v12, Landroid/graphics/RectF;->top:F

    .line 3300
    iget v14, v12, Landroid/graphics/RectF;->bottom:F

    const/high16 v15, 0x3f80

    sub-float/2addr v14, v15

    iput v14, v12, Landroid/graphics/RectF;->bottom:F

    .line 3301
    iget v14, v12, Landroid/graphics/RectF;->left:F

    const/high16 v15, 0x3f80

    sub-float/2addr v14, v15

    iput v14, v12, Landroid/graphics/RectF;->left:F

    .line 3302
    iget v14, v12, Landroid/graphics/RectF;->right:F

    const/high16 v15, 0x3f80

    sub-float/2addr v14, v15

    iput v14, v12, Landroid/graphics/RectF;->right:F

    .line 3305
    :cond_2
    sget v14, Lcom/htc/calendar/CalendarView;->SMALL_ROUND_RADIUS:F

    sget v15, Lcom/htc/calendar/CalendarView;->SMALL_ROUND_RADIUS:F

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v12, v14, v15, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 3308
    const/4 v14, 0x3

    new-array v10, v14, [F

    .line 3309
    .local v10, hsv:[F
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getColor()I

    move-result v14

    invoke-static {v14, v10}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 3310
    const/4 v14, 0x1

    const/high16 v15, 0x3f80

    aput v15, v10, v14

    .line 3311
    const/4 v14, 0x2

    aget v15, v10, v14

    const/high16 v16, 0x3f40

    mul-float v15, v15, v16

    aput v15, v10, v14

    .line 3312
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/CalendarView;->mPaintBorder:Landroid/graphics/Paint;

    invoke-static {v10}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 3314
    const/4 v13, 0x0

    .line 3315
    .local v13, textPaddingLeft:F
    invoke-virtual/range {p1 .. p1}, Lcom/htc/calendar/Event;->getMaxColumns()I

    move-result v14

    const/4 v15, 0x2

    if-le v14, v15, :cond_8

    const/4 v14, 0x1

    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p5

    invoke-direct {v0, v12, v1, v14, v2}, Lcom/htc/calendar/CalendarView;->drawHTCTransparent(Landroid/graphics/RectF;Landroid/graphics/Canvas;ZZ)F

    move-result v13

    .line 3317
    iget v14, v12, Landroid/graphics/RectF;->left:F

    const/high16 v15, 0x4000

    add-float/2addr v14, v15

    add-float/2addr v14, v13

    iput v14, v12, Landroid/graphics/RectF;->left:F

    .line 3319
    iget v14, v12, Landroid/graphics/RectF;->right:F

    const/high16 v15, 0x4000

    sub-float/2addr v14, v15

    iput v14, v12, Landroid/graphics/RectF;->right:F

    .line 3320
    return-object v12

    .line 3245
    .end local v8           #declined:Z
    .end local v10           #hsv:[F
    .end local v12           #rf:Landroid/graphics/RectF;
    .end local v13           #textPaddingLeft:F
    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 3264
    .restart local v8       #declined:Z
    :cond_4
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/calendar/CalendarView;->mSelectionMode:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/calendar/CalendarView;->getSelectedMode(I)I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_5

    .line 3266
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/calendar/CalendarView;->mPrevSelectedEvent:Lcom/htc/calendar/Event;

    .line 3268
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 3269
    sget v14, Lcom/htc/calendar/CalendarView;->mSelectedEventTextColor:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 3270
    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/calendar/CalendarView;->mSelectionMode:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/htc/calendar/CalendarView;->getSelectedMode(I)I

    move-result v14

    const/4 v15, 0x3

    if-ne v14, v15, :cond_6

    .line 3272
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 3273
    sget v14, Lcom/htc/calendar/CalendarView;->mSelectedEventTextColor:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 3275
    :cond_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 3276
    sget v14, Lcom/htc/calendar/CalendarView;->mEventTextColor:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 3279
    :cond_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 3280
    sget v14, Lcom/htc/calendar/CalendarView;->mEventTextColor:I

    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 3315
    .restart local v10       #hsv:[F
    .restart local v12       #rf:Landroid/graphics/RectF;
    .restart local v13       #textPaddingLeft:F
    :cond_8
    const/4 v14, 0x0

    goto :goto_2
.end method

.method private drawEventText(Lcom/htc/calendar/Event;Landroid/graphics/RectF;Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V
    .locals 28
    .parameter "event"
    .parameter "rf"
    .parameter "canvas"
    .parameter "p"
    .parameter "topMargin"

    .prologue
    .line 3337
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/calendar/CalendarView;->mDrawTextInEventRect:Z

    move/from16 v25, v0

    if-nez v25, :cond_1

    .line 3485
    :cond_0
    return-void

    .line 3341
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    move/from16 v25, v0

    const/16 v26, 0x7

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    .line 3346
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v25, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v26, v0

    sub-float v24, v25, v26

    .line 3347
    .local v24, width:F
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v25, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v26, v0

    sub-float v13, v25, v26

    .line 3350
    .local v13, height:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/CalendarView;->mEventTextHeight:I

    move/from16 v25, v0

    add-int/lit8 v18, v25, 0x1

    .line 3355
    .local v18, lineHeight:I
    sget v25, Lcom/htc/calendar/CalendarView;->MIN_CELL_WIDTH_FOR_TEXT:I

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    cmpg-float v25, v24, v25

    if-ltz v25, :cond_0

    .line 3361
    const/4 v6, 0x0

    .line 3362
    .local v6, bSmallEventText:Z
    float-to-int v0, v13

    move/from16 v25, v0

    move/from16 v0, v25

    move/from16 v1, v18

    if-gt v0, v1, :cond_2

    .line 3363
    const/4 v6, 0x1

    .line 3367
    :cond_2
    if-eqz v6, :cond_8

    .line 3368
    sget v25, Lcom/htc/calendar/CalendarView;->EVENT_SMAL_TEXT_FONT_SIZE:I

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p4

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3369
    div-int/lit8 v5, v18, 0x2

    .line 3377
    .local v5, __newLineHeight:I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/htc/calendar/Event;->getTitleAndLocation()Ljava/lang/String;

    move-result-object v22

    .line 3379
    .local v22, text:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/htc/calendar/CalendarView;->drawTextSanitizer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 3381
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v17

    .line 3382
    .local v17, len:I
    const/16 v25, 0x1f4

    move/from16 v0, v17

    move/from16 v1, v25

    if-le v0, v1, :cond_3

    .line 3383
    const/16 v25, 0x0

    const/16 v26, 0x1f4

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 3384
    const/16 v17, 0x1f4

    .line 3390
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mCharWidths:[F

    move-object/from16 v25, v0

    move-object/from16 v0, p4

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 3391
    move-object/from16 v11, v22

    .line 3393
    .local v11, fragment:Ljava/lang/String;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 3395
    .local v12, fragmentString:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v20, 0x0

    .line 3412
    .local v20, start:I
    :goto_1
    move/from16 v0, v20

    move/from16 v1, v17

    if-ge v0, v1, :cond_d

    add-int/lit8 v25, v5, 0x1

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    cmpl-float v25, v13, v25

    if-ltz v25, :cond_d

    .line 3413
    mul-int/lit8 v25, v5, 0x2

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    cmpg-float v25, v13, v25

    if-gez v25, :cond_9

    const/16 v16, 0x1

    .line 3417
    .local v16, lastLine:Z
    :cond_4
    :goto_2
    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 3418
    .local v7, c:C
    const/16 v25, 0x20

    move/from16 v0, v25

    if-eq v7, v0, :cond_a

    .line 3422
    :goto_3
    const/16 v21, 0x0

    .line 3423
    .local v21, sum:F
    move/from16 v9, v20

    .line 3424
    .local v9, end:I
    move/from16 v15, v20

    .local v15, ii:I
    :goto_4
    move/from16 v0, v17

    if-ge v15, v0, :cond_6

    .line 3425
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 3429
    const/16 v25, 0x20

    move/from16 v0, v25

    if-ne v7, v0, :cond_5

    .line 3430
    move v9, v15

    .line 3432
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mCharWidths:[F

    move-object/from16 v25, v0

    aget v25, v25, v15

    add-float v21, v21, v25

    .line 3436
    cmpl-float v25, v21, v24

    if-lez v25, :cond_c

    .line 3437
    move/from16 v0, v20

    if-le v9, v0, :cond_b

    if-nez v16, :cond_b

    .line 3439
    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 3440
    move/from16 v20, v9

    .line 3455
    :cond_6
    :goto_5
    cmpg-float v25, v21, v24

    if-gtz v25, :cond_7

    .line 3456
    move-object/from16 v0, v22

    move/from16 v1, v20

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 3457
    move/from16 v20, v17

    .line 3462
    :cond_7
    int-to-float v0, v5

    move/from16 v25, v0

    sub-float v13, v13, v25

    .line 3464
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3371
    .end local v5           #__newLineHeight:I
    .end local v7           #c:C
    .end local v9           #end:I
    .end local v11           #fragment:Ljava/lang/String;
    .end local v12           #fragmentString:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15           #ii:I
    .end local v16           #lastLine:Z
    .end local v17           #len:I
    .end local v20           #start:I
    .end local v21           #sum:F
    .end local v22           #text:Ljava/lang/String;
    :cond_8
    sget v25, Lcom/htc/calendar/CalendarView;->EVENT_SMAL_TEXT_FONT_SIZE:I

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p4

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3372
    move/from16 v5, v18

    .restart local v5       #__newLineHeight:I
    goto/16 :goto_0

    .line 3413
    .restart local v11       #fragment:Ljava/lang/String;
    .restart local v12       #fragmentString:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17       #len:I
    .restart local v20       #start:I
    .restart local v22       #text:Ljava/lang/String;
    :cond_9
    const/16 v16, 0x0

    goto :goto_2

    .line 3419
    .restart local v7       #c:C
    .restart local v16       #lastLine:Z
    :cond_a
    add-int/lit8 v20, v20, 0x1

    .line 3420
    move/from16 v0, v20

    move/from16 v1, v17

    if-lt v0, v1, :cond_4

    goto :goto_3

    .line 3447
    .restart local v9       #end:I
    .restart local v15       #ii:I
    .restart local v21       #sum:F
    :cond_b
    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 3448
    move/from16 v20, v15

    .line 3449
    goto :goto_5

    .line 3424
    :cond_c
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 3469
    .end local v7           #c:C
    .end local v9           #end:I
    .end local v15           #ii:I
    .end local v16           #lastLine:Z
    .end local v21           #sum:F
    :cond_d
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v10

    .line 3471
    .local v10, fontMetrics:Landroid/graphics/Paint$FontMetrics;
    iget v0, v10, Landroid/graphics/Paint$FontMetrics;->ascent:F

    move/from16 v25, v0

    iget v0, v10, Landroid/graphics/Paint$FontMetrics;->descent:F

    move/from16 v26, v0

    add-float v25, v25, v26

    const/high16 v26, 0x4000

    div-float v8, v25, v26

    .line 3472
    .local v8, differ:F
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v25, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v26, v0

    add-float v25, v25, v26

    const/high16 v26, 0x4000

    div-float v25, v25, v26

    sub-float v23, v25, v8

    .line 3474
    .local v23, top:F
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 3476
    .local v19, lines:I
    const/16 v25, 0x1

    move/from16 v0, v19

    move/from16 v1, v25

    if-le v0, v1, :cond_e

    .line 3477
    add-int/lit8 v25, v19, -0x1

    div-int/lit8 v25, v25, 0x2

    mul-int v25, v25, v5

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v25, v23, v25

    add-int/lit8 v26, v19, -0x1

    rem-int/lit8 v26, v26, 0x2

    mul-int v26, v26, v5

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    const/high16 v27, 0x3f00

    mul-float v26, v26, v27

    sub-float v23, v25, v26

    .line 3480
    :cond_e
    sget-object v25, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 3481
    const/4 v14, 0x0

    .local v14, i:I
    :goto_6
    move/from16 v0, v19

    if-ge v14, v0, :cond_0

    .line 3482
    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v26, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v23

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3483
    int-to-float v0, v5

    move/from16 v25, v0

    add-float v23, v23, v25

    .line 3481
    add-int/lit8 v14, v14, 0x1

    goto :goto_6
.end method

.method private drawEvents(IIILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 25
    .parameter "date"
    .parameter "left"
    .parameter "top"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 2857
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/calendar/CalendarView;->mEventTextPaint:Landroid/graphics/Paint;

    .line 2858
    .local v13, eventTextPaint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    sget v5, Lcom/htc/calendar/CalendarView;->mSplitWindow:I

    div-int v7, v4, v5

    .line 2859
    .local v7, cellWidth:I
    sget v18, Lcom/htc/calendar/CalendarView;->mCellHeight:I

    .line 2862
    .local v18, cellHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    .line 2863
    .local v23, selectionArea:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/calendar/CalendarView;->mSelectionHour:I

    add-int/lit8 v5, v18, 0x1

    mul-int/2addr v4, v5

    add-int v4, v4, p3

    move-object/from16 v0, v23

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 2864
    move-object/from16 v0, v23

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int v4, v4, v18

    move-object/from16 v0, v23

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 2865
    move/from16 v0, p2

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 2866
    move-object/from16 v0, v23

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v7

    move-object/from16 v0, v23

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 2868
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    .line 2869
    .local v20, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/Event;>;"
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 2870
    .local v22, numEvents:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView;->mEventGeometry:Lcom/htc/calendar/EventGeometry;

    .line 2873
    .local v3, geometry:Lcom/htc/calendar/EventGeometry;
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->isPreviewMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2874
    const/16 v21, 0x0

    .local v21, i:I
    :goto_0
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_1

    .line 2875
    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/calendar/Event;

    .local v8, event:Lcom/htc/calendar/Event;
    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    .line 2876
    invoke-virtual/range {v3 .. v8}, Lcom/htc/calendar/EventGeometry;->computeEventRect(IIIILcom/htc/calendar/Event;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2874
    :cond_0
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 2882
    .end local v8           #event:Lcom/htc/calendar/Event;
    .end local v21           #i:I
    :cond_1
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_1
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    .line 2883
    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/calendar/Event;

    .restart local v8       #event:Lcom/htc/calendar/Event;
    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    .line 2884
    invoke-virtual/range {v3 .. v8}, Lcom/htc/calendar/EventGeometry;->computeEventRect(IIIILcom/htc/calendar/Event;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2882
    :cond_2
    :goto_2
    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 2888
    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_4

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/calendar/CalendarView;->mSelectionAllDay:Z

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/calendar/CalendarView;->mComputeSelectedEvents:Z

    if-eqz v4, :cond_4

    move-object/from16 v0, v23

    invoke-virtual {v3, v8, v0}, Lcom/htc/calendar/EventGeometry;->eventIntersectsSelection(Lcom/htc/calendar/Event;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2890
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2892
    :cond_4
    iget v4, v8, Lcom/htc/calendar/Event;->mGroup:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/calendar/CalendarView;->getGroupCount(I)I

    move-result v16

    .line 2893
    .local v16, countGroup:I
    iget v4, v8, Lcom/htc/calendar/Event;->mGroup:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/calendar/CalendarView;->checkProcessed(I)Z

    move-result v19

    .line 2896
    .local v19, checkProcessed:Z
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->isPreviewMode()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v8}, Lcom/htc/calendar/Event;->getMaxColumns()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_5

    if-nez v19, :cond_5

    .line 2900
    iget v4, v8, Lcom/htc/calendar/Event;->right:F

    iget v5, v8, Lcom/htc/calendar/Event;->left:F

    sub-float/2addr v4, v5

    invoke-virtual {v8}, Lcom/htc/calendar/Event;->getMaxColumns()I

    move-result v5

    int-to-float v5, v5

    mul-float v24, v4, v5

    .line 2901
    .local v24, width:F
    move/from16 v0, p2

    int-to-float v4, v0

    add-float v4, v4, v24

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/CalendarView;->mEventGeometry:Lcom/htc/calendar/EventGeometry;

    invoke-virtual {v5}, Lcom/htc/calendar/EventGeometry;->getCellMargin()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v4, v5

    iput v4, v8, Lcom/htc/calendar/Event;->right:F

    .line 2902
    move/from16 v0, p2

    int-to-float v4, v0

    iput v4, v8, Lcom/htc/calendar/Event;->left:F

    .line 2904
    iget v15, v8, Lcom/htc/calendar/Event;->mGroup:I

    .line 2905
    .local v15, group:I
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/htc/calendar/CalendarView;->findCombiledArea(I)Lcom/htc/calendar/Event;

    move-result-object v17

    .line 2907
    .local v17, combined:Lcom/htc/calendar/Event;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/calendar/CalendarView;->checkMeetingConflict(Lcom/htc/calendar/Event;)V

    .line 2909
    move-object/from16 v0, v17

    iget v4, v0, Lcom/htc/calendar/Event;->top:F

    iput v4, v8, Lcom/htc/calendar/Event;->top:F

    .line 2910
    move-object/from16 v0, v17

    iget v4, v0, Lcom/htc/calendar/Event;->bottom:F

    iput v4, v8, Lcom/htc/calendar/Event;->bottom:F

    .line 2912
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-direct {v0, v8, v1, v2, v13}, Lcom/htc/calendar/CalendarView;->drawCombinedEventRect(Lcom/htc/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;)Landroid/graphics/RectF;

    move-result-object v11

    .line 2913
    .local v11, rf:Landroid/graphics/RectF;
    const/4 v14, 0x2

    move-object/from16 v9, p0

    move-object v10, v8

    move-object/from16 v12, p4

    invoke-direct/range {v9 .. v17}, Lcom/htc/calendar/CalendarView;->drawCombinedEventsText(Lcom/htc/calendar/Event;Landroid/graphics/RectF;Landroid/graphics/Canvas;Landroid/graphics/Paint;IIILcom/htc/calendar/Event;)V

    goto/16 :goto_2

    .line 2914
    .end local v11           #rf:Landroid/graphics/RectF;
    .end local v15           #group:I
    .end local v17           #combined:Lcom/htc/calendar/Event;
    .end local v24           #width:F
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->isPreviewMode()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v8}, Lcom/htc/calendar/Event;->getMaxColumns()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_6

    if-nez v19, :cond_2

    .line 2919
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->isPreviewMode()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2921
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/htc/calendar/CalendarView;->checkMeetingConflict(Lcom/htc/calendar/Event;)V

    .line 2924
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-direct {v0, v8, v1, v2, v13}, Lcom/htc/calendar/CalendarView;->drawEventRect(Lcom/htc/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;)Landroid/graphics/RectF;

    move-result-object v11

    .line 2927
    .restart local v11       #rf:Landroid/graphics/RectF;
    const/4 v14, 0x2

    move-object/from16 v9, p0

    move-object v10, v8

    move-object/from16 v12, p4

    invoke-direct/range {v9 .. v14}, Lcom/htc/calendar/CalendarView;->drawEventText(Lcom/htc/calendar/Event;Landroid/graphics/RectF;Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    goto/16 :goto_2

    .line 2931
    .end local v8           #event:Lcom/htc/calendar/Event;
    .end local v11           #rf:Landroid/graphics/RectF;
    .end local v16           #countGroup:I
    .end local v19           #checkProcessed:Z
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    move/from16 v0, p1

    if-ne v0, v4, :cond_9

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/calendar/CalendarView;->mSelectionAllDay:Z

    if-nez v4, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/calendar/CalendarView;->mSelectionMode:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/calendar/CalendarView;->getSelectedMode(I)I

    move-result v4

    if-eqz v4, :cond_9

    .line 2933
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->computeNeighbors()V

    .line 2934
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    if-eqz v4, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->isPreviewMode()Z

    move-result v4

    if-nez v4, :cond_9

    .line 2936
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-direct {v0, v4, v1, v2, v13}, Lcom/htc/calendar/CalendarView;->drawEventRect(Lcom/htc/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;)Landroid/graphics/RectF;

    move-result-object v11

    .line 2939
    .restart local v11       #rf:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    const/4 v14, 0x2

    move-object/from16 v9, p0

    move-object/from16 v12, p4

    invoke-direct/range {v9 .. v14}, Lcom/htc/calendar/CalendarView;->drawEventText(Lcom/htc/calendar/Event;Landroid/graphics/RectF;Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    .line 2942
    .end local v11           #rf:Landroid/graphics/RectF;
    :cond_9
    return-void
.end method

.method private drawGridBackground(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 24
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 2351
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v16

    .line 2354
    .local v16, savedStyle:Landroid/graphics/Paint$Style;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_0

    .line 2356
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f070041

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sput v3, Lcom/htc/calendar/CalendarView;->mCalendarGridLineHorizontalColor:I

    .line 2364
    :goto_0
    sget v3, Lcom/htc/calendar/CalendarView;->mCalendarGridAreaBackground:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2365
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 2366
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mBitmapHeight:I

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 2367
    const/4 v3, 0x0

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 2368
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mViewWidth:I

    move-object/from16 v0, p1

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 2369
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2372
    sget v3, Lcom/htc/calendar/CalendarView;->mCalendarGridLineHorizontalColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2373
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2374
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2375
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2379
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_1

    .line 2381
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mHoursWidth:I

    add-int/lit8 v3, v3, 0x7

    int-to-float v0, v3

    move/from16 v17, v0

    .line 2382
    .local v17, startX:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mHoursWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    move/from16 v22, v0

    mul-int v7, v7, v22

    add-int/2addr v3, v7

    add-int/lit8 v3, v3, -0xb

    int-to-float v0, v3

    move/from16 v19, v0

    .line 2388
    .local v19, stopX:F
    :goto_1
    const/high16 v5, 0x4100

    .line 2390
    .local v5, y:F
    sget v3, Lcom/htc/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v13, v3

    .line 2392
    .local v13, deltaY:F
    const/4 v14, 0x0

    .line 2394
    .local v14, hour:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v7, 0x2080700

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 2395
    .local v15, hourLines:Landroid/graphics/drawable/Drawable;
    const/4 v14, 0x0

    :goto_2
    const/16 v3, 0x18

    if-gt v14, v3, :cond_2

    .line 2397
    move/from16 v0, v17

    float-to-int v3, v0

    float-to-int v7, v5

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v22, v0

    float-to-int v0, v5

    move/from16 v23, v0

    add-int/lit8 v23, v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v15, v3, v7, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2398
    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2399
    add-float/2addr v5, v13

    .line 2395
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 2359
    .end local v5           #y:F
    .end local v13           #deltaY:F
    .end local v14           #hour:I
    .end local v15           #hourLines:Landroid/graphics/drawable/Drawable;
    .end local v17           #startX:F
    .end local v19           #stopX:F
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f070044

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    sput v3, Lcom/htc/calendar/CalendarView;->mCalendarGridLineHorizontalColor:I

    goto/16 :goto_0

    .line 2385
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mHoursWidth:I

    int-to-float v0, v3

    move/from16 v17, v0

    .line 2386
    .restart local v17       #startX:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mHoursWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    move/from16 v22, v0

    mul-int v7, v7, v22

    add-int/2addr v3, v7

    add-int/lit8 v3, v3, 0x2

    int-to-float v0, v3

    move/from16 v19, v0

    .restart local v19       #stopX:F
    goto :goto_1

    .line 2403
    .restart local v5       #y:F
    .restart local v13       #deltaY:F
    .restart local v14       #hour:I
    .restart local v15       #hourLines:Landroid/graphics/drawable/Drawable;
    :cond_2
    sget v3, Lcom/htc/calendar/CalendarView;->mCalendarGridLineHorizontalColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2404
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 2405
    const/high16 v3, 0x4100

    const/high16 v7, 0x4000

    div-float v7, v13, v7

    add-float v5, v3, v7

    .line 2408
    new-instance v8, Landroid/graphics/Paint;

    move-object/from16 v0, p3

    invoke-direct {v8, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 2409
    .local v8, dashPaint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_3

    .line 2411
    new-instance v9, Landroid/graphics/DashPathEffect;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    const/high16 v7, 0x3f80

    invoke-direct {v9, v3, v7}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 2412
    .local v9, dashPath:Landroid/graphics/DashPathEffect;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v7, 0x7f070044

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2413
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 2415
    move/from16 v4, v17

    .line 2416
    .local v4, half_startX:F
    move/from16 v6, v19

    .line 2421
    .end local v9           #dashPath:Landroid/graphics/DashPathEffect;
    .local v6, half_stopX:F
    :goto_3
    const/4 v14, 0x0

    :goto_4
    const/16 v3, 0x17

    if-gt v14, v3, :cond_4

    move-object/from16 v3, p2

    move v7, v5

    .line 2422
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 2423
    add-float/2addr v5, v13

    .line 2421
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 2418
    .end local v4           #half_startX:F
    .end local v6           #half_stopX:F
    :cond_3
    const/high16 v3, 0x4080

    add-float v4, v17, v3

    .line 2419
    .restart local v4       #half_startX:F
    const/high16 v3, 0x4100

    add-float v6, v17, v3

    .restart local v6       #half_stopX:F
    goto :goto_3

    .line 2428
    :cond_4
    sget v3, Lcom/htc/calendar/CalendarView;->mCalendarGridLineVerticalColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2429
    const/16 v18, 0x0

    .line 2430
    .local v18, startY:F
    sget v3, Lcom/htc/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x18

    add-int/lit8 v3, v3, 0x1

    int-to-float v0, v3

    move/from16 v20, v0

    .line 2431
    .local v20, stopY:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v12, v3

    .line 2433
    .local v12, deltaX:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mHoursWidth:I

    int-to-float v0, v3

    move/from16 v21, v0

    .line 2435
    .local v21, x:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v7, 0x2080701

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 2436
    .local v11, dayVerticalLines:Landroid/graphics/drawable/Drawable;
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->isWeekView()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2437
    const/4 v10, 0x0

    .local v10, day:I
    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    if-ge v10, v3, :cond_5

    .line 2440
    move/from16 v0, v21

    float-to-int v3, v0

    move/from16 v0, v18

    float-to-int v7, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v22, v0

    add-int/lit8 v22, v22, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/CalendarView;->mBitmapHeight:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v3, v7, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2441
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2442
    add-float v21, v21, v12

    .line 2437
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 2448
    .end local v10           #day:I
    :cond_5
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2449
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2450
    return-void

    .line 2411
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x40t
        0x0t 0x0t 0x0t 0x40t
    .end array-data
.end method

.method private drawHTCTransparent(Landroid/graphics/RectF;Landroid/graphics/Canvas;)F
    .locals 1
    .parameter "rf"
    .parameter "canvas"

    .prologue
    const/4 v0, 0x0

    .line 4691
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/htc/calendar/CalendarView;->drawHTCTransparent(Landroid/graphics/RectF;Landroid/graphics/Canvas;ZZ)F

    move-result v0

    return v0
.end method

.method private drawHTCTransparent(Landroid/graphics/RectF;Landroid/graphics/Canvas;Z)F
    .locals 1
    .parameter "rf"
    .parameter "canvas"
    .parameter "preViewMode"

    .prologue
    .line 4696
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/htc/calendar/CalendarView;->drawHTCTransparent(Landroid/graphics/RectF;Landroid/graphics/Canvas;ZZ)F

    move-result v0

    return v0
.end method

.method private drawHTCTransparent(Landroid/graphics/RectF;Landroid/graphics/Canvas;ZZ)F
    .locals 12
    .parameter "rf"
    .parameter "canvas"
    .parameter "over"
    .parameter "preViewMode"

    .prologue
    .line 4701
    iget v10, p1, Landroid/graphics/RectF;->left:F

    float-to-int v5, v10

    .line 4702
    .local v5, left:I
    iget v10, p1, Landroid/graphics/RectF;->top:F

    float-to-int v9, v10

    .line 4703
    .local v9, top:I
    iget v10, p1, Landroid/graphics/RectF;->right:F

    float-to-int v7, v10

    .line 4704
    .local v7, right:I
    iget v10, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v10

    .line 4706
    .local v0, bottom:I
    iget-object v10, p0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f09005e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 4707
    .local v3, htcTransparentPadding:F
    iget-object v10, p0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f09005f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    .line 4708
    .local v8, textPadding:F
    sub-int v10, v0, v9

    add-int/lit8 v6, v10, 0x1

    .line 4709
    .local v6, rect_height:I
    sget v10, Lcom/htc/calendar/CalendarView;->mCellHeight:I

    if-ge v6, v10, :cond_1

    const/4 v2, 0x1

    .line 4710
    .local v2, halfHour:Z
    :goto_0
    invoke-direct {p0}, Lcom/htc/calendar/CalendarView;->isWeekView()Z

    move-result v4

    .line 4717
    .local v4, isWeekMode:Z
    const/4 v1, 0x0

    .line 4719
    .local v1, drawableHTC:Landroid/graphics/drawable/Drawable;
    if-eqz p4, :cond_3

    .line 4720
    iget-boolean v10, p0, Lcom/htc/calendar/CalendarView;->isSmallerAllDay:Z

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f020012

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 4746
    :goto_1
    if-eqz v1, :cond_0

    .line 4747
    invoke-virtual {v1, v5, v9, v7, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4748
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4751
    :cond_0
    return v8

    .line 4709
    .end local v1           #drawableHTC:Landroid/graphics/drawable/Drawable;
    .end local v2           #halfHour:Z
    .end local v4           #isWeekMode:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 4720
    .restart local v1       #drawableHTC:Landroid/graphics/drawable/Drawable;
    .restart local v2       #halfHour:Z
    .restart local v4       #isWeekMode:Z
    :cond_2
    iget-object v10, p0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f020011

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 4723
    :cond_3
    if-eqz v4, :cond_7

    .line 4724
    if-eqz p3, :cond_5

    .line 4725
    iget-boolean v10, p0, Lcom/htc/calendar/CalendarView;->isSmallerAllDay:Z

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f020010

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 4726
    :goto_2
    iget-object v10, p0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f02000f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 4725
    :cond_4
    iget-object v10, p0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f02000f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_2

    .line 4728
    :cond_5
    iget-boolean v10, p0, Lcom/htc/calendar/CalendarView;->isSmallerAllDay:Z

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f020010

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_3
    goto :goto_1

    :cond_6
    iget-object v10, p0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f02000f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_3

    .line 4732
    :cond_7
    if-eqz v2, :cond_9

    .line 4733
    iget-boolean v10, p0, Lcom/htc/calendar/CalendarView;->isSmallerAllDay:Z

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f020010

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_4
    goto :goto_1

    :cond_8
    iget-object v10, p0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f02000f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_4

    .line 4736
    :cond_9
    sget v10, Lcom/htc/calendar/CalendarView;->mScale:F

    const/high16 v11, 0x3f80

    cmpl-float v10, v10, v11

    if-ltz v10, :cond_a

    .line 4737
    iget-object v10, p0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f02000f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 4739
    :cond_a
    iget-boolean v10, p0, Lcom/htc/calendar/CalendarView;->isSmallerAllDay:Z

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f020010

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_5
    goto/16 :goto_1

    :cond_b
    iget-object v10, p0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v11, 0x7f02000f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_5
.end method

.method private drawHours(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 16
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 1991
    sget v4, Lcom/htc/calendar/CalendarView;->mCalendarHourBackground:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 1992
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 1993
    sget v4, Lcom/htc/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v4, v4, 0x18

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 1994
    const/4 v4, 0x0

    move-object/from16 v0, p1

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 1996
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/calendar/CalendarView;->mHoursWidth:I

    add-int/lit8 v4, v4, -0xf

    move-object/from16 v0, p1

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 1998
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2001
    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p1

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 2002
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/calendar/CalendarView;->mBitmapHeight:I

    move-object/from16 v0, p1

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 2003
    sget v4, Lcom/htc/calendar/CalendarView;->mCalendarGridAreaBackground:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2004
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2007
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/calendar/CalendarView;->mSelectionMode:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/calendar/CalendarView;->getSelectedMode(I)I

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->isPreviewMode()Z

    move-result v4

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/calendar/CalendarView;->mSelectionAllDay:Z

    if-nez v4, :cond_3

    .line 2010
    sget v4, Lcom/htc/calendar/CalendarView;->mHighLightDay:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    if-ne v4, v5, :cond_3

    sget v4, Lcom/htc/calendar/CalendarView;->mHighLightHour:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/calendar/CalendarView;->mSelectionHour:I

    if-ne v4, v5, :cond_3

    .line 2012
    sget v4, Lcom/htc/calendar/CalendarView;->mCalendarHourSelected:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2014
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/calendar/CalendarView;->mSelectionHour:I

    sget v5, Lcom/htc/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v5, v5, 0x1

    mul-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x8

    move-object/from16 v0, p1

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 2016
    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sget v5, Lcom/htc/calendar/CalendarView;->mCellHeight:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x2

    move-object/from16 v0, p1

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 2022
    const/4 v11, 0x0

    .line 2023
    .local v11, drawBorder:Z
    if-nez v11, :cond_0

    .line 2024
    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 2025
    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p1

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 2030
    :cond_0
    sget v4, Lcom/htc/calendar/CalendarView;->mCalendarGridAreaSelected:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2031
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/calendar/CalendarView;->mFirstJulianDay:I

    sub-int v10, v4, v5

    .line 2032
    .local v10, daynum:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/CalendarView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/calendar/HtcUtils;->getSystemLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ar"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2033
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/calendar/CalendarView;->mHoursWidth:I

    rsub-int/lit8 v5, v10, 0x6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    add-int/lit8 v6, v6, 0x1

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    move-object/from16 v0, p1

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 2037
    :goto_0
    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    add-int/2addr v4, v5

    move-object/from16 v0, p1

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 2038
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2043
    if-eqz v11, :cond_2

    .line 2044
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView;->mPath:Landroid/graphics/Path;

    .line 2045
    .local v3, path:Landroid/graphics/Path;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 2046
    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p1

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 2047
    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 2048
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->isWeekView()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2049
    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p1

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 2051
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 2052
    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    move-object/from16 v0, p1

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 2053
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/CalendarView;->mSelectionPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2057
    .end local v3           #path:Landroid/graphics/Path;
    :cond_2
    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    move-object/from16 v0, p1

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/htc/calendar/CalendarView;->saveSelectionPosition(FFFF)V

    .line 2061
    .end local v10           #daynum:I
    .end local v11           #drawBorder:Z
    :cond_3
    sget v4, Lcom/htc/calendar/CalendarView;->mCalendarHourLabel:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2062
    sget v4, Lcom/htc/calendar/CalendarView;->HOURS_FONT_SIZE:I

    int-to-float v4, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2066
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/calendar/CalendarView;->mIs24HourFormat:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 2067
    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2068
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/calendar/CalendarView;->mHoursWidth:I

    div-int/lit8 v13, v4, 0x2

    .line 2073
    .local v13, right:I
    :goto_1
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2085
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/calendar/CalendarView;->mHoursTextHeight:I

    add-int/lit8 v15, v4, 0x1

    .line 2088
    .local v15, y:I
    const/4 v12, 0x0

    .line 2089
    .local v12, i:I
    const/4 v12, 0x0

    :goto_2
    const/16 v4, 0x18

    if-ge v12, v4, :cond_7

    .line 2090
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/CalendarView;->mHourStrs:[Ljava/lang/String;

    aget-object v14, v4, v12

    .line 2091
    .local v14, time:Ljava/lang/String;
    const/16 v4, 0xc

    if-ne v12, v4, :cond_6

    .line 2092
    sget v4, Lcom/htc/calendar/CalendarView;->mCalendarHourNoonColor:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2095
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f08006d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 2096
    .local v9, Noon:Ljava/lang/String;
    int-to-float v4, v13

    int-to-float v5, v15

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v9, v4, v5, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2101
    .end local v9           #Noon:Ljava/lang/String;
    :goto_3
    sget v4, Lcom/htc/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v15, v4

    .line 2089
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 2036
    .end local v12           #i:I
    .end local v13           #right:I
    .end local v14           #time:Ljava/lang/String;
    .end local v15           #y:I
    .restart local v10       #daynum:I
    .restart local v11       #drawBorder:Z
    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/calendar/CalendarView;->mHoursWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    add-int/lit8 v5, v5, 0x1

    mul-int/2addr v5, v10

    add-int/2addr v4, v5

    move-object/from16 v0, p1

    iput v4, v0, Landroid/graphics/Rect;->left:I

    goto/16 :goto_0

    .line 2070
    .end local v10           #daynum:I
    .end local v11           #drawBorder:Z
    :cond_5
    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2071
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/calendar/CalendarView;->mHoursWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/htc/calendar/CalendarView;->mWeekHourDayMargin:I

    sub-int/2addr v4, v5

    add-int/lit8 v13, v4, 0x1

    .restart local v13       #right:I
    goto :goto_1

    .line 2098
    .restart local v12       #i:I
    .restart local v14       #time:Ljava/lang/String;
    .restart local v15       #y:I
    :cond_6
    sget v4, Lcom/htc/calendar/CalendarView;->mCalendarHourLabel:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 2099
    int-to-float v4, v13

    int-to-float v5, v15

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v14, v4, v5, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 2130
    .end local v14           #time:Ljava/lang/String;
    :cond_7
    return-void
.end method

.method private drawHtcAmPm(Landroid/graphics/Canvas;Landroid/graphics/Paint;FFLjava/lang/String;)V
    .locals 2
    .parameter "canvas"
    .parameter "p"
    .parameter "x"
    .parameter "y"
    .parameter "text"

    .prologue
    .line 4636
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f07000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 4637
    sget v0, Lcom/htc/calendar/CalendarView;->HOURS_FONT_SIZE:I

    int-to-float v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 4638
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mBold:Landroid/graphics/Typeface;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 4639
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 4640
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4641
    invoke-virtual {p1, p5, p3, p4, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 4642
    return-void
.end method

.method private drawPreviewAllDayEvent(IILandroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 34
    .parameter "firstDay"
    .parameter "numDays"
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 4975
    sget v3, Lcom/htc/calendar/CalendarView;->NORMAL_FONT_SIZE:I

    int-to-float v3, v3

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 4976
    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 4977
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/calendar/CalendarView;->mEventTextPaint:Landroid/graphics/Paint;

    .line 4980
    .local v12, eventTextPaint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mBannerPlusMargin:I

    move-object/from16 v0, p3

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 4981
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/calendar/CalendarView;->mAllDayHeight:I

    add-int/2addr v3, v6

    sget v6, Lcom/htc/calendar/CalendarView;->ALLDAY_TOP_MARGIN:I

    add-int/2addr v3, v6

    move-object/from16 v0, p3

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 4987
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    .line 4988
    const/4 v3, 0x0

    move-object/from16 v0, p3

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 4989
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mHoursWidth:I

    move-object/from16 v0, p3

    iget v6, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    sget v11, Lcom/htc/calendar/CalendarView;->mSplitWindow:I

    div-int/2addr v8, v11

    add-int/lit8 v8, v8, 0x1

    mul-int/2addr v6, v8

    add-int/2addr v3, v6

    move-object/from16 v0, p3

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 4995
    :goto_0
    sget v3, Lcom/htc/calendar/CalendarView;->mCalendarAllDayBackground:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 4996
    const/high16 v3, -0x34

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 5000
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p3

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 5005
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_1

    .line 5006
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mViewWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/calendar/CalendarView;->mHoursWidth:I

    add-int/2addr v3, v6

    move-object/from16 v0, p3

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 5011
    :goto_1
    sget v3, Lcom/htc/calendar/CalendarView;->mCalendarGridAreaBackground:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 5012
    const v3, -0xff3400

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 5016
    sget v3, Lcom/htc/calendar/CalendarView;->mCalendarGridLineVerticalColor:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 5017
    const v3, -0xffff01

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 5018
    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5019
    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5020
    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 5021
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v3

    .line 5022
    .local v5, startY:F
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v3

    .line 5023
    .local v7, stopY:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    sget v6, Lcom/htc/calendar/CalendarView;->mSplitWindow:I

    div-int/2addr v3, v6

    add-int/lit8 v3, v3, 0x1

    int-to-float v0, v3

    move/from16 v21, v0

    .line 5028
    .local v21, deltaX:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mHoursWidth:I

    int-to-float v4, v3

    .line 5029
    .local v4, x:F
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->isWeekView()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5030
    const/16 v19, 0x0

    .local v19, day:I
    :goto_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    move/from16 v0, v19

    if-ge v0, v3, :cond_2

    move-object/from16 v3, p4

    move v6, v4

    move-object/from16 v8, p5

    .line 5031
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 5032
    add-float v4, v4, v21

    .line 5030
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 4991
    .end local v4           #x:F
    .end local v5           #startY:F
    .end local v7           #stopY:F
    .end local v19           #day:I
    .end local v21           #deltaX:F
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mHoursWidth:I

    move-object/from16 v0, p3

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 4992
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    add-int/lit8 v8, v8, 0x1

    mul-int/2addr v6, v8

    add-int/2addr v3, v6

    move-object/from16 v0, p3

    iput v3, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_0

    .line 5008
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mViewWidth:I

    move-object/from16 v0, p3

    iput v3, v0, Landroid/graphics/Rect;->right:I

    goto/16 :goto_1

    .line 5036
    .restart local v4       #x:F
    .restart local v5       #startY:F
    .restart local v7       #stopY:F
    .restart local v21       #deltaX:F
    :cond_2
    const/4 v3, 0x1

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 5037
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5039
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mBannerPlusMargin:I

    sget v6, Lcom/htc/calendar/CalendarView;->ALLDAY_TOP_MARGIN:I

    add-int v33, v3, v6

    .line 5045
    .local v33, y:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_4

    .line 5046
    const/4 v14, 0x0

    .line 5051
    .local v14, left:F
    :goto_3
    add-int v3, p1, p2

    add-int/lit8 v28, v3, -0x1

    .line 5052
    .local v28, lastDay:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mPreviewEvent:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    .line 5053
    .local v25, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/Event;>;"
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v29

    .line 5054
    .local v29, numEvents:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mAllDayHeight:I

    int-to-float v0, v3

    move/from16 v22, v0

    .line 5055
    .local v22, drawHeight:F
    const/high16 v30, 0x3f80

    .line 5056
    .local v30, numRectangles:F
    const/16 v27, 0x0

    .local v27, i:I
    :goto_4
    move/from16 v0, v27

    move/from16 v1, v29

    if-ge v0, v1, :cond_a

    .line 5057
    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/calendar/Event;

    .line 5058
    .local v9, event:Lcom/htc/calendar/Event;
    iget-boolean v3, v9, Lcom/htc/calendar/Event;->allDay:Z

    if-nez v3, :cond_5

    .line 5056
    :cond_3
    :goto_5
    add-int/lit8 v27, v27, 0x1

    goto :goto_4

    .line 5048
    .end local v9           #event:Lcom/htc/calendar/Event;
    .end local v14           #left:F
    .end local v22           #drawHeight:F
    .end local v25           #events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/Event;>;"
    .end local v27           #i:I
    .end local v28           #lastDay:I
    .end local v29           #numEvents:I
    .end local v30           #numRectangles:F
    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mHoursWidth:I

    int-to-float v14, v3

    .restart local v14       #left:F
    goto :goto_3

    .line 5060
    .restart local v9       #event:Lcom/htc/calendar/Event;
    .restart local v22       #drawHeight:F
    .restart local v25       #events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/Event;>;"
    .restart local v27       #i:I
    .restart local v28       #lastDay:I
    .restart local v29       #numEvents:I
    .restart local v30       #numRectangles:F
    :cond_5
    iget v0, v9, Lcom/htc/calendar/Event;->startDay:I

    move/from16 v31, v0

    .line 5061
    .local v31, startDay:I
    iget v0, v9, Lcom/htc/calendar/Event;->endDay:I

    move/from16 v23, v0

    .line 5062
    .local v23, endDay:I
    move/from16 v0, v31

    move/from16 v1, v28

    if-gt v0, v1, :cond_3

    move/from16 v0, v23

    move/from16 v1, p1

    if-lt v0, v1, :cond_3

    .line 5064
    move/from16 v0, v31

    move/from16 v1, p1

    if-ge v0, v1, :cond_6

    .line 5065
    move/from16 v31, p1

    .line 5066
    :cond_6
    move/from16 v0, v23

    move/from16 v1, v28

    if-le v0, v1, :cond_7

    .line 5067
    move/from16 v23, v28

    .line 5068
    :cond_7
    sub-int v32, v31, p1

    .line 5069
    .local v32, startIndex:I
    sub-int v24, v23, p1

    .line 5070
    .local v24, endIndex:I
    div-float v26, v22, v30

    .line 5073
    .local v26, height:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mMaxAllDayEventHeight:I

    int-to-float v3, v3

    cmpl-float v3, v26, v3

    if-lez v3, :cond_8

    .line 5074
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mMaxAllDayEventHeight:I

    int-to-float v0, v3

    move/from16 v26, v0

    .line 5081
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_9

    .line 5082
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    sget v6, Lcom/htc/calendar/CalendarView;->mSplitWindow:I

    div-int/2addr v3, v6

    add-int/lit8 v3, v3, 0x1

    mul-int v3, v3, v32

    int-to-float v3, v3

    add-float/2addr v3, v14

    const/high16 v6, 0x4110

    add-float/2addr v3, v6

    iput v3, v9, Lcom/htc/calendar/Event;->left:F

    .line 5083
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    sget v6, Lcom/htc/calendar/CalendarView;->mSplitWindow:I

    div-int/2addr v3, v6

    add-int/lit8 v3, v3, 0x1

    mul-int v3, v3, v24

    int-to-float v3, v3

    add-float/2addr v3, v14

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    sget v8, Lcom/htc/calendar/CalendarView;->mSplitWindow:I

    div-int/2addr v6, v8

    int-to-float v6, v6

    add-float/2addr v3, v6

    const/high16 v6, 0x4040

    sub-float/2addr v3, v6

    iput v3, v9, Lcom/htc/calendar/Event;->right:F

    .line 5089
    :goto_6
    move/from16 v0, v33

    int-to-float v3, v0

    invoke-virtual {v9}, Lcom/htc/calendar/Event;->getColumn()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v26

    add-float/2addr v3, v6

    iput v3, v9, Lcom/htc/calendar/Event;->top:F

    .line 5092
    iget v3, v9, Lcom/htc/calendar/Event;->top:F

    const v6, 0x3f666666

    mul-float v6, v6, v26

    add-float/2addr v3, v6

    iput v3, v9, Lcom/htc/calendar/Event;->bottom:F

    .line 5095
    const/4 v13, 0x1

    move-object/from16 v8, p0

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-virtual/range {v8 .. v13}, Lcom/htc/calendar/CalendarView;->drawAllDayEventRect(Lcom/htc/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)Landroid/graphics/RectF;

    move-result-object v10

    .line 5097
    .local v10, rf:Landroid/graphics/RectF;
    const/high16 v3, -0x100

    invoke-virtual {v12, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 5099
    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v11, p4

    invoke-direct/range {v8 .. v13}, Lcom/htc/calendar/CalendarView;->drawEventText(Lcom/htc/calendar/Event;Landroid/graphics/RectF;Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    .line 5102
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/calendar/CalendarView;->mSelectionAllDay:Z

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/calendar/CalendarView;->mComputeSelectedEvents:Z

    if-eqz v3, :cond_3

    .line 5103
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    move/from16 v0, v31

    if-gt v0, v3, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    move/from16 v0, v23

    if-lt v0, v3, :cond_3

    .line 5104
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 5085
    .end local v10           #rf:Landroid/graphics/RectF;
    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    add-int/lit8 v3, v3, 0x1

    mul-int v3, v3, v32

    int-to-float v3, v3

    add-float/2addr v3, v14

    const/high16 v6, 0x3f80

    add-float/2addr v3, v6

    iput v3, v9, Lcom/htc/calendar/Event;->left:F

    .line 5086
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    add-int/lit8 v3, v3, 0x1

    mul-int v3, v3, v24

    int-to-float v3, v3

    add-float/2addr v3, v14

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    int-to-float v6, v6

    add-float/2addr v3, v6

    const/high16 v6, 0x41c0

    sub-float/2addr v3, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/calendar/CalendarView;->mHoursWidth:I

    int-to-float v6, v6

    add-float/2addr v3, v6

    iput v3, v9, Lcom/htc/calendar/Event;->right:F

    goto :goto_6

    .line 5109
    .end local v9           #event:Lcom/htc/calendar/Event;
    .end local v23           #endDay:I
    .end local v24           #endIndex:I
    .end local v26           #height:F
    .end local v31           #startDay:I
    .end local v32           #startIndex:I
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/calendar/CalendarView;->mSelectionAllDay:Z

    if-eqz v3, :cond_e

    .line 5112
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->computeAllDayNeighbors()V

    .line 5113
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    if-eqz v3, :cond_b

    .line 5114
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    .line 5116
    .restart local v9       #event:Lcom/htc/calendar/Event;
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-virtual {v0, v9, v1, v2, v12}, Lcom/htc/calendar/CalendarView;->drawAllDayEventRect(Lcom/htc/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;)Landroid/graphics/RectF;

    move-result-object v10

    .line 5119
    .restart local v10       #rf:Landroid/graphics/RectF;
    const/4 v13, 0x0

    move-object/from16 v8, p0

    move-object/from16 v11, p4

    invoke-direct/range {v8 .. v13}, Lcom/htc/calendar/CalendarView;->drawEventText(Lcom/htc/calendar/Event;Landroid/graphics/RectF;Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    .line 5123
    .end local v9           #event:Lcom/htc/calendar/Event;
    .end local v10           #rf:Landroid/graphics/RectF;
    :cond_b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mBannerPlusMargin:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v15, v3

    .line 5124
    .local v15, top:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mAllDayHeight:I

    int-to-float v3, v3

    add-float/2addr v3, v15

    sget v6, Lcom/htc/calendar/CalendarView;->ALLDAY_TOP_MARGIN:I

    int-to-float v6, v6

    add-float/2addr v3, v6

    const/high16 v6, 0x3f80

    sub-float v17, v3, v6

    .line 5125
    .local v17, bottom:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/calendar/CalendarView;->mFirstJulianDay:I

    sub-int v20, v3, v6

    .line 5126
    .local v20, daynum:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/calendar/HtcUtils;->getSystemLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "ar"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 5127
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mHoursWidth:I

    rsub-int/lit8 v6, v20, 0x6

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    add-int/lit8 v8, v8, 0x1

    mul-int/2addr v6, v8

    add-int/2addr v3, v6

    add-int/lit8 v3, v3, 0x1

    int-to-float v14, v3

    .line 5132
    :goto_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    int-to-float v3, v3

    add-float/2addr v3, v14

    const/high16 v6, 0x3f80

    add-float/2addr v3, v6

    const/high16 v6, 0x3f80

    sub-float v16, v3, v6

    .line 5133
    .local v16, right:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_c

    .line 5135
    const/high16 v3, 0x3f80

    sub-float v16, v16, v3

    .line 5139
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->isPreviewMode()Z

    move-result v3

    if-nez v3, :cond_d

    .line 5140
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/htc/calendar/CalendarView;->mPath:Landroid/graphics/Path;

    .line 5141
    .local v13, path:Landroid/graphics/Path;
    invoke-virtual {v13}, Landroid/graphics/Path;->reset()V

    .line 5142
    sget-object v18, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 5143
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView;->mSelectionPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p4

    invoke-virtual {v0, v13, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 5150
    .end local v13           #path:Landroid/graphics/Path;
    :cond_d
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6, v8, v11}, Lcom/htc/calendar/CalendarView;->saveSelectionPosition(FFFF)V

    .line 5152
    .end local v15           #top:F
    .end local v16           #right:F
    .end local v17           #bottom:F
    .end local v20           #daynum:I
    :cond_e
    return-void

    .line 5131
    .restart local v15       #top:F
    .restart local v17       #bottom:F
    .restart local v20       #daynum:I
    :cond_f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mHoursWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    add-int/lit8 v6, v6, 0x1

    mul-int v6, v6, v20

    add-int/2addr v3, v6

    add-int/lit8 v3, v3, 0x1

    int-to-float v14, v3

    goto :goto_7
.end method

.method private drawPreviewEvent(IIILandroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 18
    .parameter "date"
    .parameter "left"
    .parameter "top"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 4933
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/calendar/CalendarView;->mEventTextPaint:Landroid/graphics/Paint;

    .line 4934
    .local v12, eventTextPaint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    sget v4, Lcom/htc/calendar/CalendarView;->mSplitWindow:I

    div-int v6, v3, v4

    .line 4935
    .local v6, cellWidth:I
    sget v14, Lcom/htc/calendar/CalendarView;->mCellHeight:I

    .line 4938
    .local v14, cellHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    .line 4939
    .local v17, selectionArea:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mSelectionHour:I

    add-int/lit8 v4, v14, 0x1

    mul-int/2addr v3, v4

    add-int v3, v3, p3

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 4940
    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v14

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 4941
    move/from16 v0, p2

    move-object/from16 v1, v17

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 4942
    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v6

    move-object/from16 v0, v17

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 4944
    const/16 v16, 0x1

    .line 4945
    .local v16, numEvents:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/CalendarView;->mEventGeometry:Lcom/htc/calendar/EventGeometry;

    .line 4947
    .local v2, geometry:Lcom/htc/calendar/EventGeometry;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView;->mPreviewEvent:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 4948
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_4

    .line 4949
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView;->mPreviewEvent:Ljava/util/ArrayList;

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/calendar/Event;

    .line 4950
    .local v7, event:Lcom/htc/calendar/Event;
    iget-boolean v3, v7, Lcom/htc/calendar/Event;->allDay:Z

    if-nez v3, :cond_0

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/htc/calendar/EventGeometry;->computeEventRect(IIIILcom/htc/calendar/Event;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4948
    :cond_0
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 4954
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    move/from16 v0, p1

    if-ne v0, v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/calendar/CalendarView;->mSelectionAllDay:Z

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/calendar/CalendarView;->mComputeSelectedEvents:Z

    if-eqz v3, :cond_2

    move-object/from16 v0, v17

    invoke-virtual {v2, v7, v0}, Lcom/htc/calendar/EventGeometry;->eventIntersectsSelection(Lcom/htc/calendar/Event;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4956
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4959
    :cond_2
    const/4 v13, 0x1

    move-object/from16 v8, p0

    move-object v9, v7

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v8 .. v13}, Lcom/htc/calendar/CalendarView;->drawEventRect(Lcom/htc/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)Landroid/graphics/RectF;

    move-result-object v10

    .line 4961
    .local v10, rf:Landroid/graphics/RectF;
    const/high16 v3, -0x100

    invoke-virtual {v12, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 4963
    const/4 v13, 0x2

    move-object/from16 v8, p0

    move-object v9, v7

    move-object/from16 v11, p4

    invoke-direct/range {v8 .. v13}, Lcom/htc/calendar/CalendarView;->drawEventText(Lcom/htc/calendar/Event;Landroid/graphics/RectF;Landroid/graphics/Canvas;Landroid/graphics/Paint;I)V

    goto :goto_1

    .line 4966
    .end local v7           #event:Lcom/htc/calendar/Event;
    .end local v10           #rf:Landroid/graphics/RectF;
    .end local v15           #i:I
    :cond_3
    const-string v3, "CalendarView"

    const-string v4, "mPreviewEvent is Empty"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4968
    :cond_4
    return-void
.end method

.method private drawTextSanitizer(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "string"

    .prologue
    const/16 v3, 0x20

    const/16 v2, 0xa

    .line 3331
    iget-object v1, p0, Lcom/htc/calendar/CalendarView;->drawTextSanitizerFilter:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 3332
    .local v0, m:Ljava/util/regex/Matcher;
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 3333
    return-object p1
.end method

.method private drawUpperLeftCorner(Landroid/graphics/Rect;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 2
    .parameter "r"
    .parameter "canvas"
    .parameter "p"

    .prologue
    .line 1798
    sget v0, Lcom/htc/calendar/CalendarView;->mCalendarHourBackground:I

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1799
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mBannerPlusMargin:I

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 1800
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/htc/calendar/CalendarView;->mAllDayHeight:I

    add-int/2addr v0, v1

    sget v1, Lcom/htc/calendar/CalendarView;->ALLDAY_TOP_MARGIN:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 1801
    const/4 v0, 0x0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1802
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mHoursWidth:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1803
    invoke-virtual {p2, p1, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1804
    return-void
.end method

.method private draw_ColorChip(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;II)V
    .locals 8
    .parameter "canvas"
    .parameter "left"
    .parameter "top"
    .parameter "p"
    .parameter "color"
    .parameter "line_number"

    .prologue
    const/high16 v7, 0x4100

    const/high16 v6, 0x40c0

    .line 5296
    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 5298
    const/16 v1, 0x8

    .line 5299
    .local v1, LINE_PADDING_TOP_BOTTOM:I
    const/high16 v0, 0x41c8

    .line 5301
    .local v0, LINE_LIMIT_HEIGHT:F
    add-float/2addr p2, v6

    .line 5302
    add-float v4, p3, v7

    int-to-float v5, p6

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    const/high16 v5, 0x40e0

    sub-float p3, v4, v5

    .line 5304
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 5305
    .local v3, rect:Landroid/graphics/RectF;
    sub-float v4, p3, v7

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 5306
    add-float v4, p3, v7

    iput v4, v3, Landroid/graphics/RectF;->bottom:F

    .line 5307
    iput p2, v3, Landroid/graphics/RectF;->left:F

    .line 5308
    const/high16 v4, 0x4120

    add-float/2addr v4, p2

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 5310
    invoke-virtual {p1, v3, v6, v6, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 5312
    invoke-virtual {p4}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v2

    .line 5313
    .local v2, cacheStyle:Landroid/graphics/Paint$Style;
    const v4, -0xb5b5b6

    invoke-virtual {p4, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 5314
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5315
    invoke-virtual {p1, v3, v6, v6, p4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 5317
    invoke-virtual {p4, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5318
    return-void
.end method

.method private draw_ConflictTime(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;)V
    .locals 7
    .parameter "canvas"
    .parameter "from_to"
    .parameter "left"
    .parameter "top"
    .parameter "p"

    .prologue
    const/high16 v6, 0x3f80

    .line 5274
    invoke-virtual {p5}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    .line 5275
    .local v2, cacheColor:I
    invoke-virtual {p5}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    .line 5277
    .local v3, cacheSize:F
    iget-object v4, p0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const/high16 v5, 0x7f09

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v1, v4

    .line 5278
    .local v1, LINE_PADDING_TOP_BOTTOM:I
    const/16 v0, 0x1e

    .line 5280
    .local v0, CONFLCT_ICON_PADDING_LEFT:I
    const/high16 v4, 0x41a0

    invoke-virtual {p5, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 5282
    int-to-float v4, v0

    add-float/2addr p3, v4

    .line 5283
    int-to-float v4, v1

    add-float/2addr p4, v4

    .line 5285
    const/high16 v4, -0x100

    invoke-virtual {p5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 5286
    add-float v4, p3, v6

    add-float v5, p4, v6

    invoke-virtual {p1, p2, v4, v5, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 5288
    const/4 v4, -0x1

    invoke-virtual {p5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 5289
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 5291
    invoke-virtual {p5, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 5292
    invoke-virtual {p5, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 5293
    return-void
.end method

.method private draw_combinedOneLine(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;I)V
    .locals 7
    .parameter "canvas"
    .parameter "text"
    .parameter "left"
    .parameter "top"
    .parameter "p"
    .parameter "line_number"

    .prologue
    const/high16 v6, 0x4100

    const/high16 v5, 0x3f80

    .line 5323
    const/16 v1, 0x8

    .line 5324
    .local v1, LINE_PADDING_TOP_BOTTOM:I
    const/16 v2, 0x10

    .line 5325
    .local v2, TEXT_PADDING_CIRCLE:I
    const/high16 v0, 0x41c8

    .line 5328
    .local v0, LINE_LIMIT_HEIGHT:F
    const/high16 v3, 0x4190

    invoke-virtual {p5, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 5329
    iget-object v3, p0, Lcom/htc/calendar/CalendarView;->mBold:Landroid/graphics/Typeface;

    invoke-virtual {p5, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 5330
    add-float v3, p3, v6

    const/high16 v4, 0x4180

    add-float p3, v3, v4

    .line 5331
    add-float v3, p4, v6

    int-to-float v4, p6

    mul-float/2addr v4, v0

    add-float p4, v3, v4

    .line 5333
    const/4 v3, -0x1

    invoke-virtual {p5, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 5334
    add-float v3, p3, v5

    add-float v4, p4, v5

    invoke-virtual {p1, p2, v3, v4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 5336
    const/high16 v3, -0x100

    invoke-virtual {p5, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 5337
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 5338
    return-void
.end method

.method private draw_combinedOneLineHeader(Landroid/graphics/Canvas;Ljava/lang/String;FFLandroid/graphics/Paint;FZ)V
    .locals 7
    .parameter "canvas"
    .parameter "text"
    .parameter "left"
    .parameter "top"
    .parameter "p"
    .parameter "height"
    .parameter "smallWording"

    .prologue
    const/high16 v6, 0x3f80

    .line 5343
    iget-object v4, p0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const/high16 v5, 0x7f09

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v2, v4

    .line 5344
    .local v2, LINE_PADDING_TOP_BOTTOM:I
    const/high16 v1, 0x41c8

    .line 5345
    .local v1, LINE_LIMIT_HEIGHT:F
    const/16 v0, 0x1e

    .line 5349
    .local v0, CONFLCT_ICON_PADDING_LEFT:I
    if-eqz p7, :cond_0

    .line 5350
    sget v4, Lcom/htc/calendar/CalendarView;->EVENT_SMAL_TEXT_FONT_SIZE:I

    int-to-float v4, v4

    invoke-virtual {p5, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 5351
    const/high16 v4, 0x4000

    div-float v3, p6, v4

    .line 5357
    .local v3, limit_height:F
    :goto_0
    int-to-float v4, v0

    add-float/2addr p3, v4

    .line 5359
    int-to-float v4, v2

    add-float/2addr p4, v4

    .line 5361
    const/high16 v4, -0x100

    invoke-virtual {p5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 5362
    add-float v4, p3, v6

    add-float v5, p4, v6

    invoke-virtual {p1, p2, v4, v5, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 5364
    const/4 v4, -0x1

    invoke-virtual {p5, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 5365
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 5366
    return-void

    .line 5353
    .end local v3           #limit_height:F
    :cond_0
    const/high16 v4, 0x4190

    invoke-virtual {p5, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 5354
    move v3, v1

    .restart local v3       #limit_height:F
    goto :goto_0
.end method

.method private findCombiledArea(I)Lcom/htc/calendar/Event;
    .locals 11
    .parameter "group"

    .prologue
    .line 5165
    iget-object v4, p0, Lcom/htc/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    .line 5166
    .local v4, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/Event;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5168
    .local v5, groupEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/Event;>;"
    iget-object v9, p0, Lcom/htc/calendar/CalendarView;->mProcessedGroup:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5170
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/calendar/Event;

    .line 5171
    .local v3, ev:Lcom/htc/calendar/Event;
    iget v9, v3, Lcom/htc/calendar/Event;->mGroup:I

    if-ne v9, p1, :cond_0

    .line 5172
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5176
    .end local v3           #ev:Lcom/htc/calendar/Event;
    :cond_1
    new-instance v0, Lcom/htc/calendar/Event;

    invoke-direct {v0}, Lcom/htc/calendar/Event;-><init>()V

    .line 5178
    .local v0, area:Lcom/htc/calendar/Event;
    const-wide v7, 0x7fffffffffffffffL

    .line 5179
    .local v7, topEventStartMillis:J
    const-wide/high16 v1, -0x8000

    .line 5181
    .local v1, bottomEventEndMillis:J
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/calendar/Event;

    .line 5182
    .restart local v3       #ev:Lcom/htc/calendar/Event;
    iget-wide v9, v3, Lcom/htc/calendar/Event;->startMillis:J

    cmp-long v9, v9, v7

    if-gez v9, :cond_3

    .line 5183
    iget v9, v3, Lcom/htc/calendar/Event;->top:F

    iput v9, v0, Lcom/htc/calendar/Event;->top:F

    .line 5184
    iget-wide v7, v3, Lcom/htc/calendar/Event;->startMillis:J

    .line 5187
    :cond_3
    iget-wide v9, v3, Lcom/htc/calendar/Event;->endMillis:J

    cmp-long v9, v9, v1

    if-lez v9, :cond_2

    .line 5188
    iget v9, v3, Lcom/htc/calendar/Event;->bottom:F

    iput v9, v0, Lcom/htc/calendar/Event;->bottom:F

    .line 5189
    iget-wide v1, v3, Lcom/htc/calendar/Event;->endMillis:J

    goto :goto_1

    .line 5193
    .end local v3           #ev:Lcom/htc/calendar/Event;
    :cond_4
    iput-wide v7, v0, Lcom/htc/calendar/Event;->startMillis:J

    .line 5194
    iput-wide v1, v0, Lcom/htc/calendar/Event;->endMillis:J

    .line 5195
    return-object v0
.end method

.method private findSelectedEvent(II)V
    .locals 33
    .parameter "x"
    .parameter "y"

    .prologue
    .line 4283
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    .line 4284
    .local v3, date:I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    .line 4285
    .local v8, cellWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    .line 4286
    .local v17, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/Event;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 4287
    .local v24, numEvents:I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/calendar/CalendarView;->mHoursWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/CalendarView;->mFirstJulianDay:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    add-int/lit8 v32, v8, 0x1

    mul-int v31, v31, v32

    add-int v4, v6, v31

    .line 4288
    .local v4, left:I
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->isPreviewMode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4289
    sget v6, Lcom/htc/calendar/CalendarView;->mSplitWindow:I

    div-int v6, v8, v6

    add-int/2addr v4, v6

    .line 4291
    :cond_0
    const/4 v5, 0x0

    .line 4292
    .local v5, top:I
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    .line 4294
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 4295
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/htc/calendar/CalendarView;->mSelectionAllDay:Z

    if-eqz v6, :cond_8

    .line 4297
    const v23, 0x461c4000

    .line 4298
    .local v23, minYdistance:F
    const/4 v9, 0x0

    .line 4299
    .local v9, closestEvent:Lcom/htc/calendar/Event;
    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/calendar/CalendarView;->mAllDayHeight:I

    int-to-float v11, v6

    .line 4300
    .local v11, drawHeight:F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/calendar/CalendarView;->mBannerPlusMargin:I

    sget v31, Lcom/htc/calendar/CalendarView;->ALLDAY_TOP_MARGIN:I

    add-int v30, v6, v31

    .line 4301
    .local v30, yOffset:I
    const/16 v19, 0x0

    .local v19, i:I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_4

    .line 4302
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/calendar/Event;

    .line 4303
    .local v7, event:Lcom/htc/calendar/Event;
    iget-boolean v6, v7, Lcom/htc/calendar/Event;->allDay:Z

    if-nez v6, :cond_2

    .line 4301
    :cond_1
    :goto_1
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 4307
    :cond_2
    iget v6, v7, Lcom/htc/calendar/Event;->startDay:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-gt v6, v0, :cond_1

    iget v6, v7, Lcom/htc/calendar/Event;->endDay:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-lt v6, v0, :cond_1

    .line 4308
    invoke-virtual {v7}, Lcom/htc/calendar/Event;->getMaxColumns()I

    move-result v6

    int-to-float v0, v6

    move/from16 v25, v0

    .line 4309
    .local v25, numRectangles:F
    div-float v18, v11, v25

    .line 4310
    .local v18, height:F
    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/calendar/CalendarView;->mMaxAllDayEventHeight:I

    int-to-float v6, v6

    cmpl-float v6, v18, v6

    if-lez v6, :cond_3

    .line 4311
    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/calendar/CalendarView;->mMaxAllDayEventHeight:I

    int-to-float v0, v6

    move/from16 v18, v0

    .line 4313
    :cond_3
    move/from16 v0, v30

    int-to-float v6, v0

    invoke-virtual {v7}, Lcom/htc/calendar/Event;->getColumn()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    mul-float v31, v31, v18

    add-float v16, v6, v31

    .line 4314
    .local v16, eventTop:F
    add-float v15, v16, v18

    .line 4315
    .local v15, eventBottom:F
    move/from16 v0, p2

    int-to-float v6, v0

    cmpg-float v6, v16, v6

    if-gez v6, :cond_6

    move/from16 v0, p2

    int-to-float v6, v0

    cmpl-float v6, v15, v6

    if-lez v6, :cond_6

    .line 4318
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4319
    move-object v9, v7

    .line 4335
    .end local v7           #event:Lcom/htc/calendar/Event;
    .end local v15           #eventBottom:F
    .end local v16           #eventTop:F
    .end local v18           #height:F
    .end local v25           #numRectangles:F
    :cond_4
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    .line 4411
    .end local v9           #closestEvent:Lcom/htc/calendar/Event;
    .end local v11           #drawHeight:F
    .end local v23           #minYdistance:F
    .end local v30           #yOffset:I
    :cond_5
    :goto_2
    return-void

    .line 4323
    .restart local v7       #event:Lcom/htc/calendar/Event;
    .restart local v9       #closestEvent:Lcom/htc/calendar/Event;
    .restart local v11       #drawHeight:F
    .restart local v15       #eventBottom:F
    .restart local v16       #eventTop:F
    .restart local v18       #height:F
    .restart local v23       #minYdistance:F
    .restart local v25       #numRectangles:F
    .restart local v30       #yOffset:I
    :cond_6
    move/from16 v0, p2

    int-to-float v6, v0

    cmpl-float v6, v16, v6

    if-ltz v6, :cond_7

    .line 4324
    move/from16 v0, p2

    int-to-float v6, v0

    sub-float v29, v16, v6

    .line 4328
    .local v29, yDistance:F
    :goto_3
    cmpg-float v6, v29, v23

    if-gez v6, :cond_1

    .line 4329
    move/from16 v23, v29

    .line 4330
    move-object v9, v7

    goto :goto_1

    .line 4326
    .end local v29           #yDistance:F
    :cond_7
    move/from16 v0, p2

    int-to-float v6, v0

    sub-float v29, v6, v15

    .restart local v29       #yDistance:F
    goto :goto_3

    .line 4340
    .end local v7           #event:Lcom/htc/calendar/Event;
    .end local v9           #closestEvent:Lcom/htc/calendar/Event;
    .end local v11           #drawHeight:F
    .end local v15           #eventBottom:F
    .end local v16           #eventTop:F
    .end local v18           #height:F
    .end local v19           #i:I
    .end local v23           #minYdistance:F
    .end local v25           #numRectangles:F
    .end local v29           #yDistance:F
    .end local v30           #yOffset:I
    :cond_8
    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/calendar/CalendarView;->mViewStartY:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/CalendarView;->mFirstCell:I

    move/from16 v31, v0

    sub-int v6, v6, v31

    add-int p2, p2, v6

    .line 4343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    .line 4344
    .local v26, region:Landroid/graphics/Rect;
    add-int/lit8 v6, p1, -0xa

    move-object/from16 v0, v26

    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 4345
    add-int/lit8 v6, p1, 0xa

    move-object/from16 v0, v26

    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 4346
    add-int/lit8 v6, p2, -0xa

    move-object/from16 v0, v26

    iput v6, v0, Landroid/graphics/Rect;->top:I

    .line 4347
    add-int/lit8 v6, p2, 0xa

    move-object/from16 v0, v26

    iput v6, v0, Landroid/graphics/Rect;->bottom:I

    .line 4349
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/CalendarView;->mEventGeometry:Lcom/htc/calendar/EventGeometry;

    .line 4351
    .local v2, geometry:Lcom/htc/calendar/EventGeometry;
    const/16 v19, 0x0

    .restart local v19       #i:I
    :goto_4
    move/from16 v0, v19

    move/from16 v1, v24

    if-ge v0, v1, :cond_b

    .line 4352
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/calendar/Event;

    .line 4354
    .restart local v7       #event:Lcom/htc/calendar/Event;
    sget v6, Lcom/htc/calendar/CalendarView;->mSplitWindow:I

    div-int v6, v8, v6

    invoke-virtual/range {v2 .. v7}, Lcom/htc/calendar/EventGeometry;->computeEventRect(IIIILcom/htc/calendar/Event;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 4351
    :cond_9
    :goto_5
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 4360
    :cond_a
    move-object/from16 v0, v26

    invoke-virtual {v2, v7, v0}, Lcom/htc/calendar/EventGeometry;->eventIntersectsSelection(Lcom/htc/calendar/Event;Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 4361
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 4367
    .end local v7           #event:Lcom/htc/calendar/Event;
    :cond_b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 4368
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 4369
    .local v21, len:I
    const/4 v9, 0x0

    .line 4370
    .restart local v9       #closestEvent:Lcom/htc/calendar/Event;
    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/calendar/CalendarView;->mViewWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/CalendarView;->mViewHeight:I

    move/from16 v31, v0

    add-int v6, v6, v31

    int-to-float v0, v6

    move/from16 v22, v0

    .line 4371
    .local v22, minDist:F
    const/16 v20, 0x0

    .local v20, index:I
    :goto_6
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_d

    .line 4372
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/calendar/Event;

    .line 4373
    .local v14, ev:Lcom/htc/calendar/Event;
    move/from16 v0, p1

    int-to-float v6, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    invoke-virtual {v2, v6, v0, v14}, Lcom/htc/calendar/EventGeometry;->pointToEvent(FFLcom/htc/calendar/Event;)F

    move-result v10

    .line 4374
    .local v10, dist:F
    cmpg-float v6, v10, v22

    if-gez v6, :cond_c

    .line 4375
    move/from16 v22, v10

    .line 4376
    move-object v9, v14

    .line 4371
    :cond_c
    add-int/lit8 v20, v20, 0x1

    goto :goto_6

    .line 4379
    .end local v10           #dist:F
    .end local v14           #ev:Lcom/htc/calendar/Event;
    :cond_d
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    .line 4382
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    if-eqz v6, :cond_5

    .line 4387
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    iget v0, v6, Lcom/htc/calendar/Event;->startDay:I

    move/from16 v27, v0

    .line 4388
    .local v27, startDay:I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    iget v12, v6, Lcom/htc/calendar/Event;->endDay:I

    .line 4389
    .local v12, endDay:I
    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    move/from16 v0, v27

    if-ge v6, v0, :cond_f

    .line 4390
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    .line 4395
    :cond_e
    :goto_7
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    iget v6, v6, Lcom/htc/calendar/Event;->startTime:I

    div-int/lit8 v28, v6, 0x3c

    .line 4397
    .local v28, startHour:I
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    iget v6, v6, Lcom/htc/calendar/Event;->startTime:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/htc/calendar/Event;->endTime:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v6, v0, :cond_10

    .line 4398
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    iget v6, v6, Lcom/htc/calendar/Event;->endTime:I

    add-int/lit8 v6, v6, -0x1

    div-int/lit8 v13, v6, 0x3c

    .line 4403
    .local v13, endHour:I
    :goto_8
    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/calendar/CalendarView;->mSelectionHour:I

    move/from16 v0, v28

    if-ge v6, v0, :cond_11

    .line 4404
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/calendar/CalendarView;->mSelectionHour:I

    goto/16 :goto_2

    .line 4391
    .end local v13           #endHour:I
    .end local v28           #startHour:I
    :cond_f
    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    if-le v6, v12, :cond_e

    .line 4392
    move-object/from16 v0, p0

    iput v12, v0, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    goto :goto_7

    .line 4400
    .restart local v28       #startHour:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    iget v6, v6, Lcom/htc/calendar/Event;->endTime:I

    div-int/lit8 v13, v6, 0x3c

    .restart local v13       #endHour:I
    goto :goto_8

    .line 4405
    :cond_11
    move-object/from16 v0, p0

    iget v6, v0, Lcom/htc/calendar/CalendarView;->mSelectionHour:I

    if-le v6, v13, :cond_5

    .line 4406
    move-object/from16 v0, p0

    iput v13, v0, Lcom/htc/calendar/CalendarView;->mSelectionHour:I

    goto/16 :goto_2
.end method

.method private getBackgroundHandler()Landroid/os/Handler;
    .locals 4

    .prologue
    .line 5620
    sget-object v1, Lcom/htc/calendar/CalendarView;->sLooper:Landroid/os/Looper;

    if-nez v1, :cond_0

    .line 5621
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UpdateUIBackgroundWorker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 5622
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 5624
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    sput-object v1, Lcom/htc/calendar/CalendarView;->sLooper:Landroid/os/Looper;

    .line 5626
    .end local v0           #thread:Landroid/os/HandlerThread;
    :cond_0
    iget-object v1, p0, Lcom/htc/calendar/CalendarView;->mBackgroundThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 5627
    new-instance v1, Lcom/htc/calendar/CalendarView$BackgroundHandler;

    sget-object v2, Lcom/htc/calendar/CalendarView;->sLooper:Landroid/os/Looper;

    iget-object v3, p0, Lcom/htc/calendar/CalendarView;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-direct {v1, v2, v3}, Lcom/htc/calendar/CalendarView$BackgroundHandler;-><init>(Landroid/os/Looper;Ljava/lang/Runnable;)V

    .line 5629
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/htc/calendar/CalendarView;->mBackgroundThreadHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method private getCombinedEventFitTitle(Ljava/lang/CharSequence;I)Ljava/lang/String;
    .locals 3
    .parameter "eventTitle"
    .parameter "count"

    .prologue
    .line 5265
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5266
    .local v0, title:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p2, :cond_0

    .line 5267
    const/4 v1, 0x0

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 5268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5270
    :cond_0
    return-object v0
.end method

.method private getCurrentSelectionPosition()Landroid/graphics/Rect;
    .locals 4

    .prologue
    .line 2505
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2506
    .local v0, box:Landroid/graphics/Rect;
    iget v2, p0, Lcom/htc/calendar/CalendarView;->mSelectionHour:I

    sget v3, Lcom/htc/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 2507
    iget v2, v0, Landroid/graphics/Rect;->top:I

    sget v3, Lcom/htc/calendar/CalendarView;->mCellHeight:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 2508
    iget v2, p0, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    iget v3, p0, Lcom/htc/calendar/CalendarView;->mFirstJulianDay:I

    sub-int v1, v2, v3

    .line 2509
    .local v1, daynum:I
    iget v2, p0, Lcom/htc/calendar/CalendarView;->mHoursWidth:I

    iget v3, p0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v3, v1

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 2510
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 2511
    return-object v0
.end method

.method private getGroupCount(I)I
    .locals 5
    .parameter "group"

    .prologue
    .line 5199
    iget-object v2, p0, Lcom/htc/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    .line 5200
    .local v2, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/Event;>;"
    const/4 v0, 0x0

    .line 5201
    .local v0, count:I
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/calendar/Event;

    .line 5202
    .local v1, ev:Lcom/htc/calendar/Event;
    iget v4, v1, Lcom/htc/calendar/Event;->mGroup:I

    if-ne v4, p1, :cond_0

    .line 5203
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5206
    .end local v1           #ev:Lcom/htc/calendar/Event;
    :cond_1
    return v0
.end method

.method static getNewEvent(IJI)Lcom/htc/calendar/Event;
    .locals 5
    .parameter "julianDay"
    .parameter "utcMillis"
    .parameter "minutesSinceMidnight"

    .prologue
    .line 2472
    invoke-static {}, Lcom/htc/calendar/Event;->newInstance()Lcom/htc/calendar/Event;

    move-result-object v0

    .line 2473
    .local v0, event:Lcom/htc/calendar/Event;
    iput p0, v0, Lcom/htc/calendar/Event;->startDay:I

    .line 2474
    iput p0, v0, Lcom/htc/calendar/Event;->endDay:I

    .line 2475
    iput-wide p1, v0, Lcom/htc/calendar/Event;->startMillis:J

    .line 2476
    iget-wide v1, v0, Lcom/htc/calendar/Event;->startMillis:J

    const-wide/32 v3, 0x36ee80

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/htc/calendar/Event;->endMillis:J

    .line 2477
    iput p3, v0, Lcom/htc/calendar/Event;->startTime:I

    .line 2478
    iget v1, v0, Lcom/htc/calendar/Event;->startTime:I

    add-int/lit8 v1, v1, 0x3c

    iput v1, v0, Lcom/htc/calendar/Event;->endTime:I

    .line 2479
    return-object v0
.end method

.method private getWeekNumber()I
    .locals 3

    .prologue
    .line 4672
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 4673
    .local v0, cal:Ljava/util/Calendar;
    iget-object v1, p0, Lcom/htc/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 4674
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method private init(Landroid/content/Context;)V
    .locals 23
    .parameter "context"

    .prologue
    .line 521
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/calendar/CalendarView;->setFocusable(Z)V

    .line 525
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/calendar/CalendarView;->setFocusableInTouchMode(Z)V

    .line 526
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/calendar/CalendarView;->setClickable(Z)V

    .line 527
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/htc/calendar/CalendarView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 535
    invoke-static/range {p1 .. p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 536
    .local v16, prefs:Landroid/content/SharedPreferences;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/htc/calendar/CalendarPreferenceActivity;->getStartWeekDay(Landroid/content/Context;Landroid/content/SharedPreferences;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/calendar/CalendarView;->mStartDay:I

    .line 538
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/CalendarView;->mStartDay:I

    move/from16 v18, v0

    const/16 v19, 0x7

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1

    .line 539
    const/16 v18, 0x6

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/calendar/CalendarView;->mStartDay:I

    .line 546
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mUpdateTZ:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/htc/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/calendar/CalendarView;->mTimeZone:Ljava/util/TimeZone;

    .line 549
    new-instance v18, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mUpdateTZ:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/htc/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/calendar/CalendarView;->mCurrentTime:Landroid/text/format/Time;

    .line 550
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 551
    .local v5, currentTime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mCurrentTime:Landroid/text/format/Time;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Landroid/text/format/Time;->set(J)V

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mUpdateCurrentTime:Lcom/htc/calendar/CalendarView$UpdateCurrentTime;

    move-object/from16 v18, v0

    const-wide/32 v19, 0x493e0

    const-wide/32 v21, 0x493e0

    rem-long v21, v5, v21

    sub-long v19, v19, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/calendar/CalendarView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mCurrentTime:Landroid/text/format/Time;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-static {v5, v6, v0, v1}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/calendar/CalendarView;->mTodayJulianDay:I

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f07000a

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    sput v18, Lcom/htc/calendar/CalendarView;->mWeek_saturdayColor:I

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f07000b

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    sput v18, Lcom/htc/calendar/CalendarView;->mWeek_sundayColor:I

    .line 559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f070012

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    sput v18, Lcom/htc/calendar/CalendarView;->mCalendarDateBannerTextColor:I

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f07003d

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    sput v18, Lcom/htc/calendar/CalendarView;->mCalendarAllDayBackground:I

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f07000d

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    sput v18, Lcom/htc/calendar/CalendarView;->mCalendarAmPmLabel:I

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f070010

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    sput v18, Lcom/htc/calendar/CalendarView;->mCalendarDateBannerBackground:I

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f070011

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    sput v18, Lcom/htc/calendar/CalendarView;->mCalendarDateSelected:I

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f070013

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    sput v18, Lcom/htc/calendar/CalendarView;->mCalendarGridAreaBackground:I

    .line 567
    invoke-static {}, Lcom/htc/calendar/Utils;->isEnableTheme()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f070014

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    sput v18, Lcom/htc/calendar/CalendarView;->mCalendarGridAreaSelected:I

    .line 576
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f070041

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    sput v18, Lcom/htc/calendar/CalendarView;->mCalendarGridLineHorizontalColor:I

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f070043

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    sput v18, Lcom/htc/calendar/CalendarView;->mCalendarGridLineVerticalColor:I

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f07003e

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    sput v18, Lcom/htc/calendar/CalendarView;->mCalendarHourBackground:I

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f07003f

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    sput v18, Lcom/htc/calendar/CalendarView;->mCalendarHourLabel:I

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f07000f

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    sput v18, Lcom/htc/calendar/CalendarView;->mCalendarHourSelected:I

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f070018

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    sput v18, Lcom/htc/calendar/CalendarView;->mSelectionColor:I

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f070019

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    sput v18, Lcom/htc/calendar/CalendarView;->mPressedColor:I

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f070006

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    sput v18, Lcom/htc/calendar/CalendarView;->mSelectedEventTextColor:I

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f070007

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    sput v18, Lcom/htc/calendar/CalendarView;->mEventTextColor:I

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f070025

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    sput v18, Lcom/htc/calendar/CalendarView;->mCurrentTimeMarkerColor:I

    .line 590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f070026

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    sput v18, Lcom/htc/calendar/CalendarView;->mCurrentTimeLineColor:I

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f070027

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    sput v18, Lcom/htc/calendar/CalendarView;->mCurrentTimeMarkerBorderColor:I

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f070040

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    sput v18, Lcom/htc/calendar/CalendarView;->mCalendarHourNoonColor:I

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f09005c

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/calendar/CalendarView;->draw_event_drawable_1_all_day_padding_right:I

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f09005d

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/calendar/CalendarView;->draw_event_drawable_7_all_day_padding_right:I

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f090059

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    sput v18, Lcom/htc/calendar/CalendarView;->MIN_CELL_WIDTH_FOR_TEXT:I

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f09005a

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    sput v18, Lcom/htc/calendar/CalendarView;->EVENT_TEXT_FONT_SIZE:I

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x205001d

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    sput v18, Lcom/htc/calendar/CalendarView;->EVENT_SMAL_TEXT_FONT_SIZE:I

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f090052

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/calendar/CalendarView;->mHoursWidth:I

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f090058

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/calendar/CalendarView;->mWeekHourDayMargin:I

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f090001

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/calendar/CalendarView;->mSingleAllDayHeight:I

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f090002

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/calendar/CalendarView;->mMaxAllDayHeight:I

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f090003

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/calendar/CalendarView;->mMaxAllDayEventHeight:I

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f090004

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/calendar/CalendarView;->mAllDayTitleHeight:I

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f090005

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/calendar/CalendarView;->mAllDayDividerHeight:I

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f080006

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    sput-object v18, Lcom/htc/calendar/CalendarView;->mAllDayTitle:Ljava/lang/String;

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f090073

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    sput v18, Lcom/htc/calendar/CalendarView;->mCellHeight:I

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f090073

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    sput v18, Lcom/htc/calendar/CalendarView;->mMinCellHeight:I

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mEventTextPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    sget v19, Lcom/htc/calendar/CalendarView;->mEventTextColor:I

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setColor(I)V

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mEventTextPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    sget v19, Lcom/htc/calendar/CalendarView;->EVENT_TEXT_FONT_SIZE:I

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mEventTextPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    sget-object v19, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mEventTextPaint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f070017

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    .line 624
    .local v9, gridLineColor:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/calendar/CalendarView;->mSelectionPaint:Landroid/graphics/Paint;

    .line 625
    .local v15, p:Landroid/graphics/Paint;
    invoke-virtual {v15, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 626
    sget-object v18, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 627
    const/high16 v18, 0x4000

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 628
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 630
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/calendar/CalendarView;->mPaint:Landroid/graphics/Paint;

    .line 631
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mPaintBorder:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    const v19, -0x373738

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setColor(I)V

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mPaintBorder:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    sget-object v19, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mPaintBorder:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mPaintBorder:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    const/high16 v19, 0x4000

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 640
    const/16 v18, 0xe

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/calendar/CalendarView;->mDayStrs:[Ljava/lang/String;

    .line 643
    const/16 v18, 0xe

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/calendar/CalendarView;->mDayStrs2Letter:[Ljava/lang/String;

    .line 645
    const/4 v10, 0x1

    .local v10, i:I
    :goto_2
    const/16 v18, 0x7

    move/from16 v0, v18

    if-gt v10, v0, :cond_5

    .line 646
    add-int/lit8 v11, v10, -0x1

    .line 648
    .local v11, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mDayStrs:[Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x14

    move/from16 v0, v19

    invoke-static {v10, v0}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v18, v11

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mDayStrs:[Ljava/lang/String;

    move-object/from16 v18, v0

    add-int/lit8 v19, v11, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mDayStrs:[Ljava/lang/String;

    move-object/from16 v20, v0

    aget-object v20, v20, v11

    aput-object v20, v18, v19

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mDayStrs2Letter:[Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x1e

    move/from16 v0, v19

    invoke-static {v10, v0}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v18, v11

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mDayStrs2Letter:[Ljava/lang/String;

    move-object/from16 v18, v0

    aget-object v18, v18, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mDayStrs:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v11

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mDayStrs2Letter:[Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x32

    move/from16 v0, v19

    invoke-static {v10, v0}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v18, v11

    .line 658
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mDayStrs2Letter:[Ljava/lang/String;

    move-object/from16 v18, v0

    add-int/lit8 v19, v11, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mDayStrs2Letter:[Ljava/lang/String;

    move-object/from16 v20, v0

    aget-object v20, v20, v11

    aput-object v20, v18, v19

    .line 645
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 540
    .end local v5           #currentTime:J
    .end local v9           #gridLineColor:I
    .end local v10           #i:I
    .end local v11           #index:I
    .end local v15           #p:Landroid/graphics/Paint;
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/CalendarView;->mStartDay:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 541
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/calendar/CalendarView;->mStartDay:I

    goto/16 :goto_0

    .line 543
    :cond_2
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/calendar/CalendarView;->mStartDay:I

    goto/16 :goto_0

    .line 569
    .restart local v5       #currentTime:J
    :cond_3
    invoke-static {}, Lcom/htc/calendar/Utils;->isEnableSkin()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 570
    invoke-static/range {p1 .. p1}, Lcom/htc/calendar/HtcUtils;->getGridAreaSelected(Landroid/content/Context;)I

    move-result v18

    sput v18, Lcom/htc/calendar/CalendarView;->mCalendarGridAreaSelected:I

    goto/16 :goto_1

    .line 572
    :cond_4
    const v18, -0x232324

    sput v18, Lcom/htc/calendar/CalendarView;->mCalendarGridAreaSelected:I

    goto/16 :goto_1

    .line 663
    .restart local v9       #gridLineColor:I
    .restart local v10       #i:I
    .restart local v15       #p:Landroid/graphics/Paint;
    :cond_5
    sget v18, Lcom/htc/calendar/CalendarView;->NORMAL_FONT_SIZE:I

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mBold:Landroid/graphics/Typeface;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 665
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v7, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    const-string v19, " 28"

    aput-object v19, v7, v18

    const/16 v18, 0x1

    const-string v19, " 30"

    aput-object v19, v7, v18

    .line 666
    .local v7, dateStrs:[Ljava/lang/String;
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1, v7, v15}, Lcom/htc/calendar/CalendarView;->computeMaxStringWidth(I[Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/calendar/CalendarView;->mDateStrWidth:I

    .line 667
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/CalendarView;->mDateStrWidth:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mDayStrs:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v15}, Lcom/htc/calendar/CalendarView;->computeMaxStringWidth(I[Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v19

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/calendar/CalendarView;->mDateStrWidth:I

    .line 669
    sget v18, Lcom/htc/calendar/CalendarView;->HOURS_FONT_SIZE:I

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 670
    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 671
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->updateIs24HourFormat()V

    .line 673
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/calendar/CalendarView;->mAmString:Ljava/lang/String;

    .line 674
    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/calendar/CalendarView;->mPmString:Ljava/lang/String;

    .line 676
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v4, v0, [Ljava/lang/String;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mAmString:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v4, v18

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mPmString:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v4, v18

    .line 677
    .local v4, ampm:[Ljava/lang/String;
    sget v18, Lcom/htc/calendar/CalendarView;->AMPM_FONT_SIZE:I

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 682
    const-string v18, "layout_inflater"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    .line 683
    .local v12, inflater:Landroid/view/LayoutInflater;
    const v18, 0x7f030010

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/calendar/CalendarView;->mPopupView:Landroid/view/View;

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mPopupView:Landroid/view/View;

    move-object/from16 v18, v0

    new-instance v19, Landroid/view/ViewGroup$LayoutParams;

    const/16 v20, -0x1

    const/16 v21, -0x2

    invoke-direct/range {v19 .. v21}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 687
    new-instance v18, Landroid/widget/PopupWindow;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mPopupView:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 689
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    .line 690
    .local v8, dialogTheme:Landroid/content/res/Resources$Theme;
    const v18, 0x103000b

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 691
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const v20, 0x1010054

    aput v20, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v17

    .line 693
    .local v17, ta:Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 694
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/TypedArray;->recycle()V

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mPopupView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 699
    new-instance v18, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mUpdateTZ:Ljava/lang/Runnable;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/htc/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    .line 700
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 701
    .local v13, millis:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13, v14}, Landroid/text/format/Time;->set(J)V

    .line 703
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/calendar/CalendarView;->mEarliestStartHour:[I

    .line 704
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    move/from16 v18, v0

    move/from16 v0, v18

    new-array v0, v0, [Z

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/calendar/CalendarView;->mHasAllDayEvent:[Z

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v0

    const v19, 0x7f0a0015

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/calendar/CalendarView;->mNumHours:I

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    move-object/from16 v18, v0

    const v19, 0x2020053

    invoke-virtual/range {v18 .. v19}, Lcom/htc/calendar/CalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/calendar/CalendarView;->mTitleTextView:Landroid/widget/TextView;

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    move-object/from16 v18, v0

    const v19, 0x2020054

    invoke-virtual/range {v18 .. v19}, Lcom/htc/calendar/CalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/calendar/CalendarView;->mTitleTextViewShadow:Landroid/widget/TextView;

    .line 709
    return-void
.end method

.method private initFirstHour()V
    .locals 2

    .prologue
    .line 1537
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mSelectionHour:I

    iget v1, p0, Lcom/htc/calendar/CalendarView;->mNumHours:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/htc/calendar/CalendarView;->mFirstHour:I

    .line 1538
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mFirstHour:I

    if-gez v0, :cond_1

    .line 1539
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/calendar/CalendarView;->mFirstHour:I

    .line 1543
    :cond_0
    :goto_0
    return-void

    .line 1540
    :cond_1
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mFirstHour:I

    iget v1, p0, Lcom/htc/calendar/CalendarView;->mNumHours:I

    add-int/2addr v0, v1

    const/16 v1, 0x18

    if-le v0, v1, :cond_0

    .line 1541
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mNumHours:I

    rsub-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/htc/calendar/CalendarView;->mFirstHour:I

    goto :goto_0
.end method

.method private initNextView(I)Z
    .locals 7
    .parameter "deltaX"

    .prologue
    .line 3741
    iget-object v3, p0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    invoke-virtual {v3}, Lcom/htc/calendar/CalendarActivity;->getNextView()Lcom/htc/calendar/CalendarView;

    move-result-object v2

    .line 3742
    .local v2, view:Lcom/htc/calendar/CalendarView;
    iget-object v0, v2, Lcom/htc/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    .line 3743
    .local v0, date:Landroid/text/format/Time;
    iget-object v3, p0, Lcom/htc/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 3745
    if-gez p1, :cond_1

    .line 3746
    iget-object v3, p0, Lcom/htc/calendar/CalendarView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/calendar/HtcUtils;->getSystemLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3747
    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    iget v4, p0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 3748
    iget v3, p0, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    iget v4, p0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    .line 3749
    const/4 v1, 0x1

    .line 3767
    .local v1, switchForward:Z
    :goto_0
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 3768
    invoke-direct {p0, v2}, Lcom/htc/calendar/CalendarView;->initView(Lcom/htc/calendar/CalendarView;)V

    .line 3769
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarView;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/calendar/CalendarView;->getTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/calendar/CalendarView;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/htc/calendar/CalendarView;->getBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/htc/calendar/CalendarView;->layout(IIII)V

    .line 3770
    invoke-virtual {v2}, Lcom/htc/calendar/CalendarView;->reloadEvents()V

    .line 3771
    return v1

    .line 3751
    .end local v1           #switchForward:Z
    :cond_0
    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    iget v4, p0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 3752
    iget v3, p0, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    iget v4, p0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    .line 3753
    const/4 v1, 0x1

    .restart local v1       #switchForward:Z
    goto :goto_0

    .line 3757
    .end local v1           #switchForward:Z
    :cond_1
    iget-object v3, p0, Lcom/htc/calendar/CalendarView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/htc/calendar/HtcUtils;->getSystemLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 3758
    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    iget v4, p0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 3759
    iget v3, p0, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    iget v4, p0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    .line 3760
    const/4 v1, 0x0

    .restart local v1       #switchForward:Z
    goto :goto_0

    .line 3762
    .end local v1           #switchForward:Z
    :cond_2
    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    iget v4, p0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 3763
    iget v3, p0, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    iget v4, p0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    add-int/2addr v3, v4

    iput v3, v2, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    .line 3764
    const/4 v1, 0x0

    .restart local v1       #switchForward:Z
    goto :goto_0
.end method

.method private initView(Lcom/htc/calendar/CalendarView;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1115
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mSelectionHour:I

    iput v0, p1, Lcom/htc/calendar/CalendarView;->mSelectionHour:I

    .line 1116
    iget-object v0, p1, Lcom/htc/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1117
    iput-boolean v2, p1, Lcom/htc/calendar/CalendarView;->mComputeSelectedEvents:Z

    .line 1121
    invoke-direct {p0}, Lcom/htc/calendar/CalendarView;->checkFirstHour()V

    .line 1124
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mFirstHour:I

    iput v0, p1, Lcom/htc/calendar/CalendarView;->mFirstHour:I

    .line 1125
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mFirstHourOffset:I

    iput v0, p1, Lcom/htc/calendar/CalendarView;->mFirstHourOffset:I

    .line 1126
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/calendar/CalendarView;->getHeight()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/htc/calendar/CalendarView;->remeasure(II)V

    .line 1128
    iput-object v3, p1, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    .line 1129
    iput-object v3, p1, Lcom/htc/calendar/CalendarView;->mPrevSelectedEvent:Lcom/htc/calendar/Event;

    .line 1130
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mStartDay:I

    iput v0, p1, Lcom/htc/calendar/CalendarView;->mStartDay:I

    .line 1131
    iget-object v0, p1, Lcom/htc/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1132
    iget-boolean v0, p0, Lcom/htc/calendar/CalendarView;->mSelectionAllDay:Z

    iput-boolean v0, p1, Lcom/htc/calendar/CalendarView;->mSelectionAllDay:Z

    .line 1140
    :goto_0
    iput-boolean v2, p1, Lcom/htc/calendar/CalendarView;->mRedrawScreen:Z

    .line 1141
    invoke-direct {p1}, Lcom/htc/calendar/CalendarView;->recalc()V

    .line 1142
    return-void

    .line 1134
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/htc/calendar/CalendarView;->mSelectionAllDay:Z

    goto :goto_0
.end method

.method private isDrawPreviewAllDayEvent()Z
    .locals 4

    .prologue
    .line 4822
    const/4 v0, 0x0

    .line 4823
    .local v0, bDrawPreviewAllDayEvent:Z
    invoke-direct {p0}, Lcom/htc/calendar/CalendarView;->isPreviewMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4824
    iget-object v2, p0, Lcom/htc/calendar/CalendarView;->mPreviewEvent:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 4825
    iget-object v2, p0, Lcom/htc/calendar/CalendarView;->mPreviewEvent:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/calendar/Event;

    .line 4826
    .local v1, event:Lcom/htc/calendar/Event;
    iget-boolean v2, v1, Lcom/htc/calendar/Event;->allDay:Z

    if-eqz v2, :cond_0

    .line 4827
    const/4 v0, 0x1

    .line 4831
    .end local v1           #event:Lcom/htc/calendar/Event;
    :cond_0
    return v0
.end method

.method private static isEventEditable(Landroid/content/Context;Lcom/htc/calendar/Event;)Z
    .locals 17
    .parameter "context"
    .parameter "e"

    .prologue
    .line 4160
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4162
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v14, 0x0

    .line 4163
    .local v14, visibility:I
    const/4 v13, 0x2

    .line 4166
    .local v13, relationship:I
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    iget-wide v5, v0, Lcom/htc/calendar/Event;->id:J

    invoke-static {v3, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "calendar_id"

    aput-object v6, v3, v5

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 4171
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 4172
    :cond_0
    const/4 v12, 0x0

    .line 4212
    :goto_0
    return v12

    .line 4174
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4175
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 4176
    .local v7, calId:J
    invoke-interface {v10}, Landroid/database/Cursor;->deactivate()V

    .line 4178
    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 4179
    .local v2, uri:Landroid/net/Uri;
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "_id=%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v6, v15

    invoke-static {v3, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 4180
    .local v4, where:Ljava/lang/String;
    sget-object v3, Lcom/htc/calendar/CalendarView;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 4182
    const/4 v9, 0x0

    .line 4183
    .local v9, calendarOwnerAccount:Ljava/lang/String;
    invoke-static {}, Landroid/provider/HtcExCalendar;->getGoogleAccountType()Ljava/lang/String;

    move-result-object v11

    .line 4185
    .local v11, eventCalendar_syncAccountType:Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 4186
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    .line 4187
    const/4 v3, 0x3

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 4188
    const/4 v3, 0x1

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 4189
    const/4 v3, 0x2

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 4190
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    .line 4191
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 4193
    :cond_2
    const/4 v10, 0x0

    .line 4196
    :cond_3
    const/16 v3, 0x1f4

    if-ge v14, v3, :cond_4

    .line 4197
    const/4 v12, 0x0

    goto :goto_0

    .line 4200
    :cond_4
    move-object/from16 v0, p1

    iget-boolean v3, v0, Lcom/htc/calendar/Event;->guestsCanModify:Z

    if-eqz v3, :cond_5

    .line 4201
    const/4 v12, 0x1

    goto :goto_0

    .line 4208
    :cond_5
    const/4 v12, 0x0

    .line 4209
    .local v12, isEditable:Z
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/htc/calendar/Event;->organizer:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    invoke-static {v11}, Lcom/htc/calendar/HtcUtils;->isHTCExchangeEvent(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {v11}, Lcom/htc/calendar/HtcUtils;->isHTCPCSyncEvent(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_7
    const/4 v12, 0x1

    .line 4212
    :goto_1
    goto :goto_0

    .line 4209
    :cond_8
    const/4 v12, 0x0

    goto :goto_1
.end method

.method private isPreviewMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 4782
    iget v1, p0, Lcom/htc/calendar/CalendarView;->mMoveMode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWeekView()Z
    .locals 2

    .prologue
    .line 4678
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 4679
    const/4 v0, 0x1

    .line 4681
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recalc()V
    .locals 18

    .prologue
    .line 804
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    const/4 v7, 0x0

    iput-boolean v7, v1, Landroid/text/format/Time;->allDay:Z

    .line 808
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->isWeekView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 809
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget v13, v1, Landroid/text/format/Time;->weekDay:I

    .line 810
    .local v13, dayOfWeek:I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/calendar/CalendarView;->mStartDay:I

    sub-int v14, v13, v1

    .line 811
    .local v14, diff:I
    if-eqz v14, :cond_1

    .line 812
    if-gez v14, :cond_0

    .line 813
    add-int/lit8 v14, v14, 0x7

    .line 815
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget v7, v1, Landroid/text/format/Time;->monthDay:I

    sub-int/2addr v7, v14

    iput v7, v1, Landroid/text/format/Time;->monthDay:I

    .line 816
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/text/format/Time;->normalize(Z)J

    .line 820
    .end local v13           #dayOfWeek:I
    .end local v14           #diff:I
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 821
    .local v2, start:J
    move-wide v4, v2

    .line 822
    .local v4, end:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget-wide v7, v1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v7, v8}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/calendar/CalendarView;->mFirstJulianDay:I

    .line 823
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/calendar/CalendarView;->mFirstJulianDay:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    add-int/2addr v1, v7

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/calendar/CalendarView;->mLastJulianDay:I

    .line 825
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    const/4 v7, 0x4

    invoke-virtual {v1, v7}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/calendar/CalendarView;->mMonthLength:I

    .line 826
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/htc/calendar/CalendarView;->mFirstDate:I

    .line 828
    const/4 v6, 0x4

    .line 829
    .local v6, flags:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/CalendarView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 830
    or-int/lit16 v6, v6, 0x80

    .line 833
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    const/4 v7, 0x1

    if-le v1, v7, :cond_5

    .line 834
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget v7, v1, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    add-int/lit8 v8, v8, -0x1

    add-int/2addr v7, v8

    iput v7, v1, Landroid/text/format/Time;->monthDay:I

    .line 835
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 836
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget v7, v1, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    add-int/lit8 v8, v8, -0x1

    sub-int/2addr v7, v8

    iput v7, v1, Landroid/text/format/Time;->monthDay:I

    .line 837
    or-int/lit8 v6, v6, 0x10

    .line 838
    const v1, 0x8000

    or-int/2addr v6, v1

    .line 839
    const/high16 v1, 0x8

    or-int/2addr v6, v1

    .line 840
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    invoke-static/range {v1 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/calendar/CalendarView;->mDateRange:Ljava/lang/String;

    .line 849
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/CalendarView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/calendar/CalendarView;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v1, v7}, Lcom/htc/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 850
    const/4 v6, 0x1

    .line 851
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 852
    or-int/lit16 v6, v6, 0x80

    .line 854
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 856
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/CalendarView;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/calendar/CalendarView;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v1, v7}, Lcom/htc/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v17

    .line 857
    .local v17, tz:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->isDst:I

    if-eqz v1, :cond_6

    const/4 v15, 0x1

    .line 858
    .local v15, isDST:Z
    :goto_1
    new-instance v16, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/CalendarView;->mDateRange:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 859
    .local v16, title:Ljava/lang/StringBuilder;
    const-string v1, " ("

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/calendar/CalendarView;->mContext:Landroid/content/Context;

    move-wide v8, v2

    move-wide v10, v2

    move v12, v6

    invoke-static/range {v7 .. v12}, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/calendar/CalendarView;->mTimeZone:Ljava/util/TimeZone;

    const/4 v8, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v7, v15, v8, v9}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, ")"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/calendar/CalendarView;->mDateRange:Ljava/lang/String;

    .line 871
    .end local v15           #isDST:Z
    .end local v16           #title:Ljava/lang/StringBuilder;
    .end local v17           #tz:Ljava/lang/String;
    :cond_4
    return-void

    .line 842
    :cond_5
    const v1, 0x10012

    or-int/2addr v6, v1

    .line 844
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    invoke-static/range {v1 .. v6}, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/htc/calendar/CalendarView;->mDateRange:Ljava/lang/String;

    goto/16 :goto_0

    .line 857
    .restart local v17       #tz:Ljava/lang/String;
    :cond_6
    const/4 v15, 0x0

    goto :goto_1
.end method

.method private remeasure(II)V
    .locals 20
    .parameter "width"
    .parameter "height"

    .prologue
    .line 959
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 960
    :cond_0
    const-string v16, "CalendarView"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Remeasure error, width : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", height : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    :cond_1
    const/4 v4, 0x0

    .local v4, day:I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v4, v0, :cond_2

    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mEarliestStartHour:[I

    move-object/from16 v16, v0

    const/16 v17, 0x19

    aput v17, v16, v4

    .line 967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mHasAllDayEvent:[Z

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-boolean v17, v16, v4

    .line 965
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 974
    :cond_2
    const/4 v14, 0x0

    .line 975
    .local v14, maxAllDayEvents:I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    .line 976
    .local v9, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/Event;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 977
    .local v12, len:I
    const/4 v11, 0x0

    .local v11, ii:I
    :goto_1
    if-ge v11, v12, :cond_a

    .line 978
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/htc/calendar/Event;

    .line 979
    .local v7, event:Lcom/htc/calendar/Event;
    iget v0, v7, Lcom/htc/calendar/Event;->startDay:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/CalendarView;->mLastJulianDay:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_3

    iget v0, v7, Lcom/htc/calendar/Event;->endDay:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/CalendarView;->mFirstJulianDay:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    .line 977
    :cond_3
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 981
    :cond_4
    iget-boolean v0, v7, Lcom/htc/calendar/Event;->allDay:Z

    move/from16 v16, v0

    if-eqz v16, :cond_8

    .line 982
    invoke-virtual {v7}, Lcom/htc/calendar/Event;->getColumn()I

    move-result v16

    add-int/lit8 v13, v16, 0x1

    .line 983
    .local v13, max:I
    if-ge v14, v13, :cond_5

    .line 984
    move v14, v13

    .line 986
    :cond_5
    iget v0, v7, Lcom/htc/calendar/Event;->startDay:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/CalendarView;->mFirstJulianDay:I

    move/from16 v17, v0

    sub-int v5, v16, v17

    .line 987
    .local v5, daynum:I
    iget v0, v7, Lcom/htc/calendar/Event;->endDay:I

    move/from16 v16, v0

    iget v0, v7, Lcom/htc/calendar/Event;->startDay:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    add-int/lit8 v6, v16, 0x1

    .line 988
    .local v6, durationDays:I
    if-gez v5, :cond_6

    .line 989
    add-int/2addr v6, v5

    .line 990
    const/4 v5, 0x0

    .line 992
    :cond_6
    add-int v16, v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_7

    .line 993
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    move/from16 v16, v0

    sub-int v6, v16, v5

    .line 995
    :cond_7
    move v4, v5

    :goto_3
    if-lez v6, :cond_3

    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mHasAllDayEvent:[Z

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aput-boolean v17, v16, v4

    .line 995
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 999
    .end local v5           #daynum:I
    .end local v6           #durationDays:I
    .end local v13           #max:I
    :cond_8
    iget v0, v7, Lcom/htc/calendar/Event;->startDay:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/CalendarView;->mFirstJulianDay:I

    move/from16 v17, v0

    sub-int v5, v16, v17

    .line 1000
    .restart local v5       #daynum:I
    iget v0, v7, Lcom/htc/calendar/Event;->startTime:I

    move/from16 v16, v0

    div-int/lit8 v10, v16, 0x3c

    .line 1001
    .local v10, hour:I
    if-ltz v5, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mEarliestStartHour:[I

    move-object/from16 v16, v0

    aget v16, v16, v5

    move/from16 v0, v16

    if-ge v10, v0, :cond_9

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mEarliestStartHour:[I

    move-object/from16 v16, v0

    aput v10, v16, v5

    .line 1007
    :cond_9
    iget v0, v7, Lcom/htc/calendar/Event;->endDay:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/CalendarView;->mFirstJulianDay:I

    move/from16 v17, v0

    sub-int v5, v16, v17

    .line 1008
    iget v0, v7, Lcom/htc/calendar/Event;->endTime:I

    move/from16 v16, v0

    div-int/lit8 v10, v16, 0x3c

    .line 1009
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v5, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mEarliestStartHour:[I

    move-object/from16 v16, v0

    aget v16, v16, v5

    move/from16 v0, v16

    if-ge v10, v0, :cond_3

    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mEarliestStartHour:[I

    move-object/from16 v16, v0

    aput v10, v16, v5

    goto/16 :goto_2

    .line 1014
    .end local v5           #daynum:I
    .end local v7           #event:Lcom/htc/calendar/Event;
    .end local v10           #hour:I
    :cond_a
    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/calendar/CalendarView;->mMaxAllDayEvents:I

    .line 1017
    const/4 v2, 0x0

    .line 1018
    .local v2, allDayHeight:I
    if-gtz v14, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->isDrawPreviewAllDayEvent()Z

    move-result v16

    if-eqz v16, :cond_13

    .line 1021
    :cond_b
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v14, v0, :cond_11

    .line 1022
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/calendar/CalendarView;->mSingleAllDayHeight:I

    .line 1038
    :cond_c
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->isWeekView()Z

    move-result v16

    if-eqz v16, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/CalendarView;->mAllDayDividerHeight:I

    move/from16 v16, v0

    add-int v16, v16, v2

    add-int/lit8 v16, v16, 0x2

    :goto_5
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/calendar/CalendarView;->mAllDayHeight:I

    .line 1041
    if-gtz v14, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->isDrawPreviewAllDayEvent()Z

    move-result v16

    if-eqz v16, :cond_15

    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/CalendarView;->mAllDayHeight:I

    move/from16 v16, v0

    :goto_6
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/calendar/CalendarView;->mFirstCell:I

    .line 1044
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/CalendarView;->mFirstCell:I

    move/from16 v16, v0

    sub-int v16, p2, v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/calendar/CalendarView;->mGridAreaHeight:I

    .line 1050
    sget v16, Lcom/htc/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/CalendarView;->mNumHours:I

    move/from16 v17, v0

    mul-int v16, v16, v17

    add-int/lit8 v15, v16, 0x1

    .line 1051
    .local v15, usedGridAreaHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/CalendarView;->mGridAreaHeight:I

    move/from16 v16, v0

    sub-int v3, v16, v15

    .line 1052
    .local v3, bottomSpace:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mEventGeometry:Lcom/htc/calendar/EventGeometry;

    move-object/from16 v16, v0

    sget v17, Lcom/htc/calendar/CalendarView;->mCellHeight:I

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/htc/calendar/EventGeometry;->setHourHeight(F)V

    .line 1055
    sget v16, Lcom/htc/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v16, v16, 0x1

    mul-int/lit8 v16, v16, 0x18

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v16, v16, 0x8

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/calendar/CalendarView;->mBitmapHeight:I

    .line 1079
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/CalendarView;->mFirstHour:I

    move/from16 v16, v0

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    .line 1080
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->initFirstHour()V

    .line 1081
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/calendar/CalendarView;->mFirstHourOffset:I

    .line 1084
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/CalendarView;->mBitmapHeight:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/CalendarView;->mGridAreaHeight:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/calendar/CalendarView;->mMaxViewStartY:I

    .line 1085
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/CalendarView;->mFirstHour:I

    move/from16 v16, v0

    sget v17, Lcom/htc/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v17, v17, 0x1

    mul-int v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/CalendarView;->mFirstHourOffset:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/calendar/CalendarView;->mViewStartY:I

    .line 1087
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->checkFirstHour()V

    .line 1092
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/CalendarView;->mFirstHourOffset:I

    move/from16 v16, v0

    sget v17, Lcom/htc/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_f

    .line 1093
    sget v16, Lcom/htc/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v16, v16, -0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/calendar/CalendarView;->mFirstHourOffset:I

    .line 1097
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    mul-int v8, v16, v17

    .line 1099
    .local v8, eventAreaWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    move-object/from16 v16, v0

    if-eqz v16, :cond_10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/calendar/CalendarView;->mLastPopupEventID:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/htc/calendar/Event;->id:J

    move-wide/from16 v18, v0

    cmp-long v16, v16, v18

    if-eqz v16, :cond_10

    .line 1100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1102
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v16, v0

    add-int/lit8 v17, v8, -0x14

    invoke-virtual/range {v16 .. v17}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;

    move-object/from16 v16, v0

    const/16 v17, -0x2

    invoke-virtual/range {v16 .. v17}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1104
    return-void

    .line 1023
    .end local v3           #bottomSpace:I
    .end local v8           #eventAreaWidth:I
    .end local v15           #usedGridAreaHeight:I
    :cond_11
    if-nez v14, :cond_12

    .line 1024
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/calendar/CalendarView;->mSingleAllDayHeight:I

    goto/16 :goto_4

    .line 1028
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/CalendarView;->mMaxAllDayEventHeight:I

    move/from16 v16, v0

    mul-int v2, v14, v16

    .line 1029
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/CalendarView;->mMaxAllDayHeight:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v2, v0, :cond_c

    .line 1030
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/calendar/CalendarView;->mMaxAllDayHeight:I

    goto/16 :goto_4

    .line 1035
    :cond_13
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/calendar/CalendarView;->mSelectionAllDay:Z

    goto/16 :goto_4

    .line 1038
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/CalendarView;->mAllDayTitleHeight:I

    move/from16 v16, v0

    add-int v16, v16, v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/CalendarView;->mAllDayDividerHeight:I

    move/from16 v17, v0

    add-int v16, v16, v17

    add-int/lit8 v16, v16, 0x2

    sget v17, Lcom/htc/calendar/CalendarView;->ALLDAY_BOTTOM_MARGIN:I

    add-int v16, v16, v17

    goto/16 :goto_5

    .line 1041
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/CalendarView;->mBannerPlusMargin:I

    move/from16 v16, v0

    goto/16 :goto_6
.end method

.method private resetSelectedHour()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1523
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mSelectionHour:I

    iget v1, p0, Lcom/htc/calendar/CalendarView;->mFirstHour:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_1

    .line 1524
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mFirstHour:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/htc/calendar/CalendarView;->mSelectionHour:I

    .line 1525
    iput-object v4, p0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    .line 1526
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1527
    iput-boolean v3, p0, Lcom/htc/calendar/CalendarView;->mComputeSelectedEvents:Z

    .line 1534
    :cond_0
    :goto_0
    return-void

    .line 1528
    :cond_1
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mSelectionHour:I

    iget v1, p0, Lcom/htc/calendar/CalendarView;->mFirstHour:I

    iget v2, p0, Lcom/htc/calendar/CalendarView;->mNumHours:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x3

    if-le v0, v1, :cond_0

    .line 1529
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mFirstHour:I

    iget v1, p0, Lcom/htc/calendar/CalendarView;->mNumHours:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/htc/calendar/CalendarView;->mSelectionHour:I

    .line 1530
    iput-object v4, p0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    .line 1531
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1532
    iput-boolean v3, p0, Lcom/htc/calendar/CalendarView;->mComputeSelectedEvents:Z

    goto :goto_0
.end method

.method private saveSelectionPosition(FFFF)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 2498
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    float-to-int v1, p1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 2499
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    float-to-int v1, p3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2500
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    float-to-int v1, p2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2501
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mPrevBox:Landroid/graphics/Rect;

    float-to-int v1, p4

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2502
    return-void
.end method

.method private sendAccessibilityEvents()V
    .locals 4

    .prologue
    .line 2133
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarView;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/htc/calendar/CalendarView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2153
    :cond_0
    :goto_0
    return-void

    .line 2138
    :cond_1
    iget-object v2, p0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    invoke-static {v2}, Lcom/htc/calendar/HtcUtils;->getHtc_Title_21(Landroid/app/Activity;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2140
    .local v1, titleTextViewText:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/htc/calendar/CalendarView;->mPrevTitleTextViewText:Ljava/lang/CharSequence;

    if-eq v1, v2, :cond_4

    const/4 v0, 0x1

    .line 2141
    .local v0, titleChanged:Z
    :goto_1
    if-eqz v0, :cond_2

    .line 2142
    iput-object v1, p0, Lcom/htc/calendar/CalendarView;->mPrevTitleTextViewText:Ljava/lang/CharSequence;

    .line 2143
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/htc/calendar/CalendarView;->sendAccessibilityEvent(I)V

    .line 2147
    :cond_2
    if-nez v0, :cond_3

    iget v2, p0, Lcom/htc/calendar/CalendarView;->mPrevSelectionDay:I

    iget v3, p0, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/htc/calendar/CalendarView;->mPrevSelectionHour:I

    iget v3, p0, Lcom/htc/calendar/CalendarView;->mSelectionHour:I

    if-eq v2, v3, :cond_0

    .line 2149
    :cond_3
    iget v2, p0, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    iput v2, p0, Lcom/htc/calendar/CalendarView;->mPrevSelectionDay:I

    .line 2150
    iget v2, p0, Lcom/htc/calendar/CalendarView;->mSelectionHour:I

    iput v2, p0, Lcom/htc/calendar/CalendarView;->mPrevSelectionHour:I

    .line 2151
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/htc/calendar/CalendarView;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 2140
    .end local v0           #titleChanged:Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setHtcTitle(Ljava/lang/String;)V
    .locals 3
    .parameter "title"

    .prologue
    .line 4622
    const-string v0, "CalendarView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHtcTitle, this : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isShown : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/calendar/CalendarView;->isShown()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4623
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4633
    :goto_0
    return-void

    .line 4626
    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    invoke-static {v0, p1}, Lcom/htc/calendar/HtcUtils;->setHtc_Title_21(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setMeetingConflictArea(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 5576
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    const v1, 0x7f0d0043

    invoke-virtual {v0, v1}, Lcom/htc/calendar/CalendarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 5577
    return-void

    .line 5576
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setSelectionFromPosition(II)Z
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4228
    invoke-direct {p0}, Lcom/htc/calendar/CalendarView;->isPreviewMode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4229
    iget v3, p0, Lcom/htc/calendar/CalendarView;->mHoursWidth:I

    .line 4234
    .local v3, validAreaWidth:I
    :goto_0
    if-ge p1, v3, :cond_1

    .line 4279
    :goto_1
    return v4

    .line 4231
    .end local v3           #validAreaWidth:I
    :cond_0
    iget v3, p0, Lcom/htc/calendar/CalendarView;->mHoursWidth:I

    .restart local v3       #validAreaWidth:I
    goto :goto_0

    .line 4238
    :cond_1
    iget v6, p0, Lcom/htc/calendar/CalendarView;->mHoursWidth:I

    sub-int v6, p1, v6

    iget v7, p0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    add-int/lit8 v7, v7, 0x1

    div-int v0, v6, v7

    .line 4239
    .local v0, day:I
    iget v6, p0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    if-lt v0, v6, :cond_2

    .line 4240
    iget v6, p0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    add-int/lit8 v0, v6, -0x1

    .line 4242
    :cond_2
    iget v6, p0, Lcom/htc/calendar/CalendarView;->mFirstJulianDay:I

    add-int/2addr v0, v6

    .line 4243
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 4244
    .local v2, time:Landroid/text/format/Time;
    invoke-virtual {v2, v0}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 4247
    iget v6, p0, Lcom/htc/calendar/CalendarView;->mFirstCell:I

    iget v7, p0, Lcom/htc/calendar/CalendarView;->mFirstHourOffset:I

    add-int/2addr v6, v7

    if-ge p2, v6, :cond_3

    .line 4248
    iput-boolean v5, p0, Lcom/htc/calendar/CalendarView;->mSelectionAllDay:Z

    .line 4256
    :goto_2
    iput v0, p0, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    .line 4257
    iget v6, p0, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    sput v6, Lcom/htc/calendar/CalendarView;->mHighLightDay:I

    .line 4259
    const/4 v6, 0x0

    invoke-static {v2, v6, v4}, Lcom/htc/calendar/HtcUtils;->IsNextViewValid(Landroid/text/format/Time;FI)Z

    move-result v6

    if-nez v6, :cond_4

    .line 4260
    iget-object v5, p0, Lcom/htc/calendar/CalendarView;->mContext:Landroid/content/Context;

    const v6, 0x7f08006f

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 4250
    :cond_3
    iget v6, p0, Lcom/htc/calendar/CalendarView;->mFirstCell:I

    sub-int v6, p2, v6

    iget v7, p0, Lcom/htc/calendar/CalendarView;->mFirstHourOffset:I

    sub-int/2addr v6, v7

    sget v7, Lcom/htc/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v7, v7, 0x1

    div-int v1, v6, v7

    .line 4251
    .local v1, hour:I
    iget v6, p0, Lcom/htc/calendar/CalendarView;->mFirstHour:I

    add-int/2addr v1, v6

    .line 4252
    iput v1, p0, Lcom/htc/calendar/CalendarView;->mSelectionHour:I

    .line 4253
    iget v6, p0, Lcom/htc/calendar/CalendarView;->mSelectionHour:I

    sput v6, Lcom/htc/calendar/CalendarView;->mHighLightHour:I

    .line 4254
    iput-boolean v4, p0, Lcom/htc/calendar/CalendarView;->mSelectionAllDay:Z

    goto :goto_2

    .line 4264
    .end local v1           #hour:I
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/htc/calendar/CalendarView;->findSelectedEvent(II)V

    move v4, v5

    .line 4279
    goto :goto_1
.end method

.method private switchViews(Z)V
    .locals 19
    .parameter "trackBallSelection"

    .prologue
    .line 1152
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    .line 1154
    .local v15, selectedEvent:Lcom/htc/calendar/Event;
    const/4 v4, 0x0

    .line 1155
    .local v4, syncAccountType:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1156
    .local v6, facebookType:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1157
    .local v5, facebookSourceId:Ljava/lang/String;
    const/4 v9, 0x0

    .line 1159
    .local v9, iCalGUID:Ljava/lang/String;
    if-eqz v15, :cond_0

    .line 1160
    iget-object v4, v15, Lcom/htc/calendar/Event;->syncAccountType:Ljava/lang/String;

    .line 1161
    iget-object v6, v15, Lcom/htc/calendar/Event;->facebookType:Ljava/lang/String;

    .line 1162
    iget-object v5, v15, Lcom/htc/calendar/Event;->facebookSourceId:Ljava/lang/String;

    .line 1163
    iget-object v9, v15, Lcom/htc/calendar/Event;->iCalGUID:Ljava/lang/String;

    .line 1166
    :cond_0
    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->getSelectedTimeInMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/calendar/CalendarContext;->setCurrentSelectedTime(Ljava/lang/Long;)V

    .line 1167
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->isPreviewMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1318
    :goto_0
    return-void

    .line 1171
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1172
    const-wide/16 v2, -0x1

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/htc/calendar/CalendarView;->mLastPopupEventID:J

    .line 1175
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_9

    .line 1180
    if-eqz p1, :cond_5

    .line 1181
    if-nez v15, :cond_2

    .line 1183
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->getSelectedTimeInMillis()J

    move-result-wide v16

    .line 1184
    .local v16, startMillis:J
    const-wide/32 v2, 0x36ee80

    add-long v10, v16, v2

    .line 1185
    .local v10, endMillis:J
    new-instance v12, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v12, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1186
    .local v12, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    const-class v3, Lcom/htc/calendar/EditEvent;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1187
    const-string v2, "beginTime"

    move-wide/from16 v0, v16

    invoke-virtual {v12, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1188
    const-string v2, "endTime"

    invoke-virtual {v12, v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    invoke-virtual {v2, v12}, Lcom/htc/calendar/CalendarActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1198
    .end local v10           #endMillis:J
    .end local v12           #intent:Landroid/content/Intent;
    .end local v16           #startMillis:J
    :cond_2
    iget-boolean v2, v15, Lcom/htc/calendar/Event;->mIsCrossDayEvent:Z

    if-eqz v2, :cond_3

    .line 1199
    iget-wide v0, v15, Lcom/htc/calendar/Event;->originalStartMillis:J

    move-wide/from16 v16, v0

    .line 1200
    .restart local v16       #startMillis:J
    iget-wide v10, v15, Lcom/htc/calendar/Event;->originalEndMillis:J

    .line 1218
    .restart local v10       #endMillis:J
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    iget-wide v7, v15, Lcom/htc/calendar/Event;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static/range {v2 .. v9}, Lcom/htc/calendar/HtcUtils;->StartActvity(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    goto :goto_0

    .line 1201
    .end local v10           #endMillis:J
    .end local v16           #startMillis:J
    :cond_3
    iget-boolean v2, v15, Lcom/htc/calendar/Event;->allDay:Z

    if-eqz v2, :cond_4

    .line 1202
    new-instance v18, Landroid/text/format/Time;

    invoke-direct/range {v18 .. v18}, Landroid/text/format/Time;-><init>()V

    .line 1203
    .local v18, time:Landroid/text/format/Time;
    iget-wide v2, v15, Lcom/htc/calendar/Event;->startMillis:J

    const-wide/16 v7, 0x0

    invoke-static {v2, v3, v7, v8}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 1204
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iput-wide v2, v15, Lcom/htc/calendar/Event;->startMillis:J

    .line 1205
    iget-wide v0, v15, Lcom/htc/calendar/Event;->startMillis:J

    move-wide/from16 v16, v0

    .line 1207
    .restart local v16       #startMillis:J
    iget-wide v2, v15, Lcom/htc/calendar/Event;->endMillis:J

    const-wide/16 v7, 0x0

    invoke-static {v2, v3, v7, v8}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 1208
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iput-wide v2, v15, Lcom/htc/calendar/Event;->endMillis:J

    .line 1209
    iget-wide v10, v15, Lcom/htc/calendar/Event;->endMillis:J

    .line 1210
    .restart local v10       #endMillis:J
    goto :goto_1

    .line 1211
    .end local v10           #endMillis:J
    .end local v16           #startMillis:J
    .end local v18           #time:Landroid/text/format/Time;
    :cond_4
    iget-wide v0, v15, Lcom/htc/calendar/Event;->startMillis:J

    move-wide/from16 v16, v0

    .line 1212
    .restart local v16       #startMillis:J
    iget-wide v10, v15, Lcom/htc/calendar/Event;->endMillis:J

    .restart local v10       #endMillis:J
    goto :goto_1

    .line 1226
    .end local v10           #endMillis:J
    .end local v16           #startMillis:J
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 1234
    iget-boolean v2, v15, Lcom/htc/calendar/Event;->mIsCrossDayEvent:Z

    if-eqz v2, :cond_6

    .line 1235
    iget-wide v0, v15, Lcom/htc/calendar/Event;->originalStartMillis:J

    move-wide/from16 v16, v0

    .line 1236
    .restart local v16       #startMillis:J
    iget-wide v10, v15, Lcom/htc/calendar/Event;->originalEndMillis:J

    .line 1254
    .restart local v10       #endMillis:J
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    iget-wide v7, v15, Lcom/htc/calendar/Event;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static/range {v2 .. v9}, Lcom/htc/calendar/HtcUtils;->StartActvity(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1237
    .end local v10           #endMillis:J
    .end local v16           #startMillis:J
    :cond_6
    iget-boolean v2, v15, Lcom/htc/calendar/Event;->allDay:Z

    if-eqz v2, :cond_7

    .line 1238
    new-instance v18, Landroid/text/format/Time;

    invoke-direct/range {v18 .. v18}, Landroid/text/format/Time;-><init>()V

    .line 1239
    .restart local v18       #time:Landroid/text/format/Time;
    iget-wide v2, v15, Lcom/htc/calendar/Event;->startMillis:J

    const-wide/16 v7, 0x0

    invoke-static {v2, v3, v7, v8}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 1240
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iput-wide v2, v15, Lcom/htc/calendar/Event;->startMillis:J

    .line 1241
    iget-wide v0, v15, Lcom/htc/calendar/Event;->startMillis:J

    move-wide/from16 v16, v0

    .line 1243
    .restart local v16       #startMillis:J
    iget-wide v2, v15, Lcom/htc/calendar/Event;->endMillis:J

    const-wide/16 v7, 0x0

    invoke-static {v2, v3, v7, v8}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 1244
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iput-wide v2, v15, Lcom/htc/calendar/Event;->endMillis:J

    .line 1245
    iget-wide v10, v15, Lcom/htc/calendar/Event;->endMillis:J

    .line 1246
    .restart local v10       #endMillis:J
    goto :goto_2

    .line 1247
    .end local v10           #endMillis:J
    .end local v16           #startMillis:J
    .end local v18           #time:Landroid/text/format/Time;
    :cond_7
    iget-wide v0, v15, Lcom/htc/calendar/Event;->startMillis:J

    move-wide/from16 v16, v0

    .line 1248
    .restart local v16       #startMillis:J
    iget-wide v10, v15, Lcom/htc/calendar/Event;->endMillis:J

    .restart local v10       #endMillis:J
    goto :goto_2

    .line 1260
    .end local v10           #endMillis:J
    .end local v16           #startMillis:J
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->getSelectedTimeInMillis()J

    move-result-wide v13

    .line 1261
    .local v13, millis:J
    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v2

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/calendar/CalendarContext;->setCurrentSelectedTime(Ljava/lang/Long;)V

    .line 1262
    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/calendar/CalendarContext;->setWeekToDay(Z)V

    .line 1264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    invoke-virtual {v2}, Lcom/htc/calendar/CalendarActivity;->getParent()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/CarouselActivity;

    invoke-virtual {v2}, Lcom/htc/widget/CarouselActivity;->getCarouselHost()Lcom/htc/widget/CarouselHost;

    move-result-object v2

    const-string v3, "Day"

    invoke-virtual {v2, v3}, Lcom/htc/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1271
    .end local v13           #millis:J
    :cond_9
    if-nez v15, :cond_a

    .line 1273
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->getSelectedTimeInMillis()J

    move-result-wide v16

    .line 1274
    .restart local v16       #startMillis:J
    const-wide/32 v2, 0x36ee80

    add-long v10, v16, v2

    .line 1275
    .restart local v10       #endMillis:J
    new-instance v12, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v12, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1276
    .restart local v12       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    const-class v3, Lcom/htc/calendar/EditEvent;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1277
    const-string v2, "beginTime"

    move-wide/from16 v0, v16

    invoke-virtual {v12, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1278
    const-string v2, "endTime"

    invoke-virtual {v12, v2, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    invoke-virtual {v2, v12}, Lcom/htc/calendar/CalendarActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1287
    .end local v10           #endMillis:J
    .end local v12           #intent:Landroid/content/Intent;
    .end local v16           #startMillis:J
    :cond_a
    iget-boolean v2, v15, Lcom/htc/calendar/Event;->mIsCrossDayEvent:Z

    if-eqz v2, :cond_d

    .line 1288
    iget-wide v0, v15, Lcom/htc/calendar/Event;->originalStartMillis:J

    move-wide/from16 v16, v0

    .line 1289
    .restart local v16       #startMillis:J
    iget-wide v10, v15, Lcom/htc/calendar/Event;->originalEndMillis:J

    .line 1304
    .restart local v10       #endMillis:J
    :goto_3
    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-gez v2, :cond_b

    .line 1305
    const-wide/16 v16, 0x0

    .line 1307
    :cond_b
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-gez v2, :cond_c

    .line 1308
    const-wide/16 v10, 0x0

    .line 1313
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    iget-wide v7, v15, Lcom/htc/calendar/Event;->id:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-static/range {v2 .. v9}, Lcom/htc/calendar/HtcUtils;->StartActvity(Landroid/content/Context;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1290
    .end local v10           #endMillis:J
    .end local v16           #startMillis:J
    :cond_d
    iget-boolean v2, v15, Lcom/htc/calendar/Event;->allDay:Z

    if-eqz v2, :cond_e

    .line 1291
    new-instance v18, Landroid/text/format/Time;

    invoke-direct/range {v18 .. v18}, Landroid/text/format/Time;-><init>()V

    .line 1292
    .restart local v18       #time:Landroid/text/format/Time;
    iget-wide v2, v15, Lcom/htc/calendar/Event;->startMillis:J

    const-wide/16 v7, 0x0

    invoke-static {v2, v3, v7, v8}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 1293
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iput-wide v2, v15, Lcom/htc/calendar/Event;->startMillis:J

    .line 1294
    iget-wide v0, v15, Lcom/htc/calendar/Event;->startMillis:J

    move-wide/from16 v16, v0

    .line 1296
    .restart local v16       #startMillis:J
    iget-wide v2, v15, Lcom/htc/calendar/Event;->endMillis:J

    const-wide/16 v7, 0x0

    invoke-static {v2, v3, v7, v8}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 1297
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iput-wide v2, v15, Lcom/htc/calendar/Event;->endMillis:J

    .line 1298
    iget-wide v10, v15, Lcom/htc/calendar/Event;->endMillis:J

    .line 1299
    .restart local v10       #endMillis:J
    goto :goto_3

    .line 1300
    .end local v10           #endMillis:J
    .end local v16           #startMillis:J
    .end local v18           #time:Landroid/text/format/Time;
    :cond_e
    iget-wide v0, v15, Lcom/htc/calendar/Event;->startMillis:J

    move-wide/from16 v16, v0

    .line 1301
    .restart local v16       #startMillis:J
    iget-wide v10, v15, Lcom/htc/calendar/Event;->endMillis:J

    .restart local v10       #endMillis:J
    goto :goto_3
.end method

.method private updateEventDetails()V
    .locals 15

    .prologue
    const/16 v14, 0x8

    const/4 v13, 0x0

    .line 3488
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/calendar/CalendarView;->mSelectionMode:I

    invoke-virtual {p0, v0}, Lcom/htc/calendar/CalendarView;->getSelectedMode(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/htc/calendar/CalendarView;->mSelectionMode:I

    invoke-virtual {p0, v0}, Lcom/htc/calendar/CalendarView;->getSelectedMode(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 3490
    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 3538
    :cond_1
    :goto_0
    return-void

    .line 3493
    :cond_2
    iget-wide v0, p0, Lcom/htc/calendar/CalendarView;->mLastPopupEventID:J

    iget-object v2, p0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    iget-wide v2, v2, Lcom/htc/calendar/Event;->id:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 3497
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    iget-wide v0, v0, Lcom/htc/calendar/Event;->id:J

    iput-wide v0, p0, Lcom/htc/calendar/CalendarView;->mLastPopupEventID:J

    .line 3500
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/calendar/CalendarView;->mDismissPopup:Lcom/htc/calendar/CalendarView$DismissPopup;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3502
    iget-object v7, p0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    .line 3503
    .local v7, event:Lcom/htc/calendar/Event;
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mPopupView:Landroid/view/View;

    const v1, 0x7f0d0013

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 3504
    .local v11, titleView:Landroid/widget/TextView;
    iget-object v0, v7, Lcom/htc/calendar/Event;->title:Ljava/lang/CharSequence;

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3506
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mPopupView:Landroid/view/View;

    const v1, 0x7f0d000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 3507
    .local v8, imageView:Landroid/widget/ImageView;
    iget-boolean v0, v7, Lcom/htc/calendar/Event;->hasAlarm:Z

    if-eqz v0, :cond_5

    move v0, v13

    :goto_1
    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3509
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mPopupView:Landroid/view/View;

    const v1, 0x7f0d0015

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8           #imageView:Landroid/widget/ImageView;
    check-cast v8, Landroid/widget/ImageView;

    .line 3510
    .restart local v8       #imageView:Landroid/widget/ImageView;
    iget-boolean v0, v7, Lcom/htc/calendar/Event;->isRepeating:Z

    if-eqz v0, :cond_6

    move v0, v13

    :goto_2
    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3513
    iget-boolean v0, v7, Lcom/htc/calendar/Event;->allDay:Z

    if-eqz v0, :cond_7

    .line 3514
    const v5, 0x82012

    .line 3521
    .local v5, flags:I
    :goto_3
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3522
    or-int/lit16 v5, v5, 0x80

    .line 3524
    :cond_3
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    iget-wide v1, v7, Lcom/htc/calendar/Event;->startMillis:J

    iget-wide v3, v7, Lcom/htc/calendar/Event;->endMillis:J

    invoke-static/range {v0 .. v5}, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v9

    .line 3526
    .local v9, timeRange:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mPopupView:Landroid/view/View;

    const v1, 0x7f0d0029

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 3527
    .local v10, timeView:Landroid/widget/TextView;
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3529
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mPopupView:Landroid/view/View;

    const v1, 0x7f0d000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 3530
    .local v12, whereView:Landroid/widget/TextView;
    iget-object v0, v7, Lcom/htc/calendar/Event;->location:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    .line 3531
    .local v6, empty:Z
    if-eqz v6, :cond_8

    :goto_4
    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3532
    if-nez v6, :cond_4

    iget-object v0, v7, Lcom/htc/calendar/Event;->location:Ljava/lang/CharSequence;

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3534
    :cond_4
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;

    const/16 v1, 0x53

    iget v2, p0, Lcom/htc/calendar/CalendarView;->mHoursWidth:I

    const/4 v3, 0x5

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 3535
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mDismissPopup:Lcom/htc/calendar/CalendarView$DismissPopup;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/calendar/CalendarView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3537
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/htc/calendar/CalendarView;->sendAccessibilityEvent(I)V

    goto/16 :goto_0

    .end local v5           #flags:I
    .end local v6           #empty:Z
    .end local v9           #timeRange:Ljava/lang/String;
    .end local v10           #timeView:Landroid/widget/TextView;
    .end local v12           #whereView:Landroid/widget/TextView;
    :cond_5
    move v0, v14

    .line 3507
    goto :goto_1

    :cond_6
    move v0, v14

    .line 3510
    goto :goto_2

    .line 3517
    :cond_7
    const v5, 0x81413

    .restart local v5       #flags:I
    goto :goto_3

    .restart local v6       #empty:Z
    .restart local v9       #timeRange:Ljava/lang/String;
    .restart local v10       #timeView:Landroid/widget/TextView;
    .restart local v12       #whereView:Landroid/widget/TextView;
    :cond_8
    move v14, v13

    .line 3531
    goto :goto_4
.end method


# virtual methods
.method public cleanup()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4500
    iget-object v1, p0, Lcom/htc/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    .line 4501
    iget-object v1, p0, Lcom/htc/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4503
    :cond_0
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/htc/calendar/CalendarView;->mLastPopupEventID:J

    .line 4504
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 4505
    .local v0, handler:Landroid/os/Handler;
    if-eqz v0, :cond_1

    .line 4506
    iget-object v1, p0, Lcom/htc/calendar/CalendarView;->mDismissPopup:Lcom/htc/calendar/CalendarView$DismissPopup;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4507
    iget-object v1, p0, Lcom/htc/calendar/CalendarView;->mUpdateCurrentTime:Lcom/htc/calendar/CalendarView$UpdateCurrentTime;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4508
    iget-object v1, p0, Lcom/htc/calendar/CalendarView;->mUpdateUIFromBackgroundHandler:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4512
    :cond_1
    iput-boolean v3, p0, Lcom/htc/calendar/CalendarView;->mRemeasure:Z

    .line 4513
    iput-boolean v3, p0, Lcom/htc/calendar/CalendarView;->mRedrawScreen:Z

    .line 4517
    iput v3, p0, Lcom/htc/calendar/CalendarView;->mPrevSelectionDay:I

    .line 4518
    iput v3, p0, Lcom/htc/calendar/CalendarView;->mPrevSelectionHour:I

    .line 4519
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/calendar/CalendarView;->mPrevTitleTextViewText:Ljava/lang/CharSequence;

    .line 4521
    return-void
.end method

.method clearCachedEvents()V
    .locals 2

    .prologue
    .line 1613
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/calendar/CalendarView;->mLastReloadMillis:J

    .line 1614
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 27
    .parameter "event"

    .prologue
    .line 2168
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    const/16 v25, 0x20

    move/from16 v0, v25

    if-ne v2, v0, :cond_4

    .line 2170
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v2, v0, :cond_2

    .line 2173
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/htc/calendar/HtcUtils;->getHtc_Title_21(Landroid/app/Activity;)Ljava/lang/CharSequence;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2244
    :cond_0
    :goto_0
    const/16 v24, 0x0

    .line 2245
    .local v24, todayEventCount:I
    const/16 v16, 0x0

    .line 2246
    .local v16, sameHourEventCount:I
    const/4 v11, 0x0

    .line 2247
    .local v11, currentSameHourEventIndex:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/calendar/CalendarView;->mSelectionHour:I

    mul-int/lit8 v19, v2, 0x3c

    .line 2248
    .local v19, selectionHourStart:I
    add-int/lit8 v18, v19, 0x3c

    .line 2249
    .local v18, selectionHourEnd:I
    const/4 v15, 0x0

    .local v15, i:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    .local v10, count:I
    :goto_1
    if-ge v15, v10, :cond_a

    .line 2250
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/CalendarView;->mEvents:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/calendar/Event;

    .line 2251
    .local v9, calendarEvent:Lcom/htc/calendar/Event;
    iget v2, v9, Lcom/htc/calendar/Event;->endDay:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    move/from16 v25, v0

    move/from16 v0, v25

    if-ne v2, v0, :cond_1

    .line 2252
    add-int/lit8 v24, v24, 0x1

    .line 2253
    iget v2, v9, Lcom/htc/calendar/Event;->endTime:I

    move/from16 v0, v19

    if-ge v0, v2, :cond_1

    iget v2, v9, Lcom/htc/calendar/Event;->startTime:I

    move/from16 v0, v18

    if-gt v0, v2, :cond_8

    .line 2249
    :cond_1
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 2177
    .end local v9           #calendarEvent:Lcom/htc/calendar/Event;
    .end local v10           #count:I
    .end local v11           #currentSameHourEventIndex:I
    .end local v15           #i:I
    .end local v16           #sameHourEventCount:I
    .end local v18           #selectionHourEnd:I
    .end local v19           #selectionHourStart:I
    .end local v24           #todayEventCount:I
    :cond_2
    const v7, 0x11416

    .line 2180
    .local v7, flags:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2181
    or-int/lit16 v7, v7, 0x80

    .line 2184
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v20

    .line 2185
    .local v20, start:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget-wide v13, v2, Landroid/text/format/Time;->gmtoff:J

    .line 2186
    .local v13, gmtOff:J
    move-wide/from16 v0, v20

    invoke-static {v0, v1, v13, v14}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v12

    .line 2188
    .local v12, firstJulianDay:I
    new-instance v22, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 2189
    .local v22, time:Landroid/text/format/Time;
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 2190
    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    .line 2191
    .local v3, startTime:J
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    add-int/2addr v2, v12

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 2192
    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v5

    .line 2194
    .local v5, endTime:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    invoke-static/range {v2 .. v7}, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v23

    .line 2196
    .local v23, timeRange:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2198
    .end local v3           #startTime:J
    .end local v5           #endTime:J
    .end local v7           #flags:I
    .end local v12           #firstJulianDay:I
    .end local v13           #gmtOff:J
    .end local v20           #start:J
    .end local v22           #time:Landroid/text/format/Time;
    .end local v23           #timeRange:Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    const/16 v25, 0x4

    move/from16 v0, v25

    if-ne v2, v0, :cond_0

    .line 2199
    const/4 v7, 0x0

    .line 2201
    .restart local v7       #flags:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v2, v0, :cond_7

    .line 2203
    const/16 v7, 0x1401

    .line 2208
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->getSelectedTimeInMillis()J

    move-result-wide v3

    .line 2209
    .restart local v3       #startTime:J
    const-wide/32 v25, 0x36ee80

    add-long v5, v3, v25

    .line 2210
    .restart local v5       #endTime:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2211
    or-int/lit16 v7, v7, 0x80

    .line 2213
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    invoke-static/range {v2 .. v7}, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v23

    .line 2215
    .restart local v23       #timeRange:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2218
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    if-eqz v2, :cond_0

    .line 2219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    move-object/from16 v17, v0

    .line 2220
    .local v17, selectedEvent:Lcom/htc/calendar/Event;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/CalendarView;->mTempEventBundle:Landroid/os/Bundle;

    if-nez v2, :cond_6

    .line 2221
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/calendar/CalendarView;->mTempEventBundle:Landroid/os/Bundle;

    .line 2223
    :cond_6
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/calendar/CalendarView;->mTempEventBundle:Landroid/os/Bundle;

    .line 2224
    .local v8, bundle:Landroid/os/Bundle;
    invoke-virtual {v8}, Landroid/os/Bundle;->clear()V

    .line 2225
    const-string v2, "id"

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/htc/calendar/Event;->id:J

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    invoke-virtual {v8, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2226
    const-string v2, "color"

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/calendar/Event;->color:I

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v8, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2227
    const-string v2, "title"

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/calendar/Event;->title:Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v8, v2, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2228
    const-string v2, "location"

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/calendar/Event;->location:Ljava/lang/CharSequence;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v8, v2, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2229
    const-string v2, "allDay"

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/htc/calendar/Event;->allDay:Z

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v8, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2230
    const-string v2, "startDay"

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/calendar/Event;->startDay:I

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v8, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2231
    const-string v2, "endDay"

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/calendar/Event;->endDay:I

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v8, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2232
    const-string v2, "startTime"

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/calendar/Event;->startTime:I

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v8, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2233
    const-string v2, "endTime"

    move-object/from16 v0, v17

    iget v0, v0, Lcom/htc/calendar/Event;->endTime:I

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v8, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2234
    const-string v2, "startMillis"

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/htc/calendar/Event;->startMillis:J

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    invoke-virtual {v8, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2235
    const-string v2, "endMillis"

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/htc/calendar/Event;->endMillis:J

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    invoke-virtual {v8, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2236
    const-string v2, "organizer"

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/htc/calendar/Event;->organizer:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v8, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2237
    const-string v2, "guestsCanModify"

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/htc/calendar/Event;->guestsCanModify:Z

    move/from16 v25, v0

    move/from16 v0, v25

    invoke-virtual {v8, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2238
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/accessibility/AccessibilityEvent;->setParcelableData(Landroid/os/Parcelable;)V

    goto/16 :goto_0

    .line 2205
    .end local v3           #startTime:J
    .end local v5           #endTime:J
    .end local v8           #bundle:Landroid/os/Bundle;
    .end local v17           #selectedEvent:Lcom/htc/calendar/Event;
    .end local v23           #timeRange:Ljava/lang/String;
    :cond_7
    const/16 v7, 0x1413

    goto/16 :goto_3

    .line 2257
    .end local v7           #flags:I
    .restart local v9       #calendarEvent:Lcom/htc/calendar/Event;
    .restart local v10       #count:I
    .restart local v11       #currentSameHourEventIndex:I
    .restart local v15       #i:I
    .restart local v16       #sameHourEventCount:I
    .restart local v18       #selectionHourEnd:I
    .restart local v19       #selectionHourStart:I
    .restart local v24       #todayEventCount:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    if-ne v9, v2, :cond_9

    .line 2258
    move/from16 v11, v16

    .line 2260
    :cond_9
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 2263
    .end local v9           #calendarEvent:Lcom/htc/calendar/Event;
    :cond_a
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 2264
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 2265
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 2267
    const/4 v2, 0x1

    return v2
.end method

.method doDown(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    .line 3544
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/calendar/CalendarView;->mTouchMode:I

    .line 3545
    iput v1, p0, Lcom/htc/calendar/CalendarView;->mViewStartX:I

    .line 3546
    iput-boolean v1, p0, Lcom/htc/calendar/CalendarView;->mOnFlingCalled:Z

    .line 3547
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/calendar/CalendarView;->mContinueScroll:Lcom/htc/calendar/CalendarView$ContinueScroll;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3548
    return-void
.end method

.method doFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 10
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v9, 0x0

    .line 3711
    iget-object v6, p0, Lcom/htc/calendar/CalendarView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v6}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3737
    :goto_0
    return-void

    .line 3714
    :cond_0
    iput v9, p0, Lcom/htc/calendar/CalendarView;->mTouchMode:I

    .line 3716
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/htc/calendar/CalendarView;->mOnFlingCalled:Z

    .line 3717
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    sub-int v0, v6, v7

    .line 3718
    .local v0, deltaX:I
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 3719
    .local v2, distanceX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    sub-int v1, v6, v7

    .line 3720
    .local v1, deltaY:I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 3722
    .local v3, distanceY:I
    sget v6, Lcom/htc/calendar/CalendarView;->HORIZONTAL_SCROLL_THRESHOLD:I

    if-lt v2, v6, :cond_1

    if-le v2, v3, :cond_1

    .line 3723
    invoke-direct {p0, v0}, Lcom/htc/calendar/CalendarView;->initNextView(I)Z

    move-result v4

    .line 3724
    .local v4, switchForward:Z
    iget-object v6, p0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    invoke-virtual {v6}, Lcom/htc/calendar/CalendarActivity;->getNextView()Lcom/htc/calendar/CalendarView;

    move-result-object v5

    .line 3726
    .local v5, view:Lcom/htc/calendar/CalendarView;
    iget-object v6, v5, Lcom/htc/calendar/CalendarView;->mDateRange:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/htc/calendar/CalendarView;->setHtcTitle(Ljava/lang/String;)V

    .line 3729
    iget-object v6, p0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    iget v7, p0, Lcom/htc/calendar/CalendarView;->mViewStartX:I

    int-to-float v7, v7

    iget v8, p0, Lcom/htc/calendar/CalendarView;->mViewWidth:I

    int-to-float v8, v8

    invoke-virtual {v6, v4, v7, v8}, Lcom/htc/calendar/CalendarActivity;->switchViews(ZFF)Landroid/view/View;

    .line 3730
    iput v9, p0, Lcom/htc/calendar/CalendarView;->mViewStartX:I

    goto :goto_0

    .line 3735
    .end local v4           #switchForward:Z
    .end local v5           #view:Lcom/htc/calendar/CalendarView;
    :cond_1
    iget-object v6, p0, Lcom/htc/calendar/CalendarView;->mContinueScroll:Lcom/htc/calendar/CalendarView$ContinueScroll;

    float-to-int v7, p4

    div-int/lit8 v7, v7, 0x14

    invoke-virtual {v6, v7}, Lcom/htc/calendar/CalendarView$ContinueScroll;->init(I)V

    .line 3736
    iget-object v6, p0, Lcom/htc/calendar/CalendarView;->mContinueScroll:Lcom/htc/calendar/CalendarView$ContinueScroll;

    invoke-virtual {p0, v6}, Lcom/htc/calendar/CalendarView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method doLongPress(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "ev"

    .prologue
    .line 3594
    iget-object v4, p0, Lcom/htc/calendar/CalendarView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v4}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3613
    :cond_0
    :goto_0
    return-void

    .line 3598
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 3599
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 3600
    .local v3, y:I
    iget v4, p0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v1, v4, 0x7

    .line 3601
    .local v1, width:I
    iget v4, p0, Lcom/htc/calendar/CalendarView;->mHoursWidth:I

    iget-object v5, p0, Lcom/htc/calendar/CalendarView;->mContext:Landroid/content/Context;

    invoke-static {v4, v1, v2, v5}, Lcom/htc/calendar/HtcUtils;->MirrorForARA(IIILandroid/content/Context;)I

    move-result v2

    .line 3603
    invoke-direct {p0, v2, v3}, Lcom/htc/calendar/CalendarView;->setSelectionFromPosition(II)Z

    move-result v0

    .line 3604
    .local v0, validPosition:Z
    if-eqz v0, :cond_0

    .line 3609
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/htc/calendar/CalendarView;->getSelectedMode(I)I

    move-result v4

    iput v4, p0, Lcom/htc/calendar/CalendarView;->mSelectionMode:I

    .line 3610
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/htc/calendar/CalendarView;->mRedrawScreen:Z

    .line 3611
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarView;->invalidate()V

    .line 3612
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarView;->performLongClick()Z

    goto :goto_0
.end method

.method doScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)V
    .locals 10
    .parameter "e1"
    .parameter "e2"
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x1

    .line 3616
    iget-object v7, p0, Lcom/htc/calendar/CalendarView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v7}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3708
    :goto_0
    return-void

    .line 3622
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    sub-int v3, v7, v8

    .line 3623
    .local v3, distanceX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    sub-int v4, v7, v8

    .line 3627
    .local v4, distanceY:I
    iget v7, p0, Lcom/htc/calendar/CalendarView;->mTouchMode:I

    if-ne v7, v6, :cond_7

    .line 3628
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 3629
    .local v0, absDistanceX:I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 3630
    .local v1, absDistanceY:I
    iget v7, p0, Lcom/htc/calendar/CalendarView;->mViewStartY:I

    iput v7, p0, Lcom/htc/calendar/CalendarView;->mScrollStartY:I

    .line 3631
    iput v9, p0, Lcom/htc/calendar/CalendarView;->mPreviousDistanceX:I

    .line 3632
    iput v9, p0, Lcom/htc/calendar/CalendarView;->mPreviousDirection:I

    .line 3636
    mul-int/lit8 v7, v1, 0x2

    if-lt v0, v7, :cond_6

    .line 3637
    const/16 v7, 0x40

    iput v7, p0, Lcom/htc/calendar/CalendarView;->mTouchMode:I

    .line 3638
    iput v3, p0, Lcom/htc/calendar/CalendarView;->mViewStartX:I

    .line 3639
    iget v7, p0, Lcom/htc/calendar/CalendarView;->mViewStartX:I

    neg-int v7, v7

    invoke-direct {p0, v7}, Lcom/htc/calendar/CalendarView;->initNextView(I)Z

    .line 3689
    .end local v0           #absDistanceX:I
    .end local v1           #absDistanceY:I
    :cond_1
    :goto_1
    iget v7, p0, Lcom/htc/calendar/CalendarView;->mTouchMode:I

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_3

    .line 3690
    iget v7, p0, Lcom/htc/calendar/CalendarView;->mScrollStartY:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/htc/calendar/CalendarView;->mViewStartY:I

    .line 3691
    iget v7, p0, Lcom/htc/calendar/CalendarView;->mViewStartY:I

    if-gez v7, :cond_e

    .line 3692
    iput v9, p0, Lcom/htc/calendar/CalendarView;->mViewStartY:I

    .line 3696
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/htc/calendar/CalendarView;->computeFirstHour()V

    .line 3699
    :cond_3
    invoke-direct {p0}, Lcom/htc/calendar/CalendarView;->isPreviewMode()Z

    move-result v7

    if-nez v7, :cond_4

    .line 3700
    iput-boolean v6, p0, Lcom/htc/calendar/CalendarView;->mScrolling:Z

    .line 3703
    :cond_4
    iget v7, p0, Lcom/htc/calendar/CalendarView;->mSelectionMode:I

    invoke-virtual {p0, v7}, Lcom/htc/calendar/CalendarView;->getSelectedMode(I)I

    move-result v7

    if-eqz v7, :cond_5

    .line 3705
    iput-boolean v6, p0, Lcom/htc/calendar/CalendarView;->mRedrawScreen:Z

    .line 3707
    :cond_5
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarView;->invalidate()V

    goto :goto_0

    .line 3641
    .restart local v0       #absDistanceX:I
    .restart local v1       #absDistanceY:I
    :cond_6
    const/16 v7, 0x20

    iput v7, p0, Lcom/htc/calendar/CalendarView;->mTouchMode:I

    goto :goto_1

    .line 3643
    .end local v0           #absDistanceX:I
    .end local v1           #absDistanceY:I
    :cond_7
    iget v7, p0, Lcom/htc/calendar/CalendarView;->mTouchMode:I

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_1

    .line 3647
    iput v3, p0, Lcom/htc/calendar/CalendarView;->mViewStartX:I

    .line 3648
    if-eqz v3, :cond_8

    .line 3649
    if-lez v3, :cond_a

    move v2, v6

    .line 3650
    .local v2, direction:I
    :goto_3
    iget v7, p0, Lcom/htc/calendar/CalendarView;->mPreviousDirection:I

    if-eq v2, v7, :cond_8

    .line 3653
    iget v7, p0, Lcom/htc/calendar/CalendarView;->mViewStartX:I

    neg-int v7, v7

    invoke-direct {p0, v7}, Lcom/htc/calendar/CalendarView;->initNextView(I)Z

    .line 3654
    iput v2, p0, Lcom/htc/calendar/CalendarView;->mPreviousDirection:I

    .line 3661
    .end local v2           #direction:I
    :cond_8
    sget v7, Lcom/htc/calendar/CalendarView;->HORIZONTAL_SCROLL_THRESHOLD:I

    if-lt v3, v7, :cond_b

    .line 3662
    iget v7, p0, Lcom/htc/calendar/CalendarView;->mPreviousDistanceX:I

    sget v8, Lcom/htc/calendar/CalendarView;->HORIZONTAL_SCROLL_THRESHOLD:I

    if-ge v7, v8, :cond_9

    .line 3663
    iget-object v7, p0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    invoke-virtual {v7}, Lcom/htc/calendar/CalendarActivity;->getNextView()Lcom/htc/calendar/CalendarView;

    move-result-object v5

    .line 3665
    .local v5, view:Lcom/htc/calendar/CalendarView;
    iget-object v7, v5, Lcom/htc/calendar/CalendarView;->mDateRange:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/htc/calendar/CalendarView;->setHtcTitle(Ljava/lang/String;)V

    .line 3686
    .end local v5           #view:Lcom/htc/calendar/CalendarView;
    :cond_9
    :goto_4
    iput v3, p0, Lcom/htc/calendar/CalendarView;->mPreviousDistanceX:I

    goto :goto_1

    .line 3649
    :cond_a
    const/4 v2, -0x1

    goto :goto_3

    .line 3669
    :cond_b
    sget v7, Lcom/htc/calendar/CalendarView;->HORIZONTAL_SCROLL_THRESHOLD:I

    neg-int v7, v7

    if-gt v3, v7, :cond_c

    .line 3670
    iget v7, p0, Lcom/htc/calendar/CalendarView;->mPreviousDistanceX:I

    sget v8, Lcom/htc/calendar/CalendarView;->HORIZONTAL_SCROLL_THRESHOLD:I

    neg-int v8, v8

    if-le v7, v8, :cond_9

    .line 3671
    iget-object v7, p0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    invoke-virtual {v7}, Lcom/htc/calendar/CalendarActivity;->getNextView()Lcom/htc/calendar/CalendarView;

    move-result-object v5

    .line 3673
    .restart local v5       #view:Lcom/htc/calendar/CalendarView;
    iget-object v7, v5, Lcom/htc/calendar/CalendarView;->mDateRange:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/htc/calendar/CalendarView;->setHtcTitle(Ljava/lang/String;)V

    goto :goto_4

    .line 3678
    .end local v5           #view:Lcom/htc/calendar/CalendarView;
    :cond_c
    iget v7, p0, Lcom/htc/calendar/CalendarView;->mPreviousDistanceX:I

    sget v8, Lcom/htc/calendar/CalendarView;->HORIZONTAL_SCROLL_THRESHOLD:I

    if-ge v7, v8, :cond_d

    iget v7, p0, Lcom/htc/calendar/CalendarView;->mPreviousDistanceX:I

    sget v8, Lcom/htc/calendar/CalendarView;->HORIZONTAL_SCROLL_THRESHOLD:I

    neg-int v8, v8

    if-gt v7, v8, :cond_9

    .line 3681
    :cond_d
    iget-object v7, p0, Lcom/htc/calendar/CalendarView;->mDateRange:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/htc/calendar/CalendarView;->setHtcTitle(Ljava/lang/String;)V

    goto :goto_4

    .line 3693
    :cond_e
    iget v7, p0, Lcom/htc/calendar/CalendarView;->mViewStartY:I

    iget v8, p0, Lcom/htc/calendar/CalendarView;->mMaxViewStartY:I

    if-le v7, v8, :cond_2

    .line 3694
    iget v7, p0, Lcom/htc/calendar/CalendarView;->mMaxViewStartY:I

    iput v7, p0, Lcom/htc/calendar/CalendarView;->mViewStartY:I

    goto/16 :goto_2
.end method

.method doSingleTapUp(Landroid/view/MotionEvent;)V
    .locals 10
    .parameter "ev"

    .prologue
    .line 3551
    iget-boolean v7, p0, Lcom/htc/calendar/CalendarView;->mHandleActionUp:Z

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/htc/calendar/CalendarView;->mScrolling:Z

    if-eqz v7, :cond_2

    .line 3552
    :cond_0
    const-string v7, "CalendarView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doSingleTapUp - mHandleActionUp:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/htc/calendar/CalendarView;->mHandleActionUp:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mScrolling:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/htc/calendar/CalendarView;->mScrolling:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3590
    :cond_1
    :goto_0
    return-void

    .line 3556
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v5, v7

    .line 3557
    .local v5, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v6, v7

    .line 3558
    .local v6, y:I
    iget v1, p0, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    .line 3559
    .local v1, selectedDay:I
    iget v2, p0, Lcom/htc/calendar/CalendarView;->mSelectionHour:I

    .line 3560
    .local v2, selectedHour:I
    iget v7, p0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    add-int/lit8 v7, v7, 0x1

    mul-int/lit8 v4, v7, 0x7

    .line 3562
    .local v4, width:I
    invoke-direct {p0}, Lcom/htc/calendar/CalendarView;->isWeekView()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3563
    iget v7, p0, Lcom/htc/calendar/CalendarView;->mHoursWidth:I

    iget-object v8, p0, Lcom/htc/calendar/CalendarView;->mContext:Landroid/content/Context;

    invoke-static {v7, v4, v5, v8}, Lcom/htc/calendar/HtcUtils;->MirrorForARA(IIILandroid/content/Context;)I

    move-result v5

    .line 3565
    :cond_3
    invoke-direct {p0, v5, v6}, Lcom/htc/calendar/CalendarView;->setSelectionFromPosition(II)Z

    move-result v3

    .line 3566
    .local v3, validPosition:Z
    if-eqz v3, :cond_1

    .line 3571
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/htc/calendar/CalendarView;->getSelectedMode(I)I

    move-result v7

    iput v7, p0, Lcom/htc/calendar/CalendarView;->mSelectionMode:I

    .line 3572
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/htc/calendar/CalendarView;->mRedrawScreen:Z

    .line 3573
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarView;->invalidate()V

    .line 3575
    const/4 v0, 0x0

    .line 3576
    .local v0, launchNewView:Z
    iget-object v7, p0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    if-eqz v7, :cond_5

    .line 3578
    const/4 v0, 0x1

    .line 3587
    :cond_4
    :goto_1
    if-eqz v0, :cond_1

    .line 3588
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/htc/calendar/CalendarView;->switchViews(Z)V

    goto :goto_0

    .line 3579
    :cond_5
    iget-object v7, p0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    if-nez v7, :cond_4

    iget v7, p0, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    if-ne v1, v7, :cond_4

    iget v7, p0, Lcom/htc/calendar/CalendarView;->mSelectionHour:I

    if-ne v2, v7, :cond_4

    .line 3584
    const/4 v0, 0x1

    goto :goto_1
.end method

.method drawAllDayEventRect(Lcom/htc/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;)Landroid/graphics/RectF;
    .locals 6
    .parameter "event"
    .parameter "canvas"
    .parameter "p"
    .parameter "eventTextPaint"

    .prologue
    .line 2803
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/htc/calendar/CalendarView;->drawAllDayEventRect(Lcom/htc/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method drawAllDayEventRect(Lcom/htc/calendar/Event;Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Paint;Z)Landroid/graphics/RectF;
    .locals 6
    .parameter "event"
    .parameter "canvas"
    .parameter "p"
    .parameter "eventTextPaint"
    .parameter "preViewMode"

    .prologue
    const/high16 v5, 0x4000

    .line 2810
    iget-object v3, p0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    if-ne v3, p1, :cond_0

    .line 2812
    iput-object p1, p0, Lcom/htc/calendar/CalendarView;->mPrevSelectedEvent:Lcom/htc/calendar/Event;

    .line 2813
    iget v3, p1, Lcom/htc/calendar/Event;->color:I

    const/16 v4, 0x40

    invoke-static {v3, v4}, Lcom/htc/calendar/HtcUtils;->getColor(II)I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2815
    sget v3, Lcom/htc/calendar/CalendarView;->mSelectedEventTextColor:I

    invoke-virtual {p4, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2822
    :goto_0
    const/4 v0, 0x0

    .line 2823
    .local v0, paddingRight:I
    invoke-direct {p0}, Lcom/htc/calendar/CalendarView;->isWeekView()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2830
    :goto_1
    iget-object v1, p0, Lcom/htc/calendar/CalendarView;->mRectF:Landroid/graphics/RectF;

    .line 2831
    .local v1, rf:Landroid/graphics/RectF;
    iget v3, p1, Lcom/htc/calendar/Event;->top:F

    iput v3, v1, Landroid/graphics/RectF;->top:F

    .line 2832
    iget v3, p1, Lcom/htc/calendar/Event;->bottom:F

    iput v3, v1, Landroid/graphics/RectF;->bottom:F

    .line 2833
    iget v3, p1, Lcom/htc/calendar/Event;->left:F

    iput v3, v1, Landroid/graphics/RectF;->left:F

    .line 2835
    iget v3, p1, Lcom/htc/calendar/Event;->right:F

    int-to-float v4, v0

    add-float/2addr v3, v4

    iput v3, v1, Landroid/graphics/RectF;->right:F

    .line 2838
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v3

    sget v4, Lcom/htc/calendar/CalendarView;->MIN_ALL_DAY_EVENT_HEIGHT:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 2839
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/htc/calendar/CalendarView;->isSmallerAllDay:Z

    .line 2840
    sget v3, Lcom/htc/calendar/CalendarView;->SMALLER_ROUND_RADIUS:F

    sget v4, Lcom/htc/calendar/CalendarView;->SMALLER_ROUND_RADIUS:F

    invoke-virtual {p2, v1, v3, v4, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2845
    :goto_2
    invoke-direct {p0, v1, p2, p5}, Lcom/htc/calendar/CalendarView;->drawHTCTransparent(Landroid/graphics/RectF;Landroid/graphics/Canvas;Z)F

    move-result v2

    .line 2848
    .local v2, textPaddingLeft:F
    iget v3, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v5

    add-float/2addr v3, v2

    iput v3, v1, Landroid/graphics/RectF;->left:F

    .line 2850
    iget v3, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v5

    iput v3, v1, Landroid/graphics/RectF;->right:F

    .line 2851
    iget v3, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v5

    iput v3, v1, Landroid/graphics/RectF;->top:F

    .line 2852
    return-object v1

    .line 2818
    .end local v0           #paddingRight:I
    .end local v1           #rf:Landroid/graphics/RectF;
    .end local v2           #textPaddingLeft:F
    :cond_0
    iget v3, p1, Lcom/htc/calendar/Event;->color:I

    const/16 v4, 0x20

    invoke-static {v3, v4}, Lcom/htc/calendar/HtcUtils;->getColor(II)I

    move-result v3

    invoke-virtual {p3, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 2819
    sget v3, Lcom/htc/calendar/CalendarView;->mEventTextColor:I

    invoke-virtual {p4, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 2826
    .restart local v0       #paddingRight:I
    :cond_1
    iget v0, p0, Lcom/htc/calendar/CalendarView;->draw_event_drawable_1_all_day_padding_right:I

    goto :goto_1

    .line 2842
    .restart local v1       #rf:Landroid/graphics/RectF;
    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/calendar/CalendarView;->isSmallerAllDay:Z

    .line 2843
    sget v3, Lcom/htc/calendar/CalendarView;->SMALL_ROUND_RADIUS:F

    sget v4, Lcom/htc/calendar/CalendarView;->SMALL_ROUND_RADIUS:F

    invoke-virtual {p2, v1, v3, v4, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method public getFirstJuliandayOfTheWeek()I
    .locals 1

    .prologue
    .line 5664
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mFirstJulianDay:I

    return v0
.end method

.method public getLastJuliandayOfTheWeek()I
    .locals 1

    .prologue
    .line 5668
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mLastJulianDay:I

    return v0
.end method

.method getNewEvent()Lcom/htc/calendar/Event;
    .locals 4

    .prologue
    .line 2466
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    invoke-virtual {p0}, Lcom/htc/calendar/CalendarView;->getSelectedTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/htc/calendar/CalendarView;->getSelectedMinutesSinceMidnight()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/htc/calendar/CalendarView;->getNewEvent(IJI)Lcom/htc/calendar/Event;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedDay()Landroid/text/format/Time;
    .locals 2

    .prologue
    .line 790
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/htc/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 791
    .local v0, time:Landroid/text/format/Time;
    iget v1, p0, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 792
    iget v1, p0, Lcom/htc/calendar/CalendarView;->mSelectionHour:I

    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 797
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 798
    return-object v0
.end method

.method getSelectedEvent()Lcom/htc/calendar/Event;
    .locals 4

    .prologue
    .line 2453
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    if-nez v0, :cond_0

    .line 2455
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    invoke-virtual {p0}, Lcom/htc/calendar/CalendarView;->getSelectedTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/htc/calendar/CalendarView;->getSelectedMinutesSinceMidnight()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/htc/calendar/CalendarView;->getNewEvent(IJI)Lcom/htc/calendar/Event;

    move-result-object v0

    .line 2458
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    goto :goto_0
.end method

.method getSelectedMinutesSinceMidnight()I
    .locals 1

    .prologue
    .line 761
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mSelectionHour:I

    mul-int/lit8 v0, v0, 0x3c

    return v0
.end method

.method public getSelectedMode(I)I
    .locals 0
    .parameter "selection_mode"

    .prologue
    .line 4786
    return p1
.end method

.method getSelectedTime()Landroid/text/format/Time;
    .locals 2

    .prologue
    .line 744
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/htc/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 745
    .local v0, time:Landroid/text/format/Time;
    iget v1, p0, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 746
    iget v1, p0, Lcom/htc/calendar/CalendarView;->mSelectionHour:I

    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 751
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 752
    return-object v0
.end method

.method getSelectedTimeInMillis()J
    .locals 3

    .prologue
    .line 733
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcom/htc/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    .line 734
    .local v0, time:Landroid/text/format/Time;
    iget v1, p0, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 735
    iget v1, p0, Lcom/htc/calendar/CalendarView;->mSelectionHour:I

    iput v1, v0, Landroid/text/format/Time;->hour:I

    .line 740
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    return-wide v1
.end method

.method public initPreviewEvent(Lcom/htc/calendar/Event;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 4812
    const-string v0, "CalendarView"

    const-string v1, "<<< initPreviewEvent >>>"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4813
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mPreviewEvent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 4815
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mPreviewEvent:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4816
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mPreviewEvent:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/htc/calendar/Event;->computePositions(Ljava/util/ArrayList;)V

    .line 4818
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method isEventSelected()Z
    .locals 1

    .prologue
    .line 2462
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 715
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mPopupView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 718
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/calendar/CalendarView;->switchViews(Z)V

    .line 720
    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 924
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 925
    invoke-direct {p0}, Lcom/htc/calendar/CalendarView;->checkFirstHour()V

    .line 926
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 11
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    .line 3873
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mSelectionMode:I

    invoke-virtual {p0, v0}, Lcom/htc/calendar/CalendarView;->getSelectedMode(I)I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    .line 3874
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/htc/calendar/CalendarView;->getSelectedMode(I)I

    move-result v0

    iput v0, p0, Lcom/htc/calendar/CalendarView;->mSelectionMode:I

    .line 3875
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/calendar/CalendarView;->mRedrawScreen:Z

    .line 3876
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarView;->invalidate()V

    .line 3879
    :cond_0
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarView;->getSelectedTimeInMillis()J

    move-result-wide v1

    .line 3880
    .local v1, startMillis:J
    const/16 v5, 0x1403

    .line 3883
    .local v5, flags:I
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v9

    .line 3885
    .local v9, title:Ljava/lang/String;
    move-object v6, v9

    .line 3887
    .local v6, eventTitle:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 3888
    .local v8, numSelectedEvents:I
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    .line 3893
    const/4 v0, 0x1

    if-lt v8, v0, :cond_3

    .line 3894
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    iget-boolean v0, v0, Lcom/htc/calendar/Event;->allDay:Z

    if-eqz v0, :cond_2

    .line 3895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f08009b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    iget-object v3, v3, Lcom/htc/calendar/Event;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3902
    :goto_0
    const/4 v0, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x0

    const v10, 0x7f08007f

    invoke-interface {p1, v0, v3, v4, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 3903
    .local v7, item:Landroid/view/MenuItem;
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mContextMenuHandler:Lcom/htc/calendar/CalendarView$ContextMenuHandler;

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3904
    const v0, 0x1080041

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3907
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    iget-boolean v0, v0, Lcom/htc/calendar/Event;->mIsEventEditable:Z

    if-eqz v0, :cond_1

    .line 3908
    const/4 v0, 0x0

    const/4 v3, 0x7

    const/4 v4, 0x0

    const v10, 0x7f080081

    invoke-interface {p1, v0, v3, v4, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 3909
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mContextMenuHandler:Lcom/htc/calendar/CalendarView$ContextMenuHandler;

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3910
    const v0, 0x108003e

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3913
    const/4 v0, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    const v10, 0x7f0800af

    invoke-interface {p1, v0, v3, v4, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 3914
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mContextMenuHandler:Lcom/htc/calendar/CalendarView$ContextMenuHandler;

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3915
    const v0, 0x108003c

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3931
    :cond_1
    const/4 v0, 0x0

    const/16 v3, 0xc

    const/4 v4, 0x0

    const v10, 0x7f08003e

    invoke-interface {p1, v0, v3, v4, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 3932
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mContextMenuHandler:Lcom/htc/calendar/CalendarView$ContextMenuHandler;

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3933
    const v0, 0x2080337

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3934
    const/16 v0, 0x76

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 4026
    :goto_1
    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 4027
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4028
    return-void

    .line 3899
    .end local v7           #item:Landroid/view/MenuItem;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    iget-object v3, v3, Lcom/htc/calendar/Event;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 3940
    :cond_3
    const/4 v0, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x0

    const v10, 0x7f080080

    invoke-interface {p1, v0, v3, v4, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 3941
    .restart local v7       #item:Landroid/view/MenuItem;
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mContextMenuHandler:Lcom/htc/calendar/CalendarView$ContextMenuHandler;

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3942
    const v0, 0x1080033

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 3950
    .end local v7           #item:Landroid/view/MenuItem;
    :cond_4
    const/4 v0, 0x1

    if-lt v8, v0, :cond_7

    .line 3951
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    iget-boolean v0, v0, Lcom/htc/calendar/Event;->allDay:Z

    if-eqz v0, :cond_6

    .line 3952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f08009b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    iget-object v3, v3, Lcom/htc/calendar/Event;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3959
    :goto_2
    const/4 v0, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x0

    const v10, 0x7f08007f

    invoke-interface {p1, v0, v3, v4, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 3960
    .restart local v7       #item:Landroid/view/MenuItem;
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mContextMenuHandler:Lcom/htc/calendar/CalendarView$ContextMenuHandler;

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3961
    const v0, 0x1080041

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3964
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    iget-boolean v0, v0, Lcom/htc/calendar/Event;->mIsEventEditable:Z

    if-eqz v0, :cond_5

    .line 3966
    const/4 v0, 0x0

    const/4 v3, 0x7

    const/4 v4, 0x0

    const v10, 0x7f0800ae

    invoke-interface {p1, v0, v3, v4, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 3967
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mContextMenuHandler:Lcom/htc/calendar/CalendarView$ContextMenuHandler;

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3968
    const v0, 0x108003e

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3969
    const/16 v0, 0x65

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 3972
    const/4 v0, 0x0

    const/16 v3, 0x8

    const/4 v4, 0x0

    const v10, 0x7f0800b0

    invoke-interface {p1, v0, v3, v4, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 3973
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mContextMenuHandler:Lcom/htc/calendar/CalendarView$ContextMenuHandler;

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3974
    const v0, 0x108003c

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3981
    :cond_5
    const/4 v0, 0x0

    const/16 v3, 0xc

    const/4 v4, 0x0

    const v10, 0x7f08003e

    invoke-interface {p1, v0, v3, v4, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 3982
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mContextMenuHandler:Lcom/htc/calendar/CalendarView$ContextMenuHandler;

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 3983
    const v0, 0x2080337

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 3984
    const/16 v0, 0x76

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 3956
    .end local v7           #item:Landroid/view/MenuItem;
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    iget-object v3, v3, Lcom/htc/calendar/Event;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    .line 4007
    :cond_7
    const/4 v0, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x0

    const v10, 0x7f080080

    invoke-interface {p1, v0, v3, v4, v10}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 4008
    .restart local v7       #item:Landroid/view/MenuItem;
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mContextMenuHandler:Lcom/htc/calendar/CalendarView$ContextMenuHandler;

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 4009
    const v0, 0x1080033

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 4010
    const/16 v0, 0x6e

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    goto/16 :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 4537
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarView;->cleanup()V

    .line 4548
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 4549
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    .line 1673
    iget-boolean v5, p0, Lcom/htc/calendar/CalendarView;->mRemeasure:Z

    if-eqz v5, :cond_0

    .line 1674
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarView;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/htc/calendar/CalendarView;->getHeight()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/htc/calendar/CalendarView;->remeasure(II)V

    .line 1675
    iput-boolean v7, p0, Lcom/htc/calendar/CalendarView;->mRemeasure:Z

    .line 1678
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1681
    iget v5, p0, Lcom/htc/calendar/CalendarView;->mMaxAllDayEvents:I

    if-nez v5, :cond_1

    invoke-direct {p0}, Lcom/htc/calendar/CalendarView;->isDrawPreviewAllDayEvent()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1682
    :cond_1
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mAllDayHeight:I

    .line 1688
    .local v0, allDayHeight:I
    :goto_0
    iget-object v5, p0, Lcom/htc/calendar/CalendarView;->mProcessedGroup:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1689
    iput-boolean v7, p0, Lcom/htc/calendar/CalendarView;->mProcessedMeetingConflict:Z

    .line 1692
    iget v5, p0, Lcom/htc/calendar/CalendarView;->mViewStartY:I

    neg-int v5, v5

    add-int/lit8 v5, v5, 0x0

    add-int/2addr v5, v0

    int-to-float v4, v5

    .line 1693
    .local v4, yTranslate:F
    iget v5, p0, Lcom/htc/calendar/CalendarView;->mViewStartX:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p1, v5, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1694
    iget-object v1, p0, Lcom/htc/calendar/CalendarView;->mDestRect:Landroid/graphics/Rect;

    .line 1695
    .local v1, dest:Landroid/graphics/Rect;
    iget v5, p0, Lcom/htc/calendar/CalendarView;->mFirstCell:I

    int-to-float v5, v5

    sub-float/2addr v5, v4

    float-to-int v5, v5

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 1696
    iget v5, p0, Lcom/htc/calendar/CalendarView;->mViewHeight:I

    int-to-float v5, v5

    sub-float/2addr v5, v4

    float-to-int v5, v5

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 1697
    iput v7, v1, Landroid/graphics/Rect;->left:I

    .line 1698
    iget v5, p0, Lcom/htc/calendar/CalendarView;->mViewWidth:I

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 1699
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1700
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1702
    invoke-direct {p0, p1}, Lcom/htc/calendar/CalendarView;->doDraw(Landroid/graphics/Canvas;)V

    .line 1704
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1706
    iget v5, p0, Lcom/htc/calendar/CalendarView;->mTouchMode:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_4

    .line 1708
    iget v5, p0, Lcom/htc/calendar/CalendarView;->mViewStartX:I

    if-lez v5, :cond_3

    .line 1709
    iget v5, p0, Lcom/htc/calendar/CalendarView;->mViewWidth:I

    int-to-float v3, v5

    .line 1713
    .local v3, xTranslate:F
    :goto_1
    neg-float v5, v4

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1714
    iget-object v5, p0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    invoke-virtual {v5}, Lcom/htc/calendar/CalendarActivity;->getNextView()Lcom/htc/calendar/CalendarView;

    move-result-object v2

    .line 1717
    .local v2, nextView:Lcom/htc/calendar/CalendarView;
    iput v7, v2, Lcom/htc/calendar/CalendarView;->mTouchMode:I

    .line 1719
    invoke-virtual {v2, p1}, Lcom/htc/calendar/CalendarView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1721
    neg-float v5, v3

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1727
    .end local v2           #nextView:Lcom/htc/calendar/CalendarView;
    .end local v3           #xTranslate:F
    :goto_2
    invoke-direct {p0, p1}, Lcom/htc/calendar/CalendarView;->drawAfterScroll(Landroid/graphics/Canvas;)V

    .line 1729
    iput-boolean v7, p0, Lcom/htc/calendar/CalendarView;->mComputeSelectedEvents:Z

    .line 1730
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1731
    return-void

    .line 1684
    .end local v0           #allDayHeight:I
    .end local v1           #dest:Landroid/graphics/Rect;
    .end local v4           #yTranslate:F
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #allDayHeight:I
    goto :goto_0

    .line 1711
    .restart local v1       #dest:Landroid/graphics/Rect;
    .restart local v4       #yTranslate:F
    :cond_3
    iget v5, p0, Lcom/htc/calendar/CalendarView;->mViewWidth:I

    neg-int v5, v5

    int-to-float v3, v5

    .restart local v3       #xTranslate:F
    goto :goto_1

    .line 1723
    .end local v3           #xTranslate:F
    :cond_4
    iget v5, p0, Lcom/htc/calendar/CalendarView;->mViewStartX:I

    int-to-float v5, v5

    neg-float v6, v4

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 20
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1366
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mSelectionMode:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/calendar/CalendarView;->getSelectedMode(I)I

    move-result v3

    if-nez v3, :cond_2

    .line 1367
    const/16 v3, 0x42

    move/from16 v0, p1

    if-eq v0, v3, :cond_0

    const/16 v3, 0x16

    move/from16 v0, p1

    if-eq v0, v3, :cond_0

    const/16 v3, 0x15

    move/from16 v0, p1

    if-eq v0, v3, :cond_0

    const/16 v3, 0x13

    move/from16 v0, p1

    if-eq v0, v3, :cond_0

    const/16 v3, 0x14

    move/from16 v0, p1

    if-ne v0, v3, :cond_1

    .line 1372
    :cond_0
    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/calendar/CalendarView;->getSelectedMode(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/calendar/CalendarView;->mSelectionMode:I

    .line 1373
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/calendar/CalendarView;->mRedrawScreen:Z

    .line 1374
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->invalidate()V

    .line 1375
    const/4 v3, 0x1

    .line 1517
    :goto_0
    return v3

    .line 1376
    :cond_1
    const/16 v3, 0x17

    move/from16 v0, p1

    if-ne v0, v3, :cond_2

    .line 1379
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/calendar/CalendarView;->getSelectedMode(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/calendar/CalendarView;->mSelectionMode:I

    .line 1380
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/calendar/CalendarView;->mRedrawScreen:Z

    .line 1381
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->invalidate()V

    .line 1382
    const/4 v3, 0x1

    goto :goto_0

    .line 1386
    :cond_2
    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/htc/calendar/CalendarView;->getSelectedMode(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/calendar/CalendarView;->mSelectionMode:I

    .line 1387
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/calendar/CalendarView;->mScrolling:Z

    .line 1389
    move-object/from16 v0, p0

    iget v15, v0, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    .line 1391
    .local v15, selectionDay:I
    sparse-switch p1, :sswitch_data_0

    .line 1481
    invoke-super/range {p0 .. p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto :goto_0

    .line 1394
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    .line 1395
    .local v14, selectedEvent:Lcom/htc/calendar/Event;
    if-nez v14, :cond_3

    .line 1396
    const/4 v3, 0x0

    goto :goto_0

    .line 1398
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1399
    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/calendar/CalendarView;->mLastPopupEventID:J

    .line 1401
    iget-wide v4, v14, Lcom/htc/calendar/Event;->startMillis:J

    .line 1402
    .local v4, begin:J
    iget-wide v6, v14, Lcom/htc/calendar/Event;->endMillis:J

    .line 1403
    .local v6, end:J
    iget-wide v8, v14, Lcom/htc/calendar/Event;->id:J

    .line 1405
    .local v8, id:J
    iget-boolean v3, v14, Lcom/htc/calendar/Event;->allDay:Z

    if-eqz v3, :cond_4

    .line 1406
    new-instance v16, Landroid/text/format/Time;

    invoke-direct/range {v16 .. v16}, Landroid/text/format/Time;-><init>()V

    .line 1407
    .local v16, time:Landroid/text/format/Time;
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    invoke-static {v4, v5, v0, v1}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 1408
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 1410
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    invoke-static {v6, v7, v0, v1}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 1411
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    .line 1413
    .end local v16           #time:Landroid/text/format/Time;
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView;->mDeleteEventHelper:Lcom/htc/calendar/DeleteEventHelper;

    const/4 v10, -0x1

    invoke-virtual/range {v3 .. v10}, Lcom/htc/calendar/DeleteEventHelper;->delete(JJJI)V

    .line 1414
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1416
    .end local v4           #begin:J
    .end local v6           #end:J
    .end local v8           #id:J
    .end local v14           #selectedEvent:Lcom/htc/calendar/Event;
    :sswitch_1
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/calendar/CalendarView;->switchViews(Z)V

    .line 1417
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1419
    :sswitch_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_5

    .line 1420
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1421
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1423
    :cond_5
    invoke-super/range {p0 .. p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    .line 1425
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    if-eqz v3, :cond_6

    .line 1426
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    iget-object v3, v3, Lcom/htc/calendar/Event;->nextLeft:Lcom/htc/calendar/Event;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    .line 1428
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    if-nez v3, :cond_7

    .line 1429
    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/calendar/CalendarView;->mLastPopupEventID:J

    .line 1430
    add-int/lit8 v15, v15, -0x1

    .line 1432
    :cond_7
    const/4 v13, 0x1

    .line 1484
    .local v13, redraw:Z
    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mFirstJulianDay:I

    if-lt v15, v3, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mLastJulianDay:I

    if-le v15, v3, :cond_11

    .line 1486
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    invoke-virtual {v3}, Lcom/htc/calendar/CalendarActivity;->getNextView()Lcom/htc/calendar/CalendarView;

    move-result-object v17

    .line 1487
    .local v17, view:Lcom/htc/calendar/CalendarView;
    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/htc/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    .line 1488
    .local v11, date:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v11, v3}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1489
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mFirstJulianDay:I

    if-ge v15, v3, :cond_10

    .line 1490
    iget v3, v11, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    sub-int/2addr v3, v10

    iput v3, v11, Landroid/text/format/Time;->monthDay:I

    .line 1491
    const/4 v12, 0x0

    .line 1496
    .local v12, forward:Z
    :goto_2
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 1497
    move-object/from16 v0, v17

    iput v15, v0, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    .line 1499
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/htc/calendar/CalendarView;->initView(Lcom/htc/calendar/CalendarView;)V

    .line 1501
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/htc/calendar/CalendarView;->mDateRange:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/htc/calendar/CalendarView;->setHtcTitle(Ljava/lang/String;)V

    .line 1504
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    const/4 v10, 0x0

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v3, v12, v10, v0}, Lcom/htc/calendar/CalendarActivity;->switchViews(ZFF)Landroid/view/View;

    .line 1505
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1436
    .end local v11           #date:Landroid/text/format/Time;
    .end local v12           #forward:Z
    .end local v13           #redraw:Z
    .end local v17           #view:Lcom/htc/calendar/CalendarView;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    if-eqz v3, :cond_9

    .line 1437
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    iget-object v3, v3, Lcom/htc/calendar/Event;->nextRight:Lcom/htc/calendar/Event;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    .line 1439
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    if-nez v3, :cond_a

    .line 1440
    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/calendar/CalendarView;->mLastPopupEventID:J

    .line 1441
    add-int/lit8 v15, v15, 0x1

    .line 1443
    :cond_a
    const/4 v13, 0x1

    .line 1444
    .restart local v13       #redraw:Z
    goto :goto_1

    .line 1447
    .end local v13           #redraw:Z
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    if-eqz v3, :cond_b

    .line 1448
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    iget-object v3, v3, Lcom/htc/calendar/Event;->nextUp:Lcom/htc/calendar/Event;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    .line 1450
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    if-nez v3, :cond_c

    .line 1451
    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/calendar/CalendarView;->mLastPopupEventID:J

    .line 1452
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/calendar/CalendarView;->mSelectionAllDay:Z

    if-nez v3, :cond_c

    .line 1453
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mSelectionHour:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/calendar/CalendarView;->mSelectionHour:I

    .line 1454
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->adjustHourSelection()V

    .line 1455
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1456
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/calendar/CalendarView;->mComputeSelectedEvents:Z

    .line 1459
    :cond_c
    const/4 v13, 0x1

    .line 1460
    .restart local v13       #redraw:Z
    goto/16 :goto_1

    .line 1463
    .end local v13           #redraw:Z
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    if-eqz v3, :cond_d

    .line 1464
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    iget-object v3, v3, Lcom/htc/calendar/Event;->nextDown:Lcom/htc/calendar/Event;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    .line 1466
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    if-nez v3, :cond_e

    .line 1467
    const-wide/16 v18, -0x1

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/calendar/CalendarView;->mLastPopupEventID:J

    .line 1468
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/htc/calendar/CalendarView;->mSelectionAllDay:Z

    if-eqz v3, :cond_f

    .line 1469
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/calendar/CalendarView;->mSelectionAllDay:Z

    .line 1477
    :cond_e
    :goto_3
    const/4 v13, 0x1

    .line 1478
    .restart local v13       #redraw:Z
    goto/16 :goto_1

    .line 1471
    .end local v13           #redraw:Z
    :cond_f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/CalendarView;->mSelectionHour:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/htc/calendar/CalendarView;->mSelectionHour:I

    .line 1472
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->adjustHourSelection()V

    .line 1473
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1474
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/calendar/CalendarView;->mComputeSelectedEvents:Z

    goto :goto_3

    .line 1493
    .restart local v11       #date:Landroid/text/format/Time;
    .restart local v13       #redraw:Z
    .restart local v17       #view:Lcom/htc/calendar/CalendarView;
    :cond_10
    iget v3, v11, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    add-int/2addr v3, v10

    iput v3, v11, Landroid/text/format/Time;->monthDay:I

    .line 1494
    const/4 v12, 0x1

    .restart local v12       #forward:Z
    goto/16 :goto_2

    .line 1507
    .end local v11           #date:Landroid/text/format/Time;
    .end local v12           #forward:Z
    .end local v17           #view:Lcom/htc/calendar/CalendarView;
    :cond_11
    move-object/from16 v0, p0

    iput v15, v0, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    .line 1508
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1509
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/calendar/CalendarView;->mComputeSelectedEvents:Z

    .line 1511
    if-eqz v13, :cond_12

    .line 1512
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/htc/calendar/CalendarView;->mRedrawScreen:Z

    .line 1513
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/CalendarView;->invalidate()V

    .line 1514
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1517
    :cond_12
    invoke-super/range {p0 .. p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    goto/16 :goto_0

    .line 1391
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x13 -> :sswitch_5
        0x14 -> :sswitch_6
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x42 -> :sswitch_1
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    .line 1322
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/calendar/CalendarView;->mScrolling:Z

    .line 1323
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 1325
    .local v0, duration:J
    sparse-switch p1, :sswitch_data_0

    .line 1361
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    .line 1327
    :sswitch_0
    iget v2, p0, Lcom/htc/calendar/CalendarView;->mSelectionMode:I

    invoke-virtual {p0, v2}, Lcom/htc/calendar/CalendarView;->getSelectedMode(I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1332
    iget v2, p0, Lcom/htc/calendar/CalendarView;->mSelectionMode:I

    invoke-virtual {p0, v2}, Lcom/htc/calendar/CalendarView;->getSelectedMode(I)I

    move-result v2

    if-ne v2, v6, :cond_1

    .line 1337
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/htc/calendar/CalendarView;->getSelectedMode(I)I

    move-result v2

    iput v2, p0, Lcom/htc/calendar/CalendarView;->mSelectionMode:I

    .line 1338
    iput-boolean v6, p0, Lcom/htc/calendar/CalendarView;->mRedrawScreen:Z

    .line 1339
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarView;->invalidate()V

    goto :goto_0

    .line 1344
    :cond_1
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 1345
    invoke-direct {p0, v6}, Lcom/htc/calendar/CalendarView;->switchViews(Z)V

    goto :goto_0

    .line 1347
    :cond_2
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/htc/calendar/CalendarView;->getSelectedMode(I)I

    move-result v2

    iput v2, p0, Lcom/htc/calendar/CalendarView;->mSelectionMode:I

    .line 1348
    iput-boolean v6, p0, Lcom/htc/calendar/CalendarView;->mRedrawScreen:Z

    .line 1349
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarView;->invalidate()V

    .line 1350
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarView;->performLongClick()Z

    goto :goto_0

    .line 1354
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1355
    iget-object v2, p0, Lcom/htc/calendar/CalendarView;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 1325
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x17 -> :sswitch_0
    .end sparse-switch
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 7
    .parameter "detector"

    .prologue
    const/4 v6, 0x1

    .line 5741
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 5743
    .local v2, spanY:F
    iget v3, p0, Lcom/htc/calendar/CalendarView;->mCellHeightBeforeScaleGesture:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    iget v4, p0, Lcom/htc/calendar/CalendarView;->mStartingSpanY:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Lcom/htc/calendar/CalendarView;->mCellHeight:I

    .line 5745
    sget v3, Lcom/htc/calendar/CalendarView;->mCellHeight:I

    sget v4, Lcom/htc/calendar/CalendarView;->mMinCellHeight:I

    if-ge v3, v4, :cond_2

    .line 5748
    sget v3, Lcom/htc/calendar/CalendarView;->MIN_Y_SPAN:I

    int-to-float v3, v3

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lcom/htc/calendar/CalendarView;->mStartingSpanY:F

    .line 5749
    sget v3, Lcom/htc/calendar/CalendarView;->mMinCellHeight:I

    sput v3, Lcom/htc/calendar/CalendarView;->mCellHeight:I

    .line 5750
    sget v3, Lcom/htc/calendar/CalendarView;->mMinCellHeight:I

    iput v3, p0, Lcom/htc/calendar/CalendarView;->mCellHeightBeforeScaleGesture:I

    .line 5757
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v3

    float-to-int v3, v3

    sget v4, Lcom/htc/calendar/CalendarView;->DAY_HEADER_HEIGHT:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/htc/calendar/CalendarView;->mAllDayHeight:I

    sub-int v1, v3, v4

    .line 5758
    .local v1, gestureCenterInPixels:I
    iget v3, p0, Lcom/htc/calendar/CalendarView;->mGestureCenterHour:F

    sget v4, Lcom/htc/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v3, v1

    iput v3, p0, Lcom/htc/calendar/CalendarView;->mViewStartY:I

    .line 5759
    sget v3, Lcom/htc/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v3, v3, 0x18

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lcom/htc/calendar/CalendarView;->mGridAreaHeight:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/htc/calendar/CalendarView;->mMaxViewStartY:I

    .line 5762
    iget v3, p0, Lcom/htc/calendar/CalendarView;->mViewStartY:I

    int-to-float v3, v3

    sget v4, Lcom/htc/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 5763
    .local v0, ViewStartHour:F
    const-string v3, "CalendarView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mGestureCenterHour:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/calendar/CalendarView;->mGestureCenterHour:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\tViewStartHour: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\tmViewStartY:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/htc/calendar/CalendarView;->mViewStartY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\tmCellHeight:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/htc/calendar/CalendarView;->mCellHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SpanY:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5768
    iget v3, p0, Lcom/htc/calendar/CalendarView;->mViewStartY:I

    if-gez v3, :cond_3

    .line 5769
    const/4 v3, 0x0

    iput v3, p0, Lcom/htc/calendar/CalendarView;->mViewStartY:I

    .line 5770
    iget v3, p0, Lcom/htc/calendar/CalendarView;->mViewStartY:I

    add-int/2addr v3, v1

    int-to-float v3, v3

    sget v4, Lcom/htc/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/htc/calendar/CalendarView;->mGestureCenterHour:F

    .line 5777
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/htc/calendar/CalendarView;->computeFirstHour()V

    .line 5779
    iput-boolean v6, p0, Lcom/htc/calendar/CalendarView;->mRemeasure:Z

    .line 5780
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarView;->invalidate()V

    .line 5781
    return v6

    .line 5751
    .end local v0           #ViewStartHour:F
    .end local v1           #gestureCenterInPixels:I
    :cond_2
    sget v3, Lcom/htc/calendar/CalendarView;->mCellHeight:I

    sget v4, Lcom/htc/calendar/CalendarView;->mMaxCellHeight:I

    if-le v3, v4, :cond_0

    .line 5752
    iput v2, p0, Lcom/htc/calendar/CalendarView;->mStartingSpanY:F

    .line 5753
    sget v3, Lcom/htc/calendar/CalendarView;->mMaxCellHeight:I

    sput v3, Lcom/htc/calendar/CalendarView;->mCellHeight:I

    .line 5754
    sget v3, Lcom/htc/calendar/CalendarView;->mMaxCellHeight:I

    iput v3, p0, Lcom/htc/calendar/CalendarView;->mCellHeightBeforeScaleGesture:I

    goto/16 :goto_0

    .line 5772
    .restart local v0       #ViewStartHour:F
    .restart local v1       #gestureCenterInPixels:I
    :cond_3
    iget v3, p0, Lcom/htc/calendar/CalendarView;->mViewStartY:I

    iget v4, p0, Lcom/htc/calendar/CalendarView;->mMaxViewStartY:I

    if-le v3, v4, :cond_1

    .line 5773
    iget v3, p0, Lcom/htc/calendar/CalendarView;->mMaxViewStartY:I

    iput v3, p0, Lcom/htc/calendar/CalendarView;->mViewStartY:I

    .line 5774
    iget v3, p0, Lcom/htc/calendar/CalendarView;->mViewStartY:I

    add-int/2addr v3, v1

    int-to-float v3, v3

    sget v4, Lcom/htc/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, p0, Lcom/htc/calendar/CalendarView;->mGestureCenterHour:F

    goto :goto_1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 5
    .parameter "detector"

    .prologue
    .line 5716
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/calendar/CalendarView;->mHandleActionUp:Z

    .line 5717
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    sget v3, Lcom/htc/calendar/CalendarView;->DAY_HEADER_HEIGHT:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/htc/calendar/CalendarView;->mAllDayHeight:I

    int-to-float v3, v3

    sub-float v1, v2, v3

    .line 5718
    .local v1, gestureCenterInPixels:F
    iget v2, p0, Lcom/htc/calendar/CalendarView;->mViewStartY:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    sget v3, Lcom/htc/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/htc/calendar/CalendarView;->mGestureCenterHour:F

    .line 5720
    sget v2, Lcom/htc/calendar/CalendarView;->MIN_Y_SPAN:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/htc/calendar/CalendarView;->mStartingSpanY:F

    .line 5721
    sget v2, Lcom/htc/calendar/CalendarView;->mCellHeight:I

    iput v2, p0, Lcom/htc/calendar/CalendarView;->mCellHeightBeforeScaleGesture:I

    .line 5724
    iget v2, p0, Lcom/htc/calendar/CalendarView;->mViewStartY:I

    int-to-float v2, v2

    sget v3, Lcom/htc/calendar/CalendarView;->mCellHeight:I

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 5725
    .local v0, ViewStartHour:F
    const-string v2, "CalendarView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mGestureCenterHour:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/calendar/CalendarView;->mGestureCenterHour:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\tViewStartHour: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\tmViewStartY:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/htc/calendar/CalendarView;->mViewStartY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\tmCellHeight:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/htc/calendar/CalendarView;->mCellHeight:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5730
    const/4 v2, 0x1

    return v2
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 2
    .parameter "detector"

    .prologue
    const/4 v1, 0x0

    .line 5734
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mViewStartY:I

    iput v0, p0, Lcom/htc/calendar/CalendarView;->mScrollStartY:I

    .line 5735
    iput v1, p0, Lcom/htc/calendar/CalendarView;->mInitialScrollY:F

    .line 5736
    iput v1, p0, Lcom/htc/calendar/CalendarView;->mInitialScrollX:F

    .line 5737
    iput v1, p0, Lcom/htc/calendar/CalendarView;->mStartingSpanY:F

    .line 5738
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 9
    .parameter "width"
    .parameter "height"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 880
    const-string v5, "CalendarView"

    const-string v6, "onSizeChanged be called"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    iget-object v5, p0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f0a0015

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, Lcom/htc/calendar/CalendarView;->mNumHours:I

    .line 882
    iget-object v5, p0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f090001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/htc/calendar/CalendarView;->mSingleAllDayHeight:I

    .line 883
    iget-object v5, p0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f090002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/htc/calendar/CalendarView;->mMaxAllDayHeight:I

    .line 884
    iget-object v5, p0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v6, 0x7f090003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/htc/calendar/CalendarView;->mMaxAllDayEventHeight:I

    .line 885
    iput-boolean v8, p0, Lcom/htc/calendar/CalendarView;->mRedrawScreen:Z

    .line 886
    iput p1, p0, Lcom/htc/calendar/CalendarView;->mViewWidth:I

    .line 887
    iput p2, p0, Lcom/htc/calendar/CalendarView;->mViewHeight:I

    .line 888
    iget v5, p0, Lcom/htc/calendar/CalendarView;->mHoursWidth:I

    sub-int v2, p1, v5

    .line 889
    .local v2, gridAreaWidth:I
    iget v5, p0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    mul-int/lit8 v5, v5, 0x1

    sub-int v5, v2, v5

    iget v6, p0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    div-int/2addr v5, v6

    iput v5, p0, Lcom/htc/calendar/CalendarView;->mCellWidth:I

    .line 891
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 892
    .local v3, p:Landroid/graphics/Paint;
    sget v5, Lcom/htc/calendar/CalendarView;->NORMAL_FONT_SIZE:I

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 893
    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v1, v5

    .line 895
    .local v1, bannerTextHeight:I
    sget v5, Lcom/htc/calendar/CalendarView;->HOURS_FONT_SIZE:I

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 896
    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/htc/calendar/CalendarView;->mHoursTextHeight:I

    .line 898
    invoke-static {}, Lcom/htc/calendar/HtcUtils;->isAllDayEventHeightNoEnought()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 899
    sget v5, Lcom/htc/calendar/CalendarView;->EVENT_SMAL_TEXT_FONT_SIZE:I

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 904
    :goto_0
    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    neg-float v0, v5

    .line 905
    .local v0, ascent:F
    float-to-double v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    iput v5, p0, Lcom/htc/calendar/CalendarView;->mEventTextAscent:I

    .line 906
    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v5

    add-float v4, v0, v5

    .line 907
    .local v4, totalHeight:F
    float-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    iput v5, p0, Lcom/htc/calendar/CalendarView;->mEventTextHeight:I

    .line 909
    iget v5, p0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    if-le v5, v8, :cond_1

    .line 911
    iput v7, p0, Lcom/htc/calendar/CalendarView;->mBannerPlusMargin:I

    .line 918
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/htc/calendar/CalendarView;->remeasure(II)V

    .line 919
    return-void

    .line 902
    .end local v0           #ascent:F
    .end local v4           #totalHeight:F
    :cond_0
    sget v5, Lcom/htc/calendar/CalendarView;->EVENT_TEXT_FONT_SIZE:I

    int-to-float v5, v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    .line 915
    .restart local v0       #ascent:F
    .restart local v4       #totalHeight:F
    :cond_1
    iput v7, p0, Lcom/htc/calendar/CalendarView;->mBannerPlusMargin:I

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "ev"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3776
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3778
    .local v0, action:I
    const-string v2, "CalendarView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTouchEvent, action:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3779
    iget v2, p0, Lcom/htc/calendar/CalendarView;->mTouchMode:I

    and-int/lit8 v2, v2, 0x40

    if-nez v2, :cond_1

    .line 3780
    iget-object v2, p0, Lcom/htc/calendar/CalendarView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 3781
    iget-object v2, p0, Lcom/htc/calendar/CalendarView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3782
    const-string v2, "CalendarView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTouchEvent, mScaleGestureDetector.isInProgress():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/calendar/CalendarView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v5}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3863
    :cond_0
    :goto_0
    return v3

    .line 3787
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 3859
    const-string v2, "CalendarView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not MotionEvent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3860
    iget-object v2, p0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    iget-object v2, v2, Lcom/htc/calendar/CalendarActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3863
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_0

    .line 3789
    :pswitch_0
    iput-boolean v3, p0, Lcom/htc/calendar/CalendarView;->mStartingScroll:Z

    .line 3790
    const-string v2, "CalendarView"

    const-string v5, "ACTION_DOWN"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3791
    iget v2, p0, Lcom/htc/calendar/CalendarView;->mAllDayHeight:I

    sget v5, Lcom/htc/calendar/CalendarView;->DAY_HEADER_HEIGHT:I

    add-int/2addr v2, v5

    sget v5, Lcom/htc/calendar/CalendarView;->ALLDAY_TOP_MARGIN:I

    add-int v1, v2, v5

    .line 3792
    .local v1, bottom:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    int-to-float v5, v1

    cmpg-float v2, v2, v5

    if-gez v2, :cond_2

    .line 3793
    iput-boolean v3, p0, Lcom/htc/calendar/CalendarView;->mTouchStartedInAlldayArea:Z

    .line 3797
    :goto_1
    iput-boolean v3, p0, Lcom/htc/calendar/CalendarView;->mHandleActionUp:Z

    .line 3798
    iget-object v2, p0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    iget-object v2, v2, Lcom/htc/calendar/CalendarActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 3795
    :cond_2
    iput-boolean v4, p0, Lcom/htc/calendar/CalendarView;->mTouchStartedInAlldayArea:Z

    goto :goto_1

    .line 3802
    .end local v1           #bottom:I
    :pswitch_1
    const-string v2, "CalendarView"

    const-string v4, "ACTION_MOVE"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3803
    iget-object v2, p0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    iget-object v2, v2, Lcom/htc/calendar/CalendarActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 3807
    :pswitch_2
    const-string v2, "CalendarView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_UP "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/htc/calendar/CalendarView;->mHandleActionUp:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3808
    iget-object v2, p0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    iget-object v2, v2, Lcom/htc/calendar/CalendarActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 3809
    iget-boolean v2, p0, Lcom/htc/calendar/CalendarView;->mHandleActionUp:Z

    if-nez v2, :cond_3

    .line 3810
    iput-boolean v3, p0, Lcom/htc/calendar/CalendarView;->mHandleActionUp:Z

    goto/16 :goto_0

    .line 3813
    :cond_3
    iget-boolean v2, p0, Lcom/htc/calendar/CalendarView;->mOnFlingCalled:Z

    if-eqz v2, :cond_4

    .line 3814
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarView;->invalidate()V

    .line 3815
    iput v4, p0, Lcom/htc/calendar/CalendarView;->mViewStartX:I

    goto/16 :goto_0

    .line 3818
    :cond_4
    iget v2, p0, Lcom/htc/calendar/CalendarView;->mTouchMode:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_7

    .line 3819
    iput v4, p0, Lcom/htc/calendar/CalendarView;->mTouchMode:I

    .line 3820
    iget v2, p0, Lcom/htc/calendar/CalendarView;->mViewStartX:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sget v5, Lcom/htc/calendar/CalendarView;->HORIZONTAL_SCROLL_THRESHOLD:I

    if-le v2, v5, :cond_6

    .line 3822
    iget-object v5, p0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    iget v2, p0, Lcom/htc/calendar/CalendarView;->mViewStartX:I

    if-lez v2, :cond_5

    move v2, v3

    :goto_2
    iget v6, p0, Lcom/htc/calendar/CalendarView;->mViewStartX:I

    int-to-float v6, v6

    iget v7, p0, Lcom/htc/calendar/CalendarView;->mViewWidth:I

    int-to-float v7, v7

    invoke-virtual {v5, v2, v6, v7}, Lcom/htc/calendar/CalendarActivity;->switchViews(ZFF)Landroid/view/View;

    .line 3823
    iput v4, p0, Lcom/htc/calendar/CalendarView;->mViewStartX:I

    goto/16 :goto_0

    :cond_5
    move v2, v4

    .line 3822
    goto :goto_2

    .line 3829
    :cond_6
    const-string v2, "CalendarView"

    const-string v5, "- horizontal scroll: snap back"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3830
    invoke-direct {p0}, Lcom/htc/calendar/CalendarView;->recalc()V

    .line 3832
    iget-object v2, p0, Lcom/htc/calendar/CalendarView;->mDateRange:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/htc/calendar/CalendarView;->setHtcTitle(Ljava/lang/String;)V

    .line 3835
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarView;->invalidate()V

    .line 3836
    iput v4, p0, Lcom/htc/calendar/CalendarView;->mViewStartX:I

    .line 3842
    :cond_7
    iget-boolean v2, p0, Lcom/htc/calendar/CalendarView;->mScrolling:Z

    if-eqz v2, :cond_0

    .line 3843
    iput-boolean v4, p0, Lcom/htc/calendar/CalendarView;->mScrolling:Z

    .line 3844
    invoke-direct {p0}, Lcom/htc/calendar/CalendarView;->resetSelectedHour()V

    .line 3845
    iput-boolean v3, p0, Lcom/htc/calendar/CalendarView;->mRedrawScreen:Z

    .line 3846
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarView;->invalidate()V

    goto/16 :goto_0

    .line 3852
    :pswitch_3
    const-string v2, "CalendarView"

    const-string v5, "ACTION_CANCEL"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3853
    iget-object v2, p0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    iget-object v2, v2, Lcom/htc/calendar/CalendarActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 3854
    iput-boolean v4, p0, Lcom/htc/calendar/CalendarView;->mScrolling:Z

    .line 3855
    invoke-direct {p0}, Lcom/htc/calendar/CalendarView;->resetSelectedHour()V

    goto/16 :goto_0

    .line 3787
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5672
    const-string v0, "CalendarView"

    const-string v1, "onDestroy, release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5673
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mDeleteEventHelper:Lcom/htc/calendar/DeleteEventHelper;

    invoke-virtual {v0}, Lcom/htc/calendar/DeleteEventHelper;->release()V

    .line 5674
    iput-object v2, p0, Lcom/htc/calendar/CalendarView;->mDeleteEventHelper:Lcom/htc/calendar/DeleteEventHelper;

    .line 5675
    iput-object v2, p0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    .line 5676
    iput-object v2, p0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    .line 5677
    return-void
.end method

.method reloadEvents()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 1625
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    if-nez v0, :cond_1

    .line 1669
    :cond_0
    :goto_0
    return-void

    .line 1629
    :cond_1
    iput-object v1, p0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    .line 1630
    iput-object v1, p0, Lcom/htc/calendar/CalendarView;->mPrevSelectedEvent:Lcom/htc/calendar/Event;

    .line 1631
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1634
    new-instance v8, Landroid/text/format/Time;

    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/calendar/CalendarView;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/htc/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1635
    .local v8, weekStart:Landroid/text/format/Time;
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v8, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1636
    iput v5, v8, Landroid/text/format/Time;->hour:I

    .line 1637
    iput v5, v8, Landroid/text/format/Time;->minute:I

    .line 1638
    iput v5, v8, Landroid/text/format/Time;->second:I

    .line 1639
    invoke-virtual {v8, v7}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    .line 1642
    .local v3, millis:J
    iget-wide v0, p0, Lcom/htc/calendar/CalendarView;->mLastReloadMillis:J

    cmp-long v0, v3, v0

    if-eqz v0, :cond_0

    .line 1645
    iput-wide v3, p0, Lcom/htc/calendar/CalendarView;->mLastReloadMillis:J

    .line 1651
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1652
    .local v2, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/Event;>;"
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mEventLoader:Lcom/htc/calendar/EventLoader;

    iget v1, p0, Lcom/htc/calendar/CalendarView;->mNumDays:I

    new-instance v5, Lcom/htc/calendar/CalendarView$3;

    invoke-direct {v5, p0, v2}, Lcom/htc/calendar/CalendarView$3;-><init>(Lcom/htc/calendar/CalendarView;Ljava/util/ArrayList;)V

    iget-object v6, p0, Lcom/htc/calendar/CalendarView;->mCancelCallback:Ljava/lang/Runnable;

    invoke-virtual/range {v0 .. v7}, Lcom/htc/calendar/EventLoader;->loadEventsInBackground(ILjava/util/ArrayList;JLjava/lang/Runnable;Ljava/lang/Runnable;Z)V

    goto :goto_0
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1
    .parameter "eventType"

    .prologue
    .line 2160
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 2164
    :goto_0
    return-void

    .line 2163
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method setDetailedView(Ljava/lang/String;)V
    .locals 0
    .parameter "detailedView"

    .prologue
    .line 874
    iput-object p1, p0, Lcom/htc/calendar/CalendarView;->mDetailedView:Ljava/lang/String;

    .line 875
    return-void
.end method

.method public setMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 4763
    iput p1, p0, Lcom/htc/calendar/CalendarView;->mMoveMode:I

    .line 4764
    iget v0, p0, Lcom/htc/calendar/CalendarView;->mMoveMode:I

    if-nez v0, :cond_0

    .line 4765
    const/4 v0, 0x1

    sput v0, Lcom/htc/calendar/CalendarView;->mSplitWindow:I

    .line 4766
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/calendar/CalendarView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 4779
    :goto_0
    return-void

    .line 4768
    :cond_0
    const/4 v0, 0x2

    sput v0, Lcom/htc/calendar/CalendarView;->mSplitWindow:I

    .line 4769
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p0, v0}, Lcom/htc/calendar/CalendarView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 4770
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/calendar/CalendarView;->mMeetingConflict:Ljava/lang/String;

    .line 4771
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/calendar/CalendarView;->mMeetingConflicts:Ljava/lang/String;

    .line 4773
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/calendar/CalendarView;->mHaveEvent:Ljava/lang/String;

    .line 4774
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f080048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/calendar/CalendarView;->mHaveEvents:Ljava/lang/String;

    goto :goto_0
.end method

.method public setSelectedDay(Landroid/text/format/Time;)V
    .locals 5
    .parameter "time"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 765
    iget-object v2, p0, Lcom/htc/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v2, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 766
    iget-object v2, p0, Lcom/htc/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    iput v2, p0, Lcom/htc/calendar/CalendarView;->mSelectionHour:I

    .line 767
    iput-object v3, p0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    .line 768
    iput-object v3, p0, Lcom/htc/calendar/CalendarView;->mPrevSelectedEvent:Lcom/htc/calendar/Event;

    .line 769
    iget-object v2, p0, Lcom/htc/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 770
    .local v0, millis:J
    iget-object v2, p0, Lcom/htc/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget-wide v2, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    iput v2, p0, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    .line 771
    iget-object v2, p0, Lcom/htc/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 772
    iput-boolean v4, p0, Lcom/htc/calendar/CalendarView;->mComputeSelectedEvents:Z

    .line 775
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/calendar/CalendarView;->mFirstHour:I

    .line 776
    invoke-direct {p0}, Lcom/htc/calendar/CalendarView;->recalc()V

    .line 778
    iget-object v2, p0, Lcom/htc/calendar/CalendarView;->mDateRange:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/htc/calendar/CalendarView;->setHtcTitle(Ljava/lang/String;)V

    .line 784
    iput-boolean v4, p0, Lcom/htc/calendar/CalendarView;->mRedrawScreen:Z

    .line 785
    iput-boolean v4, p0, Lcom/htc/calendar/CalendarView;->mRemeasure:Z

    .line 786
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarView;->invalidate()V

    .line 787
    return-void
.end method

.method public setSelectedDay(Landroid/text/format/Time;Landroid/text/format/Time;)V
    .locals 8
    .parameter "goToTime"
    .parameter "focusOn"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 4645
    const-string v2, "CalendarView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "this : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", enter setSelectedDay, goToTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", focusOn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4646
    iget-object v2, p0, Lcom/htc/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v2, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 4647
    iget-object v2, p0, Lcom/htc/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->hour:I

    iput v2, p0, Lcom/htc/calendar/CalendarView;->mSelectionHour:I

    .line 4648
    iput-object v7, p0, Lcom/htc/calendar/CalendarView;->mSelectedEvent:Lcom/htc/calendar/Event;

    .line 4649
    iput-object v7, p0, Lcom/htc/calendar/CalendarView;->mPrevSelectedEvent:Lcom/htc/calendar/Event;

    .line 4650
    iget-object v2, p0, Lcom/htc/calendar/CalendarView;->mBaseDate:Landroid/text/format/Time;

    invoke-virtual {v2, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 4651
    .local v0, millis:J
    invoke-virtual {p2, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iget-wide v4, p2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    iput v2, p0, Lcom/htc/calendar/CalendarView;->mSelectionDay:I

    .line 4652
    iget-object v2, p0, Lcom/htc/calendar/CalendarView;->mSelectedEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4653
    iput-boolean v6, p0, Lcom/htc/calendar/CalendarView;->mComputeSelectedEvents:Z

    .line 4656
    const/4 v2, -0x1

    iput v2, p0, Lcom/htc/calendar/CalendarView;->mFirstHour:I

    .line 4657
    invoke-direct {p0}, Lcom/htc/calendar/CalendarView;->recalc()V

    .line 4659
    iget-object v2, p0, Lcom/htc/calendar/CalendarView;->mDateRange:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/htc/calendar/CalendarView;->setHtcTitle(Ljava/lang/String;)V

    .line 4665
    iput-boolean v6, p0, Lcom/htc/calendar/CalendarView;->mRedrawScreen:Z

    .line 4666
    iput-boolean v6, p0, Lcom/htc/calendar/CalendarView;->mRemeasure:Z

    .line 4667
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarView;->invalidate()V

    .line 4668
    return-void
.end method

.method public updateIs24HourFormat()V
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mParentActivity:Lcom/htc/calendar/CalendarActivity;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/calendar/CalendarView;->mIs24HourFormat:Z

    .line 724
    iget-boolean v0, p0, Lcom/htc/calendar/CalendarView;->mIs24HourFormat:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/htc/calendar/CalendarData;->s24Hours:[Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/htc/calendar/CalendarView;->mHourStrs:[Ljava/lang/String;

    .line 725
    return-void

    .line 724
    :cond_0
    sget-object v0, Lcom/htc/calendar/CalendarData;->s12Hours:[Ljava/lang/String;

    goto :goto_0
.end method

.method public updateView()V
    .locals 2

    .prologue
    .line 4531
    invoke-direct {p0}, Lcom/htc/calendar/CalendarView;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4532
    iget-object v0, p0, Lcom/htc/calendar/CalendarView;->mUpdateCurrentTime:Lcom/htc/calendar/CalendarView$UpdateCurrentTime;

    invoke-virtual {p0, v0}, Lcom/htc/calendar/CalendarView;->post(Ljava/lang/Runnable;)Z

    .line 4533
    return-void
.end method
