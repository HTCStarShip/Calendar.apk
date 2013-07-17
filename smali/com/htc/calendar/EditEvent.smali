.class public Lcom/htc/calendar/EditEvent;
.super Landroid/app/Activity;
.source "EditEvent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/calendar/EditEvent$Background_handler;,
        Lcom/htc/calendar/EditEvent$closeCalendarThread;,
        Lcom/htc/calendar/EditEvent$saveApplyBatchThread;,
        Lcom/htc/calendar/EditEvent$CalendarValueContainer;,
        Lcom/htc/calendar/EditEvent$QueryHandler;,
        Lcom/htc/calendar/EditEvent$CalendarsAdapter;,
        Lcom/htc/calendar/EditEvent$DateClickListener;,
        Lcom/htc/calendar/EditEvent$DateListener;,
        Lcom/htc/calendar/EditEvent$TimeClickListener;,
        Lcom/htc/calendar/EditEvent$TimeListener;
    }
.end annotation


# static fields
.field private static final ACTION_SENDMEETING:Ljava/lang/String; = "android.intent.action.SENDMEETING"

.field private static final ATTENDEES_DELETE_PREFIX:Ljava/lang/String; = "event_id=? AND attendeeEmail IN ("

.field private static final ATTENDEES_INDEX_EMAIL:I = 0x1

.field private static final ATTENDEES_INDEX_NAME:I = 0x0

.field private static final ATTENDEES_PROJECTION:[Ljava/lang/String; = null

.field private static final ATTENDEES_WHERE:Ljava/lang/String; = "event_id=? AND attendeeRelationship<>2"

.field private static final CALENDARS_INDEX_COLOR:I = 0x3

.field private static final CALENDARS_INDEX_DISPLAY_NAME:I = 0x1

.field private static final CALENDARS_INDEX_ID:I = 0x0

.field private static final CALENDARS_INDEX_OWNER_ACCOUNT:I = 0x2

.field private static final CALENDARS_INDEX_REMINDER_DURATION:I = 0x5

.field private static final CALENDARS_INDEX_REMINDER_TYPE:I = 0x4

.field private static final CALENDARS_INDEX_SYNC_ACCOUNT:I = 0x6

.field private static final CALENDARS_INDEX_SYNC_ACCOUNT_TYPE:I = 0x7

.field private static final CALENDARS_PROJECTION:[Ljava/lang/String; = null

.field private static final CALENDARS_WHERE:Ljava/lang/String; = "calendar_access_level>=500 AND sync_events=1"

.field private static final DAY_IN_SECONDS:I = 0x15180

.field private static final DEBUG:Z = false

.field private static DEBUG_HTC:Z = false

.field private static final DOES_NOT_REPEAT:I = 0x0

.field public static final EVENT_ALL_DAY:Ljava/lang/String; = "allDay"

.field private static final EVENT_CHANGED:Z = true

.field private static final EVENT_INDEX_ALL_DAY:I = 0x4

.field private static final EVENT_INDEX_CALENDAR_ID:I = 0x6

.field private static final EVENT_INDEX_DESCRIPTION:I = 0x2

.field private static final EVENT_INDEX_DESC_MIME_TYPE:I = 0x18

.field private static final EVENT_INDEX_DTEND:I = 0x13

.field private static final EVENT_INDEX_DTSTART:I = 0x7

.field private static final EVENT_INDEX_DURATION:I = 0x8

.field private static final EVENT_INDEX_EVENT_LOCATION:I = 0x3

.field private static final EVENT_INDEX_EXDATE:I = 0x12

.field private static final EVENT_INDEX_FB_AVATAR_LOCAL:I = 0x17

.field private static final EVENT_INDEX_GUID:I = 0x14

.field private static final EVENT_INDEX_HAS_ALARM:I = 0x5

.field private static final EVENT_INDEX_HAS_ATTENDEE_DATA:I = 0xf

.field private static final EVENT_INDEX_ID:I = 0x0

.field private static final EVENT_INDEX_IMPORTANCE:I = 0x10

.field private static final EVENT_INDEX_OWNER_ACCOUNT:I = 0xe

.field private static final EVENT_INDEX_PARENT_ID:I = 0x11

.field private static final EVENT_INDEX_RRULE:I = 0xa

.field private static final EVENT_INDEX_SYNC_ACCOUNT:I = 0x16

.field private static final EVENT_INDEX_SYNC_ACCOUNT_TYPE:I = 0x15

.field private static final EVENT_INDEX_SYNC_ID:I = 0xb

.field private static final EVENT_INDEX_TIMEZONE:I = 0x9

.field private static final EVENT_INDEX_TITLE:I = 0x1

.field private static final EVENT_INDEX_TRANSPARENCY:I = 0xc

.field private static final EVENT_INDEX_VISIBILITY:I = 0xd

.field private static final EVENT_NO_CAHNGED:Z = false

.field private static final EVENT_PROJECTION:[Ljava/lang/String; = null

.field public static final INTENT_MEETING_INVITATION:Ljava/lang/String; = "intent.eas.meeting_invitation"

.field private static final MAX_REMINDERS:I = 0x5

.field private static final MENU_ADD_REMINDER:I = 0x1

.field private static final MENU_GROUP_HIDE_OPTIONS:I = 0x3

.field private static final MENU_GROUP_IMPORTANCE_OPTIONS:I = 0x4

.field private static final MENU_GROUP_REMINDER:I = 0x1

.field private static final MENU_GROUP_SHOW_OPTIONS:I = 0x2

.field private static final MENU_HIDE_EXTRA_OPTIONS:I = 0x3

.field private static final MENU_HIDE_IMPORTANCE_OPTIONS:I = 0x5

.field private static final MENU_SHOW_EXTRA_OPTIONS:I = 0x2

.field private static final MENU_SHOW_IMPORTANCE_OPTIONS:I = 0x4

.field private static final MESSAGE_EXIT:I = 0x63

.field private static final MESSAGE_GET_HTML:I = 0x0

.field private static final MESSAGE_GET_HTML_CHANGED:I = 0x1

.field private static final MESSAGE_GET_HTML_RESULT:I = 0x2

.field private static final MODIFY_ALL:I = 0x2

.field private static final MODIFY_ALL_FOLLOWING:I = 0x3

.field private static final MODIFY_SELECTED:I = 0x1

.field private static final MODIFY_UNINITIALIZED:I = 0x0

.field private static final REMINDERS_INDEX_MINUTES:I = 0x1

.field private static final REMINDERS_PROJECTION:[Ljava/lang/String; = null

.field private static final REMINDERS_WHERE:Ljava/lang/String; = "event_id=%d AND (method=1 OR method=0)"

.field private static final REPEATS_CUSTOM:I = 0x7

.field private static final REPEATS_DAILY:I = 0x1

.field private static final REPEATS_EVERY_WEEKDAY:I = 0x2

.field private static final REPEATS_MONTHLY_ON_DAY:I = 0x5

.field private static final REPEATS_MONTHLY_ON_DAY_COUNT:I = 0x4

.field private static final REPEATS_WEEKLY_ON_DAY:I = 0x3

.field private static final REPEATS_YEARLY:I = 0x6

.field public static final REQUEST_CODE_LOCATION_PICKER:I = 0x1

.field public static final REQUEST_CODE_TAKE_PICTURE_CAMERA:I = 0x3

.field public static final REQUEST_CODE_TAKE_PICTURE_GALLERY:I = 0x2

.field public static final RETURN_TYPE_ADDRESS:I = 0x1

.field public static final RETURN_TYPE_COORDINATE_V1:I = 0x0

.field public static final RETURN_TYPE_COORDINATE_V2:I = 0x10

.field public static final RETURN_TYPE_URL:I = 0x2

.field private static final TAG:Ljava/lang/String; = "EditEvent"

.field private static mF:Ljava/util/Formatter;

.field public static mHaveEAS:Z

.field private static mSB:Ljava/lang/StringBuilder;

.field private static sRecipientFilters:[Landroid/text/InputFilter;


# instance fields
.field private final QUERY_ATTENDEES_EXCHANGE:I

.field private final QUERY_ATTENDEES_HAS_ATTENDEE:I

.field private final QUERY_CALENDARS:I

.field private final QUERY_EVENT:I

.field private calendarSpinnerListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

.field private currentInputFieldFocusView:Landroid/view/View;

.field getHTMLRunnable:Ljava/lang/Runnable;

.field private mAccountTypeFromInt:Ljava/lang/String;

.field private mAddressAdapter:Lcom/htc/calendar/EmailAddressAdapter;

.field private mAllDay:Z

.field private mAllDayCheckBox:Landroid/widget/CheckBox;

.field private mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

.field private mAvailabilitySpinner:Lcom/htc/widget/HtcSpinner;

.field private mAvatarLocal:Ljava/lang/String;

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mBegin:J

.field private mBitmapPhoto:Landroid/graphics/Bitmap;

.field private mBtnCheckCalendar:Landroid/widget/Button;

.field private mCalendarId:J

.field private mCalendarsCursor:Landroid/database/Cursor;

.field private mCalendarsQueryComplete:Z

.field private mCalendarsSpinner:Lcom/htc/widget/HtcSpinner;

.field private mComposeTitle:Lcom/htc/calendar/widget/ComposeTitle;

.field private mCurrentSelectCalendarReminderDuration:I

.field private mCurrentSelectCalendarReminderType:I

.field private mDayOffset:J

.field private mDefaultReminderMinutes:I

.field private mDeleteButton:Lcom/htc/widget/HtcFooterButton;

.field private mDeleteEventHelper:Lcom/htc/calendar/DeleteEventHelper;

.field private mDescMimeType:I

.field private mDescriptionTextView:Landroid/widget/TextView;

.field private mDescriptionWebView:Landroid/webkit/EditableWebView;

.field private mDirtyCheckAlreadyCreadted:Z

.field private mDiscardButton:Lcom/htc/widget/HtcFooterButton;

.field private mDomain:Ljava/lang/String;

.field private mDummyTitle:Landroid/widget/LinearLayout;

.field private mEditableHtmlGot:Z

.field private mEditableWebviewContentChanged:Z

.field private mEditableWebviewchangeListener:Landroid/webkit/EditableWebView$OnContentChangedListener;

.field private mEmailValidator:Lcom/android/common/Rfc822Validator;

.field private mEnd:J

.field private mEndDateButton:Landroid/widget/Button;

.field private mEndDateHome:Landroid/widget/TextView;

.field private mEndTime:Landroid/text/format/Time;

.field private mEndTimeButton:Landroid/widget/Button;

.field private mEndTimeHome:Landroid/widget/TextView;

.field private mEventCursor:Landroid/database/Cursor;

.field private mEventId:J

.field private mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

.field private mEvent_DtEnd:J

.field private mEvent_DtStart:J

.field private mEvent_ExDate:Ljava/lang/String;

.field private mEvent_Guid:Ljava/lang/String;

.field private mEvent_RRULE:Ljava/lang/String;

.field private mExtraOptions:Landroid/widget/LinearLayout;

.field private mFirstDayOfWeek:I

.field private mHasAttendeeData:Z

.field private mHtcFooter:Lcom/htc/widget/HtcFooter;

.field private mHtmlText:Ljava/lang/String;

.field private mImageCaptureButton:Landroid/widget/ImageView;

.field private mImportanceLayout:Landroid/widget/LinearLayout;

.field private mImportanceSpinner:Lcom/htc/widget/HtcSpinner;

.field private mInitialValues:Landroid/content/ContentValues;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLoadingCalendarsDialog:Lcom/htc/app/HtcProgressDialog;

.field private mLocationPicker:Landroid/widget/ImageView;

.field private mLocationTextView:Landroid/widget/TextView;

.field private mModification:I

.field private mNoCalendarsDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOrigDay:I

.field private mOrigDescription:Ljava/lang/String;

.field private mOrigMonth:I

.field private mOrigStartMillis:J

.field private mOrigYear:I

.field private mOriginalAttendees:Ljava/lang/String;

.field private mOriginalMinutes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOwnerAccount:Ljava/lang/String;

.field private mOwnerAccountFromInt:Ljava/lang/String;

.field private mParentID:J

.field private mQueryHandler:Lcom/htc/calendar/EditEvent$QueryHandler;

.field private mRecurrenceIndexes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mReminderItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mReminderLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReminderValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRemindersContainer:Landroid/widget/LinearLayout;

.field private mRemindersSeparator:Landroid/view/View;

.field private mRepeatContainer:Landroid/widget/LinearLayout;

.field private mRepeatsSpinner:Lcom/htc/widget/HtcSpinner;

.field private mRrule:Ljava/lang/String;

.field private mSaveAfterQueryComplete:Z

.field private mSaveButton:Lcom/htc/widget/HtcFooterButton;

.field private mSelectedRepeatItem:I

.field private mSetImageCapture:Z

.field private mStartDateButton:Landroid/widget/Button;

.field private mStartDateHome:Landroid/widget/TextView;

.field private mStartTime:Landroid/text/format/Time;

.field private mStartTimeButton:Landroid/widget/Button;

.field private mStartTimeHome:Landroid/widget/TextView;

.field private mSyncAccount:Ljava/lang/String;

.field private mSyncAccountType:Ljava/lang/String;

.field private mSyncId:Ljava/lang/String;

.field private mTimeZoneBtnContainer:Landroid/widget/LinearLayout;

.field private mTimezone:Ljava/lang/String;

.field private mTimezoneAdapter:Lcom/htc/calendar/TimezoneAdapter;

.field private mTimezoneButton:Landroid/widget/Button;

.field private mTimezoneDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mTimezoneFooterItemView:Lcom/htc/widget/HtcListItem2LineText;

.field private mTimezoneFooterView:Lcom/htc/widget/HtcListItem;

.field private mTimezoneTextView:Landroid/widget/TextView;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mUpdateTZ:Ljava/lang/Runnable;

.field private mUri:Landroid/net/Uri;

.field private mVisibilitySpinner:Lcom/htc/widget/HtcSpinner;

.field private mWebViewLock:Ljava/lang/Object;

.field private mbIsSelected:Z

.field private miPosition:I

.field private onInputFieldFocusChange:Landroid/view/View$OnFocusChangeListener;

.field private recurrentModifyDialog:Lcom/htc/widget/HtcAlertDialog;

.field private repeatListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 179
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "description"

    aput-object v1, v0, v5

    const-string v1, "eventLocation"

    aput-object v1, v0, v6

    const-string v1, "allDay"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_sync_id"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "availability"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "accessLevel"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "ownerAccount"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "hasAttendeeData"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "importance"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "parentID"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "exdate"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "dtend"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "iCalGUID"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "facebook_avatar_local"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "desc_mime_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/calendar/EditEvent;->EVENT_PROJECTION:[Ljava/lang/String;

    .line 236
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "calendar_displayName"

    aput-object v1, v0, v4

    const-string v1, "ownerAccount"

    aput-object v1, v0, v5

    const-string v1, "calendar_color"

    aput-object v1, v0, v6

    const-string v1, "reminder_type"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "reminder_duration"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "account_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/calendar/EditEvent;->CALENDARS_PROJECTION:[Ljava/lang/String;

    .line 274
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "minutes"

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/calendar/EditEvent;->REMINDERS_PROJECTION:[Ljava/lang/String;

    .line 283
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "attendeeName"

    aput-object v1, v0, v3

    const-string v1, "attendeeEmail"

    aput-object v1, v0, v4

    sput-object v0, Lcom/htc/calendar/EditEvent;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/htc/calendar/EditEvent;->mSB:Ljava/lang/StringBuilder;

    .line 391
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/htc/calendar/EditEvent;->mSB:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/htc/calendar/EditEvent;->mF:Ljava/util/Formatter;

    .line 1726
    new-array v0, v4, [Landroid/text/InputFilter;

    new-instance v1, Lcom/android/common/Rfc822InputFilter;

    invoke-direct {v1}, Lcom/android/common/Rfc822InputFilter;-><init>()V

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/calendar/EditEvent;->sRecipientFilters:[Landroid/text/InputFilter;

    .line 3959
    sput-boolean v3, Lcom/htc/calendar/EditEvent;->DEBUG_HTC:Z

    .line 4031
    sput-boolean v3, Lcom/htc/calendar/EditEvent;->mHaveEAS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 152
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 345
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/EditEvent;->mOriginalMinutes:Ljava/util/ArrayList;

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    .line 351
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/calendar/EditEvent;->mOriginalAttendees:Ljava/lang/String;

    .line 354
    iput-boolean v6, p0, Lcom/htc/calendar/EditEvent;->mHasAttendeeData:Z

    .line 356
    new-instance v0, Lcom/android/calendarcommon/EventRecurrence;

    invoke-direct {v0}, Lcom/android/calendarcommon/EventRecurrence;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    .line 376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/calendar/EditEvent;->mRecurrenceIndexes:Ljava/util/ArrayList;

    .line 383
    iput v1, p0, Lcom/htc/calendar/EditEvent;->mModification:I

    .line 394
    iput-object v2, p0, Lcom/htc/calendar/EditEvent;->mUpdateTZ:Ljava/lang/Runnable;

    .line 396
    iput-boolean v1, p0, Lcom/htc/calendar/EditEvent;->mbIsSelected:Z

    .line 397
    iput v1, p0, Lcom/htc/calendar/EditEvent;->miPosition:I

    .line 901
    iput v6, p0, Lcom/htc/calendar/EditEvent;->QUERY_CALENDARS:I

    .line 902
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/calendar/EditEvent;->QUERY_EVENT:I

    .line 903
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/calendar/EditEvent;->QUERY_ATTENDEES_HAS_ATTENDEE:I

    .line 904
    const/4 v0, 0x4

    iput v0, p0, Lcom/htc/calendar/EditEvent;->QUERY_ATTENDEES_EXCHANGE:I

    .line 1768
    iput-boolean v1, p0, Lcom/htc/calendar/EditEvent;->mDirtyCheckAlreadyCreadted:Z

    .line 2331
    new-instance v0, Lcom/htc/calendar/EditEvent$10;

    invoke-direct {v0, p0}, Lcom/htc/calendar/EditEvent$10;-><init>(Lcom/htc/calendar/EditEvent;)V

    iput-object v0, p0, Lcom/htc/calendar/EditEvent;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 3970
    iput-boolean v1, p0, Lcom/htc/calendar/EditEvent;->mSetImageCapture:Z

    .line 3972
    iput-object v2, p0, Lcom/htc/calendar/EditEvent;->mBitmapPhoto:Landroid/graphics/Bitmap;

    .line 3974
    iput-wide v3, p0, Lcom/htc/calendar/EditEvent;->mEventId:J

    .line 3981
    iput v1, p0, Lcom/htc/calendar/EditEvent;->mDescMimeType:I

    .line 3982
    iput-boolean v1, p0, Lcom/htc/calendar/EditEvent;->mEditableWebviewContentChanged:Z

    .line 3983
    iput-boolean v1, p0, Lcom/htc/calendar/EditEvent;->mEditableHtmlGot:Z

    .line 3984
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/EditEvent;->mWebViewLock:Ljava/lang/Object;

    .line 3986
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/calendar/EditEvent;->mHtmlText:Ljava/lang/String;

    .line 3991
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/calendar/EditEvent;->mSyncAccountType:Ljava/lang/String;

    .line 3992
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/calendar/EditEvent;->mSyncAccount:Ljava/lang/String;

    .line 3993
    iput-wide v3, p0, Lcom/htc/calendar/EditEvent;->mCalendarId:J

    .line 3994
    iput-wide v3, p0, Lcom/htc/calendar/EditEvent;->mParentID:J

    .line 3997
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/calendar/EditEvent;->mOwnerAccountFromInt:Ljava/lang/String;

    .line 3998
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/calendar/EditEvent;->mAccountTypeFromInt:Ljava/lang/String;

    .line 3999
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/calendar/EditEvent;->mDomain:Ljava/lang/String;

    .line 4001
    iput v5, p0, Lcom/htc/calendar/EditEvent;->mCurrentSelectCalendarReminderType:I

    .line 4002
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/calendar/EditEvent;->mCurrentSelectCalendarReminderDuration:I

    .line 4003
    iput v5, p0, Lcom/htc/calendar/EditEvent;->mSelectedRepeatItem:I

    .line 4005
    iput-boolean v1, p0, Lcom/htc/calendar/EditEvent;->mAllDay:Z

    .line 4007
    iput-wide v3, p0, Lcom/htc/calendar/EditEvent;->mEvent_DtStart:J

    .line 4008
    iput-wide v3, p0, Lcom/htc/calendar/EditEvent;->mEvent_DtEnd:J

    .line 4009
    iput-object v2, p0, Lcom/htc/calendar/EditEvent;->mEvent_Guid:Ljava/lang/String;

    .line 4010
    iput-object v2, p0, Lcom/htc/calendar/EditEvent;->mEvent_RRULE:Ljava/lang/String;

    .line 4011
    iput-object v2, p0, Lcom/htc/calendar/EditEvent;->mEvent_ExDate:Ljava/lang/String;

    .line 4018
    iput-object v2, p0, Lcom/htc/calendar/EditEvent;->mLocationPicker:Landroid/widget/ImageView;

    .line 4209
    new-instance v0, Lcom/htc/calendar/EditEvent$13;

    invoke-direct {v0, p0}, Lcom/htc/calendar/EditEvent$13;-><init>(Lcom/htc/calendar/EditEvent;)V

    iput-object v0, p0, Lcom/htc/calendar/EditEvent;->calendarSpinnerListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    .line 4684
    new-instance v0, Lcom/htc/calendar/EditEvent$14;

    invoke-direct {v0, p0}, Lcom/htc/calendar/EditEvent$14;-><init>(Lcom/htc/calendar/EditEvent;)V

    iput-object v0, p0, Lcom/htc/calendar/EditEvent;->repeatListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    .line 4917
    new-instance v0, Lcom/htc/calendar/EditEvent$15;

    invoke-direct {v0, p0}, Lcom/htc/calendar/EditEvent$15;-><init>(Lcom/htc/calendar/EditEvent;)V

    iput-object v0, p0, Lcom/htc/calendar/EditEvent;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 5249
    iput-object v2, p0, Lcom/htc/calendar/EditEvent;->currentInputFieldFocusView:Landroid/view/View;

    .line 5251
    new-instance v0, Lcom/htc/calendar/EditEvent$16;

    invoke-direct {v0, p0}, Lcom/htc/calendar/EditEvent$16;-><init>(Lcom/htc/calendar/EditEvent;)V

    iput-object v0, p0, Lcom/htc/calendar/EditEvent;->onInputFieldFocusChange:Landroid/view/View$OnFocusChangeListener;

    .line 5425
    new-instance v0, Lcom/htc/calendar/EditEvent$17;

    invoke-direct {v0, p0}, Lcom/htc/calendar/EditEvent$17;-><init>(Lcom/htc/calendar/EditEvent;)V

    iput-object v0, p0, Lcom/htc/calendar/EditEvent;->getHTMLRunnable:Ljava/lang/Runnable;

    .line 5450
    new-instance v0, Lcom/htc/calendar/EditEvent$18;

    invoke-direct {v0, p0}, Lcom/htc/calendar/EditEvent$18;-><init>(Lcom/htc/calendar/EditEvent;)V

    iput-object v0, p0, Lcom/htc/calendar/EditEvent;->mEditableWebviewchangeListener:Landroid/webkit/EditableWebView$OnContentChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/calendar/EditEvent;)Landroid/text/format/Time;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/calendar/EditEvent;)Landroid/text/format/Time;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/calendar/EditEvent;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$102(Lcom/htc/calendar/EditEvent;Landroid/text/format/Time;)Landroid/text/format/Time;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/calendar/EditEvent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/htc/calendar/EditEvent;->mAllDay:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/htc/calendar/EditEvent;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/htc/calendar/EditEvent;->mAllDay:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/calendar/EditEvent;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mStartDateButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/htc/calendar/EditEvent;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/htc/calendar/EditEvent;->populateRepeats(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/htc/calendar/EditEvent;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/htc/calendar/EditEvent;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/htc/calendar/EditEvent;)Lcom/htc/calendar/DeleteEventHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mDeleteEventHelper:Lcom/htc/calendar/DeleteEventHelper;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/htc/calendar/EditEvent;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mSyncAccountType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/htc/calendar/EditEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/htc/calendar/EditEvent;->mSyncAccountType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/htc/calendar/EditEvent;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/htc/calendar/EditEvent;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/htc/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/htc/calendar/EditEvent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/htc/calendar/EditEvent;->mSaveAfterQueryComplete:Z

    return v0
.end method

.method static synthetic access$200(Lcom/htc/calendar/EditEvent;)Lcom/htc/widget/HtcSpinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mRepeatsSpinner:Lcom/htc/widget/HtcSpinner;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/htc/calendar/EditEvent;)Lcom/htc/app/HtcProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mLoadingCalendarsDialog:Lcom/htc/app/HtcProgressDialog;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/htc/calendar/EditEvent;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/htc/calendar/EditEvent;->mNoCalendarsDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/htc/calendar/EditEvent;)Lcom/htc/widget/HtcSpinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mCalendarsSpinner:Lcom/htc/widget/HtcSpinner;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/htc/calendar/EditEvent;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mSyncAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/htc/calendar/EditEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/htc/calendar/EditEvent;->mSyncAccount:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/htc/calendar/EditEvent;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mOwnerAccountFromInt:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/htc/calendar/EditEvent;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mAccountTypeFromInt:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/htc/calendar/EditEvent;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/htc/calendar/EditEvent;->mCalendarsQueryComplete:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/htc/calendar/EditEvent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/calendar/EditEvent;->save()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/htc/calendar/EditEvent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Lcom/htc/calendar/EditEvent;->updateCurrentEventCalendarSyncSource(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/htc/calendar/EditEvent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/htc/calendar/EditEvent;->mHasAttendeeData:Z

    return v0
.end method

.method static synthetic access$2902(Lcom/htc/calendar/EditEvent;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/htc/calendar/EditEvent;->mHasAttendeeData:Z

    return p1
.end method

.method static synthetic access$300(Lcom/htc/calendar/EditEvent;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mStartTimeButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3000(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    invoke-static {p0}, Lcom/htc/calendar/EditEvent;->extractDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/htc/calendar/EditEvent;)Lcom/android/common/Rfc822Validator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mEmailValidator:Lcom/android/common/Rfc822Validator;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/htc/calendar/EditEvent;Lcom/android/common/Rfc822Validator;)Lcom/android/common/Rfc822Validator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/htc/calendar/EditEvent;->mEmailValidator:Lcom/android/common/Rfc822Validator;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/htc/calendar/EditEvent;)Landroid/widget/MultiAutoCompleteTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/htc/calendar/EditEvent;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/htc/calendar/EditEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/htc/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/htc/calendar/EditEvent;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/htc/calendar/EditEvent;->mCalendarId:J

    return-wide v0
.end method

.method static synthetic access$3402(Lcom/htc/calendar/EditEvent;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-wide p1, p0, Lcom/htc/calendar/EditEvent;->mCalendarId:J

    return-wide p1
.end method

.method static synthetic access$3500(Lcom/htc/calendar/EditEvent;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mOwnerAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/htc/calendar/EditEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/htc/calendar/EditEvent;->mOwnerAccount:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3602(Lcom/htc/calendar/EditEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/htc/calendar/EditEvent;->mDomain:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/htc/calendar/EditEvent;)Landroid/content/ContentValues;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/htc/calendar/EditEvent;Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/htc/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/htc/calendar/EditEvent;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/htc/calendar/EditEvent;->mBegin:J

    return-wide v0
.end method

.method static synthetic access$3900(Lcom/htc/calendar/EditEvent;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/htc/calendar/EditEvent;->mEnd:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/htc/calendar/EditEvent;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Lcom/htc/calendar/EditEvent;->setRepeatContainer(J)V

    return-void
.end method

.method static synthetic access$4002(Lcom/htc/calendar/EditEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/htc/calendar/EditEvent;->mAvatarLocal:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4102(Lcom/htc/calendar/EditEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/htc/calendar/EditEvent;->mEvent_Guid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4202(Lcom/htc/calendar/EditEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/htc/calendar/EditEvent;->mEvent_ExDate:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4302(Lcom/htc/calendar/EditEvent;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-wide p1, p0, Lcom/htc/calendar/EditEvent;->mEvent_DtStart:J

    return-wide p1
.end method

.method static synthetic access$4402(Lcom/htc/calendar/EditEvent;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-wide p1, p0, Lcom/htc/calendar/EditEvent;->mEvent_DtEnd:J

    return-wide p1
.end method

.method static synthetic access$4502(Lcom/htc/calendar/EditEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/htc/calendar/EditEvent;->mEvent_RRULE:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4602(Lcom/htc/calendar/EditEvent;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-wide p1, p0, Lcom/htc/calendar/EditEvent;->mParentID:J

    return-wide p1
.end method

.method static synthetic access$4702(Lcom/htc/calendar/EditEvent;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput p1, p0, Lcom/htc/calendar/EditEvent;->mDescMimeType:I

    return p1
.end method

.method static synthetic access$4800(Lcom/htc/calendar/EditEvent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/calendar/EditEvent;->isTextPlain()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/htc/calendar/EditEvent;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/calendar/EditEvent;->initBackgroundHandler()V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/calendar/EditEvent;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mEndDateButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/htc/calendar/EditEvent;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Lcom/htc/calendar/EditEvent;->initEditEvent(ZZ)V

    return-void
.end method

.method static synthetic access$5102(Lcom/htc/calendar/EditEvent;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/htc/calendar/EditEvent;->mDirtyCheckAlreadyCreadted:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/htc/calendar/EditEvent;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/calendar/EditEvent;->doResume()V

    return-void
.end method

.method static synthetic access$5300(Lcom/htc/calendar/EditEvent;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mOriginalAttendees:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/htc/calendar/EditEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/htc/calendar/EditEvent;->mOriginalAttendees:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/htc/calendar/EditEvent;)Lcom/htc/calendar/widget/ComposeTitle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mComposeTitle:Lcom/htc/calendar/widget/ComposeTitle;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/htc/calendar/EditEvent;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/htc/calendar/EditEvent;->mEventId:J

    return-wide v0
.end method

.method static synthetic access$5600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/htc/calendar/EditEvent;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/htc/calendar/EditEvent;)Lcom/htc/calendar/EditEvent$QueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mQueryHandler:Lcom/htc/calendar/EditEvent$QueryHandler;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/htc/calendar/EditEvent;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/htc/calendar/EditEvent;->checkInputLength(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$5900(Lcom/htc/calendar/EditEvent;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mTimeZoneBtnContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/calendar/EditEvent;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mEndTimeButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/htc/calendar/EditEvent;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/calendar/EditEvent;->addReminder()V

    return-void
.end method

.method static synthetic access$6100(Lcom/htc/calendar/EditEvent;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget v0, p0, Lcom/htc/calendar/EditEvent;->mModification:I

    return v0
.end method

.method static synthetic access$6102(Lcom/htc/calendar/EditEvent;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput p1, p0, Lcom/htc/calendar/EditEvent;->mModification:I

    return p1
.end method

.method static synthetic access$6200(Lcom/htc/calendar/EditEvent;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/calendar/EditEvent;->showTimezoneDialog()V

    return-void
.end method

.method static synthetic access$6300(Lcom/htc/calendar/EditEvent;)Lcom/htc/widget/HtcListItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mTimezoneFooterView:Lcom/htc/widget/HtcListItem;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/htc/calendar/EditEvent;Landroid/widget/ListView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/htc/calendar/EditEvent;->showAllTimezone(Landroid/widget/ListView;)V

    return-void
.end method

.method static synthetic access$6500(Lcom/htc/calendar/EditEvent;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mTimezoneDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/htc/calendar/EditEvent;)Lcom/htc/calendar/TimezoneAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mTimezoneAdapter:Lcom/htc/calendar/TimezoneAdapter;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/htc/calendar/EditEvent;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/htc/calendar/EditEvent;->setTimezone(I)V

    return-void
.end method

.method static synthetic access$6800(Lcom/htc/calendar/EditEvent;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget v0, p0, Lcom/htc/calendar/EditEvent;->mCurrentSelectCalendarReminderDuration:I

    return v0
.end method

.method static synthetic access$6802(Lcom/htc/calendar/EditEvent;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput p1, p0, Lcom/htc/calendar/EditEvent;->mCurrentSelectCalendarReminderDuration:I

    return p1
.end method

.method static synthetic access$6900(Lcom/htc/calendar/EditEvent;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget v0, p0, Lcom/htc/calendar/EditEvent;->mCurrentSelectCalendarReminderType:I

    return v0
.end method

.method static synthetic access$6902(Lcom/htc/calendar/EditEvent;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput p1, p0, Lcom/htc/calendar/EditEvent;->mCurrentSelectCalendarReminderType:I

    return p1
.end method

.method static synthetic access$700(Lcom/htc/calendar/EditEvent;Landroid/widget/TextView;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 152
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/calendar/EditEvent;->setDate(Landroid/widget/TextView;J)V

    return-void
.end method

.method static synthetic access$7002(Lcom/htc/calendar/EditEvent;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput p1, p0, Lcom/htc/calendar/EditEvent;->mDefaultReminderMinutes:I

    return p1
.end method

.method static synthetic access$7100(Lcom/htc/calendar/EditEvent;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Lcom/htc/calendar/EditEvent;->checkDefaultReminder(II)V

    return-void
.end method

.method static synthetic access$7200(Lcom/htc/calendar/EditEvent;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/htc/calendar/EditEvent;->showImportance(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7300(Lcom/htc/calendar/EditEvent;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mImportanceLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/htc/calendar/EditEvent;)Lcom/htc/widget/HtcSpinner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mImportanceSpinner:Lcom/htc/widget/HtcSpinner;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/htc/calendar/EditEvent;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/htc/calendar/EditEvent;->showInviteGuest(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7600(Lcom/htc/calendar/EditEvent;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mDummyTitle:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/htc/calendar/EditEvent;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/htc/calendar/EditEvent;->showCameraButton(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7800(Lcom/htc/calendar/EditEvent;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mImageCaptureButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/htc/calendar/EditEvent;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    invoke-direct {p0, p1}, Lcom/htc/calendar/EditEvent;->showRepetition(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/htc/calendar/EditEvent;Landroid/widget/TextView;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 152
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/calendar/EditEvent;->setTime(Landroid/widget/TextView;J)V

    return-void
.end method

.method static synthetic access$8000(Lcom/htc/calendar/EditEvent;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mRepeatContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$8102(Lcom/htc/calendar/EditEvent;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput p1, p0, Lcom/htc/calendar/EditEvent;->mSelectedRepeatItem:I

    return p1
.end method

.method static synthetic access$8202(Lcom/htc/calendar/EditEvent;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/htc/calendar/EditEvent;->mbIsSelected:Z

    return p1
.end method

.method static synthetic access$8302(Lcom/htc/calendar/EditEvent;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/htc/calendar/EditEvent;->currentInputFieldFocusView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$8400(Lcom/htc/calendar/EditEvent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/htc/calendar/EditEvent;->mEditableWebviewContentChanged:Z

    return v0
.end method

.method static synthetic access$8402(Lcom/htc/calendar/EditEvent;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/htc/calendar/EditEvent;->mEditableWebviewContentChanged:Z

    return p1
.end method

.method static synthetic access$8500(Lcom/htc/calendar/EditEvent;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mBackgroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/htc/calendar/EditEvent;)Landroid/webkit/EditableWebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mDescriptionWebView:Landroid/webkit/EditableWebView;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/htc/calendar/EditEvent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/htc/calendar/EditEvent;->mEditableHtmlGot:Z

    return v0
.end method

.method static synthetic access$8702(Lcom/htc/calendar/EditEvent;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/htc/calendar/EditEvent;->mEditableHtmlGot:Z

    return p1
.end method

.method static synthetic access$8800(Lcom/htc/calendar/EditEvent;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mWebViewLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/htc/calendar/EditEvent;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mHtmlText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8902(Lcom/htc/calendar/EditEvent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/htc/calendar/EditEvent;->mHtmlText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/htc/calendar/EditEvent;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/htc/calendar/EditEvent;->updateHomeTime()V

    return-void
.end method

.method static synthetic access$9000(Lcom/htc/calendar/EditEvent;)Landroid/os/HandlerThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mBackgroundThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method private addDuration(Landroid/content/ContentValues;)V
    .locals 14
    .parameter "values"

    .prologue
    .line 3656
    iget-object v10, p0, Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    .line 3657
    .local v3, end:J
    iget-object v10, p0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    .line 3660
    .local v8, start:J
    iget-object v10, p0, Lcom/htc/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v10}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    .line 3661
    .local v5, isAllDay:Z
    if-eqz v5, :cond_0

    .line 3662
    sub-long v10, v3, v8

    const-wide/32 v12, 0x5265c00

    add-long/2addr v10, v12

    const-wide/16 v12, 0x1

    sub-long/2addr v10, v12

    const-wide/32 v12, 0x5265c00

    div-long v0, v10, v12

    .line 3663
    .local v0, days:J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "P"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "D"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3668
    .end local v0           #days:J
    .local v2, duration:Ljava/lang/String;
    :goto_0
    const-string v10, "duration"

    invoke-virtual {p1, v10, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3669
    return-void

    .line 3665
    .end local v2           #duration:Ljava/lang/String;
    :cond_0
    sub-long v10, v3, v8

    const-wide/16 v12, 0x3e8

    div-long v6, v10, v12

    .line 3666
    .local v6, seconds:J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "P"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "S"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #duration:Ljava/lang/String;
    goto :goto_0
.end method

.method static addMinutesToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 5
    .parameter "context"
    .parameter
    .parameter
    .parameter "minutes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 2535
    .local p1, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p2, labels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 2536
    .local v1, index:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 2555
    :goto_0
    return-void

    .line 2543
    :cond_0
    const/4 v4, 0x0

    invoke-static {p0, p3, v4}, Lcom/htc/calendar/EditEvent;->constructReminderLabel(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v2

    .line 2544
    .local v2, label:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2545
    .local v3, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_2

    .line 2546
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge p3, v4, :cond_1

    .line 2547
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2548
    invoke-virtual {p2, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 2545
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2553
    :cond_2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2554
    invoke-virtual {p2, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private addRecurrenceRule(Landroid/content/ContentValues;)V
    .locals 3
    .parameter "values"

    .prologue
    .line 3672
    invoke-direct {p0}, Lcom/htc/calendar/EditEvent;->updateRecurrenceRule()V

    .line 3674
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mRrule:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3687
    :cond_0
    :goto_0
    return-void

    .line 3678
    :cond_1
    const-string v0, "rrule"

    iget-object v1, p0, Lcom/htc/calendar/EditEvent;->mRrule:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3679
    invoke-direct {p0, p1}, Lcom/htc/calendar/EditEvent;->addDuration(Landroid/content/ContentValues;)V

    .line 3682
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mEvent_ExDate:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3683
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mEvent_ExDate:Ljava/lang/String;

    iget-object v1, p0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/calendar/EditEvent;->getNewExDate(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/EditEvent;->mEvent_ExDate:Ljava/lang/String;

    .line 3684
    const-string v0, "exdate"

    iget-object v1, p0, Lcom/htc/calendar/EditEvent;->mEvent_ExDate:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addReminder()V
    .locals 13

    .prologue
    const/16 v6, 0xa

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2070
    iget v0, p0, Lcom/htc/calendar/EditEvent;->mDefaultReminderMinutes:I

    if-nez v0, :cond_1

    .line 2071
    iget-object v3, p0, Lcom/htc/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/htc/calendar/EditEvent;->mReminderLabels:Ljava/util/ArrayList;

    move-object v0, p0

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/calendar/EditEvent;->addReminder(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Z

    .line 2093
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/htc/calendar/EditEvent;->updateRemindersVisibility()V

    .line 2094
    return-void

    .line 2074
    :cond_1
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/htc/calendar/EditEvent;->reminderItemsToMinutes(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v11

    .line 2076
    .local v11, reminderMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 2077
    .local v7, N_REMINDER_COUNT:I
    const/4 v8, 0x1

    .line 2078
    .local v8, needAddNewOneLayout:Z
    if-ne v7, v3, :cond_2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 2080
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 2081
    .local v10, reminderItem:Landroid/widget/LinearLayout;
    if-eqz v10, :cond_2

    .line 2082
    const v0, 0x7f0d0084

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/htc/widget/HtcSpinner;

    .line 2083
    .local v12, spinner:Lcom/htc/widget/HtcSpinner;
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    invoke-static {v0, v6}, Lcom/htc/calendar/EditEvent;->findMinutesInReminderList(Ljava/util/ArrayList;I)I

    move-result v9

    .line 2084
    .local v9, position:I
    invoke-virtual {v12, v9, v3}, Lcom/htc/widget/HtcSpinner;->setSelection(IZ)V

    .line 2085
    const/4 v8, 0x0

    .line 2088
    .end local v9           #position:I
    .end local v10           #reminderItem:Landroid/widget/LinearLayout;
    .end local v12           #spinner:Lcom/htc/widget/HtcSpinner;
    :cond_2
    if-eqz v8, :cond_0

    .line 2089
    iget-object v3, p0, Lcom/htc/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/htc/calendar/EditEvent;->mReminderLabels:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/calendar/EditEvent;->mDefaultReminderMinutes:I

    move-object v0, p0

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/calendar/EditEvent;->addReminder(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Z

    goto :goto_0
.end method

.method private addReminder(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Z
    .locals 13
    .parameter "activity"
    .parameter "listener"
    .parameter
    .parameter
    .parameter
    .parameter "minutes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View$OnClickListener;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 2489
    .local p3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/LinearLayout;>;"
    .local p4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p5, labels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "EditEvent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addReminder: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2490
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {p0}, Lcom/htc/calendar/EditEvent;->getMAX_REMINDERS()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 2491
    const/4 v3, 0x0

    .line 2530
    .end local p2
    :goto_0
    return v3

    .line 2494
    .restart local p2
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    .line 2495
    .local v9, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f0d0061

    invoke-virtual {p1, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 2496
    .local v10, parent:Landroid/widget/LinearLayout;
    const v3, 0x7f03001f

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 2497
    .local v11, reminderItem:Landroid/widget/LinearLayout;
    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2499
    const v3, 0x7f0d0084

    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/htc/widget/HtcSpinner;

    .line 2500
    .local v12, spinner:Lcom/htc/widget/HtcSpinner;
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 2501
    .local v7, res:Landroid/content/res/Resources;
    const v3, 0x7f0800a1

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/htc/widget/HtcSpinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 2502
    const v5, 0x20900ee

    .line 2503
    .local v5, resource:I
    new-instance v2, Lcom/htc/calendar/EditEvent$12;

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v6, p5

    invoke-direct/range {v2 .. v7}, Lcom/htc/calendar/EditEvent$12;-><init>(Lcom/htc/calendar/EditEvent;Landroid/content/Context;ILjava/util/List;Landroid/content/res/Resources;)V

    .line 2514
    .local v2, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v3, 0x20900af

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 2515
    invoke-virtual {v12, v2}, Lcom/htc/widget/HtcSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2525
    move-object/from16 v0, p4

    move/from16 v1, p6

    invoke-static {v0, v1}, Lcom/htc/calendar/EditEvent;->findMinutesInReminderList(Ljava/util/ArrayList;I)I

    move-result v8

    .line 2526
    .local v8, index:I
    invoke-virtual {v12, v8}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 2527
    check-cast p2, Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    .end local p2
    invoke-virtual {v12, p2}, Lcom/htc/widget/HtcSpinner;->setOnItemSelectedListener(Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;)V

    .line 2528
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2530
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private cacheDescription(Ljava/lang/String;)V
    .locals 3
    .parameter "description"

    .prologue
    .line 5316
    const-string v0, "EditEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cacheDescription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5317
    iput-object p1, p0, Lcom/htc/calendar/EditEvent;->mOrigDescription:Ljava/lang/String;

    .line 5318
    return-void
.end method

.method private checkDefaultReminder(II)V
    .locals 8
    .parameter "type"
    .parameter "duration"

    .prologue
    const/4 v7, 0x0

    .line 4128
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4129
    const-string v4, "EditEvent"

    const-string v5, "default is off, so remove first one reminder"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4130
    iget-object v4, p0, Lcom/htc/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 4131
    iget-object v4, p0, Lcom/htc/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 4133
    .local v0, ll:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 4134
    .local v2, parent2:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 4136
    iget-object v4, p0, Lcom/htc/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4138
    invoke-direct {p0}, Lcom/htc/calendar/EditEvent;->updateRemindersVisibility()V

    .line 4155
    .end local v0           #ll:Landroid/widget/LinearLayout;
    .end local v2           #parent2:Landroid/widget/LinearLayout;
    :cond_0
    :goto_0
    return-void

    .line 4141
    :cond_1
    const-string v4, "EditEvent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "default is on, so change first one duration to:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4142
    const-string v4, "EditEvent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current mReminderItems.size():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4143
    iget-object v4, p0, Lcom/htc/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_2

    .line 4144
    iget-object v4, p0, Lcom/htc/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 4145
    .restart local v0       #ll:Landroid/widget/LinearLayout;
    const v4, 0x7f0d0084

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcSpinner;

    .line 4146
    .local v3, spinner:Lcom/htc/widget/HtcSpinner;
    if-eqz v3, :cond_0

    .line 4147
    iget-object v4, p0, Lcom/htc/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/htc/calendar/EditEvent;->mReminderLabels:Ljava/util/ArrayList;

    invoke-static {p0, v4, v5, p2}, Lcom/htc/calendar/EditEvent;->addMinutesToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 4148
    iget-object v4, p0, Lcom/htc/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    invoke-static {v4, p2}, Lcom/htc/calendar/EditEvent;->findMinutesInReminderList(Ljava/util/ArrayList;I)I

    move-result v1

    .line 4149
    .local v1, newPosition:I
    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    goto :goto_0

    .line 4152
    .end local v0           #ll:Landroid/widget/LinearLayout;
    .end local v1           #newPosition:I
    .end local v3           #spinner:Lcom/htc/widget/HtcSpinner;
    :cond_2
    invoke-direct {p0}, Lcom/htc/calendar/EditEvent;->addReminder()V

    goto :goto_0
.end method

.method private checkFacebookDependentFields(Landroid/content/ContentValues;)V
    .locals 8
    .parameter "values"

    .prologue
    .line 5280
    iget-object v6, p0, Lcom/htc/calendar/EditEvent;->mSyncAccountType:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/htc/calendar/HtcUtils;->isHTCFacebookEvent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5281
    const-string v6, "facebook_type"

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5283
    iget-boolean v6, p0, Lcom/htc/calendar/EditEvent;->mSetImageCapture:Z

    if-eqz v6, :cond_0

    .line 5285
    :try_start_0
    iget-object v6, p0, Lcom/htc/calendar/EditEvent;->mImageCaptureButton:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 5286
    .local v3, d:Landroid/graphics/drawable/Drawable;
    move-object v0, v3

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v2, v0

    .line 5287
    .local v2, bmpDraw:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 5289
    .local v1, bitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {p0, v6, v7, v1}, Lcom/htc/calendar/PhotoPickerHelper;->saveBitmapToDisk(Landroid/content/Context;JLandroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v5

    .line 5294
    .local v5, fileName:Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 5295
    const-string v6, "facebook_avatar_local"

    invoke-virtual {p1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5301
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #bmpDraw:Landroid/graphics/drawable/BitmapDrawable;
    .end local v3           #d:Landroid/graphics/drawable/Drawable;
    .end local v5           #fileName:Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v6, "dirty"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 5303
    :cond_1
    return-void

    .line 5297
    :catch_0
    move-exception v4

    .line 5298
    .local v4, e:Ljava/lang/Exception;
    const-string v6, "EditEvent"

    const-string v7, "can\'t save Facebook image in create"

    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private checkInputLength(Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "s"

    .prologue
    const/16 v4, 0xc8

    .line 5092
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 5093
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/htc/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080068

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5095
    .local v0, warningStr:Ljava/lang/String;
    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 5097
    .end local v0           #warningStr:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private checkInvalidInput()Z
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 4158
    iget-object v5, p0, Lcom/htc/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 4168
    .local v0, isAllDay:Z
    iget-object v5, p0, Lcom/htc/calendar/EditEvent;->mSyncAccountType:Ljava/lang/String;

    invoke-static {v5}, Lcom/htc/calendar/HtcUtils;->isHTCExchangeEvent(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/htc/calendar/EditEvent;->mSyncAccountType:Ljava/lang/String;

    invoke-static {v5}, Lcom/htc/calendar/HtcUtils;->isHTCPCSyncEvent(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4178
    :cond_0
    iget-object v5, p0, Lcom/htc/calendar/EditEvent;->mRepeatsSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v5}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v1

    .line 4179
    .local v1, position:I
    iget-object v5, p0, Lcom/htc/calendar/EditEvent;->mRecurrenceIndexes:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 4180
    .local v4, selection:I
    iget-object v5, p0, Lcom/htc/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/htc/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    invoke-static {v5, v8}, Lcom/htc/calendar/EditEvent;->reminderItemsToMinutes(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4182
    .local v2, reminderMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4184
    .local v3, reminderSize:I
    packed-switch v4, :pswitch_data_0

    :cond_1
    move v5, v6

    .line 4205
    .end local v1           #position:I
    .end local v2           #reminderMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3           #reminderSize:I
    .end local v4           #selection:I
    :goto_0
    return v5

    .line 4187
    .restart local v1       #position:I
    .restart local v2       #reminderMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v3       #reminderSize:I
    .restart local v4       #selection:I
    :pswitch_0
    if-nez v0, :cond_2

    if-lez v3, :cond_2

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v8, 0x5a0

    if-lt v5, v8, :cond_2

    move v5, v7

    .line 4189
    goto :goto_0

    .line 4190
    :cond_2
    if-ne v0, v6, :cond_1

    if-lez v3, :cond_1

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-lez v5, :cond_1

    move v5, v7

    .line 4192
    goto :goto_0

    .line 4197
    :pswitch_1
    if-lez v3, :cond_1

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v8, 0x2760

    if-lt v5, v8, :cond_1

    move v5, v7

    .line 4198
    goto :goto_0

    .end local v1           #position:I
    .end local v2           #reminderMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3           #reminderSize:I
    .end local v4           #selection:I
    :cond_3
    move v5, v6

    .line 4205
    goto :goto_0

    .line 4184
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private checkMeetingStatus(Landroid/content/ContentValues;)V
    .locals 3
    .parameter "values"

    .prologue
    const/4 v2, 0x0

    .line 5120
    iget-object v1, p0, Lcom/htc/calendar/EditEvent;->mSyncAccountType:Ljava/lang/String;

    invoke-static {v1}, Lcom/htc/calendar/HtcUtils;->isHTCExchangeEvent(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5132
    :goto_0
    return-void

    .line 5125
    :cond_0
    iget-object v1, p0, Lcom/htc/calendar/EditEvent;->mComposeTitle:Lcom/htc/calendar/widget/ComposeTitle;

    invoke-virtual {v1, v2}, Lcom/htc/calendar/widget/ComposeTitle;->getAttendeesList(Z)Ljava/lang/String;

    move-result-object v0

    .line 5127
    .local v0, mailList:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5128
    const-string v1, "MeetingStatus"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 5130
    :cond_1
    const-string v1, "MeetingStatus"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method private checkTimeDependentFields(Landroid/content/ContentValues;)V
    .locals 28
    .parameter "values"

    .prologue
    .line 3431
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v24, "beginTime"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 3432
    .local v16, oldBegin:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v24, "endTime"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 3433
    .local v18, oldEnd:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v24, "allDay"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v15, 0x1

    .line 3434
    .local v15, oldAllDay:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v24, "rrule"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 3435
    .local v20, oldRrule:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v24, "eventTimezone"

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 3437
    .local v23, oldTimezone:Ljava/lang/String;
    const-string v3, "dtstart"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 3438
    .local v4, newBegin:J
    const-string v3, "dtend"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 3439
    .local v6, newEnd:J
    const-string v3, "allDay"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v8, 0x1

    .line 3440
    .local v8, newAllDay:Z
    :goto_1
    const-string v3, "rrule"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3441
    .local v9, newRrule:Ljava/lang/String;
    const-string v3, "eventTimezone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 3444
    .local v12, newTimezone:Ljava/lang/String;
    cmp-long v3, v16, v4

    if-nez v3, :cond_3

    cmp-long v3, v18, v6

    if-nez v3, :cond_3

    if-ne v15, v8, :cond_3

    move-object/from16 v0, v20

    invoke-static {v0, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, v23

    invoke-static {v0, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3447
    const-string v3, "dtstart"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3448
    const-string v3, "dtend"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3449
    const-string v3, "duration"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3450
    const-string v3, "allDay"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3451
    const-string v3, "rrule"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3452
    const-string v3, "eventTimezone"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3454
    const-string v3, "EditEvent"

    const-string v24, "remove DTEND 6"

    move-object/from16 v0, v24

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3549
    :cond_0
    :goto_2
    return-void

    .line 3433
    .end local v4           #newBegin:J
    .end local v6           #newEnd:J
    .end local v8           #newAllDay:Z
    .end local v9           #newRrule:Ljava/lang/String;
    .end local v12           #newTimezone:Ljava/lang/String;
    .end local v15           #oldAllDay:Z
    .end local v20           #oldRrule:Ljava/lang/String;
    .end local v23           #oldTimezone:Ljava/lang/String;
    :cond_1
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 3439
    .restart local v4       #newBegin:J
    .restart local v6       #newEnd:J
    .restart local v15       #oldAllDay:Z
    .restart local v20       #oldRrule:Ljava/lang/String;
    .restart local v23       #oldTimezone:Ljava/lang/String;
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 3458
    .restart local v8       #newAllDay:Z
    .restart local v9       #newRrule:Ljava/lang/String;
    .restart local v12       #newTimezone:Ljava/lang/String;
    :cond_3
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3470
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/EditEvent;->mModification:I

    const/16 v24, 0x2

    move/from16 v0, v24

    if-eq v3, v0, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/EditEvent;->mModification:I

    const/16 v24, 0x3

    move/from16 v0, v24

    if-ne v3, v0, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/EditEvent;->isFirstEventInSeries()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3472
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/16 v24, 0x7

    move/from16 v0, v24

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 3474
    .local v21, oldStartMillis:J
    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/EditEvent;->mModification:I

    const/16 v24, 0x3

    move/from16 v0, v24

    if-ne v3, v0, :cond_5

    .line 3475
    move-wide/from16 v21, v4

    .line 3478
    :cond_5
    if-eq v15, v8, :cond_8

    .line 3479
    move-wide/from16 v21, v4

    .line 3480
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 3481
    const-wide/16 v10, 0x0

    .local v10, duration:J
    move-object/from16 v3, p0

    .line 3482
    invoke-direct/range {v3 .. v9}, Lcom/htc/calendar/EditEvent;->getNewRecurrenceUntil(JJZLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 3483
    const-string v3, "rrule"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3484
    if-eqz v8, :cond_7

    .line 3485
    const-string v3, "duration"

    const-string v24, "P1D"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3500
    .end local v10           #duration:J
    :cond_6
    :goto_3
    const-string v3, "EditEvent"

    const-string v24, "checkTimeDependentFields oldStartMillis"

    move-object/from16 v0, v24

    move-wide/from16 v1, v21

    invoke-static {v3, v0, v1, v2}, Lcom/htc/calendar/Utils;->debugLongTime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 3502
    const-string v3, "dtstart"

    invoke-static/range {v21 .. v22}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_2

    .line 3488
    .restart local v10       #duration:J
    :cond_7
    sub-long v24, v6, v4

    const-wide/16 v26, 0x3e8

    div-long v10, v24, v26

    .line 3489
    const-string v3, "duration"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "P"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "S"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 3495
    .end local v10           #duration:J
    :cond_8
    cmp-long v3, v16, v4

    if-eqz v3, :cond_6

    .line 3497
    sub-long v13, v4, v16

    .line 3498
    .local v13, offset:J
    add-long v21, v21, v13

    goto :goto_3
.end method

.method static constructReminderLabel(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "minutes"
    .parameter "abbrev"

    .prologue
    .line 2579
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2582
    .local v2, resources:Landroid/content/res/Resources;
    rem-int/lit8 v4, p1, 0x3c

    if-eqz v4, :cond_1

    .line 2583
    move v3, p1

    .line 2584
    .local v3, value:I
    if-eqz p2, :cond_0

    .line 2585
    const v1, 0x7f0c0001

    .line 2597
    .local v1, resId:I
    :goto_0
    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 2598
    .local v0, format:Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 2587
    .end local v0           #format:Ljava/lang/String;
    .end local v1           #resId:I
    :cond_0
    const/high16 v1, 0x7f0c

    .restart local v1       #resId:I
    goto :goto_0

    .line 2589
    .end local v1           #resId:I
    .end local v3           #value:I
    :cond_1
    rem-int/lit16 v4, p1, 0x5a0

    if-eqz v4, :cond_2

    .line 2590
    div-int/lit8 v3, p1, 0x3c

    .line 2591
    .restart local v3       #value:I
    const v1, 0x7f0c0002

    .restart local v1       #resId:I
    goto :goto_0

    .line 2593
    .end local v1           #resId:I
    .end local v3           #value:I
    :cond_2
    div-int/lit16 v3, p1, 0x5a0

    .line 2594
    .restart local v3       #value:I
    const v1, 0x7f0c0003

    .restart local v1       #resId:I
    goto :goto_0
.end method

.method private debug(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 5458
    const/4 v0, 0x0

    .line 5463
    .local v0, DEBUG:Z
    return-void
.end method

.method private debugResultFacebookPicker(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5055
    .local p1, idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-boolean v2, Lcom/htc/calendar/EditEvent;->DEBUG_HTC:Z

    if-nez v2, :cond_1

    .line 5063
    :cond_0
    return-void

    .line 5059
    :cond_1
    const-string v2, "EditEvent"

    const-string v3, "ID List\n------------------------"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5060
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 5061
    .local v0, I:Ljava/lang/Integer;
    const-string v2, "EditEvent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private debugResultMailPicker(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5034
    .local p1, nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, addrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, midList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-boolean v3, Lcom/htc/calendar/EditEvent;->DEBUG_HTC:Z

    if-nez v3, :cond_1

    .line 5052
    :cond_0
    return-void

    .line 5038
    :cond_1
    const-string v3, "EditEvent"

    const-string v4, "MailPicker-NameList\n------------------"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5039
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5040
    .local v2, s:Ljava/lang/String;
    const-string v3, "EditEvent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5043
    .end local v2           #s:Ljava/lang/String;
    :cond_2
    const-string v3, "EditEvent"

    const-string v4, "MailPicker-AddrList\n------------------"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5044
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5045
    .restart local v2       #s:Ljava/lang/String;
    const-string v3, "EditEvent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5048
    .end local v2           #s:Ljava/lang/String;
    :cond_3
    const-string v3, "EditEvent"

    const-string v4, "MailPicker-midList\n------------------"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5049
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 5050
    .local v0, i:Ljava/lang/Integer;
    const-string v3, "EditEvent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  >"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private doResume()V
    .locals 22

    .prologue
    .line 1770
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/calendar/EditEvent;->mDirtyCheckAlreadyCreadted:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 1979
    :cond_0
    :goto_0
    return-void

    .line 1771
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    .line 1772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v18

    if-nez v18, :cond_3

    .line 1774
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/EditEvent;->finish()V

    goto :goto_0

    .line 1779
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object/from16 v18, v0

    if-eqz v18, :cond_f

    .line 1780
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    .line 1781
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1783
    const/16 v18, 0xa

    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/calendar/EditEvent;->mRrule:Ljava/lang/String;

    .line 1784
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1785
    .local v15, title:Ljava/lang/String;
    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1786
    .local v7, description:Ljava/lang/String;
    move-object v8, v7

    .line 1787
    .local v8, descriptionHtml:Ljava/lang/String;
    const/16 v18, 0x3

    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1788
    .local v12, location:Ljava/lang/String;
    const/16 v18, 0xc

    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1789
    .local v3, availability:I
    const/16 v18, 0xd

    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 1790
    .local v16, visibility:I
    if-lez v16, :cond_4

    .line 1792
    add-int/lit8 v16, v16, -0x1

    .line 1795
    :cond_4
    const/16 v18, 0x10

    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1799
    .local v10, importance:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mRrule:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/calendar/EditEvent;->mParentID:J

    move-wide/from16 v18, v0

    const-wide/16 v20, -0x1

    cmp-long v18, v18, v20

    if-eqz v18, :cond_5

    .line 1801
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/calendar/EditEvent;->mParentID:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/htc/calendar/Utils;->getEventRRule(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v13

    .line 1803
    .local v13, parentRrule:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 1804
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/calendar/EditEvent;->mRrule:Ljava/lang/String;

    .line 1805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    move-object/from16 v18, v0

    const-string v19, "rrule"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mRrule:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1809
    .end local v13           #parentRrule:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mRrule:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/EditEvent;->mModification:I

    move/from16 v18, v0

    if-nez v18, :cond_6

    .line 1812
    const/16 v18, 0xb

    move/from16 v0, v18

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/calendar/EditEvent;->mSyncId:Ljava/lang/String;

    .line 1813
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mRrule:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 1816
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mSyncId:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mSyncAccountType:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/htc/calendar/EditEvent;->getMenuItems(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v11

    .line 1837
    .local v11, items:[Ljava/lang/CharSequence;
    new-instance v18, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v19, Lcom/htc/calendar/EditEvent$6;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/calendar/EditEvent$6;-><init>(Lcom/htc/calendar/EditEvent;)V

    invoke-virtual/range {v18 .. v19}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f0800ae

    invoke-virtual/range {v18 .. v19}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v18

    new-instance v19, Lcom/htc/calendar/EditEvent$5;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/htc/calendar/EditEvent$5;-><init>(Lcom/htc/calendar/EditEvent;[Ljava/lang/CharSequence;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v11, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/calendar/EditEvent;->recurrentModifyDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 1879
    .end local v11           #items:[Ljava/lang/CharSequence;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v15}, Lcom/htc/calendar/EditEvent;->validateTextViewOnResume(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mLocationTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v12}, Lcom/htc/calendar/EditEvent;->validateTextViewOnResume(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mDescriptionTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v7}, Lcom/htc/calendar/EditEvent;->validateTextViewOnResume(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mDescriptionTextView:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/htc/calendar/EditEvent;->cacheDescription(Ljava/lang/String;)V

    .line 1883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mDescriptionWebView:Landroid/webkit/EditableWebView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v8}, Lcom/htc/calendar/EditEvent;->validateEditableWebViewOnResume(Landroid/webkit/EditableWebView;Ljava/lang/String;)V

    .line 1885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mAvailabilitySpinner:Lcom/htc/widget/HtcSpinner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 1886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mVisibilitySpinner:Lcom/htc/widget/HtcSpinner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 1890
    const v18, 0x7f0d0035

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1891
    .local v5, calendarGroup:Landroid/view/View;
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1894
    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v10, v0, :cond_9

    .line 1895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mImportanceLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mImportanceSpinner:Lcom/htc/widget/HtcSpinner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 1901
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mSyncAccountType:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/htc/calendar/EditEvent;->showInviteGuest(Ljava/lang/String;)Z

    move-result v14

    .line 1902
    .local v14, showInviteGuest:Z
    const-string v18, "EditEvent"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "showInviteGuest: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    if-eqz v14, :cond_c

    .line 1904
    const v18, 0x7f0d0066

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 1905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mCalendarsSpinner:Lcom/htc/widget/HtcSpinner;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Lcom/htc/widget/HtcSpinner;->setVisibility(I)V

    .line 1906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mComposeTitle:Lcom/htc/calendar/widget/ComposeTitle;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    .line 1907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mComposeTitle:Lcom/htc/calendar/widget/ComposeTitle;

    move-object/from16 v19, v0

    if-eqz v14, :cond_a

    const/16 v18, 0x0

    :goto_2
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/calendar/widget/ComposeTitle;->setVisibility(I)V

    .line 1908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mDummyTitle:Landroid/widget/LinearLayout;

    move-object/from16 v19, v0

    if-eqz v14, :cond_b

    const/16 v18, 0x8

    :goto_3
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1916
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mSyncAccountType:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/htc/calendar/HtcUtils;->isHTCFacebookEvent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mAvatarLocal:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 1917
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mImageCaptureButton:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1934
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mDeleteButton:Lcom/htc/widget/HtcFooterButton;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/htc/widget/HtcFooterButton;->setVisibility(I)V

    .line 1967
    .end local v3           #availability:I
    .end local v5           #calendarGroup:Landroid/view/View;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #description:Ljava/lang/String;
    .end local v8           #descriptionHtml:Ljava/lang/String;
    .end local v10           #importance:I
    .end local v12           #location:Ljava/lang/String;
    .end local v14           #showInviteGuest:Z
    .end local v15           #title:Ljava/lang/String;
    .end local v16           #visibility:I
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/EditEvent;->updateRemindersVisibility()V

    .line 1968
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/EditEvent;->populateWhen()V

    .line 1969
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/EditEvent;->populateTimezone()V

    .line 1970
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/EditEvent;->updateHomeTime()V

    .line 1971
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/htc/calendar/EditEvent;->populateRepeats(Z)V

    .line 1973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mComposeTitle:Lcom/htc/calendar/widget/ComposeTitle;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 1974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mComposeTitle:Lcom/htc/calendar/widget/ComposeTitle;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/calendar/widget/ComposeTitle;->getVisibility()I

    move-result v18

    if-nez v18, :cond_10

    const/16 v17, 0x1

    .line 1975
    .local v17, visible:Z
    :goto_7
    if-eqz v17, :cond_0

    .line 1976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mComposeTitle:Lcom/htc/calendar/widget/ComposeTitle;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/calendar/widget/ComposeTitle;->onResume()V

    goto/16 :goto_0

    .line 1898
    .end local v17           #visible:Z
    .restart local v3       #availability:I
    .restart local v5       #calendarGroup:Landroid/view/View;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v7       #description:Ljava/lang/String;
    .restart local v8       #descriptionHtml:Ljava/lang/String;
    .restart local v10       #importance:I
    .restart local v12       #location:Ljava/lang/String;
    .restart local v15       #title:Ljava/lang/String;
    .restart local v16       #visibility:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mImportanceLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 1907
    .restart local v14       #showInviteGuest:Z
    :cond_a
    const/16 v18, 0x8

    goto/16 :goto_2

    .line 1908
    :cond_b
    const/16 v18, 0x0

    goto/16 :goto_3

    .line 1911
    :cond_c
    const v18, 0x7f0d0066

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/htc/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 1912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mCalendarsSpinner:Lcom/htc/widget/HtcSpinner;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/htc/widget/HtcSpinner;->setVisibility(I)V

    goto/16 :goto_4

    .line 1919
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mAvatarLocal:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/htc/calendar/PhotoPickerHelper;->getFullAvatarLocalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1920
    .local v9, fullPath:Ljava/lang/String;
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v4, v0, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 1921
    .local v4, bmpDrawable:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v4, :cond_e

    .line 1922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mImageCaptureButton:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v4}, Lcom/htc/wrap/android/widget/HtcWrapImageView;->setImageDrawableWithoutRelayout(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 1923
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mImageCaptureButton:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1926
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mImageCaptureButton:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setClickable(Z)V

    goto/16 :goto_5

    .line 1964
    .end local v3           #availability:I
    .end local v4           #bmpDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v5           #calendarGroup:Landroid/view/View;
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #description:Ljava/lang/String;
    .end local v8           #descriptionHtml:Ljava/lang/String;
    .end local v9           #fullPath:Ljava/lang/String;
    .end local v10           #importance:I
    .end local v12           #location:Ljava/lang/String;
    .end local v14           #showInviteGuest:Z
    .end local v15           #title:Ljava/lang/String;
    .end local v16           #visibility:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mDeleteButton:Lcom/htc/widget/HtcFooterButton;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Lcom/htc/widget/HtcFooterButton;->setVisibility(I)V

    goto/16 :goto_6

    .line 1974
    :cond_10
    const/16 v17, 0x0

    goto/16 :goto_7
.end method

.method private doSave()Z
    .locals 72

    .prologue
    .line 2680
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/EditEvent;->checkInvalidInput()Z

    move-result v9

    if-nez v9, :cond_0

    .line 2681
    const/4 v9, 0x0

    const-string v68, "Can\'t save this event"

    move-object/from16 v0, v68

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    new-instance v9, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v68, 0x108009b

    move/from16 v0, v68

    invoke-virtual {v9, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v68, 0x7f08002f

    move/from16 v0, v68

    invoke-virtual {v9, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v68, 0x7f080030

    move/from16 v0, v68

    invoke-virtual {v9, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    const v68, 0x104000a

    const/16 v69, 0x0

    move/from16 v0, v68

    move-object/from16 v1, v69

    invoke-virtual {v9, v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 2688
    const/4 v9, 0x0

    .line 3333
    :goto_0
    return v9

    .line 2692
    :cond_0
    const/4 v10, 0x0

    .line 2696
    .local v10, forceSaveReminders:Z
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    if-nez v9, :cond_5

    .line 2697
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/htc/calendar/EditEvent;->mCalendarsQueryComplete:Z

    if-nez v9, :cond_2

    .line 2699
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mLoadingCalendarsDialog:Lcom/htc/app/HtcProgressDialog;

    if-nez v9, :cond_1

    .line 2701
    const v9, 0x7f080091

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/htc/calendar/EditEvent;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const v68, 0x7f080092

    move-object/from16 v0, p0

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Lcom/htc/calendar/EditEvent;->getText(I)Ljava/lang/CharSequence;

    move-result-object v68

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-static {v0, v9, v1}, Lcom/htc/app/HtcProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/htc/calendar/EditEvent;->mLoadingCalendarsDialog:Lcom/htc/app/HtcProgressDialog;

    .line 2704
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/htc/calendar/EditEvent;->mSaveAfterQueryComplete:Z

    .line 2706
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 2712
    :cond_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v9, :cond_3

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-eqz v9, :cond_3

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mCalendarsSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v9}, Lcom/htc/widget/HtcSpinner;->getSelectedItemId()J

    move-result-wide v68

    const-wide/high16 v70, -0x8000

    cmp-long v9, v68, v70

    if-nez v9, :cond_4

    .line 2714
    :cond_3
    const-string v9, "Cal"

    const-string v68, "The calendars table does not contain any calendars or no calendar was selected. New event was not created."

    move-object/from16 v0, v68

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2717
    const/4 v9, 0x1

    goto :goto_0

    .line 2719
    :cond_4
    const v9, 0x7f08008f

    const/16 v68, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v68

    invoke-static {v0, v9, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 2727
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2728
    .local v5, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/16 v25, -0x1

    .line 2730
    .local v25, eventIdIndex:I
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/EditEvent;->getContentValuesFromUi()Landroid/content/ContentValues;

    move-result-object v67

    .line 2732
    .local v67, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v9, v1}, Lcom/htc/calendar/EditEvent;->eventChanged(Landroid/database/Cursor;Landroid/content/ContentValues;)Z

    move-result v24

    .line 2733
    .local v24, eventChanged:Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "eventChanged: "

    move-object/from16 v0, v68

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v24

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/htc/calendar/EditEvent;->debug(Ljava/lang/String;)V

    .line 2734
    if-nez v24, :cond_6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    if-nez v9, :cond_18

    .line 2735
    :cond_6
    const v9, 0x7f080090

    const/16 v68, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v68

    invoke-static {v0, v9, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 2742
    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v1}, Lcom/htc/calendar/EditEvent;->addDuration(Landroid/content/ContentValues;)V

    .line 2744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mUri:Landroid/net/Uri;

    move-object/from16 v66, v0

    .line 2748
    .local v66, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v9}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    if-nez v9, :cond_7

    .line 2749
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mTimezoneAdapter:Lcom/htc/calendar/TimezoneAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    move-object/from16 v68, v0

    move-object/from16 v0, v68

    invoke-virtual {v9, v0}, Lcom/htc/calendar/TimezoneAdapter;->saveRecentTimezone(Ljava/lang/String;)V

    .line 2754
    :cond_7
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    move-object/from16 v68, v0

    move-object/from16 v0, v68

    invoke-static {v9, v0}, Lcom/htc/calendar/EditEvent;->reminderItemsToMinutes(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v8

    .line 2758
    .local v8, reminderMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v26, 0x0

    .line 2759
    .local v26, hasReminder:Z
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .local v29, i$:Ljava/util/Iterator;
    :cond_8
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Ljava/lang/Integer;

    .line 2760
    .local v58, reminder:Ljava/lang/Integer;
    invoke-virtual/range {v58 .. v58}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ltz v9, :cond_8

    .line 2761
    const/16 v26, 0x1

    .line 2766
    .end local v58           #reminder:Ljava/lang/Integer;
    :cond_9
    const-string v68, "hasAlarm"

    if-eqz v26, :cond_19

    const/4 v9, 0x1

    :goto_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2767
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mEvent_Guid:Ljava/lang/String;

    if-eqz v9, :cond_a

    .line 2768
    const-string v9, "iCalGUID"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mEvent_Guid:Ljava/lang/String;

    move-object/from16 v68, v0

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2771
    :cond_a
    const/16 v64, 0x0

    .line 2775
    .local v64, saveNewReminder:Z
    if-nez v66, :cond_1a

    .line 2777
    const-string v9, "hasAttendeeData"

    const/16 v68, 0x1

    invoke-static/range {v68 .. v68}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v68

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2779
    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v1}, Lcom/htc/calendar/EditEvent;->addRecurrenceRule(Landroid/content/ContentValues;)V

    .line 2780
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mRrule:Ljava/lang/String;

    if-eqz v9, :cond_b

    .line 2781
    const-string v9, "EditEvent"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "mSyncAccountType:"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mSyncAccountType:Ljava/lang/String;

    move-object/from16 v69, v0

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v68

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2782
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mSyncAccountType:Ljava/lang/String;

    invoke-static {v9}, Lcom/htc/calendar/HtcUtils;->isHTCExchangeEvent(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 2783
    const-string v9, "dtend"

    move-object/from16 v0, v67

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2784
    const-string v9, "EditEvent"

    const-string v68, "remove DTEND 1"

    move-object/from16 v0, v68

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2787
    :cond_b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v25

    .line 2788
    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v1}, Lcom/htc/calendar/EditEvent;->checkMeetingStatus(Landroid/content/ContentValues;)V

    .line 2789
    sget-object v9, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    move-object/from16 v0, v67

    invoke-virtual {v9, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v15

    .line 2790
    .local v15, b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v15}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2791
    const/4 v10, 0x1

    .line 3106
    .end local v15           #b:Landroid/content/ContentProviderOperation$Builder;
    :cond_c
    :goto_2
    const/4 v9, -0x1

    move/from16 v0, v25

    if-eq v0, v9, :cond_3b

    const/16 v40, 0x1

    .line 3109
    .local v40, newEvent:Z
    :goto_3
    if-nez v40, :cond_d

    if-eqz v64, :cond_3c

    .line 3111
    :cond_d
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mOriginalMinutes:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-static {v5, v0, v8, v9, v10}, Lcom/htc/calendar/EditEvent;->saveRemindersWithBackRef(Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    .line 3122
    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/htc/calendar/EditEvent;->mHasAttendeeData:Z

    if-eqz v9, :cond_13

    if-eqz v40, :cond_13

    .line 3123
    invoke-virtual/range {v67 .. v67}, Landroid/content/ContentValues;->clear()V

    .line 3124
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mCalendarsSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v9}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v18

    .line 3127
    .local v18, calendarCursorPosition:I
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v9, :cond_f

    .line 3128
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    move/from16 v0, v18

    invoke-interface {v9, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 3129
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    const/16 v68, 0x2

    move/from16 v0, v68

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 3131
    .local v22, defaultCalendar:Ljava/lang/String;
    const-string v9, "preference_defaultCalendar"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v9, v1}, Lcom/htc/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3134
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mSyncAccountType:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1, v9}, Lcom/htc/calendar/Utils;->updateDefaultInsertCalendar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 3138
    .end local v22           #defaultCalendar:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mOwnerAccount:Ljava/lang/String;

    move-object/from16 v52, v0

    .line 3140
    .local v52, ownerEmail:Ljava/lang/String;
    if-nez v52, :cond_10

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v9, :cond_10

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    move/from16 v0, v18

    invoke-interface {v9, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 3142
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    const/16 v68, 0x2

    move/from16 v0, v68

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v52

    .line 3145
    :cond_10
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mSyncAccountType:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/htc/calendar/HtcUtils;->isHTCFacebookEvent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 3146
    const-string v9, "attendeeName"

    move-object/from16 v0, v67

    move-object/from16 v1, v52

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3147
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/htc/calendar/EditEvent;->getOwnerAccountSourceId(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v52

    .line 3149
    :cond_11
    if-eqz v52, :cond_13

    .line 3150
    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/calendar/EditEvent;->mOwnerAccount:Ljava/lang/String;

    .line 3152
    const-string v9, "attendeeEmail"

    move-object/from16 v0, v67

    move-object/from16 v1, v52

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3153
    const-string v9, "attendeeRelationship"

    const/16 v68, 0x2

    invoke-static/range {v68 .. v68}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v68

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3154
    const-string v9, "attendeeType"

    const/16 v68, 0x0

    invoke-static/range {v68 .. v68}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v68

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3158
    const/16 v30, 0x1

    .line 3161
    .local v30, initialStatus:I
    const-string v9, "calendar.google.com"

    move-object/from16 v0, v52

    invoke-virtual {v0, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 3162
    const/16 v30, 0x0

    .line 3164
    :cond_12
    const-string v9, "attendeeStatus"

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v68

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3167
    sget-object v9, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    move-object/from16 v0, v67

    invoke-virtual {v9, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v15

    .line 3169
    .restart local v15       #b:Landroid/content/ContentProviderOperation$Builder;
    const-string v9, "event_id"

    move/from16 v0, v25

    invoke-virtual {v15, v9, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 3170
    invoke-virtual {v15}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3176
    .end local v15           #b:Landroid/content/ContentProviderOperation$Builder;
    .end local v18           #calendarCursorPosition:I
    .end local v30           #initialStatus:I
    .end local v52           #ownerEmail:Ljava/lang/String;
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/htc/calendar/EditEvent;->mHasAttendeeData:Z

    if-eqz v9, :cond_16

    if-nez v40, :cond_14

    if-eqz v66, :cond_16

    .line 3177
    :cond_14
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mComposeTitle:Lcom/htc/calendar/widget/ComposeTitle;

    const/16 v68, 0x1

    move/from16 v0, v68

    invoke-virtual {v9, v0}, Lcom/htc/calendar/widget/ComposeTitle;->getAttendeesList(Z)Ljava/lang/String;

    move-result-object v35

    .line 3178
    .local v35, mailListTmp:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mComposeTitle:Lcom/htc/calendar/widget/ComposeTitle;

    const/16 v68, 0x0

    move/from16 v0, v68

    invoke-virtual {v9, v0}, Lcom/htc/calendar/widget/ComposeTitle;->getAttendeesList(Z)Ljava/lang/String;

    move-result-object v34

    .line 3180
    .local v34, mailList:Ljava/lang/String;
    if-nez v40, :cond_15

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mOriginalAttendees:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1, v9}, Lcom/htc/calendar/EditEvent;->isEmailListSame(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_16

    .line 3193
    :cond_15
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mSyncAccountType:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/htc/calendar/HtcUtils;->isHTCFacebookEvent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_40

    .line 3194
    if-eqz v66, :cond_3d

    invoke-static/range {v66 .. v66}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 3196
    .local v6, eventId:J
    :goto_5
    if-nez v40, :cond_3e

    .line 3304
    .end local v6           #eventId:J
    .end local v34           #mailList:Ljava/lang/String;
    .end local v35           #mailListTmp:Ljava/lang/String;
    :cond_16
    if-eqz v40, :cond_17

    .line 3306
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    .line 3307
    .local v21, cr:Landroid/content/ContentResolver;
    invoke-virtual/range {v67 .. v67}, Landroid/content/ContentValues;->clear()V

    .line 3308
    const-string v9, "visible"

    const-string v68, "1"

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3309
    sget-object v9, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/calendar/EditEvent;->mCalendarId:J

    move-wide/from16 v68, v0

    move-wide/from16 v0, v68

    invoke-static {v9, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v19

    .line 3310
    .local v19, calendarUpdateUri:Landroid/net/Uri;
    const/4 v9, 0x0

    const/16 v68, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move-object/from16 v2, v67

    move-object/from16 v3, v68

    invoke-virtual {v0, v1, v2, v9, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 3316
    .end local v19           #calendarUpdateUri:Landroid/net/Uri;
    .end local v21           #cr:Landroid/content/ContentResolver;
    :cond_17
    new-instance v36, Lcom/htc/calendar/EditEvent$saveApplyBatchThread;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v5}, Lcom/htc/calendar/EditEvent$saveApplyBatchThread;-><init>(Lcom/htc/calendar/EditEvent;Ljava/util/ArrayList;)V

    .line 3317
    .local v36, myThread:Lcom/htc/calendar/EditEvent$saveApplyBatchThread;
    invoke-virtual/range {v36 .. v36}, Lcom/htc/calendar/EditEvent$saveApplyBatchThread;->start()V

    .line 3333
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 2738
    .end local v8           #reminderMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v26           #hasReminder:Z
    .end local v29           #i$:Ljava/util/Iterator;
    .end local v36           #myThread:Lcom/htc/calendar/EditEvent$saveApplyBatchThread;
    .end local v40           #newEvent:Z
    .end local v64           #saveNewReminder:Z
    .end local v66           #uri:Landroid/net/Uri;
    :cond_18
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 2766
    .restart local v8       #reminderMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v26       #hasReminder:Z
    .restart local v29       #i$:Ljava/util/Iterator;
    .restart local v66       #uri:Landroid/net/Uri;
    :cond_19
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 2793
    .restart local v64       #saveNewReminder:Z
    :cond_1a
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mRrule:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 2795
    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v1}, Lcom/htc/calendar/EditEvent;->addRecurrenceRule(Landroid/content/ContentValues;)V

    .line 2796
    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v1}, Lcom/htc/calendar/EditEvent;->checkTimeDependentFields(Landroid/content/ContentValues;)V

    .line 2797
    invoke-static/range {v66 .. v66}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    move-object/from16 v0, v67

    invoke-virtual {v9, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2799
    :cond_1b
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v68, "rrule"

    move-object/from16 v0, v68

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 2802
    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v1}, Lcom/htc/calendar/EditEvent;->addRecurrenceRule(Landroid/content/ContentValues;)V

    .line 2803
    const-string v9, "dtend"

    move-object/from16 v0, v67

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2804
    const-string v9, "EditEvent"

    const-string v68, "remove DTEND 2"

    move-object/from16 v0, v68

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2805
    invoke-static/range {v66 .. v66}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    move-object/from16 v0, v67

    invoke-virtual {v9, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2807
    :cond_1c
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/calendar/EditEvent;->mModification:I

    const/16 v68, 0x1

    move/from16 v0, v68

    if-ne v9, v0, :cond_28

    .line 2812
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mSyncAccountType:Ljava/lang/String;

    invoke-static {v9}, Lcom/htc/calendar/HtcUtils;->isHTCExchangeEvent(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_24

    .line 2813
    invoke-static/range {v66 .. v66}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v53

    .line 2814
    .local v53, parentID:J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/16 v68, 0x4

    move/from16 v0, v68

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-eqz v9, :cond_21

    const/16 v49, 0x1

    .line 2817
    .local v49, origAllDay:Z
    :goto_6
    const-string v9, "iCalGUID"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mEvent_Guid:Ljava/lang/String;

    move-object/from16 v68, v0

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2818
    const-string v9, "parentID"

    invoke-static/range {v53 .. v54}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v68

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2822
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mComposeTitle:Lcom/htc/calendar/widget/ComposeTitle;

    const/16 v68, 0x0

    move/from16 v0, v68

    invoke-virtual {v9, v0}, Lcom/htc/calendar/widget/ComposeTitle;->getAttendeesList(Z)Ljava/lang/String;

    move-result-object v39

    .line 2823
    .local v39, newAttendeesList:Ljava/lang/String;
    invoke-static/range {v39 .. v39}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1d

    .line 2824
    const-string v9, "hasAttendeeData"

    const/16 v68, 0x1

    invoke-static/range {v68 .. v68}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v68

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2827
    :cond_1d
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/16 v68, 0x11

    move/from16 v0, v68

    invoke-interface {v9, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v32

    .line 2829
    .local v32, isParentEvent:Z
    if-eqz v32, :cond_23

    .line 2830
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/EditEvent;->isTextPlain()Z

    move-result v9

    if-nez v9, :cond_1e

    .line 2831
    const-string v9, "desc_mime_type"

    const/16 v68, 0x1

    invoke-static/range {v68 .. v68}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v68

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2833
    :cond_1e
    const-string v9, "EditEvent"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "#### child >"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v68

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2834
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v25

    .line 2835
    sget-object v9, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    move-object/from16 v0, v67

    invoke-virtual {v9, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v15

    .line 2836
    .restart local v15       #b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v15}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2837
    const/16 v64, 0x1

    .line 2839
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/EditEvent;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .line 2840
    .local v11, _intent:Landroid/content/Intent;
    const-string v9, "beginTime"

    const-wide/16 v68, 0x0

    move-wide/from16 v0, v68

    invoke-virtual {v11, v9, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    .line 2842
    .local v16, begin:J
    new-instance v20, Landroid/text/format/Time;

    invoke-direct/range {v20 .. v20}, Landroid/text/format/Time;-><init>()V

    .line 2843
    .local v20, childTime:Landroid/text/format/Time;
    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 2844
    const/4 v9, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/text/format/Time;->normalize(Z)J

    .line 2845
    if-nez v49, :cond_1f

    .line 2846
    const-string v9, "UTC"

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 2849
    :cond_1f
    invoke-virtual/range {v20 .. v20}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v42

    .line 2850
    .local v42, newOneExDate:Ljava/lang/String;
    const-string v9, "EditEvent"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "===> "

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v68

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2851
    const-string v9, "Z"

    move-object/from16 v0, v42

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_20

    .line 2852
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v68, "Z"

    move-object/from16 v0, v68

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    .line 2855
    :cond_20
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mEvent_ExDate:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_22

    .line 2856
    move-object/from16 v0, v42

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/calendar/EditEvent;->mEvent_ExDate:Ljava/lang/String;

    .line 2862
    :goto_7
    new-instance v57, Landroid/content/ContentValues;

    invoke-direct/range {v57 .. v57}, Landroid/content/ContentValues;-><init>()V

    .line 2863
    .local v57, parentValues:Landroid/content/ContentValues;
    const-string v9, "dtstart"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/calendar/EditEvent;->mEvent_DtStart:J

    move-wide/from16 v68, v0

    invoke-static/range {v68 .. v69}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v68

    move-object/from16 v0, v57

    move-object/from16 v1, v68

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2864
    const-string v9, "dtend"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/calendar/EditEvent;->mEvent_DtEnd:J

    move-wide/from16 v68, v0

    invoke-static/range {v68 .. v69}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v68

    move-object/from16 v0, v57

    move-object/from16 v1, v68

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2865
    const-string v9, "rrule"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mEvent_RRULE:Ljava/lang/String;

    move-object/from16 v68, v0

    move-object/from16 v0, v57

    move-object/from16 v1, v68

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2866
    const-string v9, "exdate"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mEvent_ExDate:Ljava/lang/String;

    move-object/from16 v68, v0

    move-object/from16 v0, v57

    move-object/from16 v1, v68

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2867
    sget-object v9, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v53

    invoke-static {v9, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v66

    .line 2868
    const-string v9, "EditEvent"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "#### >"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v68

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2869
    const-string v9, "EditEvent"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "#### parent >"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v68

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2871
    invoke-static/range {v66 .. v66}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    move-object/from16 v0, v57

    invoke-virtual {v9, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2901
    .end local v11           #_intent:Landroid/content/Intent;
    .end local v15           #b:Landroid/content/ContentProviderOperation$Builder;
    .end local v16           #begin:J
    .end local v20           #childTime:Landroid/text/format/Time;
    .end local v32           #isParentEvent:Z
    .end local v39           #newAttendeesList:Ljava/lang/String;
    .end local v42           #newOneExDate:Ljava/lang/String;
    .end local v49           #origAllDay:Z
    .end local v53           #parentID:J
    .end local v57           #parentValues:Landroid/content/ContentValues;
    :goto_8
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 2814
    .restart local v53       #parentID:J
    :cond_21
    const/16 v49, 0x0

    goto/16 :goto_6

    .line 2858
    .restart local v11       #_intent:Landroid/content/Intent;
    .restart local v15       #b:Landroid/content/ContentProviderOperation$Builder;
    .restart local v16       #begin:J
    .restart local v20       #childTime:Landroid/text/format/Time;
    .restart local v32       #isParentEvent:Z
    .restart local v39       #newAttendeesList:Ljava/lang/String;
    .restart local v42       #newOneExDate:Ljava/lang/String;
    .restart local v49       #origAllDay:Z
    :cond_22
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mEvent_ExDate:Ljava/lang/String;

    move-object/from16 v68, v0

    move-object/from16 v0, v68

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v68, ","

    move-object/from16 v0, v68

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v42

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/htc/calendar/EditEvent;->mEvent_ExDate:Ljava/lang/String;

    goto/16 :goto_7

    .line 2873
    .end local v11           #_intent:Landroid/content/Intent;
    .end local v15           #b:Landroid/content/ContentProviderOperation$Builder;
    .end local v16           #begin:J
    .end local v20           #childTime:Landroid/text/format/Time;
    .end local v42           #newOneExDate:Ljava/lang/String;
    :cond_23
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/16 v68, 0x11

    move/from16 v0, v68

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v55

    .line 2874
    .local v55, parentId:J
    const-string v9, "parentID"

    move-object/from16 v0, v67

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2875
    const-string v9, "parentID"

    invoke-static/range {v55 .. v56}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v68

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2876
    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v1}, Lcom/htc/calendar/EditEvent;->checkTimeDependentFields(Landroid/content/ContentValues;)V

    .line 2877
    invoke-static/range {v66 .. v66}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    move-object/from16 v0, v67

    invoke-virtual {v9, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 2882
    .end local v32           #isParentEvent:Z
    .end local v39           #newAttendeesList:Ljava/lang/String;
    .end local v49           #origAllDay:Z
    .end local v53           #parentID:J
    .end local v55           #parentId:J
    :cond_24
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/calendar/EditEvent;->mCalendarId:J

    move-wide/from16 v68, v0

    const-wide/16 v70, 0x1

    cmp-long v9, v68, v70

    if-nez v9, :cond_25

    .line 2883
    const-string v9, "EditEvent"

    const-string v68, "This case can\'t happen!!!"

    move-object/from16 v0, v68

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 2889
    :cond_25
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v68, "beginTime"

    move-object/from16 v0, v68

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 2890
    .restart local v16       #begin:J
    const-string v9, "original_sync_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object/from16 v68, v0

    const/16 v69, 0xb

    invoke-interface/range {v68 .. v69}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2891
    const-string v9, "originalInstanceTime"

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v68

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2892
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v68, "allDay"

    move-object/from16 v0, v68

    invoke-virtual {v9, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz v9, :cond_26

    const/4 v12, 0x1

    .line 2893
    .local v12, allDay:Z
    :goto_9
    const-string v68, "originalAllDay"

    if-eqz v12, :cond_27

    const/4 v9, 0x1

    :goto_a
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2895
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v25

    .line 2896
    sget-object v9, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    move-object/from16 v0, v67

    invoke-virtual {v9, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v15

    .line 2897
    .restart local v15       #b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v15}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    .line 2892
    .end local v12           #allDay:Z
    .end local v15           #b:Landroid/content/ContentProviderOperation$Builder;
    :cond_26
    const/4 v12, 0x0

    goto :goto_9

    .line 2893
    .restart local v12       #allDay:Z
    :cond_27
    const/4 v9, 0x0

    goto :goto_a

    .line 2903
    .end local v12           #allDay:Z
    .end local v16           #begin:J
    :cond_28
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/calendar/EditEvent;->mModification:I

    const/16 v68, 0x3

    move/from16 v0, v68

    if-ne v9, v0, :cond_2c

    .line 2905
    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v1}, Lcom/htc/calendar/EditEvent;->addRecurrenceRule(Landroid/content/ContentValues;)V

    .line 2907
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mRrule:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2a

    .line 2912
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/EditEvent;->isFirstEventInSeries()Z

    move-result v9

    if-eqz v9, :cond_29

    .line 2913
    invoke-static/range {v66 .. v66}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2919
    :goto_b
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v25

    .line 2920
    sget-object v9, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    move-object/from16 v0, v67

    invoke-virtual {v9, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2946
    :goto_c
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 2917
    :cond_29
    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v5, v1}, Lcom/htc/calendar/EditEvent;->updatePastEvents(Ljava/util/ArrayList;Landroid/net/Uri;)V

    goto :goto_b

    .line 2924
    :cond_2a
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/EditEvent;->isFirstEventInSeries()Z

    move-result v31

    .line 2925
    .local v31, isFirstEvent:Z
    const-string v9, "EditEvent"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "isFirstEvent: "

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, v68

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v68

    const-string v69, " uri:"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v68

    const-string v69, " values: "

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v67 .. v67}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v68

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2926
    if-eqz v31, :cond_2b

    .line 2928
    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v1}, Lcom/htc/calendar/EditEvent;->checkTimeDependentFields(Landroid/content/ContentValues;)V

    .line 2929
    const-string v9, "dtend"

    move-object/from16 v0, v67

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2930
    const-string v9, "EditEvent"

    const-string v68, "remove DTEND 3"

    move-object/from16 v0, v68

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2931
    invoke-static/range {v66 .. v66}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    move-object/from16 v0, v67

    invoke-virtual {v9, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v15

    .line 2932
    .restart local v15       #b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v15}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 2936
    .end local v15           #b:Landroid/content/ContentProviderOperation$Builder;
    :cond_2b
    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v5, v1}, Lcom/htc/calendar/EditEvent;->updatePastEvents(Ljava/util/ArrayList;Landroid/net/Uri;)V

    .line 2939
    const-string v9, "dtend"

    move-object/from16 v0, v67

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 2940
    const-string v9, "EditEvent"

    const-string v68, "remove DTEND 4"

    move-object/from16 v0, v68

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2941
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v25

    .line 2942
    sget-object v9, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    move-object/from16 v0, v67

    invoke-virtual {v9, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 2948
    .end local v31           #isFirstEvent:Z
    :cond_2c
    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/calendar/EditEvent;->mModification:I

    const/16 v68, 0x2

    move/from16 v0, v68

    if-ne v9, v0, :cond_c

    .line 2953
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mSyncAccountType:Ljava/lang/String;

    invoke-static {v9}, Lcom/htc/calendar/HtcUtils;->isHTCExchangeEvent(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_38

    .line 2954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object/from16 v61, v0

    .line 2955
    .local v61, rootCursor:Landroid/database/Cursor;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v21

    .line 2958
    .restart local v21       #cr:Landroid/content/ContentResolver;
    const-string v9, "EditEvent"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "mParentID: "

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/calendar/EditEvent;->mParentID:J

    move-wide/from16 v69, v0

    invoke-virtual/range {v68 .. v70}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v68

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2959
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/calendar/EditEvent;->mParentID:J

    move-wide/from16 v68, v0

    const-wide/16 v70, 0x0

    cmp-long v9, v68, v70

    if-lez v9, :cond_2d

    .line 2960
    sget-object v9, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/calendar/EditEvent;->mParentID:J

    move-wide/from16 v68, v0

    move-wide/from16 v0, v68

    invoke-static {v9, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v62

    .line 2962
    .local v62, rootUri:Landroid/net/Uri;
    sget-object v9, Lcom/htc/calendar/EditEvent;->EVENT_PROJECTION:[Ljava/lang/String;

    const/16 v68, 0x0

    const/16 v69, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    move-object/from16 v2, v68

    move-object/from16 v3, v69

    invoke-virtual {v0, v1, v9, v2, v3}, Lcom/htc/calendar/EditEvent;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v61

    .line 2965
    .end local v62           #rootUri:Landroid/net/Uri;
    :cond_2d
    invoke-interface/range {v61 .. v61}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2966
    const/4 v9, 0x7

    move-object/from16 v0, v61

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v47

    .line 2968
    .local v47, oldStart:J
    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v1}, Lcom/htc/calendar/EditEvent;->addRecurrenceRule(Landroid/content/ContentValues;)V

    .line 2970
    const-string v9, "rrule"

    move-object/from16 v0, v67

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    .line 2971
    .local v43, newRule:Ljava/lang/String;
    const-string v9, "rrule"

    move-object/from16 v0, v61

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v63

    .line 2972
    .local v63, ruleIdx:I
    move-object/from16 v0, v61

    move/from16 v1, v63

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v46

    .line 2974
    .local v46, oldRule:Ljava/lang/String;
    const-string v9, "EditEvent"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "newRule:"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v68

    invoke-static {v9, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2975
    const-string v9, "EditEvent"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "oldRule:"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v68

    invoke-static {v9, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2977
    const/16 v37, 0x0

    .line 2978
    .local v37, needToReset:Z
    invoke-static/range {v46 .. v46}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2e

    .line 2979
    move-object/from16 v0, v46

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2e

    const-string v9, "exdate"

    move-object/from16 v0, v67

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2e

    .line 2980
    const/16 v37, 0x1

    .line 2984
    :cond_2e
    const-string v9, "EditEvent"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "needToReset:"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, v68

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v68

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2986
    const/16 v33, 0x0

    .line 2987
    .local v33, mTime:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/htc/calendar/EditEvent;->mAllDay:Z

    if-eqz v9, :cond_32

    .line 2988
    new-instance v33, Landroid/text/format/Time;

    .end local v33           #mTime:Landroid/text/format/Time;
    const-string v9, "UTC"

    move-object/from16 v0, v33

    invoke-direct {v0, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2990
    .restart local v33       #mTime:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget-object v9, v9, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    const-string v68, "UTC"

    move-object/from16 v0, v68

    invoke-static {v9, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2f

    .line 2991
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const-string v68, "UTC"

    move-object/from16 v0, v68

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 2992
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/16 v68, 0x0

    move/from16 v0, v68

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 3003
    :cond_2f
    :goto_d
    if-eqz v37, :cond_33

    .line 3004
    const-string v9, "exdate"

    move-object/from16 v0, v67

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_30

    .line 3005
    const-string v9, "exdate"

    move-object/from16 v0, v67

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3008
    :cond_30
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 3020
    :goto_e
    const-string v9, "dtstart"

    const/16 v68, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v68

    invoke-static/range {v68 .. v69}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v68

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3023
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iget v9, v9, Landroid/text/format/Time;->hour:I

    move-object/from16 v0, v33

    iput v9, v0, Landroid/text/format/Time;->hour:I

    .line 3024
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iget v9, v9, Landroid/text/format/Time;->minute:I

    move-object/from16 v0, v33

    iput v9, v0, Landroid/text/format/Time;->minute:I

    .line 3025
    const/4 v9, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Landroid/text/format/Time;->normalize(Z)J

    .line 3026
    const-string v9, "dtend"

    const/16 v68, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v68

    invoke-static/range {v68 .. v69}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v68

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3029
    const-string v9, "hasAttendeeData"

    const/16 v68, 0x1

    invoke-static/range {v68 .. v68}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v68

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3032
    const-string v68, "hasAlarm"

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mOriginalMinutes:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_34

    const/4 v9, 0x1

    :goto_f
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3033
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/EditEvent;->isTextPlain()Z

    move-result v9

    if-nez v9, :cond_31

    .line 3034
    const-string v9, "desc_mime_type"

    const/16 v68, 0x1

    invoke-static/range {v68 .. v68}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v68

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3037
    :cond_31
    sget-object v9, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v21

    move-object/from16 v1, v67

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v41

    .line 3038
    .local v41, newInsertUri:Landroid/net/Uri;
    invoke-static/range {v41 .. v41}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v44

    .line 3039
    .local v44, new_eventId:J
    const-string v9, "EditEvent"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "new_eventId: "

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, v68

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v68

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3041
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v66

    invoke-direct {v0, v1, v2}, Lcom/htc/calendar/EditEvent;->updateRecurrenceUntil(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 3044
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/calendar/EditEvent;->mParentID:J

    move-wide/from16 v68, v0

    const-wide/16 v70, -0x1

    cmp-long v9, v68, v70

    if-nez v9, :cond_37

    .line 3047
    invoke-static/range {v66 .. v66}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 3048
    .restart local v6       #eventId:J
    const-string v9, "EditEvent"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "root event id:"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, v68

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v68

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3049
    move-object/from16 v0, p0

    move-wide/from16 v1, v44

    invoke-direct {v0, v6, v7, v1, v2}, Lcom/htc/calendar/EditEvent;->updateAttendee(JJ)V

    .line 3050
    move-object/from16 v0, p0

    move-wide/from16 v1, v44

    invoke-direct {v0, v6, v7, v1, v2}, Lcom/htc/calendar/EditEvent;->updateReminder(JJ)V

    .line 3052
    if-eqz v37, :cond_35

    .line 3054
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mDeleteEventHelper:Lcom/htc/calendar/DeleteEventHelper;

    const/16 v68, 0x0

    move/from16 v0, v68

    invoke-virtual {v9, v6, v7, v0}, Lcom/htc/calendar/DeleteEventHelper;->deleteExchangeEvent(JZ)V

    .line 3072
    .end local v6           #eventId:J
    :goto_10
    move-object/from16 v66, v41

    .line 3073
    const/4 v10, 0x1

    .line 3074
    goto/16 :goto_2

    .line 2995
    .end local v41           #newInsertUri:Landroid/net/Uri;
    .end local v44           #new_eventId:J
    :cond_32
    new-instance v33, Landroid/text/format/Time;

    .end local v33           #mTime:Landroid/text/format/Time;
    invoke-direct/range {v33 .. v33}, Landroid/text/format/Time;-><init>()V

    .line 2997
    .restart local v33       #mTime:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget-object v9, v9, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    const-string v68, "UTC"

    move-object/from16 v0, v68

    invoke-static {v9, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2f

    .line 2998
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v68

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 2999
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/16 v68, 0x0

    move/from16 v0, v68

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->normalize(Z)J

    goto/16 :goto_d

    .line 3015
    :cond_33
    move-object/from16 v0, v33

    move-wide/from16 v1, v47

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 3016
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget v9, v9, Landroid/text/format/Time;->hour:I

    move-object/from16 v0, v33

    iput v9, v0, Landroid/text/format/Time;->hour:I

    .line 3017
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget v9, v9, Landroid/text/format/Time;->minute:I

    move-object/from16 v0, v33

    iput v9, v0, Landroid/text/format/Time;->minute:I

    .line 3018
    const/4 v9, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v9}, Landroid/text/format/Time;->normalize(Z)J

    goto/16 :goto_e

    .line 3032
    :cond_34
    const/4 v9, 0x0

    goto/16 :goto_f

    .line 3056
    .restart local v6       #eventId:J
    .restart local v41       #newInsertUri:Landroid/net/Uri;
    .restart local v44       #new_eventId:J
    :cond_35
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mEvent_ExDate:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_36

    .line 3057
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mDeleteEventHelper:Lcom/htc/calendar/DeleteEventHelper;

    const/16 v68, 0x1

    move/from16 v0, v68

    invoke-virtual {v9, v6, v7, v0}, Lcom/htc/calendar/DeleteEventHelper;->deleteExchangeEvent(JZ)V

    .line 3059
    move-object/from16 v0, p0

    move-wide/from16 v1, v44

    invoke-direct {v0, v6, v7, v1, v2}, Lcom/htc/calendar/EditEvent;->updateChildParentID(JJ)V

    goto :goto_10

    .line 3061
    :cond_36
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mDeleteEventHelper:Lcom/htc/calendar/DeleteEventHelper;

    const/16 v68, 0x0

    move/from16 v0, v68

    invoke-virtual {v9, v6, v7, v0}, Lcom/htc/calendar/DeleteEventHelper;->deleteExchangeEvent(JZ)V

    goto/16 :goto_10

    .line 3066
    .end local v6           #eventId:J
    :cond_37
    const-string v9, "EditEvent"

    new-instance v68, Ljava/lang/StringBuilder;

    invoke-direct/range {v68 .. v68}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "child\'s parent id:"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v68

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/calendar/EditEvent;->mParentID:J

    move-wide/from16 v69, v0

    invoke-virtual/range {v68 .. v70}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v68

    invoke-static {v9, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3067
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/calendar/EditEvent;->mParentID:J

    move-wide/from16 v68, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v68

    move-wide/from16 v3, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/calendar/EditEvent;->updateAttendee(JJ)V

    .line 3068
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/calendar/EditEvent;->mParentID:J

    move-wide/from16 v68, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v68

    move-wide/from16 v3, v44

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/htc/calendar/EditEvent;->updateReminder(JJ)V

    .line 3069
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mDeleteEventHelper:Lcom/htc/calendar/DeleteEventHelper;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/calendar/EditEvent;->mParentID:J

    move-wide/from16 v68, v0

    const/16 v70, 0x0

    move-wide/from16 v0, v68

    move/from16 v2, v70

    invoke-virtual {v9, v0, v1, v2}, Lcom/htc/calendar/DeleteEventHelper;->deleteExchangeEvent(JZ)V

    goto/16 :goto_10

    .line 3079
    .end local v21           #cr:Landroid/content/ContentResolver;
    .end local v33           #mTime:Landroid/text/format/Time;
    .end local v37           #needToReset:Z
    .end local v41           #newInsertUri:Landroid/net/Uri;
    .end local v43           #newRule:Ljava/lang/String;
    .end local v44           #new_eventId:J
    .end local v46           #oldRule:Ljava/lang/String;
    .end local v47           #oldStart:J
    .end local v61           #rootCursor:Landroid/database/Cursor;
    .end local v63           #ruleIdx:I
    :cond_38
    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v1}, Lcom/htc/calendar/EditEvent;->addRecurrenceRule(Landroid/content/ContentValues;)V

    .line 3081
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mRrule:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3a

    .line 3085
    invoke-static/range {v66 .. v66}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3087
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v25

    .line 3089
    const-string v9, "hasAttendeeData"

    move-object/from16 v0, v67

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_39

    .line 3090
    const-string v9, "hasAttendeeData"

    const/16 v68, 0x1

    invoke-static/range {v68 .. v68}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v68

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3092
    :cond_39
    sget-object v9, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    move-object/from16 v0, v67

    invoke-virtual {v9, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3094
    const/4 v10, 0x1

    goto/16 :goto_2

    .line 3096
    :cond_3a
    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v1}, Lcom/htc/calendar/EditEvent;->checkTimeDependentFields(Landroid/content/ContentValues;)V

    .line 3097
    const-string v9, "dtend"

    move-object/from16 v0, v67

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3098
    const-string v9, "EditEvent"

    const-string v68, "remove DTEND 5"

    move-object/from16 v0, v68

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3099
    invoke-static/range {v66 .. v66}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    move-object/from16 v0, v67

    invoke-virtual {v9, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3106
    :cond_3b
    const/16 v40, 0x0

    goto/16 :goto_3

    .line 3113
    .restart local v40       #newEvent:Z
    :cond_3c
    if-eqz v66, :cond_e

    .line 3114
    invoke-static/range {v66 .. v66}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 3115
    .restart local v6       #eventId:J
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mOriginalMinutes:Ljava/util/ArrayList;

    invoke-static/range {v5 .. v10}, Lcom/htc/calendar/EditEvent;->saveReminders(Ljava/util/ArrayList;JLjava/util/ArrayList;Ljava/util/ArrayList;Z)Z

    goto/16 :goto_4

    .line 3194
    .end local v6           #eventId:J
    .restart local v34       #mailList:Ljava/lang/String;
    .restart local v35       #mailListTmp:Ljava/lang/String;
    :cond_3d
    const-wide/16 v6, -0x1

    goto/16 :goto_5

    .line 3202
    .restart local v6       #eventId:J
    :cond_3e
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/htc/calendar/EditEvent;->getSourceIdFromList(Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v38

    .line 3205
    .local v38, newAttendees:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Landroid/text/util/Rfc822Token;>;"
    invoke-virtual/range {v38 .. v38}, Ljava/util/LinkedHashSet;->size()I

    move-result v9

    if-lez v9, :cond_16

    .line 3207
    invoke-virtual/range {v38 .. v38}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :goto_11
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/text/util/Rfc822Token;

    .line 3208
    .local v14, attendee:Landroid/text/util/Rfc822Token;
    invoke-virtual/range {v67 .. v67}, Landroid/content/ContentValues;->clear()V

    .line 3209
    const-string v9, "attendeeName"

    invoke-virtual {v14}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3210
    const-string v9, "attendeeEmail"

    invoke-virtual {v14}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3211
    const-string v9, "attendeeRelationship"

    const/16 v68, 0x1

    invoke-static/range {v68 .. v68}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v68

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3212
    const-string v9, "attendeeType"

    const/16 v68, 0x0

    invoke-static/range {v68 .. v68}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v68

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3213
    const-string v9, "attendeeStatus"

    const/16 v68, 0x0

    invoke-static/range {v68 .. v68}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v68

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3215
    if-eqz v40, :cond_3f

    .line 3216
    sget-object v9, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    move-object/from16 v0, v67

    invoke-virtual {v9, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v15

    .line 3218
    .restart local v15       #b:Landroid/content/ContentProviderOperation$Builder;
    const-string v9, "event_id"

    move/from16 v0, v25

    invoke-virtual {v15, v9, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 3224
    :goto_12
    invoke-virtual {v15}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 3220
    .end local v15           #b:Landroid/content/ContentProviderOperation$Builder;
    :cond_3f
    const-string v9, "event_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v68

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3221
    sget-object v9, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    move-object/from16 v0, v67

    invoke-virtual {v9, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v15

    .restart local v15       #b:Landroid/content/ContentProviderOperation$Builder;
    goto :goto_12

    .line 3230
    .end local v6           #eventId:J
    .end local v14           #attendee:Landroid/text/util/Rfc822Token;
    .end local v15           #b:Landroid/content/ContentProviderOperation$Builder;
    .end local v38           #newAttendees:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Landroid/text/util/Rfc822Token;>;"
    :cond_40
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/htc/calendar/EditEvent;->getAddressesFromList(Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v38

    .line 3235
    .restart local v38       #newAttendees:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Landroid/text/util/Rfc822Token;>;"
    if-eqz v66, :cond_42

    invoke-static/range {v66 .. v66}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    .line 3240
    .restart local v6       #eventId:J
    :goto_13
    if-nez v40, :cond_47

    .line 3241
    new-instance v60, Ljava/util/HashSet;

    invoke-direct/range {v60 .. v60}, Ljava/util/HashSet;-><init>()V

    .line 3242
    .local v60, removedAttendees:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/text/util/Rfc822Token;>;"
    new-instance v51, Ljava/util/HashSet;

    invoke-direct/range {v51 .. v51}, Ljava/util/HashSet;-><init>()V

    .line 3243
    .local v51, originalAttendees:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/text/util/Rfc822Token;>;"
    const-string v65, ""

    .line 3244
    .local v65, tmpEmail:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mOriginalAttendees:Ljava/lang/String;

    move-object/from16 v0, v51

    invoke-static {v9, v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V

    .line 3245
    invoke-virtual/range {v51 .. v51}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :cond_41
    :goto_14
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_44

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Landroid/text/util/Rfc822Token;

    .line 3246
    .local v50, originalAttendee:Landroid/text/util/Rfc822Token;
    invoke-virtual/range {v50 .. v50}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v65

    .line 3247
    move-object/from16 v0, v38

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_43

    .line 3250
    move-object/from16 v0, v38

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_14

    .line 3235
    .end local v6           #eventId:J
    .end local v50           #originalAttendee:Landroid/text/util/Rfc822Token;
    .end local v51           #originalAttendees:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/text/util/Rfc822Token;>;"
    .end local v60           #removedAttendees:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/text/util/Rfc822Token;>;"
    .end local v65           #tmpEmail:Ljava/lang/String;
    :cond_42
    const-wide/16 v6, -0x1

    goto :goto_13

    .line 3252
    .restart local v6       #eventId:J
    .restart local v50       #originalAttendee:Landroid/text/util/Rfc822Token;
    .restart local v51       #originalAttendees:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/text/util/Rfc822Token;>;"
    .restart local v60       #removedAttendees:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/text/util/Rfc822Token;>;"
    .restart local v65       #tmpEmail:Ljava/lang/String;
    :cond_43
    invoke-static/range {v65 .. v65}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_41

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/htc/calendar/EditEvent;->mOwnerAccount:Ljava/lang/String;

    move-object/from16 v0, v65

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_41

    .line 3254
    move-object/from16 v0, v60

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 3260
    .end local v50           #originalAttendee:Landroid/text/util/Rfc822Token;
    :cond_44
    sget-object v9, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v15

    .line 3262
    .restart local v15       #b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual/range {v60 .. v60}, Ljava/util/HashSet;->size()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    new-array v13, v9, [Ljava/lang/String;

    .line 3263
    .local v13, args:[Ljava/lang/String;
    const/4 v9, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v68

    aput-object v68, v13, v9

    .line 3264
    const/16 v27, 0x1

    .line 3265
    .local v27, i:I
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v9, "event_id=? AND attendeeEmail IN ("

    move-object/from16 v0, v23

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3266
    .local v23, deleteWhere:Ljava/lang/StringBuilder;
    invoke-virtual/range {v60 .. v60}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :goto_15
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_46

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Landroid/text/util/Rfc822Token;

    .line 3267
    .local v59, removedAttendee:Landroid/text/util/Rfc822Token;
    const/4 v9, 0x1

    move/from16 v0, v27

    if-le v0, v9, :cond_45

    .line 3268
    const-string v9, ","

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3270
    :cond_45
    const-string v9, "?"

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3271
    add-int/lit8 v28, v27, 0x1

    .end local v27           #i:I
    .local v28, i:I
    invoke-virtual/range {v59 .. v59}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v13, v27

    move/from16 v27, v28

    .end local v28           #i:I
    .restart local v27       #i:I
    goto :goto_15

    .line 3273
    .end local v59           #removedAttendee:Landroid/text/util/Rfc822Token;
    :cond_46
    const-string v9, ")"

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3274
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9, v13}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 3275
    invoke-virtual {v15}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3278
    .end local v13           #args:[Ljava/lang/String;
    .end local v15           #b:Landroid/content/ContentProviderOperation$Builder;
    .end local v23           #deleteWhere:Ljava/lang/StringBuilder;
    .end local v27           #i:I
    .end local v51           #originalAttendees:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/text/util/Rfc822Token;>;"
    .end local v60           #removedAttendees:Ljava/util/HashSet;,"Ljava/util/HashSet<Landroid/text/util/Rfc822Token;>;"
    .end local v65           #tmpEmail:Ljava/lang/String;
    :cond_47
    invoke-virtual/range {v38 .. v38}, Ljava/util/LinkedHashSet;->size()I

    move-result v9

    if-lez v9, :cond_16

    .line 3280
    invoke-virtual/range {v38 .. v38}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :goto_16
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_16

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/text/util/Rfc822Token;

    .line 3281
    .restart local v14       #attendee:Landroid/text/util/Rfc822Token;
    invoke-virtual/range {v67 .. v67}, Landroid/content/ContentValues;->clear()V

    .line 3282
    const-string v9, "attendeeName"

    invoke-virtual {v14}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3283
    const-string v9, "attendeeEmail"

    invoke-virtual {v14}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3284
    const-string v9, "attendeeRelationship"

    const/16 v68, 0x1

    invoke-static/range {v68 .. v68}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v68

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3285
    const-string v9, "attendeeType"

    const/16 v68, 0x0

    invoke-static/range {v68 .. v68}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v68

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3286
    const-string v9, "attendeeStatus"

    const/16 v68, 0x0

    invoke-static/range {v68 .. v68}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v68

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3288
    if-eqz v40, :cond_48

    .line 3289
    sget-object v9, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    move-object/from16 v0, v67

    invoke-virtual {v9, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v15

    .line 3291
    .restart local v15       #b:Landroid/content/ContentProviderOperation$Builder;
    const-string v9, "event_id"

    move/from16 v0, v25

    invoke-virtual {v15, v9, v0}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 3297
    :goto_17
    invoke-virtual {v15}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 3293
    .end local v15           #b:Landroid/content/ContentProviderOperation$Builder;
    :cond_48
    const-string v9, "event_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v68

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    invoke-virtual {v0, v9, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3294
    sget-object v9, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v9}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    move-object/from16 v0, v67

    invoke-virtual {v9, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v15

    .restart local v15       #b:Landroid/content/ContentProviderOperation$Builder;
    goto :goto_17
.end method

.method private equalsInteger(ILandroid/content/ContentValues;Ljava/lang/String;)Z
    .locals 5
    .parameter "origInteger"
    .parameter "cvs"
    .parameter "key"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 5489
    if-eqz p2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v1, v2

    .line 5498
    :cond_1
    :goto_0
    return v1

    .line 5493
    :cond_2
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5494
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5495
    .local v0, newInteger:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " <==> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/htc/calendar/EditEvent;->debug(Ljava/lang/String;)V

    .line 5496
    if-eq p1, v0, :cond_1

    move v1, v2

    goto :goto_0
.end method

.method private equalsLong(JLandroid/content/ContentValues;Ljava/lang/String;)Z
    .locals 6
    .parameter "origLong"
    .parameter "cvs"
    .parameter "key"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 5503
    if-eqz p3, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move v2, v3

    .line 5512
    :cond_1
    :goto_0
    return v2

    .line 5507
    :cond_2
    invoke-virtual {p3, p4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5508
    invoke-virtual {p3, p4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 5509
    .local v0, newLong:J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " <==> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/htc/calendar/EditEvent;->debug(Ljava/lang/String;)V

    .line 5510
    cmp-long v4, p1, v0

    if-eqz v4, :cond_1

    move v2, v3

    goto :goto_0
.end method

.method private equalsString(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Z
    .locals 4
    .parameter "origStr"
    .parameter "cvs"
    .parameter "key"

    .prologue
    const/4 v1, 0x0

    .line 5466
    if-eqz p2, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5484
    :cond_0
    :goto_0
    return v1

    .line 5470
    :cond_1
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5471
    invoke-virtual {p2, p3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5472
    .local v0, newStr:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/calendar/EditEvent;->debug(Ljava/lang/String;)V

    .line 5473
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    .line 5475
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5478
    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 5479
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 5481
    :cond_5
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0

    .line 5484
    .end local v0           #newStr:Ljava/lang/String;
    :cond_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0
.end method

.method private eventChanged(Landroid/database/Cursor;Landroid/content/ContentValues;)Z
    .locals 28
    .parameter "cursor"
    .parameter "values"

    .prologue
    .line 5521
    if-nez p1, :cond_0

    .line 5522
    const/16 v26, 0x1

    .line 5670
    :goto_0
    return v26

    .line 5524
    :cond_0
    const/16 v26, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 5525
    .local v25, title:Ljava/lang/String;
    const/16 v26, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 5526
    .local v8, description:Ljava/lang/String;
    const/16 v26, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 5527
    .local v15, location:Ljava/lang/String;
    const/16 v26, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 5528
    .local v24, timezone:Ljava/lang/String;
    const/16 v26, 0xe

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 5529
    .local v20, ownerAccount:Ljava/lang/String;
    const/16 v26, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 5531
    .local v5, allDay:I
    const/16 v26, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 5532
    .local v11, dtStart:J
    const/16 v26, 0x13

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 5534
    .local v9, dtEnd:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/EditEvent;->mSelectedRepeatItem:I

    move/from16 v22, v0

    .line 5538
    .local v22, repeatItemIndex:I
    const-string v26, "title"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, p2

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/calendar/EditEvent;->equalsString(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_1

    .line 5539
    const-string v26, "Title changed"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/htc/calendar/EditEvent;->debug(Ljava/lang/String;)V

    .line 5540
    const/16 v26, 0x1

    goto :goto_0

    .line 5544
    :cond_1
    const-string v26, "description"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v26

    invoke-direct {v0, v8, v1, v2}, Lcom/htc/calendar/EditEvent;->equalsString(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_2

    .line 5545
    const-string v26, "Description changed"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/htc/calendar/EditEvent;->debug(Ljava/lang/String;)V

    .line 5546
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 5550
    :cond_2
    const-string v26, "eventLocation"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v26

    invoke-direct {v0, v15, v1, v2}, Lcom/htc/calendar/EditEvent;->equalsString(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_3

    .line 5551
    const-string v26, "Location changed"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/htc/calendar/EditEvent;->debug(Ljava/lang/String;)V

    .line 5552
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 5556
    :cond_3
    const-string v26, "eventTimezone"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p2

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/calendar/EditEvent;->equalsString(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_4

    .line 5557
    const-string v26, "Timezone changed"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/htc/calendar/EditEvent;->debug(Ljava/lang/String;)V

    .line 5558
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 5562
    :cond_4
    const-string v26, "allDay"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v26

    invoke-direct {v0, v5, v1, v2}, Lcom/htc/calendar/EditEvent;->equalsInteger(ILandroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_5

    .line 5563
    const-string v26, "All day changed"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/htc/calendar/EditEvent;->debug(Ljava/lang/String;)V

    .line 5564
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 5568
    :cond_5
    const-string v26, "dtstart"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v26

    invoke-direct {v0, v11, v12, v1, v2}, Lcom/htc/calendar/EditEvent;->equalsLong(JLandroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_6

    .line 5569
    const-string v26, "DTStart changed"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/htc/calendar/EditEvent;->debug(Ljava/lang/String;)V

    .line 5570
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 5574
    :cond_6
    const-string v26, "dtend"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v26

    invoke-direct {v0, v9, v10, v1, v2}, Lcom/htc/calendar/EditEvent;->equalsLong(JLandroid/content/ContentValues;Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_7

    .line 5575
    const-string v26, "DTEnd changed"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/htc/calendar/EditEvent;->debug(Ljava/lang/String;)V

    .line 5576
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 5581
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/EditEvent;->miPosition:I

    move/from16 v26, v0

    move/from16 v0, v22

    move/from16 v1, v26

    if-eq v0, v1, :cond_8

    .line 5582
    const-string v26, "Repetition changed"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/htc/calendar/EditEvent;->debug(Ljava/lang/String;)V

    .line 5583
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 5587
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-static/range {v26 .. v27}, Lcom/htc/calendar/EditEvent;->reminderItemsToMinutes(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v21

    .line 5588
    .local v21, reminderMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mOriginalMinutes:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_a

    .line 5589
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_b

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 5590
    .local v4, II:Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mOriginalMinutes:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_9

    .line 5591
    const-string v26, "Reminder changed (not contains)"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/htc/calendar/EditEvent;->debug(Ljava/lang/String;)V

    .line 5592
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 5596
    .end local v4           #II:Ljava/lang/Integer;
    .end local v14           #i$:Ljava/util/Iterator;
    :cond_a
    const-string v26, "Reminder changed"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/htc/calendar/EditEvent;->debug(Ljava/lang/String;)V

    .line 5597
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 5601
    .restart local v14       #i$:Ljava/util/Iterator;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mComposeTitle:Lcom/htc/calendar/widget/ComposeTitle;

    move-object/from16 v26, v0

    if-eqz v26, :cond_16

    .line 5602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mComposeTitle:Lcom/htc/calendar/widget/ComposeTitle;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Lcom/htc/calendar/widget/ComposeTitle;->getAttendeesList(Z)Ljava/lang/String;

    move-result-object v23

    .line 5603
    .local v23, strNewAttendees:Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "mOriginalAttendees: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mOriginalAttendees:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/htc/calendar/EditEvent;->debug(Ljava/lang/String;)V

    .line 5604
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "strNewAttendees: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/htc/calendar/EditEvent;->debug(Ljava/lang/String;)V

    .line 5612
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mOriginalAttendees:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_c

    .line 5613
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 5614
    :cond_c
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mOriginalAttendees:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_d

    .line 5615
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 5616
    :cond_d
    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-eqz v26, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mOriginalAttendees:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_e

    .line 5617
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 5619
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/htc/calendar/EditEvent;->getAddressesFromList(Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v17

    .line 5620
    .local v17, newAttendees:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Landroid/text/util/Rfc822Token;>;"
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "ownerAccount: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/htc/calendar/EditEvent;->debug(Ljava/lang/String;)V

    .line 5623
    const/4 v6, 0x0

    .line 5624
    .local v6, attendeesAdd:Z
    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_f
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_10

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/text/util/Rfc822Token;

    .line 5625
    .local v16, newAttendee:Landroid/text/util/Rfc822Token;
    invoke-virtual/range {v16 .. v16}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v13

    .line 5626
    .local v13, email:Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "new attendee: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/htc/calendar/EditEvent;->debug(Ljava/lang/String;)V

    .line 5627
    if-eqz v6, :cond_14

    .line 5643
    .end local v13           #email:Ljava/lang/String;
    .end local v16           #newAttendee:Landroid/text/util/Rfc822Token;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mOriginalAttendees:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/htc/calendar/EditEvent;->getAddressesFromList(Ljava/lang/String;)Ljava/util/LinkedHashSet;

    move-result-object v19

    .line 5644
    .local v19, origAttendees:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Landroid/text/util/Rfc822Token;>;"
    const/4 v7, 0x0

    .line 5645
    .local v7, attendeesRemove:Z
    invoke-virtual/range {v19 .. v19}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_11
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_12

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/text/util/Rfc822Token;

    .line 5646
    .local v18, origAttendee:Landroid/text/util/Rfc822Token;
    invoke-virtual/range {v18 .. v18}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v13

    .line 5647
    .restart local v13       #email:Ljava/lang/String;
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "orig attendee: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/htc/calendar/EditEvent;->debug(Ljava/lang/String;)V

    .line 5648
    if-eqz v7, :cond_15

    .line 5664
    .end local v13           #email:Ljava/lang/String;
    .end local v18           #origAttendee:Landroid/text/util/Rfc822Token;
    :cond_12
    if-nez v6, :cond_13

    if-eqz v7, :cond_16

    .line 5665
    :cond_13
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 5630
    .end local v7           #attendeesRemove:Z
    .end local v19           #origAttendees:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Landroid/text/util/Rfc822Token;>;"
    .restart local v13       #email:Ljava/lang/String;
    .restart local v16       #newAttendee:Landroid/text/util/Rfc822Token;
    :cond_14
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_f

    .line 5631
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_f

    .line 5635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mOriginalAttendees:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_f

    .line 5636
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "  email: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/htc/calendar/EditEvent;->debug(Ljava/lang/String;)V

    .line 5637
    const-string v26, "Attendees changed (not contains), an attendee added"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/htc/calendar/EditEvent;->debug(Ljava/lang/String;)V

    .line 5638
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 5651
    .end local v16           #newAttendee:Landroid/text/util/Rfc822Token;
    .restart local v7       #attendeesRemove:Z
    .restart local v18       #origAttendee:Landroid/text/util/Rfc822Token;
    .restart local v19       #origAttendees:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Landroid/text/util/Rfc822Token;>;"
    :cond_15
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_11

    .line 5652
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_11

    .line 5656
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_11

    .line 5657
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "  email: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/htc/calendar/EditEvent;->debug(Ljava/lang/String;)V

    .line 5658
    const-string v26, "Attendees changed (not contains), an attendee removed"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/htc/calendar/EditEvent;->debug(Ljava/lang/String;)V

    .line 5659
    const/4 v7, 0x1

    goto/16 :goto_2

    .line 5670
    .end local v6           #attendeesAdd:Z
    .end local v7           #attendeesRemove:Z
    .end local v13           #email:Ljava/lang/String;
    .end local v17           #newAttendees:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Landroid/text/util/Rfc822Token;>;"
    .end local v18           #origAttendee:Landroid/text/util/Rfc822Token;
    .end local v19           #origAttendees:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Landroid/text/util/Rfc822Token;>;"
    .end local v23           #strNewAttendees:Ljava/lang/String;
    :cond_16
    const/16 v26, 0x0

    goto/16 :goto_0
.end method

.method private static extractDomain(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "email"

    .prologue
    .line 1244
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1245
    .local v0, separator:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1246
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1248
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private findDurationIndex(I)I
    .locals 4
    .parameter "duration"

    .prologue
    .line 4115
    invoke-virtual {p0}, Lcom/htc/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 4117
    .local v1, reminderValue:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 4118
    .local v0, nIdx:I
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 4119
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4123
    .end local v0           #nIdx:I
    :goto_1
    return v0

    .line 4118
    .restart local v0       #nIdx:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4123
    :cond_1
    const/4 v0, 0x2

    goto :goto_1
.end method

.method private static findMinutesInReminderList(Ljava/util/ArrayList;I)I
    .locals 4
    .parameter
    .parameter "minutes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 2565
    .local p0, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2566
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2568
    const-string v1, "Cal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find minutes ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") in list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    const/4 v0, 0x0

    .line 2571
    .end local v0           #index:I
    :cond_0
    return v0
.end method

.method private getAddressesFromList(Landroid/widget/MultiAutoCompleteTextView;)Ljava/util/LinkedHashSet;
    .locals 7
    .parameter "list"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/MultiAutoCompleteTextView;",
            ")",
            "Ljava/util/LinkedHashSet",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1670
    invoke-virtual {p1}, Landroid/widget/MultiAutoCompleteTextView;->clearComposingText()V

    .line 1671
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1672
    .local v1, addresses:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Landroid/text/util/Rfc822Token;>;"
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1673
    .local v2, addressesValid:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Landroid/text/util/Rfc822Token;>;"
    invoke-virtual {p1}, Landroid/widget/MultiAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V

    .line 1677
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/util/Rfc822Token;

    .line 1678
    .local v0, address:Landroid/text/util/Rfc822Token;
    iget-object v4, p0, Lcom/htc/calendar/EditEvent;->mEmailValidator:Lcom/android/common/Rfc822Validator;

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/common/Rfc822Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1679
    const-string v4, "EditEvent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dropping invalid attendee email address: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1682
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1685
    .end local v0           #address:Landroid/text/util/Rfc822Token;
    :cond_1
    return-object v2
.end method

.method private getAddressesFromList(Ljava/lang/String;)Ljava/util/LinkedHashSet;
    .locals 7
    .parameter "list"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedHashSet",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1689
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1690
    .local v1, addresses:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Landroid/text/util/Rfc822Token;>;"
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1691
    .local v2, addressesValid:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Landroid/text/util/Rfc822Token;>;"
    invoke-static {p1, v1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V

    .line 1695
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/util/Rfc822Token;

    .line 1696
    .local v0, address:Landroid/text/util/Rfc822Token;
    iget-object v4, p0, Lcom/htc/calendar/EditEvent;->mEmailValidator:Lcom/android/common/Rfc822Validator;

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/common/Rfc822Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1697
    const-string v4, "EditEvent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dropping invalid attendee email address: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1700
    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1703
    .end local v0           #address:Landroid/text/util/Rfc822Token;
    :cond_1
    return-object v2
.end method

.method private getContentValuesFromUi()Landroid/content/ContentValues;
    .locals 15

    .prologue
    .line 3784
    iget-object v13, p0, Lcom/htc/calendar/EditEvent;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 3785
    .local v10, title:Ljava/lang/String;
    iget-object v13, p0, Lcom/htc/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v13}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    .line 3786
    .local v5, isAllDay:Z
    iget-object v13, p0, Lcom/htc/calendar/EditEvent;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 3787
    .local v6, location:Ljava/lang/String;
    invoke-direct {p0}, Lcom/htc/calendar/EditEvent;->getDescription()Ljava/lang/String;

    move-result-object v2

    .line 3789
    .local v2, description:Ljava/lang/String;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 3795
    .local v11, values:Landroid/content/ContentValues;
    if-eqz v5, :cond_4

    .line 3798
    const-string v13, "UTC"

    iput-object v13, p0, Lcom/htc/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    .line 3799
    iget-object v13, p0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v14, 0x0

    iput v14, v13, Landroid/text/format/Time;->hour:I

    .line 3800
    iget-object v13, p0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v14, 0x0

    iput v14, v13, Landroid/text/format/Time;->minute:I

    .line 3801
    iget-object v13, p0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v14, 0x0

    iput v14, v13, Landroid/text/format/Time;->second:I

    .line 3802
    const/4 v7, 0x0

    .line 3803
    .local v7, origAllDay:Z
    iget-object v13, p0, Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    if-eqz v13, :cond_0

    .line 3804
    iget-object v13, p0, Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/4 v14, 0x4

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    if-eqz v13, :cond_2

    const/4 v7, 0x1

    .line 3805
    :goto_0
    if-eqz v7, :cond_0

    .line 3809
    :cond_0
    iget-object v13, p0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget-object v14, p0, Lcom/htc/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    iput-object v14, v13, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 3810
    iget-object v13, p0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v8

    .line 3812
    .local v8, startMillis:J
    iget-object v13, p0, Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    const/4 v14, 0x0

    iput v14, v13, Landroid/text/format/Time;->hour:I

    .line 3813
    iget-object v13, p0, Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    const/4 v14, 0x0

    iput v14, v13, Landroid/text/format/Time;->minute:I

    .line 3814
    iget-object v13, p0, Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    const/4 v14, 0x0

    iput v14, v13, Landroid/text/format/Time;->second:I

    .line 3815
    iget-object v13, p0, Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iget v14, v13, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v13, Landroid/text/format/Time;->monthDay:I

    .line 3816
    iget-object v13, p0, Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iget-object v14, p0, Lcom/htc/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    iput-object v14, v13, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 3817
    iget-object v13, p0, Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v3

    .line 3819
    .local v3, endMillis:J
    iget-object v13, p0, Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    if-nez v13, :cond_3

    .line 3821
    iget-object v13, p0, Lcom/htc/calendar/EditEvent;->mCalendarsSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v13}, Lcom/htc/widget/HtcSpinner;->getSelectedItemId()J

    move-result-wide v0

    .line 3822
    .local v0, calendarId:J
    iput-wide v0, p0, Lcom/htc/calendar/EditEvent;->mCalendarId:J

    .line 3866
    .end local v7           #origAllDay:Z
    :goto_1
    const-string v13, "calendar_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3867
    const-string v13, "eventTimezone"

    iget-object v14, p0, Lcom/htc/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3868
    const-string v13, "title"

    invoke-virtual {v11, v13, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3869
    const-string v14, "allDay"

    if-eqz v5, :cond_6

    const/4 v13, 0x1

    :goto_2
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3870
    const-string v13, "dtstart"

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3871
    const-string v13, "dtend"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3872
    const-string v13, "description"

    invoke-virtual {v11, v13, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3873
    const-string v13, "eventLocation"

    invoke-virtual {v11, v13, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3874
    const-string v13, "availability"

    iget-object v14, p0, Lcom/htc/calendar/EditEvent;->mAvailabilitySpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v14}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3876
    iget-object v13, p0, Lcom/htc/calendar/EditEvent;->mVisibilitySpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v13}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v12

    .line 3877
    .local v12, visibility:I
    if-lez v12, :cond_1

    .line 3879
    add-int/lit8 v12, v12, 0x1

    .line 3881
    :cond_1
    const-string v13, "availability"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3883
    return-object v11

    .line 3804
    .end local v0           #calendarId:J
    .end local v3           #endMillis:J
    .end local v8           #startMillis:J
    .end local v12           #visibility:I
    .restart local v7       #origAllDay:Z
    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 3824
    .restart local v3       #endMillis:J
    .restart local v8       #startMillis:J
    :cond_3
    iget-object v13, p0, Lcom/htc/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v14, "calendar_id"

    invoke-virtual {v13, v14}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .restart local v0       #calendarId:J
    goto :goto_1

    .line 3829
    .end local v0           #calendarId:J
    .end local v3           #endMillis:J
    .end local v7           #origAllDay:Z
    .end local v8           #startMillis:J
    :cond_4
    iget-object v13, p0, Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    if-eqz v13, :cond_5

    .line 3847
    iget-object v13, p0, Lcom/htc/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v14, "calendar_id"

    invoke-virtual {v13, v14}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 3860
    .restart local v0       #calendarId:J
    :goto_3
    iget-object v13, p0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget-object v14, p0, Lcom/htc/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    iput-object v14, v13, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 3861
    iget-object v13, p0, Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iget-object v14, p0, Lcom/htc/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    iput-object v14, v13, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 3862
    iget-object v13, p0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    .line 3863
    .restart local v8       #startMillis:J
    iget-object v13, p0, Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    .restart local v3       #endMillis:J
    goto/16 :goto_1

    .line 3850
    .end local v0           #calendarId:J
    .end local v3           #endMillis:J
    .end local v8           #startMillis:J
    :cond_5
    iget-object v13, p0, Lcom/htc/calendar/EditEvent;->mCalendarsSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v13}, Lcom/htc/widget/HtcSpinner;->getSelectedItemId()J

    move-result-wide v0

    .line 3851
    .restart local v0       #calendarId:J
    iput-wide v0, p0, Lcom/htc/calendar/EditEvent;->mCalendarId:J

    .line 3857
    invoke-direct {p0, v11}, Lcom/htc/calendar/EditEvent;->checkFacebookDependentFields(Landroid/content/ContentValues;)V

    goto :goto_3

    .line 3869
    .restart local v3       #endMillis:J
    .restart local v8       #startMillis:J
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_2
.end method

.method private getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5321
    invoke-direct {p0}, Lcom/htc/calendar/EditEvent;->isTextPlain()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5322
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 5324
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mOrigDescription:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/htc/calendar/EditEvent;->getEditableWebViewHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getEditableWebViewHTML(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "origHtml"

    .prologue
    .line 5440
    iget-object v1, p0, Lcom/htc/calendar/EditEvent;->mBackgroundHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 5441
    iget-object v1, p0, Lcom/htc/calendar/EditEvent;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5442
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5443
    iget-object v1, p0, Lcom/htc/calendar/EditEvent;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5444
    iget-object v1, p0, Lcom/htc/calendar/EditEvent;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->getHTMLRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5445
    iget-object p1, p0, Lcom/htc/calendar/EditEvent;->mHtmlText:Ljava/lang/String;

    .line 5447
    .end local v0           #msg:Landroid/os/Message;
    .end local p1
    :cond_0
    return-object p1
.end method

.method private getMAX_REMINDERS()I
    .locals 1

    .prologue
    .line 4717
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mSyncAccountType:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/calendar/HtcUtils;->isHTCExchangeEvent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mSyncAccountType:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/calendar/HtcUtils;->isHTCPCSyncEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4719
    :cond_0
    const/4 v0, 0x1

    .line 4721
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private getMenuItems(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/CharSequence;
    .locals 12
    .parameter "sync_id"
    .parameter "account_type"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 4520
    const-string v5, "EditEvent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getMenuItems sync_id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " account_type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4522
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4523
    invoke-static {}, Landroid/provider/HtcExCalendar;->getHtcPcSyncAccountType()Ljava/lang/String;

    move-result-object p2

    .line 4526
    :cond_0
    invoke-virtual {p0}, Lcom/htc/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 4528
    .local v1, r:Landroid/content/res/Resources;
    new-instance v3, Lcom/htc/calendar/ItemValue;

    const v5, 0x7f0800be

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v8}, Lcom/htc/calendar/ItemValue;-><init>(Ljava/lang/String;I)V

    .line 4529
    .local v3, szEditOnlyThis:Lcom/htc/calendar/ItemValue;
    new-instance v2, Lcom/htc/calendar/ItemValue;

    const v5, 0x7f0800bf

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5, v10}, Lcom/htc/calendar/ItemValue;-><init>(Ljava/lang/String;I)V

    .line 4530
    .local v2, szEditAll:Lcom/htc/calendar/ItemValue;
    new-instance v4, Lcom/htc/calendar/ItemValue;

    const v5, 0x7f0800c0

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v11}, Lcom/htc/calendar/ItemValue;-><init>(Ljava/lang/String;I)V

    .line 4534
    .local v4, szEditThisAndFuture:Lcom/htc/calendar/ItemValue;
    const/4 v0, 0x0

    .line 4536
    .local v0, items:[Ljava/lang/CharSequence;
    invoke-static {p2}, Lcom/htc/calendar/HtcUtils;->isHTCPCSyncEvent(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4537
    new-array v0, v8, [Ljava/lang/CharSequence;

    .line 4538
    aput-object v2, v0, v9

    .line 4573
    :cond_1
    :goto_0
    return-object v0

    .line 4539
    :cond_2
    invoke-static {p2}, Lcom/htc/calendar/HtcUtils;->isHTCExchangeEvent(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4540
    new-array v0, v10, [Ljava/lang/CharSequence;

    .line 4541
    aput-object v3, v0, v9

    .line 4542
    aput-object v2, v0, v8

    goto :goto_0

    .line 4543
    :cond_3
    invoke-static {p2}, Lcom/htc/calendar/HtcUtils;->isGoogleEvent(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 4544
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 4545
    invoke-direct {p0}, Lcom/htc/calendar/EditEvent;->isFirstEventInSeries()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4546
    new-array v0, v8, [Ljava/lang/CharSequence;

    .line 4547
    aput-object v2, v0, v9

    goto :goto_0

    .line 4549
    :cond_4
    new-array v0, v10, [Ljava/lang/CharSequence;

    .line 4550
    aput-object v2, v0, v9

    .line 4551
    aput-object v4, v0, v8

    goto :goto_0

    .line 4554
    :cond_5
    invoke-direct {p0}, Lcom/htc/calendar/EditEvent;->isFirstEventInSeries()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 4555
    new-array v0, v10, [Ljava/lang/CharSequence;

    .line 4556
    aput-object v3, v0, v9

    .line 4557
    aput-object v2, v0, v8

    goto :goto_0

    .line 4560
    :cond_6
    new-array v0, v11, [Ljava/lang/CharSequence;

    .line 4561
    aput-object v3, v0, v9

    .line 4562
    aput-object v2, v0, v8

    .line 4563
    aput-object v4, v0, v10

    goto :goto_0

    .line 4566
    :cond_7
    invoke-static {p0, p2}, Lcom/htc/calendar/HtcUtils;->isHTCFacebookEvent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 4569
    new-array v0, v8, [Ljava/lang/CharSequence;

    .line 4570
    aput-object v2, v0, v9

    goto :goto_0
.end method

.method private getNewExDate(Ljava/lang/String;J)Ljava/lang/String;
    .locals 17
    .parameter "oldExDate"
    .parameter "newStart"

    .prologue
    .line 4726
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    const-wide/16 v14, 0x0

    cmp-long v14, p2, v14

    if-gtz v14, :cond_1

    .line 4727
    :cond_0
    const-string v13, ""

    .line 4758
    :goto_0
    return-object v13

    .line 4729
    :cond_1
    const-string v14, ","

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 4730
    .local v3, aryExDate:[Ljava/lang/String;
    new-instance v4, Landroid/text/format/Time;

    const-string v14, "UTC"

    invoke-direct {v4, v14}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 4731
    .local v4, checkTime:Landroid/text/format/Time;
    new-instance v11, Landroid/text/format/Time;

    const-string v14, "UTC"

    invoke-direct {v11, v14}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 4732
    .local v11, newStartTime:Landroid/text/format/Time;
    new-instance v12, Landroid/text/format/Time;

    const-string v14, "UTC"

    invoke-direct {v12, v14}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 4734
    .local v12, origStartTime:Landroid/text/format/Time;
    move-wide/from16 v0, p2

    invoke-virtual {v11, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 4735
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/htc/calendar/EditEvent;->mOrigStartMillis:J

    invoke-virtual {v12, v14, v15}, Landroid/text/format/Time;->set(J)V

    .line 4736
    const-string v14, "EditEvent"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "newStartTime "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4737
    const-string v14, "EditEvent"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "origStartTime "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4739
    iget v14, v11, Landroid/text/format/Time;->monthDay:I

    iget v15, v12, Landroid/text/format/Time;->monthDay:I

    sub-int v6, v14, v15

    .line 4740
    .local v6, dayOffset:I
    iget v14, v11, Landroid/text/format/Time;->hour:I

    iget v15, v12, Landroid/text/format/Time;->hour:I

    sub-int v7, v14, v15

    .line 4741
    .local v7, hourOffset:I
    iget v14, v11, Landroid/text/format/Time;->minute:I

    iget v15, v12, Landroid/text/format/Time;->minute:I

    sub-int v10, v14, v15

    .line 4743
    .local v10, minOffset:I
    const-string v14, "EditEvent"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "dayOffset: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " hourOffset: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " minOffset: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4744
    const-string v13, ""

    .line 4746
    .local v13, out:Ljava/lang/String;
    move-object v2, v3

    .local v2, arr$:[Ljava/lang/String;
    array-length v9, v2

    .local v9, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_1
    if-ge v8, v9, :cond_3

    aget-object v5, v2, v8

    .line 4747
    .local v5, date:Ljava/lang/String;
    invoke-virtual {v4, v5}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 4748
    iget v14, v4, Landroid/text/format/Time;->monthDay:I

    add-int/2addr v14, v6

    iput v14, v4, Landroid/text/format/Time;->monthDay:I

    .line 4749
    iget v14, v4, Landroid/text/format/Time;->hour:I

    add-int/2addr v14, v7

    iput v14, v4, Landroid/text/format/Time;->hour:I

    .line 4750
    iget v14, v4, Landroid/text/format/Time;->minute:I

    add-int/2addr v14, v10

    iput v14, v4, Landroid/text/format/Time;->minute:I

    .line 4751
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 4752
    invoke-virtual {v4}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v13

    .line 4746
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 4754
    :cond_2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ","

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    .line 4757
    .end local v5           #date:Ljava/lang/String;
    :cond_3
    const-string v14, "EditEvent"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getNewExDate: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private getNewRecurrenceUntil(JJZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "beginMillis"
    .parameter "endMillis"
    .parameter "allDay"
    .parameter "rrule"

    .prologue
    const/4 v2, 0x0

    .line 4889
    iget-object v1, p0, Lcom/htc/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    invoke-virtual {v1, p6}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 4890
    iget-object v1, p0, Lcom/htc/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget-object v1, v1, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4905
    .end local p6
    :goto_0
    return-object p6

    .line 4893
    .restart local p6
    :cond_0
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 4894
    .local v0, untilTime:Landroid/text/format/Time;
    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 4896
    if-eqz p5, :cond_1

    .line 4897
    iput v2, v0, Landroid/text/format/Time;->hour:I

    .line 4898
    iput v2, v0, Landroid/text/format/Time;->minute:I

    .line 4899
    iput v2, v0, Landroid/text/format/Time;->second:I

    .line 4900
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/text/format/Time;->allDay:Z

    .line 4901
    invoke-virtual {v0, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 4903
    :cond_1
    iget-object v1, p0, Lcom/htc/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    invoke-virtual {v0}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    .line 4905
    iget-object v1, p0, Lcom/htc/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    invoke-virtual {v1}, Lcom/android/calendarcommon/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object p6

    goto :goto_0
.end method

.method private getOwnerAccountSourceId(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 9
    .parameter "cr"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 5223
    const-string v7, ""

    .line 5224
    .local v7, source_id:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.htc.socialnetwork.facebook/accounts"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "loginId"

    aput-object v3, v2, v8

    const-string v3, "defaultAccount=1"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 5228
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5229
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 5230
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5231
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 5234
    :cond_0
    const-string v0, "EditEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FB owner Account source_id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5235
    return-object v7
.end method

.method private getSourceIdFromList(Ljava/lang/String;)Ljava/util/LinkedHashSet;
    .locals 5
    .parameter "list"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedHashSet",
            "<",
            "Landroid/text/util/Rfc822Token;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5239
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 5240
    .local v1, addresses:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Landroid/text/util/Rfc822Token;>;"
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 5241
    .local v2, addressesValid:Ljava/util/LinkedHashSet;,"Ljava/util/LinkedHashSet<Landroid/text/util/Rfc822Token;>;"
    invoke-static {p1, v1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V

    .line 5243
    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/util/Rfc822Token;

    .line 5244
    .local v0, address:Landroid/text/util/Rfc822Token;
    invoke-virtual {v2, v0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5246
    .end local v0           #address:Landroid/text/util/Rfc822Token;
    :cond_0
    return-object v2
.end method

.method private getWhichModification(ILjava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "which"
    .parameter "sync_id"
    .parameter "account_type"

    .prologue
    .line 4577
    const-string v1, "EditEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWhichModification which: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sync_id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " account_type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4578
    const/4 v0, 0x0

    .line 4579
    .local v0, _modification:I
    if-nez p1, :cond_4

    .line 4580
    invoke-static {p3}, Lcom/htc/calendar/HtcUtils;->isGoogleEvent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4581
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4582
    const/4 v0, 0x2

    .line 4604
    :cond_0
    :goto_0
    return v0

    .line 4584
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 4586
    :cond_2
    invoke-static {p3}, Lcom/htc/calendar/HtcUtils;->isHTCExchangeEvent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4587
    const/4 v0, 0x1

    goto :goto_0

    .line 4589
    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    .line 4591
    :cond_4
    const/4 v1, 0x1

    if-ne p1, v1, :cond_7

    .line 4592
    invoke-static {p3}, Lcom/htc/calendar/HtcUtils;->isGoogleEvent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4593
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4594
    const/4 v0, 0x3

    goto :goto_0

    .line 4596
    :cond_5
    const/4 v0, 0x2

    goto :goto_0

    .line 4598
    :cond_6
    invoke-static {p3}, Lcom/htc/calendar/HtcUtils;->isHTCExchangeEvent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4599
    const/4 v0, 0x2

    goto :goto_0

    .line 4601
    :cond_7
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 4602
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private initBackgroundHandler()V
    .locals 4

    .prologue
    .line 5335
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "EditEventBgThread"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/htc/calendar/EditEvent;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 5337
    iget-object v1, p0, Lcom/htc/calendar/EditEvent;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 5339
    const/4 v0, 0x0

    .line 5341
    .local v0, myLooper:Landroid/os/Looper;
    iget-object v1, p0, Lcom/htc/calendar/EditEvent;->mBackgroundThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/htc/calendar/EditEvent;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5342
    iget-object v1, p0, Lcom/htc/calendar/EditEvent;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 5343
    if-eqz v0, :cond_0

    .line 5344
    new-instance v1, Lcom/htc/calendar/EditEvent$Background_handler;

    invoke-direct {v1, p0, v0}, Lcom/htc/calendar/EditEvent$Background_handler;-><init>(Lcom/htc/calendar/EditEvent;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/htc/calendar/EditEvent;->mBackgroundHandler:Landroid/os/Handler;

    .line 5352
    :goto_0
    return-void

    .line 5346
    :cond_0
    const-string v1, "EditEvent"

    const-string v2, "get Looper is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5347
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/calendar/EditEvent;->mBackgroundHandler:Landroid/os/Handler;

    goto :goto_0

    .line 5350
    :cond_1
    const-string v1, "EditEvent"

    const-string v2, "mBackgroundThread is null or mBackgroundThread is not alive"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initEditEvent(ZZ)V
    .locals 44
    .parameter "newEvent"
    .parameter "allDay"

    .prologue
    .line 1319
    new-instance v5, Lcom/htc/calendar/TimezoneAdapter;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v7}, Lcom/htc/calendar/TimezoneAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/calendar/EditEvent;->mTimezoneAdapter:Lcom/htc/calendar/TimezoneAdapter;

    .line 1322
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/htc/calendar/EditEvent;->mBegin:J

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-eqz v5, :cond_0

    .line 1323
    if-eqz p2, :cond_4

    .line 1324
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget-object v0, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v43, v0

    .line 1325
    .local v43, tz:Ljava/lang/String;
    invoke-static/range {v43 .. v43}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v24

    .line 1326
    .local v24, dbTimeZone:Ljava/util/TimeZone;
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/htc/calendar/EditEvent;->mBegin:J

    move-object/from16 v0, v24

    invoke-virtual {v0, v7, v8}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v36, v0

    .line 1328
    .local v36, offsetMillis:J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const-string v7, "UTC"

    iput-object v7, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1329
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/htc/calendar/EditEvent;->mBegin:J

    add-long v7, v7, v36

    invoke-virtual {v5, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 1331
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    iput-object v7, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1334
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/text/format/Time;->normalize(Z)J

    .line 1336
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->year:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/htc/calendar/EditEvent;->mOrigYear:I

    .line 1337
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->month:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/htc/calendar/EditEvent;->mOrigMonth:I

    .line 1338
    if-eqz p1, :cond_3

    .line 1339
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/htc/calendar/EditEvent;->mOrigDay:I

    .line 1351
    .end local v24           #dbTimeZone:Ljava/util/TimeZone;
    .end local v36           #offsetMillis:J
    .end local v43           #tz:Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->year:I

    const/16 v7, 0x7ef

    if-lt v5, v7, :cond_0

    .line 1352
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/16 v7, 0x7ee

    iput v7, v5, Landroid/text/format/Time;->year:I

    .line 1353
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/16 v7, 0xb

    iput v7, v5, Landroid/text/format/Time;->month:I

    .line 1354
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/16 v7, 0x1f

    iput v7, v5, Landroid/text/format/Time;->monthDay:I

    .line 1358
    :cond_0
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/htc/calendar/EditEvent;->mEnd:J

    const-wide/16 v9, 0x0

    cmp-long v5, v7, v9

    if-eqz v5, :cond_1

    .line 1359
    if-eqz p2, :cond_5

    .line 1360
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget-object v0, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v43, v0

    .line 1361
    .restart local v43       #tz:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/htc/calendar/EditEvent;->mEnd:J

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/htc/calendar/EditEvent;->mBegin:J

    sub-long/2addr v7, v9

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    const-wide/32 v9, 0x15180

    div-long/2addr v7, v9

    move-object/from16 v0, p0

    iput-wide v7, v0, Lcom/htc/calendar/EditEvent;->mDayOffset:J

    .line 1362
    const-string v5, "EditEvent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mDayOffset: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/htc/calendar/EditEvent;->mDayOffset:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    invoke-static/range {v43 .. v43}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v24

    .line 1365
    .restart local v24       #dbTimeZone:Ljava/util/TimeZone;
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/htc/calendar/EditEvent;->mBegin:J

    move-object/from16 v0, v24

    invoke-virtual {v0, v7, v8}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v36, v0

    .line 1367
    .restart local v36       #offsetMillis:J
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    const-string v7, "UTC"

    iput-object v7, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1368
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/htc/calendar/EditEvent;->mBegin:J

    add-long v7, v7, v36

    const-wide/32 v9, 0x5265c00

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/htc/calendar/EditEvent;->mDayOffset:J

    mul-long/2addr v9, v11

    add-long/2addr v7, v9

    invoke-virtual {v5, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 1369
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    iput-object v7, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1372
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/text/format/Time;->normalize(Z)J

    .line 1380
    .end local v24           #dbTimeZone:Ljava/util/TimeZone;
    .end local v36           #offsetMillis:J
    .end local v43           #tz:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->year:I

    const/16 v7, 0x7ef

    if-lt v5, v7, :cond_1

    .line 1381
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v5, v7}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1385
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/EditEvent;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v30

    .line 1388
    .local v30, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f0d0008

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/calendar/EditEvent;->mTitleTextView:Landroid/widget/TextView;

    .line 1391
    new-instance v35, Landroid/text/InputFilter$LengthFilter;

    const/16 v5, 0xc8

    move-object/from16 v0, v35

    invoke-direct {v0, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 1392
    .local v35, maxLengthFilter:Landroid/text/InputFilter;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mTitleTextView:Landroid/widget/TextView;

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/text/InputFilter;

    const/4 v8, 0x0

    aput-object v35, v7, v8

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1393
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mTitleTextView:Landroid/widget/TextView;

    new-instance v7, Lcom/htc/calendar/EditEvent$2;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/htc/calendar/EditEvent$2;-><init>(Lcom/htc/calendar/EditEvent;)V

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1406
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mTitleTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/calendar/EditEvent;->onInputFieldFocusChange:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1408
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->requestFocus()Z

    .line 1410
    const v5, 0x7f0d0053

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/calendar/EditEvent;->mLocationTextView:Landroid/widget/TextView;

    .line 1411
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mLocationTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/calendar/EditEvent;->onInputFieldFocusChange:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1413
    const v5, 0x7f0d007a

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/calendar/EditEvent;->mLocationPicker:Landroid/widget/ImageView;

    .line 1414
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v7, 0x2

    if-eq v5, v7, :cond_8

    .line 1417
    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.htc.android.locationpicker"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-static {v5, v0}, Lcom/htc/calendar/Utils;->isSuitableAppExist(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1418
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mLocationPicker:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1427
    :goto_2
    const v5, 0x7f0d003c

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/calendar/widget/ComposeTitle;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/calendar/EditEvent;->mComposeTitle:Lcom/htc/calendar/widget/ComposeTitle;

    .line 1428
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mComposeTitle:Lcom/htc/calendar/widget/ComposeTitle;

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/htc/calendar/widget/ComposeTitle;->setHostActivity(Landroid/app/Activity;)V

    .line 1429
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_2

    .line 1430
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mComposeTitle:Lcom/htc/calendar/widget/ComposeTitle;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/calendar/EditEvent;->mSyncAccount:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/calendar/EditEvent;->mSyncAccountType:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Lcom/htc/calendar/widget/ComposeTitle;->setAccountInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    :cond_2
    const v5, 0x7f0d0067

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/calendar/EditEvent;->mDummyTitle:Landroid/widget/LinearLayout;

    .line 1437
    const v5, 0x7f0d0072

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/calendar/EditEvent;->mTimeZoneBtnContainer:Landroid/widget/LinearLayout;

    .line 1439
    const v5, 0x7f0d006a

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/calendar/EditEvent;->mImageCaptureButton:Landroid/widget/ImageView;

    .line 1440
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mImageCaptureButton:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1442
    const v5, 0x7f0d0077

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/calendar/EditEvent;->mBtnCheckCalendar:Landroid/widget/Button;

    .line 1443
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mBtnCheckCalendar:Landroid/widget/Button;

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1446
    const v5, 0x7f0d0055

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/calendar/EditEvent;->mDescriptionTextView:Landroid/widget/TextView;

    .line 1447
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mDescriptionTextView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/calendar/EditEvent;->onInputFieldFocusChange:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1448
    new-instance v34, Landroid/text/InputFilter$LengthFilter;

    const v5, 0x7a120

    move-object/from16 v0, v34

    invoke-direct {v0, v5}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    .line 1449
    .local v34, maxLength:Landroid/text/InputFilter;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mDescriptionTextView:Landroid/widget/TextView;

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/text/InputFilter;

    const/4 v8, 0x0

    aput-object v34, v7, v8

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1452
    const v5, 0x7f0d007c

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/webkit/EditableWebView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/calendar/EditEvent;->mDescriptionWebView:Landroid/webkit/EditableWebView;

    .line 1453
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mDescriptionWebView:Landroid/webkit/EditableWebView;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/calendar/EditEvent;->mEditableWebviewchangeListener:Landroid/webkit/EditableWebView$OnContentChangedListener;

    invoke-virtual {v5, v7}, Landroid/webkit/EditableWebView;->setOnContentChangedListener(Landroid/webkit/EditableWebView$OnContentChangedListener;)V

    .line 1455
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/EditEvent;->isTextPlain()Z

    move-result v31

    .line 1456
    .local v31, isTextPlain:Z
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/calendar/EditEvent;->mDescriptionTextView:Landroid/widget/TextView;

    if-eqz v31, :cond_9

    const/4 v5, 0x0

    :goto_3
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1457
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/calendar/EditEvent;->mDescriptionWebView:Landroid/webkit/EditableWebView;

    if-nez v31, :cond_a

    const/4 v5, 0x0

    :goto_4
    invoke-virtual {v7, v5}, Landroid/webkit/EditableWebView;->setVisibility(I)V

    .line 1461
    const v5, 0x7f0d0073

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/calendar/EditEvent;->mTimezoneTextView:Landroid/widget/TextView;

    .line 1462
    const v5, 0x7f03003a

    const/4 v7, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListItem;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/calendar/EditEvent;->mTimezoneFooterView:Lcom/htc/widget/HtcListItem;

    .line 1463
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mTimezoneFooterView:Lcom/htc/widget/HtcListItem;

    const v7, 0x7f0d00f6

    invoke-virtual {v5, v7}, Lcom/htc/widget/HtcListItem;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcListItem2LineText;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/calendar/EditEvent;->mTimezoneFooterItemView:Lcom/htc/widget/HtcListItem2LineText;

    .line 1464
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mTimezoneFooterItemView:Lcom/htc/widget/HtcListItem2LineText;

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 1465
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mTimezoneFooterItemView:Lcom/htc/widget/HtcListItem2LineText;

    const v7, 0x7f0800d2

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/htc/calendar/EditEvent;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 1468
    const v5, 0x7f0d004c

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/calendar/EditEvent;->mStartDateButton:Landroid/widget/Button;

    .line 1469
    const v5, 0x7f0d004f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/calendar/EditEvent;->mEndDateButton:Landroid/widget/Button;

    .line 1470
    const v5, 0x7f0d004d

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/calendar/EditEvent;->mStartTimeButton:Landroid/widget/Button;

    .line 1471
    const v5, 0x7f0d0050

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/calendar/EditEvent;->mEndTimeButton:Landroid/widget/Button;

    .line 1474
    const v5, 0x7f0d006e

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/calendar/EditEvent;->mStartTimeHome:Landroid/widget/TextView;

    .line 1475
    const v5, 0x7f0d006d

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/calendar/EditEvent;->mStartDateHome:Landroid/widget/TextView;

    .line 1476
    const v5, 0x7f0d0071

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/calendar/EditEvent;->mEndTimeHome:Landroid/widget/TextView;

    .line 1477
    const v5, 0x7f0d0070

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/calendar/EditEvent;->mEndDateHome:Landroid/widget/TextView;

    .line 1478
    const v5, 0x7f0d0074

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/calendar/EditEvent;->mTimezoneButton:Landroid/widget/Button;

    .line 1481
    const v5, 0x7f0d0051

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;

    .line 1482
    const v5, 0x7f0d0035

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcSpinner;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/calendar/EditEvent;->mCalendarsSpinner:Lcom/htc/widget/HtcSpinner;

    .line 1483
    invoke-static/range {p0 .. p0}, Lcom/htc/calendar/HtcUtils;->getCommandBarButton(Landroid/content/Context;)I

    move-result v23

    .line 1484
    .local v23, commonBarButtonResId:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mCalendarsSpinner:Lcom/htc/widget/HtcSpinner;

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/htc/widget/HtcSpinner;->setBackgroundResource(I)V

    .line 1485
    const v5, 0x7f0d0059

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcSpinner;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/calendar/EditEvent;->mRepeatsSpinner:Lcom/htc/widget/HtcSpinner;

    .line 1486
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mRepeatsSpinner:Lcom/htc/widget/HtcSpinner;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/calendar/EditEvent;->repeatListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    invoke-virtual {v5, v7}, Lcom/htc/widget/HtcSpinner;->setOnItemSelectedListener(Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;)V

    .line 1487
    const v5, 0x7f0d005c

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcSpinner;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/calendar/EditEvent;->mAvailabilitySpinner:Lcom/htc/widget/HtcSpinner;

    .line 1488
    const v5, 0x7f0d005e

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcSpinner;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/calendar/EditEvent;->mVisibilitySpinner:Lcom/htc/widget/HtcSpinner;

    .line 1489
    const v5, 0x7f0d005f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/calendar/EditEvent;->mRemindersSeparator:Landroid/view/View;

    .line 1490
    const v5, 0x7f0d0016

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/calendar/EditEvent;->mRemindersContainer:Landroid/widget/LinearLayout;

    .line 1491
    const v5, 0x7f0d005a

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/calendar/EditEvent;->mExtraOptions:Landroid/widget/LinearLayout;

    .line 1493
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/htc/calendar/EditEvent;->mHasAttendeeData:Z

    if-eqz v5, :cond_b

    .line 1494
    new-instance v5, Lcom/htc/calendar/EmailAddressAdapter;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/htc/calendar/EmailAddressAdapter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/calendar/EditEvent;->mAddressAdapter:Lcom/htc/calendar/EmailAddressAdapter;

    .line 1495
    new-instance v5, Lcom/android/common/Rfc822Validator;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/calendar/EditEvent;->mDomain:Ljava/lang/String;

    invoke-direct {v5, v7}, Lcom/android/common/Rfc822Validator;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/calendar/EditEvent;->mEmailValidator:Lcom/android/common/Rfc822Validator;

    .line 1496
    const v5, 0x7f0d0021

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/htc/calendar/EditEvent;->initMultiAutoCompleteTextView(I)Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/calendar/EditEvent;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;

    .line 1502
    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mCalendarsSpinner:Lcom/htc/widget/HtcSpinner;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/calendar/EditEvent;->calendarSpinnerListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    invoke-virtual {v5, v7}, Lcom/htc/widget/HtcSpinner;->setOnItemSelectedListener(Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;)V

    .line 1503
    const v5, 0x7f0d007d

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/calendar/EditEvent;->mRepeatContainer:Landroid/widget/LinearLayout;

    .line 1504
    const v5, 0x7f0d007e

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/calendar/EditEvent;->mImportanceLayout:Landroid/widget/LinearLayout;

    .line 1505
    const v5, 0x7f0d0080

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcSpinner;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/calendar/EditEvent;->mImportanceSpinner:Lcom/htc/widget/HtcSpinner;

    .line 1507
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    sub-long v25, v7, v9

    .line 1508
    .local v25, duration:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v25

    invoke-direct {v0, v1, v2}, Lcom/htc/calendar/EditEvent;->setRepeatContainer(J)V

    .line 1511
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;

    new-instance v7, Lcom/htc/calendar/EditEvent$3;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/htc/calendar/EditEvent$3;-><init>(Lcom/htc/calendar/EditEvent;)V

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1556
    if-eqz p2, :cond_c

    .line 1557
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1561
    :goto_6
    const v5, 0x7f0d000e

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcFooter;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/calendar/EditEvent;->mHtcFooter:Lcom/htc/widget/HtcFooter;

    .line 1563
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mHtcFooter:Lcom/htc/widget/HtcFooter;

    const v7, 0x7f0d000f

    invoke-virtual {v5, v7}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcFooterButton;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/calendar/EditEvent;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    .line 1564
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1565
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    const v7, 0x7f080033

    invoke-virtual {v5, v7}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 1567
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mHtcFooter:Lcom/htc/widget/HtcFooter;

    const v7, 0x7f0d0083

    invoke-virtual {v5, v7}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcFooterButton;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/calendar/EditEvent;->mDeleteButton:Lcom/htc/widget/HtcFooterButton;

    .line 1568
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mDeleteButton:Lcom/htc/widget/HtcFooterButton;

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1569
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mDeleteButton:Lcom/htc/widget/HtcFooterButton;

    const v7, 0x7f0800af

    invoke-virtual {v5, v7}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 1571
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mHtcFooter:Lcom/htc/widget/HtcFooter;

    const v7, 0x7f0d0010

    invoke-virtual {v5, v7}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcFooterButton;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/calendar/EditEvent;->mDiscardButton:Lcom/htc/widget/HtcFooterButton;

    .line 1572
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mDiscardButton:Lcom/htc/widget/HtcFooterButton;

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1573
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mDiscardButton:Lcom/htc/widget/HtcFooterButton;

    const v7, 0x20c01d6

    invoke-virtual {v5, v7}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 1576
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    .line 1578
    .local v39, r:Landroid/content/res/Resources;
    const v5, 0x7f060024

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v42

    .line 1580
    .local v42, strings:[Ljava/lang/String;
    move-object/from16 v0, v42

    array-length v0, v0

    move/from16 v41, v0

    .line 1581
    .local v41, size:I
    new-instance v33, Ljava/util/ArrayList;

    move-object/from16 v0, v33

    move/from16 v1, v41

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1582
    .local v33, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v29, 0x0

    .local v29, i:I
    :goto_7
    move/from16 v0, v29

    move/from16 v1, v41

    if-ge v0, v1, :cond_d

    .line 1583
    aget-object v5, v42, v29

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1582
    add-int/lit8 v29, v29, 0x1

    goto :goto_7

    .line 1341
    .end local v23           #commonBarButtonResId:I
    .end local v25           #duration:J
    .end local v29           #i:I
    .end local v30           #inflater:Landroid/view/LayoutInflater;
    .end local v31           #isTextPlain:Z
    .end local v33           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v34           #maxLength:Landroid/text/InputFilter;
    .end local v35           #maxLengthFilter:Landroid/text/InputFilter;
    .end local v39           #r:Landroid/content/res/Resources;
    .end local v41           #size:I
    .end local v42           #strings:[Ljava/lang/String;
    .restart local v24       #dbTimeZone:Ljava/util/TimeZone;
    .restart local v36       #offsetMillis:J
    .restart local v43       #tz:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/htc/calendar/EditEvent;->mOrigDay:I

    goto/16 :goto_0

    .line 1344
    .end local v24           #dbTimeZone:Ljava/util/TimeZone;
    .end local v36           #offsetMillis:J
    .end local v43           #tz:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    iput-object v7, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1345
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/htc/calendar/EditEvent;->mBegin:J

    invoke-virtual {v5, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 1347
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->year:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/htc/calendar/EditEvent;->mOrigYear:I

    .line 1348
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->month:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/htc/calendar/EditEvent;->mOrigMonth:I

    .line 1349
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->monthDay:I

    move-object/from16 v0, p0

    iput v5, v0, Lcom/htc/calendar/EditEvent;->mOrigDay:I

    goto/16 :goto_0

    .line 1374
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    iput-object v7, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 1375
    if-eqz p1, :cond_6

    .line 1376
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/htc/calendar/EditEvent;->mBegin:J

    const-wide/32 v9, 0x36ee80

    add-long/2addr v7, v9

    move-object/from16 v0, p0

    iput-wide v7, v0, Lcom/htc/calendar/EditEvent;->mEnd:J

    .line 1378
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/htc/calendar/EditEvent;->mEnd:J

    invoke-virtual {v5, v7, v8}, Landroid/text/format/Time;->set(J)V

    goto/16 :goto_1

    .line 1420
    .restart local v30       #inflater:Landroid/view/LayoutInflater;
    .restart local v35       #maxLengthFilter:Landroid/text/InputFilter;
    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mLocationPicker:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1423
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mLocationPicker:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1456
    .restart local v31       #isTextPlain:Z
    .restart local v34       #maxLength:Landroid/text/InputFilter;
    :cond_9
    const/16 v5, 0x8

    goto/16 :goto_3

    .line 1457
    :cond_a
    const/16 v5, 0x8

    goto/16 :goto_4

    .line 1498
    .restart local v23       #commonBarButtonResId:I
    :cond_b
    const v5, 0x7f0d0057

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/htc/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 1559
    .restart local v25       #duration:J
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_6

    .line 1585
    .restart local v29       #i:I
    .restart local v33       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v39       #r:Landroid/content/res/Resources;
    .restart local v41       #size:I
    .restart local v42       #strings:[Ljava/lang/String;
    :cond_d
    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    .line 1587
    const v5, 0x7f060023

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v32

    .line 1589
    .local v32, labels:[Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-static/range {v32 .. v32}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/calendar/EditEvent;->mReminderLabels:Ljava/util/ArrayList;

    .line 1591
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v38

    .line 1592
    .local v38, prefs:Landroid/content/SharedPreferences;
    const-string v5, "preferences_default_reminder"

    const-string v7, "0"

    move-object/from16 v0, v38

    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1594
    .local v27, durationString:Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/htc/calendar/EditEvent;->mDefaultReminderMinutes:I

    .line 1596
    if-eqz p1, :cond_e

    .line 1597
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/calendar/EditEvent;->mReminderLabels:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/htc/calendar/EditEvent;->mDefaultReminderMinutes:I

    move-object/from16 v0, p0

    invoke-static {v0, v5, v7, v8}, Lcom/htc/calendar/EditEvent;->addMinutesToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 1598
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/calendar/EditEvent;->mReminderLabels:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/htc/calendar/EditEvent;->mDefaultReminderMinutes:I

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    move-object/from16 v5, p0

    invoke-direct/range {v3 .. v9}, Lcom/htc/calendar/EditEvent;->addReminder(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Z

    .line 1602
    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    if-nez v5, :cond_10

    const-wide/16 v7, -0x1

    :goto_8
    move-object/from16 v0, p0

    iput-wide v7, v0, Lcom/htc/calendar/EditEvent;->mEventId:J

    .line 1603
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1606
    .local v3, cr:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_11

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/4 v7, 0x5

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_11

    const/16 v28, 0x1

    .line 1608
    .local v28, hasAlarm:Z
    :goto_9
    if-eqz v28, :cond_15

    .line 1609
    sget-object v4, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    .line 1610
    .local v4, uri:Landroid/net/Uri;
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "event_id=%d AND (method=1 OR method=0)"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/htc/calendar/EditEvent;->mEventId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1611
    .local v6, where:Ljava/lang/String;
    sget-object v5, Lcom/htc/calendar/EditEvent;->REMINDERS_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v40

    .line 1615
    .local v40, reminderCursor:Landroid/database/Cursor;
    :goto_a
    :try_start_0
    invoke-interface/range {v40 .. v40}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1616
    const/4 v5, 0x1

    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1617
    .local v13, minutes:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/calendar/EditEvent;->mReminderLabels:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-static {v0, v5, v7, v13}, Lcom/htc/calendar/EditEvent;->addMinutesToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_a

    .line 1631
    .end local v13           #minutes:I
    :catchall_0
    move-exception v5

    invoke-interface/range {v40 .. v40}, Landroid/database/Cursor;->isClosed()Z

    move-result v7

    if-nez v7, :cond_f

    .line 1632
    invoke-interface/range {v40 .. v40}, Landroid/database/Cursor;->close()V

    .line 1634
    :cond_f
    const/16 v40, 0x0

    throw v5

    .line 1602
    .end local v3           #cr:Landroid/content/ContentResolver;
    .end local v4           #uri:Landroid/net/Uri;
    .end local v6           #where:Ljava/lang/String;
    .end local v28           #hasAlarm:Z
    .end local v40           #reminderCursor:Landroid/database/Cursor;
    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    goto :goto_8

    .line 1606
    .restart local v3       #cr:Landroid/content/ContentResolver;
    :cond_11
    const/16 v28, 0x0

    goto :goto_9

    .line 1621
    .restart local v4       #uri:Landroid/net/Uri;
    .restart local v6       #where:Ljava/lang/String;
    .restart local v28       #hasAlarm:Z
    .restart local v40       #reminderCursor:Landroid/database/Cursor;
    :cond_12
    const/4 v5, -0x1

    :try_start_1
    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1622
    :goto_b
    invoke-interface/range {v40 .. v40}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1623
    const/4 v5, 0x1

    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1624
    .restart local v13       #minutes:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mOriginalMinutes:Ljava/util/ArrayList;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1626
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/htc/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/calendar/EditEvent;->mReminderValues:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/calendar/EditEvent;->mReminderLabels:Ljava/util/ArrayList;

    move-object/from16 v7, p0

    move-object/from16 v8, p0

    move-object/from16 v9, p0

    invoke-direct/range {v7 .. v13}, Lcom/htc/calendar/EditEvent;->addReminder(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_b

    .line 1631
    .end local v13           #minutes:I
    :cond_13
    invoke-interface/range {v40 .. v40}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_14

    .line 1632
    invoke-interface/range {v40 .. v40}, Landroid/database/Cursor;->close()V

    .line 1634
    :cond_14
    const/16 v40, 0x0

    .line 1637
    .end local v4           #uri:Landroid/net/Uri;
    .end local v6           #where:Ljava/lang/String;
    .end local v40           #reminderCursor:Landroid/database/Cursor;
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/EditEvent;->updateRemindersVisibility()V

    .line 1640
    new-instance v22, Lcom/htc/calendar/EditEvent$4;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/calendar/EditEvent$4;-><init>(Lcom/htc/calendar/EditEvent;)V

    .line 1648
    .local v22, addReminderOnClickListener:Landroid/view/View$OnClickListener;
    new-instance v5, Lcom/htc/calendar/DeleteEventHelper;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v7}, Lcom/htc/calendar/DeleteEventHelper;-><init>(Landroid/app/Activity;Z)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/htc/calendar/EditEvent;->mDeleteEventHelper:Lcom/htc/calendar/DeleteEventHelper;

    .line 1651
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mSyncAccountType:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/htc/calendar/HtcUtils;->isHTCFacebookEvent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1652
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mComposeTitle:Lcom/htc/calendar/widget/ComposeTitle;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/htc/calendar/widget/ComposeTitle;->setComposeTitleType(I)V

    .line 1656
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/htc/calendar/EditEvent;->mHasAttendeeData:Z

    if-eqz v5, :cond_17

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/htc/calendar/EditEvent;->mEventId:J

    const-wide/16 v9, -0x1

    cmp-long v5, v7, v9

    if-eqz v5, :cond_17

    .line 1657
    sget-object v4, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    .line 1658
    .restart local v4       #uri:Landroid/net/Uri;
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/htc/calendar/EditEvent;->mEventId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v20, v5

    .line 1659
    .local v20, whereArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/EditEvent;->mQueryHandler:Lcom/htc/calendar/EditEvent$QueryHandler;

    const/4 v15, 0x3

    const/16 v16, 0x0

    sget-object v18, Lcom/htc/calendar/EditEvent;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    const-string v19, "event_id=? AND attendeeRelationship<>2"

    const/16 v21, 0x0

    move-object/from16 v17, v4

    invoke-virtual/range {v14 .. v21}, Lcom/htc/calendar/EditEvent$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1662
    .end local v4           #uri:Landroid/net/Uri;
    .end local v20           #whereArgs:[Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    if-nez v5, :cond_18

    .line 1665
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/EditEvent;->getIntent()Landroid/content/Intent;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/htc/calendar/EditEvent;->initFromIntent(Landroid/content/Intent;)V

    .line 1667
    :cond_18
    return-void
.end method

.method private initFromIntent(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v7, -0x1

    .line 1729
    const-string v6, "title"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1730
    .local v4, title:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 1731
    iget-object v6, p0, Lcom/htc/calendar/EditEvent;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1734
    :cond_0
    const-string v6, "eventLocation"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1735
    .local v2, location:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 1736
    iget-object v6, p0, Lcom/htc/calendar/EditEvent;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1739
    :cond_1
    const-string v6, "description"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1740
    .local v1, description:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1741
    iget-object v6, p0, Lcom/htc/calendar/EditEvent;->mDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1742
    invoke-direct {p0, v1}, Lcom/htc/calendar/EditEvent;->cacheDescription(Ljava/lang/String;)V

    .line 1745
    :cond_2
    const-string v6, "availability"

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1746
    .local v0, availability:I
    if-eq v0, v7, :cond_3

    .line 1747
    iget-object v6, p0, Lcom/htc/calendar/EditEvent;->mAvailabilitySpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v6, v0}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 1750
    :cond_3
    const-string v6, "accessLevel"

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1751
    .local v5, visibility:I
    if-eq v5, v7, :cond_4

    .line 1752
    iget-object v6, p0, Lcom/htc/calendar/EditEvent;->mVisibilitySpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v6, v5}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 1755
    :cond_4
    const-string v6, "rrule"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1756
    .local v3, rrule:Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 1757
    iput-object v3, p0, Lcom/htc/calendar/EditEvent;->mRrule:Ljava/lang/String;

    .line 1758
    iget-object v6, p0, Lcom/htc/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    invoke-virtual {v6, v3}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 1760
    :cond_5
    return-void
.end method

.method private initMultiAutoCompleteTextView(I)Landroid/widget/MultiAutoCompleteTextView;
    .locals 2
    .parameter "res"

    .prologue
    .line 1708
    invoke-virtual {p0, p1}, Lcom/htc/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/MultiAutoCompleteTextView;

    .line 1709
    .local v0, list:Landroid/widget/MultiAutoCompleteTextView;
    iget-object v1, p0, Lcom/htc/calendar/EditEvent;->mAddressAdapter:Lcom/htc/calendar/EmailAddressAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1710
    new-instance v1, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v1}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 1711
    iget-object v1, p0, Lcom/htc/calendar/EditEvent;->mEmailValidator:Lcom/android/common/Rfc822Validator;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 1714
    sget-object v1, Lcom/htc/calendar/EditEvent;->sRecipientFilters:[Landroid/text/InputFilter;

    invoke-virtual {v0, v1}, Landroid/widget/MultiAutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1716
    return-object v0
.end method

.method private isCustomRecurrence()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3907
    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget-object v2, v2, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 3942
    :cond_0
    :goto_0
    return v0

    .line 3911
    :cond_1
    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mSyncAccountType:Ljava/lang/String;

    invoke-static {v2}, Lcom/htc/calendar/HtcUtils;->isHTCExchangeEvent(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3912
    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->interval:I

    if-nez v2, :cond_0

    .line 3917
    :cond_2
    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    if-nez v2, :cond_3

    move v0, v1

    .line 3918
    goto :goto_0

    .line 3921
    :cond_3
    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 3923
    goto :goto_0

    .line 3925
    :pswitch_1
    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    invoke-virtual {v2}, Lcom/android/calendarcommon/EventRecurrence;->repeatsOnEveryWeekDay()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/htc/calendar/EditEvent;->isWeekdayEvent()Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    .line 3926
    goto :goto_0

    .line 3927
    :cond_4
    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    if-ne v2, v0, :cond_0

    move v0, v1

    .line 3928
    goto :goto_0

    .line 3932
    :pswitch_2
    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    invoke-virtual {v2}, Lcom/android/calendarcommon/EventRecurrence;->repeatsMonthlyOnDayCount()Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    .line 3933
    goto :goto_0

    .line 3934
    :cond_5
    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v2, v2, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    if-ne v2, v0, :cond_0

    move v0, v1

    .line 3935
    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 3939
    goto :goto_0

    .line 3921
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isEmailListSame(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "strUI"
    .parameter "strDB"

    .prologue
    const/4 v7, 0x0

    .line 3337
    const-string v8, "EditEvent"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isEmailListSame() strUI: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ",strDB"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3338
    const-string v8, ";"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 3339
    .local v6, strUIArray:[Ljava/lang/String;
    const-string v8, ";"

    invoke-virtual {p2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3340
    .local v5, strDBArray:[Ljava/lang/String;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 3341
    .local v4, mUIMail:Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 3348
    .end local v4           #mUIMail:Ljava/lang/String;
    :cond_0
    :goto_1
    return v7

    .line 3340
    .restart local v4       #mUIMail:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3344
    .end local v4           #mUIMail:Ljava/lang/String;
    :cond_2
    move-object v0, v5

    array-length v2, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 3345
    .local v3, mDBMail:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 3344
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3348
    .end local v3           #mDBMail:Ljava/lang/String;
    :cond_3
    const/4 v7, 0x1

    goto :goto_1
.end method

.method private isEmpty()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 3887
    iget-object v4, p0, Lcom/htc/calendar/EditEvent;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 3888
    .local v2, title:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 3902
    :cond_0
    :goto_0
    return v3

    .line 3892
    :cond_1
    iget-object v4, p0, Lcom/htc/calendar/EditEvent;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 3893
    .local v1, location:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_0

    .line 3897
    invoke-direct {p0}, Lcom/htc/calendar/EditEvent;->getDescription()Ljava/lang/String;

    move-result-object v0

    .line 3898
    .local v0, description:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_0

    .line 3902
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private isFirstEventInSeries()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    .line 3352
    iget-object v6, p0, Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const-string v7, "dtstart"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 3353
    .local v2, dtStartIdx:I
    iget-object v6, p0, Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 3357
    .local v0, dbStartTime:J
    new-instance v3, Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 3358
    .local v3, localTime:Landroid/text/format/Time;
    invoke-virtual {v3}, Landroid/text/format/Time;->setToNow()V

    .line 3360
    new-instance v4, Landroid/text/format/Time;

    iget-object v6, p0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget-object v6, v6, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-direct {v4, v6}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 3362
    .local v4, startT:Landroid/text/format/Time;
    invoke-virtual {v4, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 3363
    invoke-virtual {v4, v5}, Landroid/text/format/Time;->normalize(Z)J

    .line 3365
    iget v6, v4, Landroid/text/format/Time;->year:I

    iget-object v7, p0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget v7, v7, Landroid/text/format/Time;->year:I

    if-ne v6, v7, :cond_0

    iget v6, v4, Landroid/text/format/Time;->month:I

    iget-object v7, p0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget v7, v7, Landroid/text/format/Time;->month:I

    if-ne v6, v7, :cond_0

    iget v6, v4, Landroid/text/format/Time;->monthDay:I

    iget-object v7, p0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget v7, v7, Landroid/text/format/Time;->monthDay:I

    if-ne v6, v7, :cond_0

    .line 3370
    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private isTextPlain()Z
    .locals 1

    .prologue
    .line 5312
    iget v0, p0, Lcom/htc/calendar/EditEvent;->mDescMimeType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWeekdayEvent()Z
    .locals 2

    .prologue
    .line 3946
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 3947
    const/4 v0, 0x1

    .line 3949
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchPreviewInCalendar()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 5080
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.calendar.Preview"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5082
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "title"

    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5083
    const-string v1, "location"

    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5084
    const-string v1, "allDay"

    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5085
    const-string v1, "dtStart"

    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 5086
    const-string v1, "dtEnd"

    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v2, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 5087
    const-string v1, "isPreview"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5088
    invoke-virtual {p0, v0}, Lcom/htc/calendar/EditEvent;->startActivity(Landroid/content/Intent;)V

    .line 5089
    return-void
.end method

.method private populateRepeats(Z)V
    .locals 23
    .parameter "updateSelection"

    .prologue
    .line 2352
    new-instance v18, Landroid/text/format/Time;

    invoke-direct/range {v18 .. v18}, Landroid/text/format/Time;-><init>()V

    .line 2353
    .local v18, time:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 2354
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/calendar/EditEvent;->mAllDay:Z

    if-nez v4, :cond_0

    .line 2355
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 2358
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 2359
    .local v8, r:Landroid/content/res/Resources;
    const v6, 0x20900ee

    .line 2361
    .local v6, resource:I
    const/4 v4, 0x7

    new-array v10, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v21, 0x14

    move/from16 v0, v21

    invoke-static {v5, v0}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v4

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/16 v21, 0x14

    move/from16 v0, v21

    invoke-static {v5, v0}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v4

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/16 v21, 0x14

    move/from16 v0, v21

    invoke-static {v5, v0}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v4

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/16 v21, 0x14

    move/from16 v0, v21

    invoke-static {v5, v0}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v4

    const/4 v4, 0x4

    const/4 v5, 0x5

    const/16 v21, 0x14

    move/from16 v0, v21

    invoke-static {v5, v0}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v4

    const/4 v4, 0x5

    const/4 v5, 0x6

    const/16 v21, 0x14

    move/from16 v0, v21

    invoke-static {v5, v0}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v4

    const/4 v4, 0x6

    const/4 v5, 0x7

    const/16 v21, 0x14

    move/from16 v0, v21

    invoke-static {v5, v0}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v10, v4

    .line 2370
    .local v10, days:[Ljava/lang/String;
    const v4, 0x7f06000a

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    .line 2375
    .local v15, ordinals:[Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/EditEvent;->isCustomRecurrence()Z

    move-result v13

    .line 2376
    .local v13, isCustomRecurrence:Z
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/EditEvent;->isWeekdayEvent()Z

    move-result v14

    .line 2378
    .local v14, isWeekdayEvent:Z
    const-string v4, "EditEvent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "isCustomRecurrence:"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v21, " isWeekdayEvent:"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2379
    new-instance v7, Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2380
    .local v7, repeatArray:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v17, Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2382
    .local v17, recurrenceIndexes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const v4, 0x7f0800b6

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2383
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2385
    const v4, 0x7f0800b7

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2386
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2388
    if-eqz v14, :cond_1

    .line 2389
    const v4, 0x7f0800b8

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2390
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2393
    :cond_1
    const v4, 0x7f0800b9

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2394
    .local v12, format:Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v21, 0x0

    const-string v22, "%A"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v5, v21

    invoke-static {v4, v12, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2395
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2398
    move-object/from16 v0, v18

    iget v4, v0, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v4, v4, -0x1

    div-int/lit8 v9, v4, 0x7

    .line 2399
    .local v9, dayNumber:I
    const v4, 0x7f0800ba

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2400
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v21, 0x0

    aget-object v22, v15, v9

    aput-object v22, v5, v21

    const/16 v21, 0x1

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    move/from16 v22, v0

    aget-object v22, v10, v22

    aput-object v22, v5, v21

    invoke-static {v4, v12, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2401
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2403
    const v4, 0x7f08000a

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2404
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v21, 0x0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v5, v21

    invoke-static {v4, v12, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2405
    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2407
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v19

    .line 2408
    .local v19, when:J
    const v4, 0x7f0800bd

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 2409
    const/4 v11, 0x0

    .line 2410
    .local v11, flags:I
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2411
    or-int/lit16 v11, v11, 0x80

    .line 2413
    :cond_2
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-static {v0, v1, v2, v11}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v5, v21

    invoke-static {v4, v12, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2414
    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2416
    if-eqz v13, :cond_3

    .line 2417
    const v4, 0x7f08000b

    invoke-virtual {v8, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2418
    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2420
    :cond_3
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/calendar/EditEvent;->mRecurrenceIndexes:Ljava/util/ArrayList;

    .line 2423
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/calendar/EditEvent;->mSelectedRepeatItem:I

    if-gez v4, :cond_6

    .line 2424
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v16

    .line 2428
    .local v16, position:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EditEvent;->mRrule:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2429
    if-eqz v13, :cond_7

    .line 2430
    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/calendar/EditEvent;->miPosition:I

    .line 2455
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/calendar/EditEvent;->mbIsSelected:Z

    if-nez v4, :cond_4

    .line 2456
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/EditEvent;->miPosition:I

    move/from16 v16, v0

    .line 2459
    :cond_4
    new-instance v3, Lcom/htc/calendar/EditEvent$11;

    move-object/from16 v4, p0

    move-object/from16 v5, p0

    invoke-direct/range {v3 .. v8}, Lcom/htc/calendar/EditEvent$11;-><init>(Lcom/htc/calendar/EditEvent;Landroid/content/Context;ILjava/util/List;Landroid/content/res/Resources;)V

    .line 2471
    .local v3, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v4, 0x20900af

    invoke-virtual {v3, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 2473
    const-string v4, "EditEvent"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mRepeatsSpinner count: "

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mRepeatsSpinner:Lcom/htc/widget/HtcSpinner;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/htc/widget/HtcSpinner;->getCount()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v21, " position: "

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2474
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EditEvent;->mRepeatsSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v4, v3}, Lcom/htc/widget/HtcSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2475
    if-eqz p1, :cond_5

    .line 2476
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EditEvent;->mRepeatsSpinner:Lcom/htc/widget/HtcSpinner;

    const/4 v5, 0x1

    move/from16 v0, v16

    invoke-virtual {v4, v0, v5}, Lcom/htc/widget/HtcSpinner;->setSelection(IZ)V

    .line 2478
    :cond_5
    return-void

    .line 2426
    .end local v3           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v16           #position:I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/EditEvent;->mSelectedRepeatItem:I

    move/from16 v16, v0

    .restart local v16       #position:I
    goto/16 :goto_0

    .line 2432
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    iget v4, v4, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 2434
    :pswitch_0
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/calendar/EditEvent;->miPosition:I

    goto/16 :goto_1

    .line 2437
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    invoke-virtual {v4}, Lcom/android/calendarcommon/EventRecurrence;->repeatsOnEveryWeekDay()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2438
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/calendar/EditEvent;->miPosition:I

    goto/16 :goto_1

    .line 2440
    :cond_8
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/calendar/EditEvent;->miPosition:I

    goto/16 :goto_1

    .line 2444
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    invoke-virtual {v4}, Lcom/android/calendarcommon/EventRecurrence;->repeatsMonthlyOnDayCount()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2445
    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/calendar/EditEvent;->miPosition:I

    goto/16 :goto_1

    .line 2447
    :cond_9
    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/calendar/EditEvent;->miPosition:I

    goto/16 :goto_1

    .line 2451
    :pswitch_3
    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/calendar/EditEvent;->miPosition:I

    goto/16 :goto_1

    .line 2432
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private populateTimezone()V
    .locals 2

    .prologue
    .line 2191
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mTimezoneButton:Landroid/widget/Button;

    new-instance v1, Lcom/htc/calendar/EditEvent$7;

    invoke-direct {v1, p0}, Lcom/htc/calendar/EditEvent$7;-><init>(Lcom/htc/calendar/EditEvent;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2198
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mTimezoneAdapter:Lcom/htc/calendar/TimezoneAdapter;

    iget-object v1, p0, Lcom/htc/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/htc/calendar/TimezoneAdapter;->getRowById(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/calendar/EditEvent;->setTimezone(I)V

    .line 2199
    return-void
.end method

.method private populateWhen()V
    .locals 15

    .prologue
    const-wide/32 v9, 0x36ee80

    const/16 v14, 0x7ef

    const/4 v13, 0x0

    .line 2137
    iget-object v5, p0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v5, v13}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 2138
    .local v2, startMillis:J
    iget-object v5, p0, Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v5, v13}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 2144
    .local v0, endMillis:J
    const-string v5, "EditEvent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mDayOffset: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p0, Lcom/htc/calendar/EditEvent;->mDayOffset:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mOrigYear: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/calendar/EditEvent;->mOrigYear:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mOrigMonth: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/calendar/EditEvent;->mOrigMonth:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mOrigDay: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/htc/calendar/EditEvent;->mOrigDay:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    iget-boolean v5, p0, Lcom/htc/calendar/EditEvent;->mAllDay:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_0

    .line 2146
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .line 2147
    .local v4, time:Landroid/text/format/Time;
    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    .line 2148
    iget v5, p0, Lcom/htc/calendar/EditEvent;->mOrigYear:I

    iput v5, v4, Landroid/text/format/Time;->year:I

    .line 2149
    iget v5, p0, Lcom/htc/calendar/EditEvent;->mOrigMonth:I

    iput v5, v4, Landroid/text/format/Time;->month:I

    .line 2150
    iget v5, p0, Lcom/htc/calendar/EditEvent;->mOrigDay:I

    iput v5, v4, Landroid/text/format/Time;->monthDay:I

    .line 2151
    invoke-virtual {v4, v13}, Landroid/text/format/Time;->normalize(Z)J

    .line 2153
    iget-wide v5, p0, Lcom/htc/calendar/EditEvent;->mDayOffset:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_3

    .line 2154
    add-long v0, v2, v9

    .line 2159
    :goto_0
    iget-object v5, p0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v5, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 2160
    iget-object v5, p0, Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v5, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 2167
    .end local v4           #time:Landroid/text/format/Time;
    :cond_0
    iget-object v5, p0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->year:I

    if-lt v5, v14, :cond_1

    .line 2168
    iget-object v5, p0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/16 v6, 0x7ee

    iput v6, v5, Landroid/text/format/Time;->year:I

    .line 2169
    iget-object v5, p0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v5, v13}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    .line 2171
    :cond_1
    iget-object v5, p0, Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iget v5, v5, Landroid/text/format/Time;->year:I

    if-lt v5, v14, :cond_2

    .line 2172
    iget-object v5, p0, Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iget-object v6, p0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v5, v6}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 2173
    iget-object v5, p0, Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v5, v13}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 2176
    :cond_2
    iget-object v5, p0, Lcom/htc/calendar/EditEvent;->mStartDateButton:Landroid/widget/Button;

    invoke-direct {p0, v5, v2, v3}, Lcom/htc/calendar/EditEvent;->setDate(Landroid/widget/TextView;J)V

    .line 2177
    iget-object v5, p0, Lcom/htc/calendar/EditEvent;->mEndDateButton:Landroid/widget/Button;

    invoke-direct {p0, v5, v0, v1}, Lcom/htc/calendar/EditEvent;->setDate(Landroid/widget/TextView;J)V

    .line 2179
    iget-object v5, p0, Lcom/htc/calendar/EditEvent;->mStartTimeButton:Landroid/widget/Button;

    invoke-direct {p0, v5, v2, v3}, Lcom/htc/calendar/EditEvent;->setTime(Landroid/widget/TextView;J)V

    .line 2180
    iget-object v5, p0, Lcom/htc/calendar/EditEvent;->mEndTimeButton:Landroid/widget/Button;

    invoke-direct {p0, v5, v0, v1}, Lcom/htc/calendar/EditEvent;->setTime(Landroid/widget/TextView;J)V

    .line 2182
    iget-object v5, p0, Lcom/htc/calendar/EditEvent;->mStartDateButton:Landroid/widget/Button;

    new-instance v6, Lcom/htc/calendar/EditEvent$DateClickListener;

    iget-object v7, p0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-direct {v6, p0, v7}, Lcom/htc/calendar/EditEvent$DateClickListener;-><init>(Lcom/htc/calendar/EditEvent;Landroid/text/format/Time;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2183
    iget-object v5, p0, Lcom/htc/calendar/EditEvent;->mEndDateButton:Landroid/widget/Button;

    new-instance v6, Lcom/htc/calendar/EditEvent$DateClickListener;

    iget-object v7, p0, Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-direct {v6, p0, v7}, Lcom/htc/calendar/EditEvent$DateClickListener;-><init>(Lcom/htc/calendar/EditEvent;Landroid/text/format/Time;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2185
    iget-object v5, p0, Lcom/htc/calendar/EditEvent;->mStartTimeButton:Landroid/widget/Button;

    new-instance v6, Lcom/htc/calendar/EditEvent$TimeClickListener;

    iget-object v7, p0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-direct {v6, p0, v7}, Lcom/htc/calendar/EditEvent$TimeClickListener;-><init>(Lcom/htc/calendar/EditEvent;Landroid/text/format/Time;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2186
    iget-object v5, p0, Lcom/htc/calendar/EditEvent;->mEndTimeButton:Landroid/widget/Button;

    new-instance v6, Lcom/htc/calendar/EditEvent$TimeClickListener;

    iget-object v7, p0, Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-direct {v6, p0, v7}, Lcom/htc/calendar/EditEvent$TimeClickListener;-><init>(Lcom/htc/calendar/EditEvent;Landroid/text/format/Time;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2187
    return-void

    .line 2156
    .restart local v4       #time:Landroid/text/format/Time;
    :cond_3
    add-long v5, v2, v9

    const-wide/32 v7, 0x5265c00

    iget-wide v9, p0, Lcom/htc/calendar/EditEvent;->mDayOffset:J

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    mul-long/2addr v7, v9

    add-long v0, v5, v7

    goto/16 :goto_0
.end method

.method private processLocationResult(Landroid/content/Intent;)Ljava/lang/String;
    .locals 10
    .parameter "data"

    .prologue
    .line 5179
    const-string v6, ""

    .line 5180
    .local v6, showResult:Ljava/lang/String;
    const-string v8, "RETURN_ADDRESS"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5181
    .local v0, address:Ljava/lang/String;
    const-string v8, "RETURN_LATITUDE_TEXT"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5182
    .local v3, lat:Ljava/lang/String;
    const-string v8, "RETURN_LONGITUDE_TEXT"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5183
    .local v4, lon:Ljava/lang/String;
    const-string v8, "RETURN_URL"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5184
    .local v7, url:Ljava/lang/String;
    const-string v8, "RETURN_TYPE"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 5187
    .local v5, mReturnType:I
    invoke-static {p0}, Lcom/htc/calendar/HtcUtils;->getLocationPickerVersion(Landroid/content/Context;)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    .line 5189
    .local v1, fVer:D
    invoke-static {p0}, Lcom/htc/calendar/HtcUtils;->IsLaputaPackageExist(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_0

    const-wide v8, 0x3ff3333333333333L

    cmpl-double v8, v1, v8

    if-ltz v8, :cond_4

    .line 5190
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 5191
    move-object v6, v0

    .line 5219
    :cond_1
    :goto_0
    return-object v6

    .line 5192
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 5193
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "{"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "}"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 5194
    :cond_3
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 5195
    move-object v6, v7

    goto :goto_0

    .line 5198
    :cond_4
    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 5200
    :pswitch_0
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 5201
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "{"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "}"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 5205
    :pswitch_1
    if-eqz v0, :cond_1

    .line 5206
    move-object v6, v0

    goto :goto_0

    .line 5210
    :pswitch_2
    if-eqz v7, :cond_1

    .line 5211
    move-object v6, v7

    goto :goto_0

    .line 5198
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private providerChangeAllFollowing(Ljava/lang/String;)Z
    .locals 1
    .parameter "account_type"

    .prologue
    .line 4511
    invoke-static {p1}, Lcom/htc/calendar/HtcUtils;->isHTCExchangeEvent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/htc/calendar/HtcUtils;->isHTCPCSyncEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4513
    :cond_0
    const/4 v0, 0x0

    .line 4515
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private providerChangeSingleOne(Ljava/lang/String;)Z
    .locals 2
    .parameter "account_type"

    .prologue
    const/4 v0, 0x1

    .line 4500
    invoke-static {p1}, Lcom/htc/calendar/HtcUtils;->isHTCPCSyncEvent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4501
    const/4 v0, 0x0

    .line 4505
    :cond_0
    :goto_0
    return v0

    .line 4502
    :cond_1
    invoke-static {p1}, Lcom/htc/calendar/HtcUtils;->isHTCExchangeEvent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method private queryCalendars()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 5110
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mQueryHandler:Lcom/htc/calendar/EditEvent$QueryHandler;

    const/4 v1, 0x1

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/htc/calendar/EditEvent;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const-string v5, "calendar_access_level>=500 AND sync_events=1"

    const-string v7, "displayOrder,_id,calendar_displayName,account_name"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/calendar/EditEvent$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 5117
    return-void
.end method

.method private queryEvents()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 5100
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mQueryHandler:Lcom/htc/calendar/EditEvent$QueryHandler;

    const/4 v1, 0x2

    iget-object v3, p0, Lcom/htc/calendar/EditEvent;->mUri:Landroid/net/Uri;

    sget-object v4, Lcom/htc/calendar/EditEvent;->EVENT_PROJECTION:[Ljava/lang/String;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/calendar/EditEvent$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 5107
    return-void
.end method

.method static reminderItemsToMinutes(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3553
    .local p0, reminderItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/LinearLayout;>;"
    .local p1, reminderValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3554
    .local v2, len:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3555
    .local v4, reminderMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 3556
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 3557
    .local v1, layout:Landroid/widget/LinearLayout;
    const v6, 0x7f0d0084

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/htc/widget/HtcSpinner;

    .line 3558
    .local v5, spinner:Lcom/htc/widget/HtcSpinner;
    invoke-virtual {v5}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3559
    .local v3, minutes:I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3555
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3561
    .end local v1           #layout:Landroid/widget/LinearLayout;
    .end local v3           #minutes:I
    .end local v5           #spinner:Lcom/htc/widget/HtcSpinner;
    :cond_0
    return-object v4
.end method

.method private requestSip(ZLandroid/view/View;)V
    .locals 5
    .parameter "show"
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 5262
    sget-boolean v1, Lcom/htc/calendar/EditEvent;->DEBUG_HTC:Z

    if-eqz v1, :cond_0

    .line 5263
    const-string v2, "EditEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " View:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p2, :cond_2

    const-string v1, "null"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5265
    :cond_0
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/htc/calendar/EditEvent;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 5266
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 5267
    invoke-virtual {v0, p2, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 5277
    :cond_1
    :goto_1
    return-void

    .line 5263
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 5268
    .restart local v0       #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    if-nez p1, :cond_1

    .line 5269
    if-nez p2, :cond_4

    .line 5270
    iget-object v1, p0, Lcom/htc/calendar/EditEvent;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 5271
    iget-object v1, p0, Lcom/htc/calendar/EditEvent;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1

    .line 5274
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1
.end method

.method private save()Z
    .locals 3

    .prologue
    .line 2669
    :try_start_0
    invoke-direct {p0}, Lcom/htc/calendar/EditEvent;->doSave()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2674
    :goto_0
    return v1

    .line 2670
    :catch_0
    move-exception v0

    .line 2671
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "EditEvent"

    const-string v2, "save exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2672
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2674
    const/4 v1, 0x1

    goto :goto_0
.end method

.method static saveReminders(Ljava/util/ArrayList;JLjava/util/ArrayList;Ljava/util/ArrayList;Z)Z
    .locals 15
    .parameter
    .parameter "eventId"
    .parameter
    .parameter
    .parameter "forceSave"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 3580
    .local p0, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p3, reminderMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p4, originalMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual/range {p3 .. p4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    if-nez p5, :cond_0

    .line 3581
    const/4 v13, 0x0

    .line 3621
    :goto_0
    return v13

    .line 3585
    :cond_0
    const-string v12, "event_id=?"

    .line 3586
    .local v12, where:Ljava/lang/String;
    const/4 v13, 0x1

    new-array v2, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v2, v13

    .line 3587
    .local v2, args:[Ljava/lang/String;
    sget-object v13, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 3588
    .local v3, b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v3, v12, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 3589
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    invoke-virtual {p0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3591
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 3592
    .local v11, values:Landroid/content/ContentValues;
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 3595
    .local v7, len:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v7, :cond_1

    .line 3596
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 3598
    .local v8, minutes:I
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 3599
    const-string v13, "minutes"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3600
    const-string v13, "method"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3601
    const-string v13, "event_id"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3602
    sget-object v13, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v13}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 3603
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    invoke-virtual {p0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3595
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3607
    .end local v8           #minutes:I
    :cond_1
    const/4 v4, 0x0

    .line 3608
    .local v4, hasReminder:Z
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 3609
    .local v9, reminder:Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ltz v13, :cond_2

    .line 3610
    const/4 v4, 0x1

    .line 3615
    .end local v9           #reminder:Ljava/lang/Integer;
    :cond_3
    sget-object v13, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v13, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 3616
    .local v10, uri:Landroid/net/Uri;
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 3617
    const-string v14, "hasAlarm"

    if-eqz v4, :cond_4

    const/4 v13, 0x1

    :goto_2
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3618
    invoke-static {v10}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v13

    invoke-virtual {v13, v11}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v3

    .line 3619
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v13

    invoke-virtual {p0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3621
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 3617
    :cond_4
    const/4 v13, 0x0

    goto :goto_2
.end method

.method static saveRemindersWithBackRef(Ljava/util/ArrayList;ILjava/util/ArrayList;Ljava/util/ArrayList;Z)Z
    .locals 9
    .parameter
    .parameter "eventIdIndex"
    .parameter
    .parameter
    .parameter "forceSave"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .local p0, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .local p2, reminderMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p3, originalMinutes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 3628
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-nez p4, :cond_0

    .line 3652
    :goto_0
    return v5

    .line 3633
    :cond_0
    sget-object v7, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 3634
    .local v0, b:Landroid/content/ContentProviderOperation$Builder;
    const-string v7, "event_id=?"

    new-array v8, v6, [Ljava/lang/String;

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 3635
    invoke-virtual {v0, v5, p1}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    .line 3636
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3638
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 3639
    .local v4, values:Landroid/content/ContentValues;
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3642
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 3643
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 3645
    .local v3, minutes:I
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 3646
    const-string v5, "minutes"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3647
    const-string v5, "method"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3648
    sget-object v5, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 3649
    const-string v5, "event_id"

    invoke-virtual {v0, v5, p1}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 3650
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3642
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3           #minutes:I
    :cond_1
    move v5, v6

    .line 3652
    goto :goto_0
.end method

.method private setDate(Landroid/widget/TextView;J)V
    .locals 7
    .parameter "view"
    .parameter "millis"

    .prologue
    .line 2612
    const v5, 0x18016

    .line 2621
    .local v5, flags:I
    sget-object v0, Lcom/htc/calendar/EditEvent;->mSB:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    move-object v0, p0

    move-wide v1, p2

    move-wide v3, p2

    .line 2624
    invoke-static/range {v0 .. v5}, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2625
    .local v6, dateString:Ljava/lang/String;
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2627
    return-void
.end method

.method private setRepeatContainer(J)V
    .locals 5
    .parameter "duration"

    .prologue
    const/4 v4, 0x0

    .line 4876
    iget-object v1, p0, Lcom/htc/calendar/EditEvent;->mRepeatsSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v1}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v0

    .line 4877
    .local v0, position:I
    const-string v1, "EditEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRepeatContainer position: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4878
    const-wide/32 v1, 0x5265c00

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 4879
    iget-object v1, p0, Lcom/htc/calendar/EditEvent;->mRepeatContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4880
    iget-object v1, p0, Lcom/htc/calendar/EditEvent;->mRepeatsSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 4885
    :goto_0
    return-void

    .line 4882
    :cond_0
    iget-object v1, p0, Lcom/htc/calendar/EditEvent;->mRepeatContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4883
    iget-object v1, p0, Lcom/htc/calendar/EditEvent;->mRepeatsSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v1, v4}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    goto :goto_0
.end method

.method private setTime(Landroid/widget/TextView;J)V
    .locals 9
    .parameter "view"
    .parameter "millis"

    .prologue
    .line 2630
    const/4 v6, 0x1

    .line 2631
    .local v6, flags:I
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2632
    or-int/lit16 v6, v6, 0x80

    .line 2643
    :goto_0
    sget-object v0, Lcom/htc/calendar/EditEvent;->mSB:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2644
    sget-object v1, Lcom/htc/calendar/EditEvent;->mF:Ljava/util/Formatter;

    iget-object v7, p0, Lcom/htc/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p2

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2646
    .local v8, timeString:Ljava/lang/String;
    invoke-virtual {p1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2648
    return-void

    .line 2634
    .end local v8           #timeString:Ljava/lang/String;
    :cond_0
    or-int/lit16 v6, v6, 0x100

    goto :goto_0
.end method

.method private setTimezone(I)V
    .locals 4
    .parameter "i"

    .prologue
    const/4 v3, 0x1

    .line 2653
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/htc/calendar/EditEvent;->mTimezoneAdapter:Lcom/htc/calendar/TimezoneAdapter;

    invoke-virtual {v1}, Lcom/htc/calendar/TimezoneAdapter;->getCount()I

    move-result v1

    if-le p1, v1, :cond_1

    .line 2664
    :cond_0
    :goto_0
    return-void

    .line 2656
    :cond_1
    iget-object v1, p0, Lcom/htc/calendar/EditEvent;->mTimezoneAdapter:Lcom/htc/calendar/TimezoneAdapter;

    invoke-virtual {v1, p1}, Lcom/htc/calendar/TimezoneAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;

    .line 2657
    .local v0, timezone:Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;
    iget-object v1, p0, Lcom/htc/calendar/EditEvent;->mTimezoneButton:Landroid/widget/Button;

    invoke-virtual {v0}, Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;->toOnlyGMTString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2658
    iget-object v1, v0, Lcom/htc/calendar/TimezoneAdapter$TimezoneRow;->mId:Ljava/lang/String;

    iput-object v1, p0, Lcom/htc/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    .line 2659
    iget-object v1, p0, Lcom/htc/calendar/EditEvent;->mTimezoneAdapter:Lcom/htc/calendar/TimezoneAdapter;

    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/htc/calendar/TimezoneAdapter;->setCurrentTimezone(Ljava/lang/String;)V

    .line 2660
    iget-object v1, p0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    iput-object v2, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 2661
    iget-object v1, p0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 2662
    iget-object v1, p0, Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    iput-object v2, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 2663
    iget-object v1, p0, Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    invoke-virtual {v1, v3}, Landroid/text/format/Time;->normalize(Z)J

    goto :goto_0
.end method

.method private showAllTimezone(Landroid/widget/ListView;)V
    .locals 4
    .parameter "listView"

    .prologue
    .line 2280
    move-object v0, p1

    .line 2281
    .local v0, lv:Landroid/widget/ListView;
    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mTimezoneFooterView:Lcom/htc/widget/HtcListItem;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 2282
    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mTimezoneAdapter:Lcom/htc/calendar/TimezoneAdapter;

    invoke-virtual {v2}, Lcom/htc/calendar/TimezoneAdapter;->showAllTimezones()V

    .line 2283
    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mTimezoneAdapter:Lcom/htc/calendar/TimezoneAdapter;

    iget-object v3, p0, Lcom/htc/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/calendar/TimezoneAdapter;->getRowById(Ljava/lang/String;)I

    move-result v1

    .line 2285
    .local v1, row:I
    new-instance v2, Lcom/htc/calendar/EditEvent$8;

    invoke-direct {v2, p0, v0, v1}, Lcom/htc/calendar/EditEvent$8;-><init>(Lcom/htc/calendar/EditEvent;Landroid/widget/ListView;I)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    .line 2292
    return-void
.end method

.method private showCameraButton(Ljava/lang/String;)Z
    .locals 1
    .parameter "account_type"

    .prologue
    .line 4088
    invoke-static {p0, p1}, Lcom/htc/calendar/HtcUtils;->isHTCFacebookEvent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4089
    const/4 v0, 0x1

    .line 4091
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showExtraMenu(Ljava/lang/String;)Z
    .locals 2
    .parameter "account_type"

    .prologue
    const/4 v1, 0x0

    .line 4104
    invoke-static {p1}, Lcom/htc/calendar/HtcUtils;->isHTCExchangeEvent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/htc/calendar/HtcUtils;->isHTCPCSyncEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4109
    :cond_0
    return v1
.end method

.method private showImportance(Ljava/lang/String;)Z
    .locals 2
    .parameter "account_type"

    .prologue
    const/4 v1, 0x0

    .line 4065
    invoke-static {p1}, Lcom/htc/calendar/HtcUtils;->isHTCExchangeEvent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/htc/calendar/HtcUtils;->isHTCPCSyncEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4070
    :cond_0
    return v1
.end method

.method private showInviteGuest(Ljava/lang/String;)Z
    .locals 1
    .parameter "account_type"

    .prologue
    .line 4080
    invoke-static {p1}, Lcom/htc/calendar/HtcUtils;->isHTCPCSyncEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4081
    const/4 v0, 0x0

    .line 4083
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showRepetition(Ljava/lang/String;)Z
    .locals 1
    .parameter "account_type"

    .prologue
    .line 4096
    invoke-static {p0, p1}, Lcom/htc/calendar/HtcUtils;->isHTCFacebookEvent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4097
    const/4 v0, 0x0

    .line 4099
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showTimezoneDialog()V
    .locals 4

    .prologue
    .line 2295
    new-instance v2, Lcom/htc/calendar/TimezoneAdapter;

    iget-object v3, p0, Lcom/htc/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/htc/calendar/TimezoneAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/htc/calendar/EditEvent;->mTimezoneAdapter:Lcom/htc/calendar/TimezoneAdapter;

    .line 2296
    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mTimezoneAdapter:Lcom/htc/calendar/TimezoneAdapter;

    iget-object v3, p0, Lcom/htc/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/calendar/TimezoneAdapter;->getRowById(Ljava/lang/String;)I

    move-result v1

    .line 2297
    .local v1, row:I
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0800d1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/calendar/EditEvent;->mTimezoneAdapter:Lcom/htc/calendar/TimezoneAdapter;

    invoke-virtual {v2, v3, v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/calendar/EditEvent;->mTimezoneDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 2301
    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mTimezoneDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 2302
    .local v0, lv:Landroid/widget/ListView;
    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2313
    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mTimezoneFooterView:Lcom/htc/widget/HtcListItem;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 2314
    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mTimezoneDialog:Lcom/htc/widget/HtcAlertDialog;

    new-instance v3, Lcom/htc/calendar/EditEvent$9;

    invoke-direct {v3, p0, v0}, Lcom/htc/calendar/EditEvent$9;-><init>(Lcom/htc/calendar/EditEvent;Landroid/widget/ListView;)V

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 2328
    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mTimezoneDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 2329
    return-void
.end method

.method private updateAttendee(JJ)V
    .locals 21
    .parameter "old_eventId"
    .parameter "new_eventId"

    .prologue
    .line 4349
    sget-object v2, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    .line 4350
    .local v2, uri:Landroid/net/Uri;
    const-string v7, "event_id=%d"

    .line 4351
    .local v7, ATTENDEES_WHERE:Ljava/lang/String;
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "event_id=%d"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-static {v5, v6, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 4352
    .local v4, where:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v5

    .line 4355
    .local v3, ATTENDEES_PROJECTION:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 4358
    .local v8, INDEX_ATTENDEES_ID:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 4359
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 4361
    .local v11, attendeesCursor:Landroid/database/Cursor;
    if-eqz v11, :cond_3

    .line 4362
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v15

    .line 4366
    .local v15, nCnt:I
    if-eqz v15, :cond_1

    .line 4367
    const/4 v5, -0x1

    invoke-interface {v11, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 4368
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 4369
    .local v13, cv:Landroid/content/ContentValues;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 4370
    .local v16, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4371
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    .line 4372
    invoke-interface {v11, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 4373
    .local v9, attendee_id:J
    sget-object v5, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, v9, v10}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v17

    .line 4374
    .local v17, updateUri:Landroid/net/Uri;
    const-string v5, "event_id"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v13, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4375
    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5, v13}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v12

    .line 4376
    .local v12, b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v12}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4380
    .end local v9           #attendee_id:J
    .end local v12           #b:Landroid/content/ContentProviderOperation$Builder;
    .end local v17           #updateUri:Landroid/net/Uri;
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "com.android.calendar"

    move-object/from16 v0, v16

    invoke-virtual {v5, v6, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4394
    .end local v13           #cv:Landroid/content/ContentValues;
    .end local v16           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_1
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_2

    .line 4395
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 4397
    :cond_2
    const/4 v11, 0x0

    .line 4399
    .end local v15           #nCnt:I
    :cond_3
    return-void

    .line 4387
    .restart local v13       #cv:Landroid/content/ContentValues;
    .restart local v15       #nCnt:I
    .restart local v16       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_0
    move-exception v14

    .line 4388
    .local v14, e:Landroid/os/RemoteException;
    const-string v5, "EditEvent"

    const-string v6, "Ignoring unexpected remote exception"

    invoke-static {v5, v6, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 4389
    .end local v14           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v14

    .line 4390
    .local v14, e:Landroid/content/OperationApplicationException;
    const-string v5, "EditEvent"

    const-string v6, "Ignoring unexpected exception"

    invoke-static {v5, v6, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private updateChildParentID(JJ)V
    .locals 22
    .parameter "old_eventId"
    .parameter "new_eventId"

    .prologue
    .line 4450
    const-string v6, "EditEvent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "updateChildParentID old_eventId:"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p1

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v19, " new_eventId:"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, p3

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4452
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 4453
    .local v3, uri:Landroid/net/Uri;
    const-string v8, "parentID=%d"

    .line 4454
    .local v8, EVENTS_WHERE:Ljava/lang/String;
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "parentID=%d"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, v19

    invoke-static {v6, v7, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 4455
    .local v5, where:Ljava/lang/String;
    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "_id"

    aput-object v7, v4, v6

    .line 4458
    .local v4, EVENTS_PROJECTION:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 4460
    .local v9, INDEX_EVENTS_ID:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 4461
    .local v2, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 4463
    .local v15, eventsCursor:Landroid/database/Cursor;
    if-eqz v15, :cond_3

    .line 4464
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v16

    .line 4468
    .local v16, nCnt:I
    if-eqz v16, :cond_1

    .line 4469
    const/4 v6, -0x1

    invoke-interface {v15, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 4470
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 4471
    .local v11, cv:Landroid/content/ContentValues;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 4472
    .local v17, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4473
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 4474
    invoke-interface {v15, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 4475
    .local v13, event_id:J
    sget-object v6, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v18

    .line 4476
    .local v18, updateUri:Landroid/net/Uri;
    const-string v6, "parentID"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v11, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4477
    invoke-static/range {v18 .. v18}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v6

    invoke-virtual {v6, v11}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 4478
    .local v10, b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4482
    .end local v10           #b:Landroid/content/ContentProviderOperation$Builder;
    .end local v13           #event_id:J
    .end local v18           #updateUri:Landroid/net/Uri;
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "com.android.calendar"

    move-object/from16 v0, v17

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4491
    .end local v11           #cv:Landroid/content/ContentValues;
    .end local v17           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_1
    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_2

    .line 4492
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 4494
    :cond_2
    const/4 v15, 0x0

    .line 4496
    .end local v16           #nCnt:I
    :cond_3
    return-void

    .line 4484
    .restart local v11       #cv:Landroid/content/ContentValues;
    .restart local v16       #nCnt:I
    .restart local v17       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_0
    move-exception v12

    .line 4485
    .local v12, e:Landroid/os/RemoteException;
    const-string v6, "EditEvent"

    const-string v7, "Ignoring unexpected remote exception"

    invoke-static {v6, v7, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 4486
    .end local v12           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v12

    .line 4487
    .local v12, e:Landroid/content/OperationApplicationException;
    const-string v6, "EditEvent"

    const-string v7, "Ignoring unexpected exception"

    invoke-static {v6, v7, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private updateCurrentEventCalendarSyncSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "sync_account_type"
    .parameter "sync_account"

    .prologue
    .line 4712
    iput-object p1, p0, Lcom/htc/calendar/EditEvent;->mSyncAccountType:Ljava/lang/String;

    .line 4713
    iput-object p2, p0, Lcom/htc/calendar/EditEvent;->mSyncAccount:Ljava/lang/String;

    .line 4714
    return-void
.end method

.method private updateHomeTime()V
    .locals 23

    .prologue
    .line 2207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent;->mUpdateTZ:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/htc/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v9

    .line 2208
    .local v9, tz:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    invoke-static {v9, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2209
    const/4 v8, 0x1

    .line 2210
    .local v8, flags:I
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v18

    .line 2211
    .local v18, is24Format:Z
    if-eqz v18, :cond_0

    .line 2212
    or-int/lit16 v8, v8, 0x80

    .line 2214
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 2215
    .local v4, millisStart:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    .line 2217
    .local v12, millisEnd:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->isDst:I

    if-eqz v2, :cond_3

    const/16 v20, 0x1

    .line 2218
    .local v20, isDSTStart:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->isDst:I

    if-eqz v2, :cond_4

    const/16 v19, 0x1

    .line 2221
    .local v19, isDSTEnd:Z
    :goto_1
    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    move/from16 v0, v20

    invoke-virtual {v2, v0, v3, v6}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v22

    .line 2223
    .local v22, tzDisplay:Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 2225
    .local v21, time:Ljava/lang/StringBuilder;
    sget-object v2, Lcom/htc/calendar/EditEvent;->mSB:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2226
    sget-object v3, Lcom/htc/calendar/EditEvent;->mF:Ljava/util/Formatter;

    move-object/from16 v2, p0

    move-wide v6, v4

    invoke-static/range {v2 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent;->mStartTimeHome:Landroid/widget/TextView;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2230
    const v8, 0x80016

    .line 2232
    sget-object v2, Lcom/htc/calendar/EditEvent;->mSB:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent;->mStartDateHome:Landroid/widget/TextView;

    move-object/from16 v3, p0

    move-wide v6, v4

    invoke-static/range {v3 .. v8}, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2239
    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 2240
    invoke-static {v9}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    move/from16 v0, v19

    invoke-virtual {v2, v0, v3, v6}, Ljava/util/TimeZone;->getDisplayName(ZILjava/util/Locale;)Ljava/lang/String;

    move-result-object v22

    .line 2243
    :cond_1
    const/4 v8, 0x1

    .line 2244
    if-eqz v18, :cond_2

    .line 2245
    or-int/lit16 v8, v8, 0x80

    .line 2249
    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2250
    sget-object v2, Lcom/htc/calendar/EditEvent;->mSB:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2251
    sget-object v11, Lcom/htc/calendar/EditEvent;->mF:Ljava/util/Formatter;

    move-object/from16 v10, p0

    move-wide v14, v12

    move/from16 v16, v8

    move-object/from16 v17, v9

    invoke-static/range {v10 .. v17}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent;->mEndTimeHome:Landroid/widget/TextView;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2255
    const v8, 0x80016

    .line 2257
    sget-object v2, Lcom/htc/calendar/EditEvent;->mSB:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent;->mEndDateHome:Landroid/widget/TextView;

    move-object/from16 v11, p0

    move-wide v14, v12

    move/from16 v16, v8

    invoke-static/range {v11 .. v16}, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent;->mStartTimeHome:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent;->mStartDateHome:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2266
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent;->mEndTimeHome:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent;->mEndDateHome:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2274
    .end local v4           #millisStart:J
    .end local v8           #flags:I
    .end local v12           #millisEnd:J
    .end local v18           #is24Format:Z
    .end local v19           #isDSTEnd:Z
    .end local v20           #isDSTStart:Z
    .end local v21           #time:Ljava/lang/StringBuilder;
    .end local v22           #tzDisplay:Ljava/lang/String;
    :goto_2
    return-void

    .line 2217
    .restart local v4       #millisStart:J
    .restart local v8       #flags:I
    .restart local v12       #millisEnd:J
    .restart local v18       #is24Format:Z
    :cond_3
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 2218
    .restart local v20       #isDSTStart:Z
    :cond_4
    const/16 v19, 0x0

    goto/16 :goto_1

    .line 2269
    .end local v4           #millisStart:J
    .end local v8           #flags:I
    .end local v12           #millisEnd:J
    .end local v18           #is24Format:Z
    .end local v20           #isDSTStart:Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent;->mStartTimeHome:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent;->mStartDateHome:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2271
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent;->mEndTimeHome:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2272
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent;->mEndDateHome:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private updatePastEvents(Ljava/util/ArrayList;Landroid/net/Uri;)V
    .locals 16
    .parameter
    .parameter "uri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3378
    .local p1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/4 v15, 0x7

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 3379
    .local v9, oldStartMillis:J
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/16 v15, 0x8

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3380
    .local v7, oldDuration:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/4 v15, 0x4

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    if-eqz v14, :cond_2

    const/4 v1, 0x1

    .line 3381
    .local v1, allDay:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/16 v15, 0xa

    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 3382
    .local v8, oldRrule:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    invoke-virtual {v14, v8}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 3384
    new-instance v13, Landroid/text/format/Time;

    invoke-direct {v13}, Landroid/text/format/Time;-><init>()V

    .line 3385
    .local v13, untilTime:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v15, "beginTime"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 3386
    .local v3, begin:J
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 3392
    .local v11, oldValues:Landroid/content/ContentValues;
    const-string v14, "UTC"

    iput-object v14, v13, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 3396
    const-wide/16 v14, 0x3e8

    sub-long v14, v3, v14

    invoke-virtual {v13, v14, v15}, Landroid/text/format/Time;->set(J)V

    .line 3397
    if-eqz v1, :cond_0

    .line 3398
    const/4 v14, 0x0

    iput v14, v13, Landroid/text/format/Time;->hour:I

    .line 3399
    const/4 v14, 0x0

    iput v14, v13, Landroid/text/format/Time;->minute:I

    .line 3400
    const/4 v14, 0x0

    iput v14, v13, Landroid/text/format/Time;->second:I

    .line 3401
    const/4 v14, 0x1

    iput-boolean v14, v13, Landroid/text/format/Time;->allDay:Z

    .line 3402
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/text/format/Time;->normalize(Z)J

    .line 3407
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    .line 3408
    .local v6, len:I
    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x50

    if-ne v14, v15, :cond_0

    add-int/lit8 v14, v6, -0x1

    invoke-virtual {v7, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x53

    if-ne v14, v15, :cond_0

    .line 3409
    const/4 v14, 0x1

    add-int/lit8 v15, v6, -0x1

    invoke-virtual {v7, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 3410
    .local v12, seconds:I
    const v14, 0x15180

    add-int/2addr v14, v12

    add-int/lit8 v14, v14, -0x1

    const v15, 0x15180

    div-int v5, v14, v15

    .line 3411
    .local v5, days:I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "P"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "D"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3414
    .end local v5           #days:I
    .end local v6           #len:I
    .end local v12           #seconds:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    invoke-virtual {v13}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    .line 3416
    const-string v14, "dtstart"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3417
    const-string v14, "duration"

    invoke-virtual {v11, v14, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3418
    const-string v14, "rrule"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    invoke-virtual {v15}, Lcom/android/calendarcommon/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3420
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/EditEvent;->mEvent_ExDate:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 3421
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/htc/calendar/EditEvent;->mEvent_ExDate:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v9, v10}, Lcom/htc/calendar/EditEvent;->getNewExDate(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/htc/calendar/EditEvent;->mEvent_ExDate:Ljava/lang/String;

    .line 3422
    const-string v14, "exdate"

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/htc/calendar/EditEvent;->mEvent_ExDate:Ljava/lang/String;

    invoke-virtual {v11, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3426
    :cond_1
    invoke-static/range {p2 .. p2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v14

    invoke-virtual {v14, v11}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 3427
    .local v2, b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3428
    return-void

    .line 3380
    .end local v1           #allDay:Z
    .end local v2           #b:Landroid/content/ContentProviderOperation$Builder;
    .end local v3           #begin:J
    .end local v8           #oldRrule:Ljava/lang/String;
    .end local v11           #oldValues:Landroid/content/ContentValues;
    .end local v13           #untilTime:Landroid/text/format/Time;
    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private updateRecurrenceRule()V
    .locals 14

    .prologue
    .line 3690
    new-instance v0, Lcom/android/calendarcommon/EventRecurrence;

    invoke-direct {v0}, Lcom/android/calendarcommon/EventRecurrence;-><init>()V

    .line 3692
    .local v0, __EventRecurrence:Lcom/android/calendarcommon/EventRecurrence;
    iget-object v12, p0, Lcom/htc/calendar/EditEvent;->mRepeatsSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v12}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v9

    .line 3693
    .local v9, position:I
    iget-object v12, p0, Lcom/htc/calendar/EditEvent;->mRecurrenceIndexes:Ljava/util/ArrayList;

    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 3695
    .local v10, selection:I
    new-instance v11, Landroid/text/format/Time;

    invoke-direct {v11}, Landroid/text/format/Time;-><init>()V

    .line 3696
    .local v11, time:Landroid/text/format/Time;
    iget-object v12, p0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    invoke-virtual {v11, v12}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 3701
    if-nez v10, :cond_1

    .line 3702
    const/4 v12, 0x0

    iput-object v12, p0, Lcom/htc/calendar/EditEvent;->mRrule:Ljava/lang/String;

    .line 3781
    :cond_0
    :goto_0
    return-void

    .line 3704
    :cond_1
    const/4 v12, 0x7

    if-eq v10, v12, :cond_0

    .line 3707
    const/4 v12, 0x1

    if-ne v10, v12, :cond_3

    .line 3708
    const/4 v12, 0x4

    iput v12, v0, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    .line 3778
    :cond_2
    :goto_1
    iget v12, p0, Lcom/htc/calendar/EditEvent;->mFirstDayOfWeek:I

    invoke-static {v12}, Lcom/android/calendarcommon/EventRecurrence;->calendarDay2Day(I)I

    move-result v12

    iput v12, v0, Lcom/android/calendarcommon/EventRecurrence;->wkst:I

    .line 3779
    invoke-virtual {v0}, Lcom/android/calendarcommon/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lcom/htc/calendar/EditEvent;->mRrule:Ljava/lang/String;

    goto :goto_0

    .line 3709
    :cond_3
    const/4 v12, 0x2

    if-ne v10, v12, :cond_5

    .line 3710
    const/4 v12, 0x5

    iput v12, v0, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    .line 3711
    const/4 v6, 0x5

    .line 3712
    .local v6, dayCount:I
    new-array v1, v6, [I

    .line 3713
    .local v1, byday:[I
    new-array v2, v6, [I

    .line 3715
    .local v2, bydayNum:[I
    const/4 v12, 0x0

    const/high16 v13, 0x2

    aput v13, v1, v12

    .line 3716
    const/4 v12, 0x1

    const/high16 v13, 0x4

    aput v13, v1, v12

    .line 3717
    const/4 v12, 0x2

    const/high16 v13, 0x8

    aput v13, v1, v12

    .line 3718
    const/4 v12, 0x3

    const/high16 v13, 0x10

    aput v13, v1, v12

    .line 3719
    const/4 v12, 0x4

    const/high16 v13, 0x20

    aput v13, v1, v12

    .line 3720
    const/4 v5, 0x0

    .local v5, day:I
    :goto_2
    if-ge v5, v6, :cond_4

    .line 3721
    const/4 v12, 0x0

    aput v12, v2, v5

    .line 3720
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3724
    :cond_4
    iput-object v1, v0, Lcom/android/calendarcommon/EventRecurrence;->byday:[I

    .line 3725
    iput-object v2, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayNum:[I

    .line 3726
    iput v6, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    goto :goto_1

    .line 3727
    .end local v1           #byday:[I
    .end local v2           #bydayNum:[I
    .end local v5           #day:I
    .end local v6           #dayCount:I
    :cond_5
    const/4 v12, 0x3

    if-ne v10, v12, :cond_6

    .line 3728
    const/4 v12, 0x5

    iput v12, v0, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    .line 3729
    const/4 v12, 0x1

    new-array v8, v12, [I

    .line 3730
    .local v8, days:[I
    const/4 v6, 0x1

    .line 3731
    .restart local v6       #dayCount:I
    new-array v7, v6, [I

    .line 3733
    .local v7, dayNum:[I
    const/4 v12, 0x0

    iget v13, v11, Landroid/text/format/Time;->weekDay:I

    invoke-static {v13}, Lcom/android/calendarcommon/EventRecurrence;->timeDay2Day(I)I

    move-result v13

    aput v13, v8, v12

    .line 3735
    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v13, v7, v12

    .line 3737
    iput-object v8, v0, Lcom/android/calendarcommon/EventRecurrence;->byday:[I

    .line 3738
    iput-object v7, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayNum:[I

    .line 3739
    iput v6, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    goto :goto_1

    .line 3740
    .end local v6           #dayCount:I
    .end local v7           #dayNum:[I
    .end local v8           #days:[I
    :cond_6
    const/4 v12, 0x5

    if-ne v10, v12, :cond_7

    .line 3741
    const/4 v12, 0x6

    iput v12, v0, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    .line 3742
    const/4 v12, 0x0

    iput v12, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    .line 3743
    const/4 v12, 0x1

    iput v12, v0, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    .line 3744
    const/4 v12, 0x1

    new-array v4, v12, [I

    .line 3745
    .local v4, bymonthday:[I
    const/4 v12, 0x0

    iget v13, v11, Landroid/text/format/Time;->monthDay:I

    aput v13, v4, v12

    .line 3746
    iput-object v4, v0, Lcom/android/calendarcommon/EventRecurrence;->bymonthday:[I

    goto :goto_1

    .line 3747
    .end local v4           #bymonthday:[I
    :cond_7
    const/4 v12, 0x4

    if-ne v10, v12, :cond_9

    .line 3748
    const/4 v12, 0x6

    iput v12, v0, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    .line 3749
    const/4 v12, 0x1

    iput v12, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayCount:I

    .line 3750
    const/4 v12, 0x0

    iput v12, v0, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    .line 3752
    const/4 v12, 0x1

    new-array v1, v12, [I

    .line 3753
    .restart local v1       #byday:[I
    const/4 v12, 0x1

    new-array v2, v12, [I

    .line 3755
    .restart local v2       #bydayNum:[I
    iget v12, v11, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v12, v12, -0x1

    div-int/lit8 v12, v12, 0x7

    add-int/lit8 v6, v12, 0x1

    .line 3756
    .restart local v6       #dayCount:I
    const/4 v12, 0x5

    if-ne v6, v12, :cond_8

    .line 3757
    const/4 v6, -0x1

    .line 3759
    :cond_8
    const/4 v12, 0x0

    aput v6, v2, v12

    .line 3760
    const/4 v12, 0x0

    iget v13, v11, Landroid/text/format/Time;->weekDay:I

    invoke-static {v13}, Lcom/android/calendarcommon/EventRecurrence;->timeDay2Day(I)I

    move-result v13

    aput v13, v1, v12

    .line 3761
    iput-object v1, v0, Lcom/android/calendarcommon/EventRecurrence;->byday:[I

    .line 3762
    iput-object v2, v0, Lcom/android/calendarcommon/EventRecurrence;->bydayNum:[I

    goto/16 :goto_1

    .line 3763
    .end local v1           #byday:[I
    .end local v2           #bydayNum:[I
    .end local v6           #dayCount:I
    :cond_9
    const/4 v12, 0x6

    if-ne v10, v12, :cond_2

    .line 3764
    const/4 v12, 0x1

    new-array v4, v12, [I

    .line 3765
    .restart local v4       #bymonthday:[I
    const/4 v12, 0x1

    new-array v3, v12, [I

    .line 3767
    .local v3, bymonth:[I
    const/4 v12, 0x0

    iget v13, v11, Landroid/text/format/Time;->month:I

    add-int/lit8 v13, v13, 0x1

    aput v13, v3, v12

    .line 3768
    const/4 v12, 0x0

    iget v13, v11, Landroid/text/format/Time;->monthDay:I

    aput v13, v4, v12

    .line 3770
    const/4 v12, 0x7

    iput v12, v0, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    .line 3771
    const/4 v12, 0x1

    iput v12, v0, Lcom/android/calendarcommon/EventRecurrence;->bymonthCount:I

    .line 3772
    const/4 v12, 0x1

    iput v12, v0, Lcom/android/calendarcommon/EventRecurrence;->bymonthdayCount:I

    .line 3773
    iput-object v3, v0, Lcom/android/calendarcommon/EventRecurrence;->bymonth:[I

    .line 3774
    iput-object v4, v0, Lcom/android/calendarcommon/EventRecurrence;->bymonthday:[I

    goto/16 :goto_1
.end method

.method private updateRecurrenceUntil(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 27
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 4289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    const/16 v26, 0x7

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 4290
    .local v20, oldStartMillis:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    const/16 v26, 0x8

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 4291
    .local v18, oldDuration:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    move-object/from16 v25, v0

    const/16 v26, 0x4

    invoke-interface/range {v25 .. v26}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    if-eqz v25, :cond_0

    const/4 v5, 0x1

    .line 4292
    .local v5, allDay:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mRrule:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 4293
    const-string v25, "EditEvent"

    const-string v26, "mRrule is empty"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4345
    :goto_1
    return-void

    .line 4291
    .end local v5           #allDay:Z
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 4296
    .restart local v5       #allDay:Z
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mRrule:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 4297
    .local v19, oldRrule:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 4299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 4300
    const-string v25, "EditEvent"

    const-string v26, "mEventRecurrence.until is empty"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4303
    :cond_2
    new-instance v24, Landroid/text/format/Time;

    const-string v25, "UTC"

    invoke-direct/range {v24 .. v25}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 4304
    .local v24, untilTime:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 4308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    .line 4309
    .local v10, newBegin:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v12

    .line 4310
    .local v12, newEnd:J
    sub-long v16, v12, v10

    .line 4311
    .local v16, offset:J
    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v25

    add-long v14, v25, v16

    .line 4312
    .local v14, newUntilEnd:J
    add-long v20, v20, v16

    .line 4315
    move-object/from16 v0, v24

    invoke-virtual {v0, v14, v15}, Landroid/text/format/Time;->set(J)V

    .line 4317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    move-object/from16 v25, v0

    const-string v26, "beginTime"

    invoke-virtual/range {v25 .. v26}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 4318
    .local v6, begin:J
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 4320
    .local v22, oldValues:Landroid/content/ContentValues;
    if-eqz v5, :cond_3

    .line 4321
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/text/format/Time;->hour:I

    .line 4322
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/text/format/Time;->minute:I

    .line 4323
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Landroid/text/format/Time;->second:I

    .line 4324
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput-boolean v0, v1, Landroid/text/format/Time;->allDay:Z

    .line 4325
    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/text/format/Time;->normalize(Z)J

    .line 4327
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v9

    .line 4328
    .local v9, len:I
    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v25

    const/16 v26, 0x50

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    add-int/lit8 v25, v9, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v25

    const/16 v26, 0x53

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    .line 4329
    const/16 v25, 0x1

    add-int/lit8 v26, v9, -0x1

    move-object/from16 v0, v18

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 4330
    .local v23, seconds:I
    const v25, 0x15180

    add-int v25, v25, v23

    add-int/lit8 v25, v25, -0x1

    const v26, 0x15180

    div-int v8, v25, v26

    .line 4331
    .local v8, days:I
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "P"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "D"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 4334
    .end local v8           #days:I
    .end local v9           #len:I
    .end local v23           #seconds:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v24}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    .line 4339
    const-string v25, "dtstart"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4340
    const-string v25, "duration"

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4341
    const-string v25, "rrule"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EditEvent;->mEventRecurrence:Lcom/android/calendarcommon/EventRecurrence;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/calendarcommon/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4342
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v22

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private updateReminder(JJ)V
    .locals 20
    .parameter "old_eventId"
    .parameter "new_eventId"

    .prologue
    .line 4403
    sget-object v13, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    .line 4404
    .local v13, uri:Landroid/net/Uri;
    const-string v3, "event_id=%d"

    .line 4405
    .local v3, REMINDERS_WHERE:Ljava/lang/String;
    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v16, "event_id=%d"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v15 .. v17}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 4406
    .local v14, where:Ljava/lang/String;
    const/4 v15, 0x1

    new-array v2, v15, [Ljava/lang/String;

    const/4 v15, 0x0

    const-string v16, "_id"

    aput-object v16, v2, v15

    .line 4409
    .local v2, REMINDERS_PROJECTION:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 4411
    .local v1, INDEX_REMINDERS_ID:I
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v2, v14, v15}, Lcom/htc/calendar/EditEvent;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 4413
    .local v7, mRemindersCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 4414
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 4418
    .local v8, nCnt:I
    if-eqz v8, :cond_1

    .line 4419
    const/4 v15, -0x1

    invoke-interface {v7, v15}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 4420
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 4421
    .local v5, cv:Landroid/content/ContentValues;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 4422
    .local v9, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 4423
    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    .line 4424
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 4426
    .local v10, reminder_id:J
    sget-object v15, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v15, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 4427
    .local v12, updateUri:Landroid/net/Uri;
    const-string v15, "event_id"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4428
    invoke-static {v12}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v15

    invoke-virtual {v15, v5}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 4430
    .local v4, b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4433
    .end local v4           #b:Landroid/content/ContentProviderOperation$Builder;
    .end local v10           #reminder_id:J
    .end local v12           #updateUri:Landroid/net/Uri;
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "com.android.calendar"

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v9}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4447
    .end local v5           #cv:Landroid/content/ContentValues;
    .end local v8           #nCnt:I
    .end local v9           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_1
    :goto_1
    return-void

    .line 4440
    .restart local v5       #cv:Landroid/content/ContentValues;
    .restart local v8       #nCnt:I
    .restart local v9       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_0
    move-exception v6

    .line 4441
    .local v6, e:Landroid/os/RemoteException;
    const-string v15, "EditEvent"

    const-string v16, "Ignoring unexpected remote exception"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 4442
    .end local v6           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v6

    .line 4443
    .local v6, e:Landroid/content/OperationApplicationException;
    const-string v15, "EditEvent"

    const-string v16, "Ignoring unexpected exception"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private updateRemindersVisibility()V
    .locals 2

    .prologue
    .line 2602
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2604
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mRemindersContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2609
    :goto_0
    return-void

    .line 2607
    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mRemindersContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private validateEditableWebViewOnResume(Landroid/webkit/EditableWebView;Ljava/lang/String;)V
    .locals 6
    .parameter "ewv"
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 5329
    if-eqz p1, :cond_0

    .line 5330
    const-string v3, "text/html"

    const-string v4, "utf-8"

    move-object v0, p1

    move-object v2, p2

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/EditableWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5332
    :cond_0
    return-void
.end method

.method private validateTextViewOnResume(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2
    .parameter "tv"
    .parameter "text"

    .prologue
    .line 4909
    if-eqz p1, :cond_0

    .line 4910
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 4911
    .local v0, inTextViewWording:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4912
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4915
    .end local v0           #inTextViewWording:Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 4935
    if-ne p1, v8, :cond_1

    if-ne p2, v7, :cond_1

    .line 4936
    const-string v5, ""

    .line 4951
    .local v5, showResult:Ljava/lang/String;
    invoke-direct {p0, p3}, Lcom/htc/calendar/EditEvent;->processLocationResult(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    .line 4952
    iget-object v6, p0, Lcom/htc/calendar/EditEvent;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5028
    .end local v5           #showResult:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 4960
    :cond_1
    const/16 v6, 0xa

    if-ne p1, v6, :cond_2

    if-ne p2, v7, :cond_2

    .line 4961
    if-eqz p3, :cond_0

    .line 4962
    const-string v6, "cd_pickname"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 4963
    .local v4, nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v6, "cd_pickmailaddress"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 4964
    .local v0, addrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v6, "mail_pickmId"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 4965
    .local v3, midList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, v4, v0, v3}, Lcom/htc/calendar/EditEvent;->debugResultMailPicker(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 4966
    iget-object v6, p0, Lcom/htc/calendar/EditEvent;->mComposeTitle:Lcom/htc/calendar/widget/ComposeTitle;

    invoke-virtual {v6, v4, v0, v3}, Lcom/htc/calendar/widget/ComposeTitle;->onActivityResult_Mail(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 4975
    .end local v0           #addrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3           #midList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v4           #nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    const/16 v6, 0xb

    if-ne p1, v6, :cond_4

    if-ne p2, v7, :cond_4

    .line 4976
    if-eqz p3, :cond_3

    .line 4977
    const-string v6, "SELECTED_ID"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 4978
    .local v2, idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, v2}, Lcom/htc/calendar/EditEvent;->debugResultFacebookPicker(Ljava/util/ArrayList;)V

    .line 4981
    iget-object v6, p0, Lcom/htc/calendar/EditEvent;->mComposeTitle:Lcom/htc/calendar/widget/ComposeTitle;

    invoke-virtual {v6, v2}, Lcom/htc/calendar/widget/ComposeTitle;->onActivityResult_FacebookID(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 4983
    .end local v2           #idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    const-string v6, "EditEvent"

    const-string v7, "REQUEST_CODE_HTC_CONTACTS_FACEBOOK data is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4992
    :cond_4
    const/4 v6, 0x2

    if-ne p1, v6, :cond_5

    if-ne p2, v7, :cond_5

    .line 4993
    if-eqz p3, :cond_0

    .line 4994
    invoke-static {p3}, Lcom/htc/calendar/PhotoPickerHelper;->handleResultFromGallery(Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/calendar/EditEvent;->mBitmapPhoto:Landroid/graphics/Bitmap;

    .line 4995
    iget-object v6, p0, Lcom/htc/calendar/EditEvent;->mBitmapPhoto:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_0

    .line 4997
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/htc/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/calendar/EditEvent;->mBitmapPhoto:Landroid/graphics/Bitmap;

    invoke-direct {v1, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 4998
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Lcom/htc/calendar/EditEvent;->mImageCaptureButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4999
    iput-boolean v8, p0, Lcom/htc/calendar/EditEvent;->mSetImageCapture:Z

    goto :goto_0

    .line 5009
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_5
    const/4 v6, 0x3

    if-ne p1, v6, :cond_6

    if-ne p2, v7, :cond_6

    .line 5010
    if-eqz p3, :cond_0

    .line 5011
    invoke-static {p3}, Lcom/htc/calendar/PhotoPickerHelper;->handleResultFromCamera(Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/calendar/EditEvent;->mBitmapPhoto:Landroid/graphics/Bitmap;

    .line 5012
    iget-object v6, p0, Lcom/htc/calendar/EditEvent;->mBitmapPhoto:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_0

    .line 5013
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/htc/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/calendar/EditEvent;->mBitmapPhoto:Landroid/graphics/Bitmap;

    invoke-direct {v1, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 5014
    .restart local v1       #drawable:Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Lcom/htc/calendar/EditEvent;->mImageCaptureButton:Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5015
    iput-boolean v8, p0, Lcom/htc/calendar/EditEvent;->mSetImageCapture:Z

    goto/16 :goto_0

    .line 5026
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_6
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 2126
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/htc/calendar/EditEvent;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2127
    :cond_0
    invoke-direct {p0}, Lcom/htc/calendar/EditEvent;->save()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2134
    :goto_0
    return-void

    .line 2133
    :cond_1
    invoke-virtual {p0}, Lcom/htc/calendar/EditEvent;->finish()V

    goto :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 871
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mLoadingCalendarsDialog:Lcom/htc/app/HtcProgressDialog;

    if-ne p1, v0, :cond_1

    .line 872
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/calendar/EditEvent;->mSaveAfterQueryComplete:Z

    .line 876
    :cond_0
    :goto_0
    return-void

    .line 873
    :cond_1
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mNoCalendarsDialog:Lcom/htc/widget/HtcAlertDialog;

    if-ne p1, v0, :cond_0

    .line 874
    invoke-virtual {p0}, Lcom/htc/calendar/EditEvent;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 880
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mNoCalendarsDialog:Lcom/htc/widget/HtcAlertDialog;

    if-ne p1, v0, :cond_0

    .line 881
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 882
    invoke-virtual {p0}, Lcom/htc/calendar/EditEvent;->finish()V

    .line 899
    :cond_0
    :goto_0
    return-void

    .line 883
    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 22
    .parameter "v"

    .prologue
    .line 728
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent;->mSaveButton:Lcom/htc/widget/HtcFooterButton;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_1

    .line 729
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/EditEvent;->save()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 730
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/EditEvent;->finish()V

    .line 862
    :cond_0
    :goto_0
    return-void

    .line 735
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent;->mDeleteButton:Lcom/htc/widget/HtcFooterButton;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_5

    .line 737
    const/16 v20, -0x1

    .line 738
    .local v20, which_tmp:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/htc/calendar/EditEvent;->mModification:I

    packed-switch v2, :pswitch_data_0

    .line 749
    :goto_1
    move/from16 v8, v20

    .line 751
    .local v8, which:I
    const/4 v9, 0x0

    .line 752
    .local v9, allDay:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    if-nez v2, :cond_3

    .line 753
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent;->mAllDayCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v9

    .line 758
    :goto_2
    const-string v2, "DeleteEventHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "allDay: "

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v16

    .line 762
    .local v16, tempbegin:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v18

    .line 763
    .local v18, tempend:J
    if-eqz v9, :cond_2

    .line 765
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v3, "beginTime"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 766
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;

    const-string v3, "endTime"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 769
    :cond_2
    move-wide/from16 v4, v16

    .line 770
    .local v4, begin:J
    move-wide/from16 v6, v18

    .line 772
    .local v6, end:J
    new-instance v21, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/calendar/EditEvent$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/htc/calendar/EditEvent$1;-><init>(Lcom/htc/calendar/EditEvent;JJI)V

    move-object/from16 v0, v21

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 740
    .end local v4           #begin:J
    .end local v6           #end:J
    .end local v8           #which:I
    .end local v9           #allDay:Z
    .end local v16           #tempbegin:J
    .end local v18           #tempend:J
    :pswitch_0
    const/16 v20, 0x0

    .line 741
    goto :goto_1

    .line 743
    :pswitch_1
    const/16 v20, 0x1

    .line 744
    goto :goto_1

    .line 746
    :pswitch_2
    const/16 v20, 0x2

    goto :goto_1

    .line 755
    .restart local v8       #which:I
    .restart local v9       #allDay:Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v9, 0x1

    :goto_3
    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    goto :goto_3

    .line 791
    .end local v8           #which:I
    .end local v9           #allDay:Z
    .end local v20           #which_tmp:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent;->mDiscardButton:Lcom/htc/widget/HtcFooterButton;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_6

    .line 792
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/EditEvent;->finish()V

    goto/16 :goto_0

    .line 796
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent;->mLocationPicker:Landroid/widget/ImageView;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_a

    .line 797
    const-string v2, "EditEvent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Location picker version: "

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p0 .. p0}, Lcom/htc/calendar/HtcUtils;->getLocationPickerVersion(Landroid/content/Context;)Ljava/lang/Double;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    invoke-static/range {p0 .. p0}, Lcom/htc/calendar/HtcUtils;->getLocationPickerVersion(Landroid/content/Context;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    .line 802
    .local v11, fVer:D
    const-wide v2, 0x3ff3333333333333L

    cmpl-double v2, v11, v2

    if-ltz v2, :cond_7

    .line 804
    :try_start_0
    new-instance v13, Landroid/content/Intent;

    const-string v2, "com.htc.android.locationpicker"

    const/4 v3, 0x0

    invoke-direct {v13, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 805
    .local v13, pickerIntent:Landroid/content/Intent;
    const-string v2, "ShowMenuItems"

    const/4 v3, 0x4

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 806
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v2}, Lcom/htc/calendar/EditEvent;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 807
    .end local v13           #pickerIntent:Landroid/content/Intent;
    :catch_0
    move-exception v10

    .line 808
    .local v10, e:Ljava/lang/Exception;
    const-string v2, "EditEvent"

    const-string v3, "LoactionPicker1.2 : "

    invoke-static {v2, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 810
    .end local v10           #e:Ljava/lang/Exception;
    :cond_7
    const-wide v2, 0x3ff3333333333333L

    cmpg-double v2, v11, v2

    if-gez v2, :cond_9

    const-wide/high16 v2, 0x3ff0

    cmpl-double v2, v11, v2

    if-ltz v2, :cond_9

    .line 811
    invoke-static/range {p0 .. p0}, Lcom/htc/calendar/HtcUtils;->IsLaputaPackageExist(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 812
    const-string v2, "EditEvent"

    const-string v3, "LaputaPackage Exist"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    :try_start_1
    new-instance v13, Landroid/content/Intent;

    const-string v2, "com.htc.android.locationpicker"

    const/4 v3, 0x0

    invoke-direct {v13, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 815
    .restart local v13       #pickerIntent:Landroid/content/Intent;
    const-string v2, "Request"

    const/4 v3, 0x7

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 816
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v2}, Lcom/htc/calendar/EditEvent;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 817
    .end local v13           #pickerIntent:Landroid/content/Intent;
    :catch_1
    move-exception v10

    .line 818
    .restart local v10       #e:Ljava/lang/Exception;
    const-string v2, "EditEvent"

    const-string v3, "LoactionPicker1.0 : "

    invoke-static {v2, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 822
    .end local v10           #e:Ljava/lang/Exception;
    :cond_8
    :try_start_2
    new-instance v13, Landroid/content/Intent;

    const-string v2, "com.htc.android.locationpicker"

    const/4 v3, 0x0

    invoke-direct {v13, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 823
    .restart local v13       #pickerIntent:Landroid/content/Intent;
    const-string v2, "PickerReturnDlg"

    const/16 v3, 0xe

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 824
    const-string v2, "PickerReturnSelection"

    const/4 v3, 0x7

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 825
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v2}, Lcom/htc/calendar/EditEvent;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 826
    .end local v13           #pickerIntent:Landroid/content/Intent;
    :catch_2
    move-exception v10

    .line 827
    .restart local v10       #e:Ljava/lang/Exception;
    const-string v2, "EditEvent"

    const-string v3, "LoactionPicker1.1 or 1.0.2xxx : "

    invoke-static {v2, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 832
    .end local v10           #e:Ljava/lang/Exception;
    :cond_9
    const-string v2, "EditEvent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Location picker version: "

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 837
    .end local v11           #fVer:D
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent;->mImageCaptureButton:Landroid/widget/ImageView;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_b

    .line 838
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/16 v21, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-static {v0, v2, v3, v1}, Lcom/htc/calendar/PhotoPickerHelper;->launchPhotoPickerMenu(Landroid/app/Activity;ZII)V

    goto/16 :goto_0

    .line 844
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent;->mBtnCheckCalendar:Landroid/widget/Button;

    move-object/from16 v0, p1

    if-ne v0, v2, :cond_c

    .line 845
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/EditEvent;->launchPreviewInCalendar()V

    goto/16 :goto_0

    .line 858
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 859
    .local v14, reminderItem:Landroid/widget/LinearLayout;
    const v2, 0x7f0d0084

    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/htc/widget/HtcSpinner;

    .line 860
    .local v15, spinner:Lcom/htc/widget/HtcSpinner;
    invoke-virtual {v15}, Lcom/htc/widget/HtcSpinner;->performClick()Z

    goto/16 :goto_0

    .line 738
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 5068
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 5069
    iget-object v1, p0, Lcom/htc/calendar/EditEvent;->mComposeTitle:Lcom/htc/calendar/widget/ComposeTitle;

    invoke-virtual {v1, p1}, Lcom/htc/calendar/widget/ComposeTitle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 5070
    invoke-static {p0}, Lcom/htc/calendar/HtcUtils;->getAppBackground(Landroid/content/Context;)I

    move-result v0

    .line 5071
    .local v0, bkgId:I
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/calendar/EditEvent;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 5072
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1253
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1254
    invoke-virtual {p0, v10}, Lcom/htc/calendar/EditEvent;->requestWindowFeature(I)Z

    .line 1256
    const v5, 0x7f03001e

    invoke-virtual {p0, v5}, Lcom/htc/calendar/EditEvent;->setContentView(I)V

    .line 1258
    invoke-static {}, Lcom/htc/calendar/Utils;->isSupportHWKeyBoard()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1259
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/htc/calendar/EditEvent;->setDefaultKeyMode(I)V

    .line 1262
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1263
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v5, "intent.eas.meeting_invitation"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1264
    iget-object v5, p0, Lcom/htc/calendar/EditEvent;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v1}, Lcom/htc/calendar/EditEvent;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1265
    invoke-static {p0}, Lcom/htc/calendar/Utils;->checkDefaultInsertCalendar(Landroid/content/Context;)V

    .line 1268
    invoke-static {}, Lcom/htc/calendar/Utils;->isEnableTheme()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1270
    const v5, 0x7f0d0047

    invoke-virtual {p0, v5}, Lcom/htc/calendar/EditEvent;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const v6, -0xd0d0e

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1273
    :cond_1
    const/4 v4, 0x0

    .line 1274
    .local v4, newEvent:Z
    iput-boolean v9, p0, Lcom/htc/calendar/EditEvent;->mDirtyCheckAlreadyCreadted:Z

    .line 1275
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v5

    iput v5, p0, Lcom/htc/calendar/EditEvent;->mFirstDayOfWeek:I

    .line 1277
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    iput-object v5, p0, Lcom/htc/calendar/EditEvent;->mStartTime:Landroid/text/format/Time;

    .line 1278
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    iput-object v5, p0, Lcom/htc/calendar/EditEvent;->mEndTime:Landroid/text/format/Time;

    .line 1279
    iget-object v5, p0, Lcom/htc/calendar/EditEvent;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {p0, v5}, Lcom/htc/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/calendar/EditEvent;->mTimezone:Ljava/lang/String;

    .line 1281
    invoke-virtual {p0}, Lcom/htc/calendar/EditEvent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1282
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/calendar/EditEvent;->mUri:Landroid/net/Uri;

    .line 1284
    const-string v5, "account_type"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/calendar/EditEvent;->mAccountTypeFromInt:Ljava/lang/String;

    .line 1285
    const-string v5, "owner_account"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/calendar/EditEvent;->mOwnerAccountFromInt:Ljava/lang/String;

    .line 1286
    const-string v5, "beginTime"

    invoke-virtual {v2, v5, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/htc/calendar/EditEvent;->mBegin:J

    .line 1287
    const-string v5, "endTime"

    invoke-virtual {v2, v5, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/htc/calendar/EditEvent;->mEnd:J

    .line 1288
    const-string v5, "organizerAddr"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/calendar/EditEvent;->mSyncAccount:Ljava/lang/String;

    .line 1289
    iget-wide v5, p0, Lcom/htc/calendar/EditEvent;->mBegin:J

    iput-wide v5, p0, Lcom/htc/calendar/EditEvent;->mOrigStartMillis:J

    .line 1291
    const-string v5, "EditEvent"

    const-string v6, "Begin"

    iget-wide v7, p0, Lcom/htc/calendar/EditEvent;->mBegin:J

    invoke-static {v5, v6, v7, v8}, Lcom/htc/calendar/Utils;->debugLongTime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1292
    const-string v5, "EditEvent"

    const-string v6, "End"

    iget-wide v7, p0, Lcom/htc/calendar/EditEvent;->mEnd:J

    invoke-static {v5, v6, v7, v8}, Lcom/htc/calendar/Utils;->debugLongTime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1293
    const-string v3, "gmail.com"

    .line 1294
    .local v3, mDomain:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1295
    .local v0, allDay:Z
    iput-boolean v9, p0, Lcom/htc/calendar/EditEvent;->mAllDay:Z

    .line 1296
    new-instance v5, Lcom/htc/calendar/EditEvent$QueryHandler;

    invoke-virtual {p0}, Lcom/htc/calendar/EditEvent;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/htc/calendar/EditEvent$QueryHandler;-><init>(Lcom/htc/calendar/EditEvent;Landroid/content/ContentResolver;)V

    iput-object v5, p0, Lcom/htc/calendar/EditEvent;->mQueryHandler:Lcom/htc/calendar/EditEvent$QueryHandler;

    .line 1297
    iget-object v5, p0, Lcom/htc/calendar/EditEvent;->mUri:Landroid/net/Uri;

    if-eqz v5, :cond_2

    .line 1298
    invoke-direct {p0}, Lcom/htc/calendar/EditEvent;->queryEvents()V

    .line 1316
    :goto_0
    return-void

    .line 1300
    :cond_2
    const/4 v4, 0x1

    .line 1303
    const-string v5, "allDay"

    invoke-virtual {v2, v5, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1304
    iput-boolean v0, p0, Lcom/htc/calendar/EditEvent;->mAllDay:Z

    .line 1310
    invoke-direct {p0}, Lcom/htc/calendar/EditEvent;->queryCalendars()V

    .line 1311
    invoke-direct {p0, v4, v0}, Lcom/htc/calendar/EditEvent;->initEditEvent(ZZ)V

    .line 1312
    iput-boolean v10, p0, Lcom/htc/calendar/EditEvent;->mDirtyCheckAlreadyCreadted:Z

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const v6, 0x7f020067

    const/high16 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x4

    .line 1987
    const v1, 0x7f080008

    invoke-interface {p1, v3, v3, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1989
    .local v0, item:Landroid/view/MenuItem;
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1992
    const/4 v1, 0x5

    const v2, 0x7f080009

    invoke-interface {p1, v3, v1, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1994
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1997
    const/4 v1, 0x0

    const v2, 0x7f080098

    invoke-interface {p1, v4, v4, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1999
    const v1, 0x7f02006e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2000
    const/16 v1, 0x72

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 2013
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4631
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 4633
    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mBitmapPhoto:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 4634
    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mBitmapPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4635
    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mBitmapPhoto:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 4637
    :cond_0
    iput-object v4, p0, Lcom/htc/calendar/EditEvent;->mBitmapPhoto:Landroid/graphics/Bitmap;

    .line 4640
    :cond_1
    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mComposeTitle:Lcom/htc/calendar/widget/ComposeTitle;

    if-eqz v2, :cond_2

    .line 4641
    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mComposeTitle:Lcom/htc/calendar/widget/ComposeTitle;

    invoke-virtual {v2}, Lcom/htc/calendar/widget/ComposeTitle;->onDestroy()V

    .line 4644
    :cond_2
    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mCalendarsSpinner:Lcom/htc/widget/HtcSpinner;

    if-eqz v2, :cond_3

    .line 4645
    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mCalendarsSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v2}, Lcom/htc/widget/HtcSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/EditEvent$CalendarsAdapter;

    .line 4646
    .local v0, adapter:Lcom/htc/calendar/EditEvent$CalendarsAdapter;
    if-eqz v0, :cond_3

    .line 4647
    invoke-virtual {v0, v4}, Lcom/htc/calendar/EditEvent$CalendarsAdapter;->changeCursorNoCloseCursor(Landroid/database/Cursor;)V

    .line 4651
    .end local v0           #adapter:Lcom/htc/calendar/EditEvent$CalendarsAdapter;
    :cond_3
    invoke-direct {p0}, Lcom/htc/calendar/EditEvent;->isTextPlain()Z

    move-result v2

    if-nez v2, :cond_4

    .line 4652
    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mBackgroundHandler:Landroid/os/Handler;

    if-eqz v2, :cond_4

    .line 4653
    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mBackgroundHandler:Landroid/os/Handler;

    const/16 v3, 0x63

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4657
    :cond_4
    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mDescriptionWebView:Landroid/webkit/EditableWebView;

    if-eqz v2, :cond_5

    .line 4658
    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mDescriptionWebView:Landroid/webkit/EditableWebView;

    invoke-virtual {v2}, Landroid/webkit/EditableWebView;->destroy()V

    .line 4659
    iput-object v4, p0, Lcom/htc/calendar/EditEvent;->mDescriptionWebView:Landroid/webkit/EditableWebView;

    .line 4665
    :cond_5
    new-instance v1, Lcom/htc/calendar/EditEvent$closeCalendarThread;

    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-direct {v1, v2}, Lcom/htc/calendar/EditEvent$closeCalendarThread;-><init>(Landroid/database/Cursor;)V

    .line 4666
    .local v1, myThread:Lcom/htc/calendar/EditEvent$closeCalendarThread;
    invoke-virtual {v1}, Lcom/htc/calendar/EditEvent$closeCalendarThread;->start()V

    .line 4676
    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/htc/calendar/EditEvent;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4678
    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mTimezoneAdapter:Lcom/htc/calendar/TimezoneAdapter;

    if-eqz v2, :cond_6

    .line 4679
    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mTimezoneAdapter:Lcom/htc/calendar/TimezoneAdapter;

    invoke-virtual {v2}, Lcom/htc/calendar/TimezoneAdapter;->clearTimzone()V

    .line 4682
    :cond_6
    return-void
.end method

.method public onItemSelected(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 4041
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    invoke-virtual {p0}, Lcom/htc/calendar/EditEvent;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060024

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 4044
    .local v3, reminderValue:[Ljava/lang/String;
    aget-object v0, v3, p3

    .line 4046
    .local v0, minutes:Ljava/lang/String;
    sget-object v4, Lcom/htc/calendar/CalendarConstants;->NO_REMINDER_STRING_VALUE:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4047
    iget-object v4, p0, Lcom/htc/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 4050
    invoke-virtual {p1}, Lcom/htc/widget/HtcAdapterView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 4051
    .local v1, parent2:Landroid/widget/LinearLayout;
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 4052
    .local v2, parent3:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 4053
    iget-object v4, p0, Lcom/htc/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4054
    invoke-direct {p0}, Lcom/htc/calendar/EditEvent;->updateRemindersVisibility()V

    .line 4057
    .end local v1           #parent2:Landroid/widget/LinearLayout;
    .end local v2           #parent3:Landroid/widget/LinearLayout;
    :cond_0
    return-void
.end method

.method public onNothingSelected(Lcom/htc/widget/HtcAdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 4062
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 2098
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2118
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 2100
    :pswitch_0
    invoke-direct {p0}, Lcom/htc/calendar/EditEvent;->addReminder()V

    goto :goto_0

    .line 2103
    :pswitch_1
    iget-object v1, p0, Lcom/htc/calendar/EditEvent;->mExtraOptions:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 2106
    :pswitch_2
    iget-object v1, p0, Lcom/htc/calendar/EditEvent;->mExtraOptions:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 2110
    :pswitch_3
    iget-object v1, p0, Lcom/htc/calendar/EditEvent;->mImportanceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 2113
    :pswitch_4
    iget-object v1, p0, Lcom/htc/calendar/EditEvent;->mImportanceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 2098
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4610
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 4612
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->currentInputFieldFocusView:Landroid/view/View;

    invoke-direct {p0, v1, v0}, Lcom/htc/calendar/EditEvent;->requestSip(ZLandroid/view/View;)V

    .line 4614
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mQueryHandler:Lcom/htc/calendar/EditEvent$QueryHandler;

    if-eqz v0, :cond_0

    .line 4615
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->mQueryHandler:Lcom/htc/calendar/EditEvent$QueryHandler;

    invoke-virtual {v0, v1}, Lcom/htc/calendar/EditEvent$QueryHandler;->cancelOperation(I)V

    .line 4617
    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->recurrentModifyDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->recurrentModifyDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4619
    iget-object v0, p0, Lcom/htc/calendar/EditEvent;->recurrentModifyDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 4621
    :cond_1
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 10
    .parameter "menu"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2018
    const-string v2, "EditEvent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareOptionsMenu mSyncAccountType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/htc/calendar/EditEvent;->mSyncAccountType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mSyncAccountType:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/htc/calendar/EditEvent;->showImportance(Ljava/lang/String;)Z

    move-result v1

    .line 2022
    .local v1, showImportance:Z
    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mSyncAccountType:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/htc/calendar/EditEvent;->showExtraMenu(Ljava/lang/String;)Z

    move-result v0

    .line 2023
    .local v0, showExtraMenu:Z
    const-string v2, "EditEvent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPrepareOptionsMenu showImportance:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " showExtraMenu: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    if-eqz v1, :cond_1

    .line 2027
    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mImportanceLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 2028
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2029
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2040
    :goto_0
    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p0}, Lcom/htc/calendar/EditEvent;->getMAX_REMINDERS()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 2042
    invoke-interface {p1, v5, v5}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2043
    invoke-interface {p1, v5, v5}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 2050
    :goto_1
    if-eqz v0, :cond_4

    .line 2051
    iget-object v2, p0, Lcom/htc/calendar/EditEvent;->mExtraOptions:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 2052
    invoke-interface {p1, v7, v6}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2053
    invoke-interface {p1, v8, v5}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2064
    :goto_2
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 2031
    :cond_0
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2032
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 2035
    :cond_1
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2036
    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 2045
    :cond_2
    invoke-interface {p1, v5, v6}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2046
    invoke-interface {p1, v5, v6}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_1

    .line 2055
    :cond_3
    invoke-interface {p1, v7, v5}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2056
    invoke-interface {p1, v8, v6}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_2

    .line 2059
    :cond_4
    invoke-interface {p1, v7, v6}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2060
    invoke-interface {p1, v8, v6}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_2
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 1764
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1765
    invoke-direct {p0}, Lcom/htc/calendar/EditEvent;->doResume()V

    .line 1766
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 5076
    const/4 v0, 0x1

    return v0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 4625
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 4627
    return-void
.end method
