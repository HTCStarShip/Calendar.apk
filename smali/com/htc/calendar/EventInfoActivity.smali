.class public Lcom/htc/calendar/EventInfoActivity;
.super Landroid/app/Activity;
.source "EventInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/calendar/EventInfoActivity$LoadEventsHandler;,
        Lcom/htc/calendar/EventInfoActivity$closeCursorThread;,
        Lcom/htc/calendar/EventInfoActivity$UIHandler;,
        Lcom/htc/calendar/EventInfoActivity$onPauseSaveThread;,
        Lcom/htc/calendar/EventInfoActivity$QueryHandler;,
        Lcom/htc/calendar/EventInfoActivity$GeoCode;
    }
.end annotation


# static fields
.field private static final ACTION_SENDMEETING:Ljava/lang/String; = "android.intent.action.SENDMEETING"

.field private static final ATTENDEES_INDEX_EMAIL:I = 0x2

.field private static final ATTENDEES_INDEX_ID:I = 0x0

.field private static final ATTENDEES_INDEX_NAME:I = 0x1

.field private static final ATTENDEES_INDEX_RELATIONSHIP:I = 0x3

.field private static final ATTENDEES_INDEX_STATUS:I = 0x4

.field private static final ATTENDEES_PROJECTION:[Ljava/lang/String; = null

.field private static final ATTENDEES_SORT_ORDER:Ljava/lang/String; = "attendeeName ASC, attendeeEmail ASC"

.field private static final ATTENDEES_WHERE:Ljava/lang/String; = "event_id=%d AND (attendeeEmail not in (select attendeeEmail from attendees where event_id=%d AND attendeeRelationship = 2)) or (event_id=%d AND attendeeRelationship = 2)"

.field private static final ATTENDEE_ID_NONE:I = -0x1

.field private static final ATTENDEE_NO_RESPONSE:I = -0x1

.field private static final ATTENDEE_VALUES:[I = null

.field static final CALENDARS_DUPLICATE_NAME_WHERE:Ljava/lang/String; = "calendar_displayName=?"

.field static final CALENDARS_INDEX_DISPLAY_NAME:I = 0x1

.field static final CALENDARS_INDEX_OWNER_ACCOUNT:I = 0x2

.field static final CALENDARS_INDEX_OWNER_CAN_RESPOND:I = 0x3

.field static final CALENDARS_INDEX_REMINDER_DURATION:I = 0x5

.field static final CALENDARS_INDEX_REMINDER_TYPE:I = 0x4

.field static final CALENDARS_PROJECTION:[Ljava/lang/String; = null

.field static final CALENDARS_WHERE:Ljava/lang/String; = "_id=%d"

.field private static final CONTACT_DATA_WITH_PRESENCE_URI:Landroid/net/Uri; = null

.field public static final DEBUG:Z = false

.field private static final EVENTS:I = 0x1

.field private static final EVENTS_ID:I = 0x2

.field private static final EVENT_INDEX_ACCESS_LEVEL:I = 0xb

.field private static final EVENT_INDEX_ALL_DAY:I = 0x3

.field private static final EVENT_INDEX_CALENDAR_ID:I = 0x4

.field private static final EVENT_INDEX_CAN_INVITE_OTHERS:I = 0xf

.field private static final EVENT_INDEX_COLOR:I = 0xc

.field private static final EVENT_INDEX_DESCRIPTION:I = 0x8

.field private static final EVENT_INDEX_DESC_MIME_TYPE:I = 0x18

.field private static final EVENT_INDEX_DTEND:I = 0x13

.field private static final EVENT_INDEX_DTSTART:I = 0x5

.field private static final EVENT_INDEX_EVENT_LOCATION:I = 0x9

.field private static final EVENT_INDEX_EVENT_TIMEZONE:I = 0x7

.field private static final EVENT_INDEX_EXDATE:I = 0x12

.field private static final EVENT_INDEX_FB_TYPE:I = 0x17

.field private static final EVENT_INDEX_GUESTS_CAN_MODIFY:I = 0xe

.field private static final EVENT_INDEX_HAS_ALARM:I = 0xa

.field private static final EVENT_INDEX_HAS_ATTENDEE_DATA:I = 0xd

.field private static final EVENT_INDEX_ICALENDAR_UID:I = 0x14

.field private static final EVENT_INDEX_ID:I = 0x0

.field private static final EVENT_INDEX_ORGANIZER:I = 0x10

.field private static final EVENT_INDEX_PARENT_ID:I = 0x11

.field private static final EVENT_INDEX_RRULE:I = 0x2

.field private static final EVENT_INDEX_SYNC_ACCOUNT:I = 0x15

.field private static final EVENT_INDEX_SYNC_ACCOUNT_TYPE:I = 0x16

.field private static final EVENT_INDEX_SYNC_ID:I = 0x6

.field private static final EVENT_INDEX_TITLE:I = 0x1

.field private static final EVENT_PROJECTION:[Ljava/lang/String; = null

.field private static final EVENT_WITH_TIME:I = 0x3

.field protected static final INTENT_ACTION_CLEAR_CALENDAR_REMINDER:Ljava/lang/String; = "com.htc.intent.lockscreen.ClearCalendarReminder"

.field public static final LOCATION_PICKER_MGR_LATITUDE:Ljava/lang/String; = "Latitude"

.field public static final LOCATION_PICKER_MGR_LONGITUDE:Ljava/lang/String; = "Longitude"

.field private static final MAX_REMINDERS:I = 0x5

.field private static final MENU_ADD_REMINDER:I = 0x1

.field private static final MENU_AGENDA:I = 0x5

.field private static final MENU_ASSOCIATE_NOTES:I = 0x1b

.field private static final MENU_DELETE:I = 0x3

.field private static final MENU_EDIT:I = 0x2

.field private static final MENU_GROUP_AGENDA:I = 0x5

.field private static final MENU_GROUP_ASSOCIATE_NOTES:I = 0x12

.field private static final MENU_GROUP_DELETE:I = 0x3

.field private static final MENU_GROUP_EDIT:I = 0x2

.field private static final MENU_GROUP_MEETING_FORWARD:I = 0x8

.field private static final MENU_GROUP_MEETING_REPLY:I = 0x6

.field private static final MENU_GROUP_MEETING_REPLY_ALL:I = 0x7

.field private static final MENU_GROUP_REMINDER:I = 0x1

.field private static final MENU_GROUP_SEND_BT:I = 0x4

.field private static final MENU_GROUP_UNASSOCIATE_NOTES:I = 0x13

.field private static final MENU_GROUP_WIFI_PRINT:I = 0x14

.field private static final MENU_MEETING_FORWARD:I = 0x8

.field private static final MENU_MEETING_REPLY:I = 0x6

.field private static final MENU_MEETING_REPLY_ALL:I = 0x7

.field private static final MENU_SEND_BT:I = 0x4

.field private static final MENU_UNASSOCIATE_NOTES:I = 0x1c

.field private static final MENU_WIFI_PRINT:I = 0x1d

.field private static final MSG_EXIST:I = 0x3

.field private static final MSG_ONCREATE:I = 0x1

.field private static final MSG_ONRESUME:I = 0x2

.field private static final MSG_ONRESUME_UI:I = 0x7

.field private static final MSG_PROCESS_REMINDER_DATA:I = 0x5

.field private static final MSG_PROCESS_REMINDER_NO_CURSOR:I = 0x6

.field private static final MSG_QUERY_FOR_NOTES:I = 0x4

.field private static final MSG_SET_ORGANIZER_TEXT:I = 0x2

.field private static final MSG_SET_ORGANIZER_VISIBILITY_GONE:I = 0x3

.field private static final MSG_SHOW_SNOONZE_DISMISS_BTN:I = 0x8

.field private static final MSG_SHOW_TOAST:I = 0x1

.field private static final MSG_UPDATE_VIEW:I = 0x4

.field private static final PRESENCE_PROJECTION:[Ljava/lang/String; = null

.field private static final QUERY_TOKEN_CALENDAR:I = 0x1

.field private static final QUERY_TOKEN_CALENDAR_INSTANCES:I = 0x2

.field private static final REMINDERS_INDEX_MINUTES:I = 0x1

.field private static final REMINDERS_PROJECTION:[Ljava/lang/String; = null

.field private static final REMINDERS_SORT:Ljava/lang/String; = "minutes"

.field private static final REMINDERS_WHERE:Ljava/lang/String; = "event_id=%d AND (method=1 OR method=0)"

.field private static final REQUEST_CODE_ASSOCIATE_NOTES:I = 0x1

.field private static final REQUEST_CODE_CREATE_NOTES:I = 0x2

.field public static final TAG:Ljava/lang/String; = "EventInfoActivity"

.field private static final THE_EVENT_WITH_GUID_TYPE:I = 0x5

.field private static final TYPE_MEETING_FORWARD:I = 0x3

.field private static final TYPE_MEETING_REPLY:I = 0x1

.field private static final TYPE_MEETING_REPLY_ALL:I = 0x2

.field private static final UNI_EVENT_WITH_TIME:I = 0x4

.field static final UPDATE_ALL:I = 0x1

.field static final UPDATE_SINGLE:I

.field private static final m_strLaputaEntryActions:[Ljava/lang/String;

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private final CHECK_PHONE_NUMBER_LENGTH:I

.field PRESENCE_PROJECTION_CONTACT_ID_INDEX:I

.field PRESENCE_PROJECTION_EMAIL_INDEX:I

.field PRESENCE_PROJECTION_PHOTO_ID_INDEX:I

.field PRESENCE_PROJECTION_PRESENCE_INDEX:I

.field dismissEventByIdListener:Landroid/view/View$OnClickListener;

.field private mAllDay:Z

.field private mAttendeeListForUI:Ljava/lang/String;

.field private mAttendeeResponseFromIntent:I

.field private mAttendeesCursor:Landroid/database/Cursor;

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mBtnEdit:Landroid/widget/ImageButton;

.field private mCalendarAlertId:J

.field private mCalendarAlertIdList:Ljava/lang/String;

.field private mCalendarOwnerAccount:Ljava/lang/String;

.field private mCalendarOwnerAttendeeId:J

.field private mCalendarReminderDuration:I

.field private mCalendarsCursor:Landroid/database/Cursor;

.field private mCanModifyCalendar:Z

.field private mCanModifyEvent:Z

.field private mClickAttendeesStatusListener:Landroid/view/View$OnClickListener;

.field private mClickLocationIconListener:Landroid/view/View$OnClickListener;

.field private mClickPhoneIconListener:Landroid/view/View$OnClickListener;

.field private mClickResponseListener:Landroid/view/View$OnClickListener;

.field private mColor:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDefaultReminderMinutes:I

.field private mDeleteEventHelper:Lcom/htc/calendar/DeleteEventHelper;

.field private mDescMimeType:I

.field private mDirtyCheckAlreadyCreadted:Z

.field private mDirtyCheckCursorClosed:Z

.field private mDirtyCheckOnDestory:Z

.field private mDirtyReminderIndex:I

.field private mEditResponseHelper:Lcom/htc/calendar/EditResponseHelper;

.field private mEndMillis:J

.field private mEventCalendarId:I

.field private mEventCursor:Landroid/database/Cursor;

.field private mEventId:J

.field private mEventInFired:Z

.field private mEventTitle:Ljava/lang/String;

.field private mHasAttendeeData:Z

.field private mHeaderImage:Lcom/htc/widget/HeaderBarImage;

.field private mHeaderText:Lcom/htc/widget/HeaderBarText;

.field private mIDinMailMessage:J

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsAppointment:Z

.field private mIsAssociatedNote:Z

.field private mIsBusyFreeCalendar:Z

.field private mIsHtcExchangeEvent:Z

.field private mIsHtcPcSyncEvent:Z

.field private mIsNoteExist:Z

.field private mIsOrganizer:Z

.field private mIsRepeating:Z

.field private mIsUriFromNotes:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mNeedFinishAfterViewd:Z

.field private mNeedShowSnoozeDismiss:Z

.field private mNoteArea:Landroid/widget/LinearLayout;

.field private mNoteUri:Landroid/net/Uri;

.field private mNumOfAttendees:I

.field private mOrganizer:Ljava/lang/String;

.field private mOrganizerCanRespond:Z

.field private mOrganizerView:Landroid/widget/TextView;

.field private mOriginalAttendeeResponse:I

.field private mOriginalAttendees:Ljava/lang/String;

.field private mOriginalHasAlarm:Z

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

.field private mQueryHandler:Lcom/htc/calendar/EventInfoActivity$QueryHandler;

.field private mRRule:Ljava/lang/String;

.field private mReminderAdder:Landroid/widget/LinearLayout;

.field private mReminderData:Ljava/util/ArrayList;
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

.field private mResponseOffset:I

.field private mStartMillis:J

.field private mSyncAccount:Ljava/lang/String;

.field private mSyncAccountType:Ljava/lang/String;

.field private mSyncId:Ljava/lang/String;

.field private mUIHandler:Landroid/os/Handler;

.field private mUpdateCounts:I

.field private mUpdateTZ:Ljava/lang/Runnable;

.field private mUri:Landroid/net/Uri;

.field private mVCalMode:Z

.field private mWildcardPattern:Ljava/util/regex/Pattern;

.field private responseListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

.field snoozeEventByIdListener:Landroid/view/View$OnClickListener;

.field private spinner_seleted_idx:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 129
    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "title"

    aput-object v1, v0, v3

    const-string v1, "rrule"

    aput-object v1, v0, v4

    const-string v1, "allDay"

    aput-object v1, v0, v7

    const-string v1, "calendar_id"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_sync_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "description"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "calendar_access_level"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "hasAttendeeData"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "guestsCanModify"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "guestsCanInviteOthers"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "organizer"

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

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "facebook_type"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "desc_mime_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/calendar/EventInfoActivity;->EVENT_PROJECTION:[Ljava/lang/String;

    .line 187
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "attendeeName"

    aput-object v1, v0, v3

    const-string v1, "attendeeEmail"

    aput-object v1, v0, v4

    const-string v1, "attendeeRelationship"

    aput-object v1, v0, v7

    const-string v1, "attendeeStatus"

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/calendar/EventInfoActivity;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    .line 208
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "calendar_displayName"

    aput-object v1, v0, v3

    const-string v1, "ownerAccount"

    aput-object v1, v0, v4

    const-string v1, "canOrganizerRespond"

    aput-object v1, v0, v7

    const-string v1, "reminder_type"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "reminder_duration"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/calendar/EventInfoActivity;->CALENDARS_PROJECTION:[Ljava/lang/String;

    .line 227
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v5

    const-string v1, "minutes"

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/calendar/EventInfoActivity;->REMINDERS_PROJECTION:[Ljava/lang/String;

    .line 271
    new-array v0, v6, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/calendar/EventInfoActivity;->ATTENDEE_VALUES:[I

    .line 342
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/calendar/EventInfoActivity;->CONTACT_DATA_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 349
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v5

    const-string v1, "contact_presence"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    const-string v1, "photo_id"

    aput-object v1, v0, v7

    sput-object v0, Lcom/htc/calendar/EventInfoActivity;->PRESENCE_PROJECTION:[Ljava/lang/String;

    .line 1720
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.htc.laputa.navipanel.action.VIEW"

    aput-object v1, v0, v5

    const-string v1, "com.htc.laputa.lb.action.BROWSER_FROM_INSTALLER"

    aput-object v1, v0, v3

    sput-object v0, Lcom/htc/calendar/EventInfoActivity;->m_strLaputaEntryActions:[Ljava/lang/String;

    .line 3193
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/htc/calendar/EventInfoActivity;->sUriMatcher:Landroid/content/UriMatcher;

    .line 3195
    sget-object v0, Lcom/htc/calendar/EventInfoActivity;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "events"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3196
    sget-object v0, Lcom/htc/calendar/EventInfoActivity;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "events/#"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3197
    sget-object v0, Lcom/htc/calendar/EventInfoActivity;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "events/#/EventTime/#/#"

    invoke-virtual {v0, v1, v2, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3198
    sget-object v0, Lcom/htc/calendar/EventInfoActivity;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "uni-event/#/EventTime/#/#"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3199
    sget-object v0, Lcom/htc/calendar/EventInfoActivity;->sUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.calendar"

    const-string v2, "the-event"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3200
    return-void

    .line 271
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0x1t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 293
    iput-wide v2, p0, Lcom/htc/calendar/EventInfoActivity;->mCalendarOwnerAttendeeId:J

    .line 301
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mOriginalAttendees:Ljava/lang/String;

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mOriginalMinutes:Ljava/util/ArrayList;

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mReminderItems:Ljava/util/ArrayList;

    .line 317
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/calendar/EventInfoActivity;->mAttendeeResponseFromIntent:I

    .line 321
    const-string v0, "^.*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mWildcardPattern:Ljava/util/regex/Pattern;

    .line 344
    iput v1, p0, Lcom/htc/calendar/EventInfoActivity;->PRESENCE_PROJECTION_CONTACT_ID_INDEX:I

    .line 345
    iput v4, p0, Lcom/htc/calendar/EventInfoActivity;->PRESENCE_PROJECTION_PRESENCE_INDEX:I

    .line 346
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/calendar/EventInfoActivity;->PRESENCE_PROJECTION_EMAIL_INDEX:I

    .line 347
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/calendar/EventInfoActivity;->PRESENCE_PROJECTION_PHOTO_ID_INDEX:I

    .line 361
    new-instance v0, Lcom/htc/calendar/EventInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/calendar/EventInfoActivity$1;-><init>(Lcom/htc/calendar/EventInfoActivity;)V

    iput-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mUpdateTZ:Ljava/lang/Runnable;

    .line 412
    new-instance v0, Lcom/htc/calendar/EventInfoActivity$2;

    invoke-direct {v0, p0}, Lcom/htc/calendar/EventInfoActivity$2;-><init>(Lcom/htc/calendar/EventInfoActivity;)V

    iput-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->responseListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    .line 565
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mReminderData:Ljava/util/ArrayList;

    .line 1632
    iput-wide v2, p0, Lcom/htc/calendar/EventInfoActivity;->spinner_seleted_idx:J

    .line 1636
    const/16 v0, 0xa

    iput v0, p0, Lcom/htc/calendar/EventInfoActivity;->mCalendarReminderDuration:I

    .line 1638
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mSyncId:Ljava/lang/String;

    .line 1640
    const/16 v0, 0x8

    iput v0, p0, Lcom/htc/calendar/EventInfoActivity;->CHECK_PHONE_NUMBER_LENGTH:I

    .line 1642
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mUIHandler:Landroid/os/Handler;

    .line 1647
    iput-boolean v1, p0, Lcom/htc/calendar/EventInfoActivity;->mDirtyCheckAlreadyCreadted:Z

    .line 1648
    iput-boolean v1, p0, Lcom/htc/calendar/EventInfoActivity;->mDirtyCheckOnDestory:Z

    .line 1649
    iput-boolean v1, p0, Lcom/htc/calendar/EventInfoActivity;->mDirtyCheckCursorClosed:Z

    .line 1651
    iput-boolean v1, p0, Lcom/htc/calendar/EventInfoActivity;->mEventInFired:Z

    .line 1652
    iput-boolean v4, p0, Lcom/htc/calendar/EventInfoActivity;->mNeedShowSnoozeDismiss:Z

    .line 1653
    iput-boolean v1, p0, Lcom/htc/calendar/EventInfoActivity;->mNeedFinishAfterViewd:Z

    .line 1655
    iput-wide v2, p0, Lcom/htc/calendar/EventInfoActivity;->mCalendarAlertId:J

    .line 1656
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mCalendarAlertIdList:Ljava/lang/String;

    .line 1658
    iput v1, p0, Lcom/htc/calendar/EventInfoActivity;->mDirtyReminderIndex:I

    .line 1660
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mSyncAccount:Ljava/lang/String;

    .line 1661
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mSyncAccountType:Ljava/lang/String;

    .line 1662
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mRRule:Ljava/lang/String;

    .line 1663
    iput-boolean v1, p0, Lcom/htc/calendar/EventInfoActivity;->mAllDay:Z

    .line 1664
    iput-boolean v1, p0, Lcom/htc/calendar/EventInfoActivity;->mIsHtcExchangeEvent:Z

    .line 1665
    iput-boolean v1, p0, Lcom/htc/calendar/EventInfoActivity;->mIsHtcPcSyncEvent:Z

    .line 1666
    iput-wide v2, p0, Lcom/htc/calendar/EventInfoActivity;->mIDinMailMessage:J

    .line 1669
    iput v1, p0, Lcom/htc/calendar/EventInfoActivity;->mDescMimeType:I

    .line 1750
    new-instance v0, Lcom/htc/calendar/EventInfoActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/calendar/EventInfoActivity$3;-><init>(Lcom/htc/calendar/EventInfoActivity;)V

    iput-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mClickLocationIconListener:Landroid/view/View$OnClickListener;

    .line 1835
    new-instance v0, Lcom/htc/calendar/EventInfoActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/calendar/EventInfoActivity$4;-><init>(Lcom/htc/calendar/EventInfoActivity;)V

    iput-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mClickPhoneIconListener:Landroid/view/View$OnClickListener;

    .line 1855
    new-instance v0, Lcom/htc/calendar/EventInfoActivity$5;

    invoke-direct {v0, p0}, Lcom/htc/calendar/EventInfoActivity$5;-><init>(Lcom/htc/calendar/EventInfoActivity;)V

    iput-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mClickAttendeesStatusListener:Landroid/view/View$OnClickListener;

    .line 1872
    new-instance v0, Lcom/htc/calendar/EventInfoActivity$6;

    invoke-direct {v0, p0}, Lcom/htc/calendar/EventInfoActivity$6;-><init>(Lcom/htc/calendar/EventInfoActivity;)V

    iput-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mClickResponseListener:Landroid/view/View$OnClickListener;

    .line 1885
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mAttendeeListForUI:Ljava/lang/String;

    .line 2390
    new-instance v0, Lcom/htc/calendar/EventInfoActivity$7;

    invoke-direct {v0, p0}, Lcom/htc/calendar/EventInfoActivity$7;-><init>(Lcom/htc/calendar/EventInfoActivity;)V

    iput-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 2633
    new-instance v0, Lcom/htc/calendar/EventInfoActivity$8;

    invoke-direct {v0, p0}, Lcom/htc/calendar/EventInfoActivity$8;-><init>(Lcom/htc/calendar/EventInfoActivity;)V

    iput-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->snoozeEventByIdListener:Landroid/view/View$OnClickListener;

    .line 2646
    new-instance v0, Lcom/htc/calendar/EventInfoActivity$9;

    invoke-direct {v0, p0}, Lcom/htc/calendar/EventInfoActivity$9;-><init>(Lcom/htc/calendar/EventInfoActivity;)V

    iput-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->dismissEventByIdListener:Landroid/view/View$OnClickListener;

    .line 2841
    return-void
.end method

.method static synthetic access$000(Lcom/htc/calendar/EventInfoActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/htc/calendar/EventInfoActivity;->updateView_HTC()V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/calendar/EventInfoActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget v0, p0, Lcom/htc/calendar/EventInfoActivity;->mResponseOffset:I

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/calendar/EventInfoActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/htc/calendar/EventInfoActivity;->mEventId:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/htc/calendar/EventInfoActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-wide p1, p0, Lcom/htc/calendar/EventInfoActivity;->mEventId:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/htc/calendar/EventInfoActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/htc/calendar/EventInfoActivity;->mStartMillis:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/htc/calendar/EventInfoActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-wide p1, p0, Lcom/htc/calendar/EventInfoActivity;->mStartMillis:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/htc/calendar/EventInfoActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 114
    iget-wide v0, p0, Lcom/htc/calendar/EventInfoActivity;->mEndMillis:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/htc/calendar/EventInfoActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-wide p1, p0, Lcom/htc/calendar/EventInfoActivity;->mEndMillis:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/htc/calendar/EventInfoActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/htc/calendar/EventInfoActivity;->mIsOrganizer:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/htc/calendar/EventInfoActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/htc/calendar/EventInfoActivity;->mUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/htc/calendar/EventInfoActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mBackgroundHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/htc/calendar/EventInfoActivity;JJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/calendar/EventInfoActivity;->startQueryCalInstanceOnBackgroud(JJ)V

    return-void
.end method

.method static synthetic access$1700(Lcom/htc/calendar/EventInfoActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/htc/calendar/EventInfoActivity;->checkIsAssociatedNote()V

    return-void
.end method

.method static synthetic access$1800(Lcom/htc/calendar/EventInfoActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mReminderItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/htc/calendar/EventInfoActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mReminderValues:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/calendar/EventInfoActivity;ILjava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/htc/calendar/EventInfoActivity;->setTextCommon(ILjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/htc/calendar/EventInfoActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mOriginalMinutes:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/htc/calendar/EventInfoActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/htc/calendar/EventInfoActivity;->mOriginalMinutes:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/htc/calendar/EventInfoActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/htc/calendar/EventInfoActivity;->mOriginalHasAlarm:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/htc/calendar/EventInfoActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/htc/calendar/EventInfoActivity;->mOriginalHasAlarm:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/htc/calendar/EventInfoActivity;Landroid/content/ContentResolver;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/htc/calendar/EventInfoActivity;->saveResponse(Landroid/content/ContentResolver;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/htc/calendar/EventInfoActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mUIHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/htc/calendar/EventInfoActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mOrganizer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/htc/calendar/EventInfoActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/htc/calendar/EventInfoActivity;->mOrganizer:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/htc/calendar/EventInfoActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mOrganizerView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/htc/calendar/EventInfoActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/htc/calendar/EventInfoActivity;->processReminderData(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/htc/calendar/EventInfoActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/htc/calendar/EventInfoActivity;->processNoReminders()V

    return-void
.end method

.method static synthetic access$2800(Lcom/htc/calendar/EventInfoActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/htc/calendar/EventInfoActivity;->updateTitle()V

    return-void
.end method

.method static synthetic access$2900(Lcom/htc/calendar/EventInfoActivity;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/htc/calendar/EventInfoActivity;->updateSnoozeDismissBtn(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/calendar/EventInfoActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/htc/calendar/EventInfoActivity;->mIsRepeating:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/htc/calendar/EventInfoActivity;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/htc/calendar/EventInfoActivity;->doSnoozeEvent(J)V

    return-void
.end method

.method static synthetic access$3100(Lcom/htc/calendar/EventInfoActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/htc/calendar/EventInfoActivity;->mNeedFinishAfterViewd:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/htc/calendar/EventInfoActivity;)Lcom/htc/calendar/EventInfoActivity$QueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mQueryHandler:Lcom/htc/calendar/EventInfoActivity$QueryHandler;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/htc/calendar/EventInfoActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/htc/calendar/EventInfoActivity;->mDirtyCheckCursorClosed:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/htc/calendar/EventInfoActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/htc/calendar/EventInfoActivity;->mDirtyCheckCursorClosed:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/htc/calendar/EventInfoActivity;Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 114
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/calendar/EventInfoActivity;->closeAllCursorLocked(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/htc/calendar/EventInfoActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/htc/calendar/EventInfoActivity;->queryOnBackground()V

    return-void
.end method

.method static synthetic access$3600(Lcom/htc/calendar/EventInfoActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/htc/calendar/EventInfoActivity;->mDirtyCheckOnDestory:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/htc/calendar/EventInfoActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/htc/calendar/EventInfoActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/htc/calendar/EventInfoActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/htc/calendar/EventInfoActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget v0, p0, Lcom/htc/calendar/EventInfoActivity;->mOriginalAttendeeResponse:I

    return v0
.end method

.method static synthetic access$4000(Lcom/htc/calendar/EventInfoActivity;)Landroid/os/HandlerThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/htc/calendar/EventInfoActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/htc/calendar/EventInfoActivity;->mDirtyCheckAlreadyCreadted:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/htc/calendar/EventInfoActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/htc/calendar/EventInfoActivity;->mDirtyCheckAlreadyCreadted:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/htc/calendar/EventInfoActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/htc/calendar/EventInfoActivity;->initEventCursor()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Lcom/htc/calendar/EventInfoActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/htc/calendar/EventInfoActivity;->initCalendarsCursor()V

    return-void
.end method

.method static synthetic access$4400(Lcom/htc/calendar/EventInfoActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/htc/calendar/EventInfoActivity;->checkFiredList()V

    return-void
.end method

.method static synthetic access$4500(Lcom/htc/calendar/EventInfoActivity;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/htc/calendar/EventInfoActivity;->startQueryCalForNotesOnBackground(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/htc/calendar/EventInfoActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/htc/calendar/EventInfoActivity;->mIsAssociatedNote:Z

    return v0
.end method

.method static synthetic access$4602(Lcom/htc/calendar/EventInfoActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/htc/calendar/EventInfoActivity;->mIsAssociatedNote:Z

    return p1
.end method

.method static synthetic access$4702(Lcom/htc/calendar/EventInfoActivity;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/htc/calendar/EventInfoActivity;->mNoteUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/htc/calendar/EventInfoActivity;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/htc/calendar/EventInfoActivity;->getAssociatedNoteUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/calendar/EventInfoActivity;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/htc/calendar/EventInfoActivity;->findResponseIndexFor(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/htc/calendar/EventInfoActivity;)Lcom/htc/calendar/EditResponseHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mEditResponseHelper:Lcom/htc/calendar/EditResponseHelper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/calendar/EventInfoActivity;Ljava/lang/String;)Lcom/htc/calendar/EventInfoActivity$GeoCode;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/htc/calendar/EventInfoActivity;->isGeoCode(Ljava/lang/String;)Lcom/htc/calendar/EventInfoActivity$GeoCode;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/calendar/EventInfoActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/calendar/EventInfoActivity;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/htc/calendar/EventInfoActivity;->isMapURL(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private addReminder()V
    .locals 11

    .prologue
    .line 1212
    iget v0, p0, Lcom/htc/calendar/EventInfoActivity;->mDefaultReminderMinutes:I

    if-nez v0, :cond_1

    .line 1213
    iget-object v3, p0, Lcom/htc/calendar/EventInfoActivity;->mReminderItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/calendar/EventInfoActivity;->mReminderValues:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/htc/calendar/EventInfoActivity;->mReminderLabels:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/calendar/EventInfoActivity;->mCalendarReminderDuration:I

    move-object v0, p0

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/calendar/EventInfoActivity;->addReminder(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Z

    .line 1221
    :goto_0
    const/4 v7, 0x0

    .local v7, index:I
    :goto_1
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_2

    .line 1222
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 1223
    .local v8, layout:Landroid/widget/LinearLayout;
    const v0, 0x7f0d0084

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/htc/widget/HtcSpinner;

    .line 1224
    .local v10, spinner:Lcom/htc/widget/HtcSpinner;
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mReminderValues:Ljava/util/ArrayList;

    invoke-virtual {v10}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1225
    .local v9, minutes:I
    if-nez v9, :cond_0

    .line 1226
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mRemindersContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 1227
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mRemindersContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 1228
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1229
    add-int/lit8 v7, v7, -0x1

    .line 1221
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1216
    .end local v7           #index:I
    .end local v8           #layout:Landroid/widget/LinearLayout;
    .end local v9           #minutes:I
    .end local v10           #spinner:Lcom/htc/widget/HtcSpinner;
    :cond_1
    iget-object v3, p0, Lcom/htc/calendar/EventInfoActivity;->mReminderItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/calendar/EventInfoActivity;->mReminderValues:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/htc/calendar/EventInfoActivity;->mReminderLabels:Ljava/util/ArrayList;

    iget v6, p0, Lcom/htc/calendar/EventInfoActivity;->mDefaultReminderMinutes:I

    move-object v0, p0

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/calendar/EventInfoActivity;->addReminder(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Z

    goto :goto_0

    .line 1234
    .restart local v7       #index:I
    :cond_2
    invoke-direct {p0}, Lcom/htc/calendar/EventInfoActivity;->updateRemindersVisibility()V

    .line 1235
    invoke-virtual {p0}, Lcom/htc/calendar/EventInfoActivity;->saveReminderAndResponse()V

    .line 1236
    return-void
.end method

.method private addReminder(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Z
    .locals 11
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
    .line 2457
    .local p3, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/LinearLayout;>;"
    .local p4, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p5, labels:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v8, "EventInfoActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Current size: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " addReminder: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, p6

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2458
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-direct {p0}, Lcom/htc/calendar/EventInfoActivity;->getMAX_REMINDERS()I

    move-result v9

    if-lt v8, v9, :cond_0

    .line 2459
    const/4 v8, 0x0

    .line 2495
    .end local p2
    :goto_0
    return v8

    .line 2468
    .restart local p2
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 2469
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v8, 0x7f030022

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 2470
    .local v4, reminderItem:Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/htc/calendar/Utils;->isEnableTheme()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {}, Lcom/htc/calendar/Utils;->isEnableSkin()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2471
    :cond_1
    invoke-static {p0}, Lcom/htc/calendar/HtcUtils;->getListViewSelector(Landroid/content/Context;)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 2473
    :cond_2
    iget-object v8, p0, Lcom/htc/calendar/EventInfoActivity;->mRemindersContainer:Landroid/widget/LinearLayout;

    if-eqz v8, :cond_3

    .line 2474
    iget-object v8, p0, Lcom/htc/calendar/EventInfoActivity;->mRemindersContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 2478
    :cond_3
    const v8, 0x7f0d0084

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/calendar/widget/HtcSpinnerEx;

    .line 2480
    .local v7, spinner:Lcom/htc/calendar/widget/HtcSpinnerEx;
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 2481
    .local v5, res:Landroid/content/res/Resources;
    const v8, 0x7f0800a1

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/htc/calendar/widget/HtcSpinnerEx;->setPrompt(Ljava/lang/CharSequence;)V

    .line 2482
    const v6, 0x1090008

    .line 2483
    .local v6, resource:I
    new-instance v1, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p5

    invoke-direct {v1, p1, v6, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 2484
    .local v1, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v8, 0x20900af

    invoke-virtual {v1, v8}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 2485
    invoke-virtual {v7, v1}, Lcom/htc/calendar/widget/HtcSpinnerEx;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2486
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/htc/calendar/widget/HtcSpinnerEx;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2488
    move/from16 v0, p6

    invoke-static {p4, v0}, Lcom/htc/calendar/EventInfoActivity;->findMinutesInReminderList(Ljava/util/ArrayList;I)I

    move-result v2

    .line 2489
    .local v2, index:I
    iput v2, p0, Lcom/htc/calendar/EventInfoActivity;->mDirtyReminderIndex:I

    .line 2490
    invoke-virtual {v7, v2}, Lcom/htc/calendar/widget/HtcSpinnerEx;->setSelection(I)V

    .line 2491
    check-cast p2, Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    .end local p2
    invoke-virtual {v7, p2}, Lcom/htc/calendar/widget/HtcSpinnerEx;->setOnItemSelectedListener(Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;)V

    .line 2492
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2494
    invoke-virtual {v4, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2495
    const/4 v8, 0x1

    goto :goto_0
.end method

.method private canAddReminders()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1203
    iget-boolean v2, p0, Lcom/htc/calendar/EventInfoActivity;->mIsBusyFreeCalendar:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p0}, Lcom/htc/calendar/EventInfoActivity;->getMAX_REMINDERS()I

    move-result v3

    if-ge v2, v3, :cond_0

    const/4 v0, 0x1

    .line 1204
    .local v0, can:Z
    :goto_0
    iget-boolean v2, p0, Lcom/htc/calendar/EventInfoActivity;->mIsHtcExchangeEvent:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/htc/calendar/EventInfoActivity;->mIsRepeating:Z

    if-eqz v2, :cond_1

    .line 1206
    :goto_1
    return v1

    .end local v0           #can:Z
    :cond_0
    move v0, v1

    .line 1203
    goto :goto_0

    .restart local v0       #can:Z
    :cond_1
    move v1, v0

    .line 1206
    goto :goto_1
.end method

.method private checkFiredList()V
    .locals 6

    .prologue
    .line 3162
    const/4 v1, 0x0

    .line 3163
    .local v1, mEventInFired:Z
    const/4 v0, 0x0

    .line 3164
    .local v0, mAlterIdList:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/calendar/EventInfoActivity;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/htc/calendar/EventInfoActivity;->mEventId:J

    invoke-static {v3, v4, v5}, Lcom/htc/calendar/HtcUtils;->getStringAlertIdList(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3165
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3167
    const/4 v1, 0x1

    .line 3168
    iget-boolean v3, p0, Lcom/htc/calendar/EventInfoActivity;->mNeedShowSnoozeDismiss:Z

    if-nez v3, :cond_0

    .line 3169
    const/4 v1, 0x0

    .line 3172
    :cond_0
    iget-object v3, p0, Lcom/htc/calendar/EventInfoActivity;->mUIHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3173
    .local v2, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/htc/calendar/EventInfoActivity;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3175
    .end local v2           #msg:Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private checkIsAssociatedNote()V
    .locals 2

    .prologue
    .line 2931
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/calendar/EventInfoActivity$10;

    invoke-direct {v1, p0}, Lcom/htc/calendar/EventInfoActivity$10;-><init>(Lcom/htc/calendar/EventInfoActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2942
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2943
    return-void
.end method

.method private clearReminderView()V
    .locals 2

    .prologue
    .line 3179
    iget-object v1, p0, Lcom/htc/calendar/EventInfoActivity;->mRemindersContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 3180
    iget-object v1, p0, Lcom/htc/calendar/EventInfoActivity;->mRemindersContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 3181
    .local v0, cntOfChild:I
    if-lez v0, :cond_0

    .line 3182
    iget-object v1, p0, Lcom/htc/calendar/EventInfoActivity;->mRemindersContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 3186
    .end local v0           #cntOfChild:I
    :cond_0
    return-void
.end method

.method private clearWebView()V
    .locals 2

    .prologue
    .line 3417
    const v1, 0x7f0d008f

    invoke-virtual {p0, v1}, Lcom/htc/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 3418
    .local v0, webView:Landroid/webkit/WebView;
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 3419
    const/4 v0, 0x0

    .line 3420
    return-void
.end method

.method private closeAllCursorLocked(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 2
    .parameter "eventCursor"
    .parameter "attendeesCursor"
    .parameter "calendarCursor"

    .prologue
    .line 2778
    const-class v1, Lcom/htc/calendar/EventInfoActivity;

    monitor-enter v1

    .line 2779
    :try_start_0
    invoke-direct {p0, p1}, Lcom/htc/calendar/EventInfoActivity;->closeCursorLocked(Landroid/database/Cursor;)V

    .line 2780
    invoke-direct {p0, p2}, Lcom/htc/calendar/EventInfoActivity;->closeCursorLocked(Landroid/database/Cursor;)V

    .line 2781
    invoke-direct {p0, p3}, Lcom/htc/calendar/EventInfoActivity;->closeCursorLocked(Landroid/database/Cursor;)V

    .line 2782
    monitor-exit v1

    .line 2783
    return-void

    .line 2782
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private closeCursorLocked(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 2786
    if-eqz p1, :cond_1

    .line 2787
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2788
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 2790
    :cond_0
    const/4 p1, 0x0

    .line 2792
    :cond_1
    return-void
.end method

.method private createExceptionResponse(Landroid/content/ContentResolver;JJI)V
    .locals 21
    .parameter "cr"
    .parameter "eventId"
    .parameter "attendeeId"
    .parameter "status"

    .prologue
    .line 1427
    const-string v2, "EventInfoActivity"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "createExceptionResponse eventId=%d attendeeId=%d status=%d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v6, v7

    const/4 v7, 0x1

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v6, v7

    const/4 v7, 0x2

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p2

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1430
    .local v3, uri:Landroid/net/Uri;
    sget-object v4, Lcom/htc/calendar/EventInfoActivity;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 1431
    .local v13, cursor:Landroid/database/Cursor;
    if-nez v13, :cond_1

    .line 1493
    :cond_0
    :goto_0
    return-void

    .line 1435
    :cond_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1436
    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1437
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1443
    :cond_2
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1444
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 1446
    .local v18, values:Landroid/content/ContentValues;
    const/4 v2, 0x1

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1447
    .local v17, title:Ljava/lang/String;
    const/4 v2, 0x7

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1448
    .local v16, timezone:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1449
    .local v12, calendarId:I
    const/4 v2, 0x3

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v10, 0x1

    .line 1450
    .local v10, allDay:Z
    :goto_1
    const/4 v2, 0x6

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1452
    .local v14, syncId:Ljava/lang/String;
    if-eqz v10, :cond_4

    .line 1453
    const/4 v11, 0x0

    .line 1454
    .local v11, bTZEmptyCache:Z
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1455
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v16

    .line 1456
    const/4 v11, 0x1

    .line 1458
    :cond_3
    new-instance v15, Landroid/text/format/Time;

    invoke-direct/range {v15 .. v16}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1459
    .local v15, t:Landroid/text/format/Time;
    invoke-virtual {v15}, Landroid/text/format/Time;->setToNow()V

    .line 1460
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 1461
    iget-wide v4, v15, Landroid/text/format/Time;->gmtoff:J

    const-wide/16 v6, 0x3e8

    mul-long v8, v4, v6

    .line 1462
    .local v8, adjustOffset:J
    const-string v2, "EventInfoActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createExceptionResponse allDay event :: timezone:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " adjustOffset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/calendar/EventInfoActivity;->mStartMillis:J

    add-long/2addr v4, v8

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/htc/calendar/EventInfoActivity;->mStartMillis:J

    .line 1464
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/calendar/EventInfoActivity;->mEndMillis:J

    add-long/2addr v4, v8

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/htc/calendar/EventInfoActivity;->mEndMillis:J

    .line 1466
    const-string v2, "EventInfoActivity"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "mStartMillis=%d mEndMillis=%d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/calendar/EventInfoActivity;->mStartMillis:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/calendar/EventInfoActivity;->mEndMillis:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    if-eqz v11, :cond_6

    .line 1468
    const-string v16, ""

    .line 1474
    .end local v8           #adjustOffset:J
    .end local v11           #bTZEmptyCache:Z
    .end local v15           #t:Landroid/text/format/Time;
    :cond_4
    :goto_2
    const-string v2, "title"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    const-string v2, "eventTimezone"

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    const-string v4, "allDay"

    if-eqz v10, :cond_7

    const/4 v2, 0x1

    :goto_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1477
    const-string v2, "calendar_id"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1478
    const-string v2, "dtstart"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/calendar/EventInfoActivity;->mStartMillis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1479
    const-string v2, "dtend"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/calendar/EventInfoActivity;->mEndMillis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1480
    const-string v2, "original_sync_id"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    const-string v2, "originalInstanceTime"

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/htc/calendar/EventInfoActivity;->mStartMillis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1482
    const-string v4, "originalAllDay"

    if-eqz v10, :cond_8

    const/4 v2, 0x1

    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1483
    const-string v2, "eventStatus"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1484
    const-string v2, "selfAttendeeStatus"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1487
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1489
    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1490
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1449
    .end local v10           #allDay:Z
    .end local v14           #syncId:Ljava/lang/String;
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 1470
    .restart local v8       #adjustOffset:J
    .restart local v10       #allDay:Z
    .restart local v11       #bTZEmptyCache:Z
    .restart local v14       #syncId:Ljava/lang/String;
    .restart local v15       #t:Landroid/text/format/Time;
    :cond_6
    :try_start_1
    const-string v16, "UTC"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 1476
    .end local v8           #adjustOffset:J
    .end local v11           #bTZEmptyCache:Z
    .end local v15           #t:Landroid/text/format/Time;
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 1482
    :cond_8
    const/4 v2, 0x0

    goto :goto_4

    .line 1489
    .end local v10           #allDay:Z
    .end local v12           #calendarId:I
    .end local v14           #syncId:Ljava/lang/String;
    .end local v16           #timezone:Ljava/lang/String;
    .end local v17           #title:Ljava/lang/String;
    .end local v18           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v2

    invoke-interface {v13}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_9

    .line 1490
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v2
.end method

.method private doDelete()V
    .locals 7

    .prologue
    .line 1527
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mDeleteEventHelper:Lcom/htc/calendar/DeleteEventHelper;

    iget-wide v1, p0, Lcom/htc/calendar/EventInfoActivity;->mStartMillis:J

    iget-wide v3, p0, Lcom/htc/calendar/EventInfoActivity;->mEndMillis:J

    iget-object v5, p0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/4 v6, -0x1

    invoke-virtual/range {v0 .. v6}, Lcom/htc/calendar/DeleteEventHelper;->delete(JJLandroid/database/Cursor;I)V

    .line 1528
    return-void
.end method

.method private doEdit()V
    .locals 5

    .prologue
    .line 1506
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p0, Lcom/htc/calendar/EventInfoActivity;->mEventId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1507
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1518
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "beginTime"

    iget-wide v3, p0, Lcom/htc/calendar/EventInfoActivity;->mStartMillis:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1519
    const-string v2, "endTime"

    iget-wide v3, p0, Lcom/htc/calendar/EventInfoActivity;->mEndMillis:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1520
    const-class v2, Lcom/htc/calendar/EditEvent;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1521
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1522
    invoke-virtual {p0, v0}, Lcom/htc/calendar/EventInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 1523
    invoke-virtual {p0}, Lcom/htc/calendar/EventInfoActivity;->finish()V

    .line 1524
    return-void
.end method

.method private doSnoozeEvent(J)V
    .locals 9
    .parameter "eventId"

    .prologue
    .line 2387
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mContext:Landroid/content/Context;

    iget-wide v1, p0, Lcom/htc/calendar/EventInfoActivity;->mEventId:J

    iget-wide v3, p0, Lcom/htc/calendar/EventInfoActivity;->mCalendarAlertId:J

    iget-wide v5, p0, Lcom/htc/calendar/EventInfoActivity;->mStartMillis:J

    iget-wide v7, p0, Lcom/htc/calendar/EventInfoActivity;->mEndMillis:J

    invoke-static/range {v0 .. v8}, Lcom/htc/calendar/HtcUtils;->doSnoozeEvent(Landroid/content/Context;JJJJ)V

    .line 2388
    return-void
.end method

.method private doUpdateView_HTC()V
    .locals 44

    .prologue
    .line 1905
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    if-nez v2, :cond_0

    .line 1906
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EventInfoActivity;->mNoteArea:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1907
    const-string v2, "EventInfoActivity"

    const-string v3, "updateView_HTC mEventCursor is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2260
    :goto_0
    return-void

    .line 1911
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1912
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EventInfoActivity;->mNoteArea:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1913
    const-string v2, "EventInfoActivity"

    const-string v3, "updateView_HTC mEventCursor is closed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1917
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-gtz v2, :cond_3

    .line 1918
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EventInfoActivity;->mNoteArea:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1922
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v38

    .line 1923
    .local v38, res:Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    .line 1925
    .local v17, cr:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 1926
    .local v22, eventName:Ljava/lang/String;
    if-eqz v22, :cond_4

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_f

    .line 1927
    :cond_4
    const v2, 0x7f080078

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 1934
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/htc/calendar/EventInfoActivity;->mAllDay:Z

    .line 1935
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v3, 0x9

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 1936
    .local v32, location:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v3, 0x8

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1937
    .local v19, description:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 1938
    .local v36, rRule:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_11

    const/16 v26, 0x1

    .line 1939
    .local v26, hasAlarm:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/4 v3, 0x7

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 1940
    .local v24, eventTimezone:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v3, 0xc

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 1942
    .local v16, color:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/4 v3, 0x6

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/htc/calendar/EventInfoActivity;->mSyncId:Ljava/lang/String;

    .line 1944
    const v2, 0x7f0d0012

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v40

    check-cast v40, Landroid/widget/ImageView;

    .line 1946
    .local v40, stripe:Landroid/widget/ImageView;
    move-object/from16 v0, v40

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 1953
    const v2, 0x7f0d009e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    .line 1954
    .local v27, imgAssociatedNote:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EventInfoActivity;->mNoteArea:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1955
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/calendar/EventInfoActivity;->mIsAssociatedNote:Z

    if-eqz v2, :cond_13

    .line 1956
    const v2, 0x7f0d009c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1957
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EventInfoActivity;->mNoteUri:Landroid/net/Uri;

    if-eqz v2, :cond_12

    .line 1958
    const-string v2, "EventInfoActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "note image:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mNoteUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    const v2, 0x7f0d009c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1960
    const/4 v2, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1961
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EventInfoActivity;->mNoteUri:Landroid/net/Uri;

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 1962
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1967
    :goto_4
    const v2, 0x7f0d00a3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f08001e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1975
    :goto_5
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1978
    const v2, 0x7f0d0086

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v2, v1}, Lcom/htc/calendar/EventInfoActivity;->setTextCommon(ILjava/lang/CharSequence;)V

    .line 1983
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EventInfoActivity;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EventInfoActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v2, v3}, Lcom/htc/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v31

    .line 1984
    .local v31, localTimezone:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/calendar/EventInfoActivity;->mAllDay:Z

    if-eqz v2, :cond_6

    .line 1985
    const-string v31, "UTC"

    .line 1996
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/calendar/EventInfoActivity;->mAllDay:Z

    if-eqz v2, :cond_14

    .line 1997
    const/16 v7, 0x2012

    .line 2007
    .local v7, flags:I
    :cond_7
    :goto_6
    if-eqz v24, :cond_8

    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/calendar/EventInfoActivity;->mAllDay:Z

    if-eqz v2, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/calendar/EventInfoActivity;->mIsHtcExchangeEvent:Z

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/calendar/EventInfoActivity;->mAllDay:Z

    if-nez v2, :cond_15

    .line 2009
    :cond_9
    const/16 v7, 0x10

    .line 2010
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/calendar/EventInfoActivity;->mStartMillis:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/calendar/EventInfoActivity;->mEndMillis:J

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v42

    .line 2012
    .local v42, when_1:Ljava/lang/String;
    const/4 v7, 0x1

    .line 2013
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/calendar/EventInfoActivity;->mStartMillis:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/calendar/EventInfoActivity;->mEndMillis:J

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v43

    .line 2014
    .local v43, when_2:Ljava/lang/String;
    const v2, 0x7f0d0089

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s (%s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v42, v5, v6

    const/4 v6, 0x1

    aput-object v31, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/htc/calendar/EventInfoActivity;->setTextCommon(ILjava/lang/CharSequence;)V

    .line 2015
    const v2, 0x7f0d0088

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v43, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/htc/calendar/EventInfoActivity;->setTextCommon(ILjava/lang/CharSequence;)V

    .line 2037
    .end local v43           #when_2:Ljava/lang/String;
    :goto_7
    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 2038
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v32

    .line 2041
    :cond_a
    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2042
    const v2, 0x7f0d008a

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/htc/calendar/EventInfoActivity;->setVisibilityCommon(II)V

    .line 2043
    const v2, 0x7f0d0052

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/htc/calendar/EventInfoActivity;->setVisibilityCommon(II)V

    .line 2098
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EventInfoActivity;->mOrganizer:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 2099
    .local v34, organizerName:Ljava/lang/String;
    const-string v33, ""

    .line 2134
    .local v33, organizerEmail:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2135
    const v2, 0x7f0d008d

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/htc/calendar/EventInfoActivity;->setVisibilityCommon(II)V

    .line 2136
    const v2, 0x7f0d007b

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/htc/calendar/EventInfoActivity;->setVisibilityCommon(II)V

    .line 2196
    :cond_b
    :goto_9
    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 2198
    new-instance v23, Lcom/android/calendarcommon/EventRecurrence;

    invoke-direct/range {v23 .. v23}, Lcom/android/calendarcommon/EventRecurrence;-><init>()V

    .line 2200
    .local v23, eventRecurrence:Lcom/android/calendarcommon/EventRecurrence;
    :try_start_0
    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 2201
    new-instance v18, Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EventInfoActivity;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EventInfoActivity;->mUpdateTZ:Ljava/lang/Runnable;

    invoke-static {v2, v3}, Lcom/htc/calendar/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2202
    .local v18, date:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/calendar/EventInfoActivity;->mAllDay:Z

    if-eqz v2, :cond_c

    .line 2203
    const-string v2, "UTC"

    move-object/from16 v0, v18

    iput-object v2, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 2205
    :cond_c
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/htc/calendar/EventInfoActivity;->mStartMillis:J

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 2206
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon/EventRecurrence;->setStartDate(Landroid/text/format/Time;)V

    .line 2208
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-static {v2, v0}, Lcom/htc/calendar/EventRecurrenceFormatter;->getRepeatString(Landroid/content/res/Resources;Lcom/android/calendarcommon/EventRecurrence;)Ljava/lang/String;

    move-result-object v37

    .line 2211
    .local v37, repeatString:Ljava/lang/String;
    const v2, 0x7f0d0093

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v2, v1}, Lcom/htc/calendar/EventInfoActivity;->setTextCommon(ILjava/lang/CharSequence;)V

    .line 2212
    const v2, 0x7f0d0090

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/htc/calendar/EventInfoActivity;->setVisibilityCommon(II)V

    .line 2213
    const v2, 0x7f0d007d

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/htc/calendar/EventInfoActivity;->setVisibilityCommon(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2229
    .end local v18           #date:Landroid/text/format/Time;
    .end local v23           #eventRecurrence:Lcom/android/calendarcommon/EventRecurrence;
    .end local v37           #repeatString:Ljava/lang/String;
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EventInfoActivity;->mAttendeeListForUI:Ljava/lang/String;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EventInfoActivity;->mAttendeeListForUI:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_26

    .line 2230
    :cond_d
    const v2, 0x7f0d0094

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/htc/calendar/EventInfoActivity;->setVisibilityCommon(II)V

    .line 2231
    const v2, 0x7f0d0095

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/htc/calendar/EventInfoActivity;->setVisibilityCommon(II)V

    .line 2257
    :cond_e
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/EventInfoActivity;->updateResponse()V

    .line 2259
    const v2, 0x7f0d0085

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1929
    .end local v7           #flags:I
    .end local v16           #color:I
    .end local v19           #description:Ljava/lang/String;
    .end local v24           #eventTimezone:Ljava/lang/String;
    .end local v26           #hasAlarm:Z
    .end local v27           #imgAssociatedNote:Landroid/widget/ImageView;
    .end local v31           #localTimezone:Ljava/lang/String;
    .end local v32           #location:Ljava/lang/String;
    .end local v33           #organizerEmail:Ljava/lang/String;
    .end local v34           #organizerName:Ljava/lang/String;
    .end local v36           #rRule:Ljava/lang/String;
    .end local v40           #stripe:Landroid/widget/ImageView;
    .end local v42           #when_1:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/calendar/EventInfoActivity;->mEventTitle:Ljava/lang/String;

    goto/16 :goto_1

    .line 1934
    :cond_10
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 1938
    .restart local v19       #description:Ljava/lang/String;
    .restart local v32       #location:Ljava/lang/String;
    .restart local v36       #rRule:Ljava/lang/String;
    :cond_11
    const/16 v26, 0x0

    goto/16 :goto_3

    .line 1964
    .restart local v16       #color:I
    .restart local v24       #eventTimezone:Ljava/lang/String;
    .restart local v26       #hasAlarm:Z
    .restart local v27       #imgAssociatedNote:Landroid/widget/ImageView;
    .restart local v40       #stripe:Landroid/widget/ImageView;
    :cond_12
    const-string v2, "EventInfoActivity"

    const-string v3, "note image: null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1965
    const v2, 0x7f0d009c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_4

    .line 1969
    :cond_13
    const v2, 0x7f0d00a3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f08001d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1970
    const v2, 0x7f0d009c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1971
    const/16 v2, 0x8

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 1999
    .restart local v31       #localTimezone:Ljava/lang/String;
    :cond_14
    const/4 v7, 0x1

    .line 2000
    .restart local v7       #flags:I
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2001
    or-int/lit16 v7, v7, 0x80

    goto/16 :goto_6

    .line 2016
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/calendar/EventInfoActivity;->mAllDay:Z

    if-nez v2, :cond_16

    .line 2017
    const/16 v7, 0x10

    .line 2018
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/calendar/EventInfoActivity;->mStartMillis:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/calendar/EventInfoActivity;->mEndMillis:J

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v42

    .line 2020
    .restart local v42       #when_1:Ljava/lang/String;
    const/4 v7, 0x1

    .line 2021
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/calendar/EventInfoActivity;->mStartMillis:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/calendar/EventInfoActivity;->mEndMillis:J

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v7}, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v43

    .line 2022
    .restart local v43       #when_2:Ljava/lang/String;
    const v2, 0x7f0d0089

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v42, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/htc/calendar/EventInfoActivity;->setTextCommon(ILjava/lang/CharSequence;)V

    .line 2023
    const v2, 0x7f0d0088

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v43, v5, v6

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/htc/calendar/EventInfoActivity;->setTextCommon(ILjava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 2025
    .end local v42           #when_1:Ljava/lang/String;
    .end local v43           #when_2:Ljava/lang/String;
    :cond_16
    const/16 v7, 0x10

    .line 2026
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EventInfoActivity;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/calendar/EventInfoActivity;->mStartMillis:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/htc/calendar/EventInfoActivity;->mEndMillis:J

    invoke-static/range {v2 .. v7}, Lcom/htc/util/calendar/tools/TimeDisplayUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v42

    .line 2028
    .restart local v42       #when_1:Ljava/lang/String;
    const v2, 0x7f0d0089

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v2, v1}, Lcom/htc/calendar/EventInfoActivity;->setTextCommon(ILjava/lang/CharSequence;)V

    .line 2029
    const v2, 0x7f0d0088

    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08009b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/htc/calendar/EventInfoActivity;->setTextCommon(ILjava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 2045
    :cond_17
    const v2, 0x7f0d008a

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/htc/calendar/EventInfoActivity;->setVisibilityCommon(II)V

    .line 2047
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/htc/calendar/EventInfoActivity;->showPhoneLink(Ljava/lang/String;)Z

    move-result v39

    .line 2049
    .local v39, showPhoneLink:Z
    const v2, 0x7f0d008b

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/ImageView;

    .line 2050
    .local v28, imgLocation:Landroid/widget/ImageView;
    const v2, 0x7f0d0052

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout;

    .line 2051
    .local v30, ll_Location:Landroid/widget/LinearLayout;
    invoke-static {}, Lcom/htc/calendar/Utils;->isEnableTheme()Z

    move-result v2

    if-nez v2, :cond_18

    invoke-static {}, Lcom/htc/calendar/Utils;->isEnableSkin()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 2052
    :cond_18
    invoke-static/range {p0 .. p0}, Lcom/htc/calendar/HtcUtils;->getListViewSelector(Landroid/content/Context;)I

    move-result v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 2055
    :cond_19
    const-string v2, "EventInfoActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showPhoneLink: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v39

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    if-eqz v39, :cond_1d

    .line 2057
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/htc/calendar/EventInfoActivity;->getPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 2058
    .local v35, phoneNumber:Ljava/lang/String;
    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1a

    .line 2059
    move-object/from16 v0, v30

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 2060
    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2062
    :cond_1a
    const v2, 0x7f0d008c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    .line 2063
    .local v41, textView:Landroid/widget/TextView;
    if-eqz v41, :cond_1b

    .line 2064
    const/4 v2, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 2065
    move-object/from16 v0, v41

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2068
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EventInfoActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/util/calendar/HtcCalendarManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/calendar/HtcCalendarManager;

    move-result-object v8

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/htc/calendar/EventInfoActivity;->mEventId:J

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/htc/calendar/EventInfoActivity;->mStartMillis:J

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/calendar/EventInfoActivity;->mEndMillis:J

    invoke-virtual/range {v8 .. v14}, Lcom/htc/util/calendar/HtcCalendarManager;->generateEventUriString(JJJ)Ljava/lang/String;

    move-result-object v25

    .line 2069
    .local v25, eventUri:Ljava/lang/String;
    invoke-static {}, Lcom/htc/calendar/HtcUtils;->isLaunchViaDispatcher()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 2070
    const/4 v2, 0x7

    move-object/from16 v0, v41

    invoke-static {v0, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 2076
    .end local v25           #eventUri:Ljava/lang/String;
    :cond_1b
    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EventInfoActivity;->mClickPhoneIconListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2077
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EventInfoActivity;->mClickPhoneIconListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2078
    const v2, 0x7f020083

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_8

    .line 2072
    .restart local v25       #eventUri:Ljava/lang/String;
    :cond_1c
    const/4 v2, 0x7

    move-object/from16 v0, v41

    move-object/from16 v1, v25

    invoke-static {v0, v2, v1}, Lcom/htc/text/util/HtcLinkify;->addLinksWithEvent(Landroid/widget/TextView;ILjava/lang/String;)Z

    goto :goto_c

    .line 2080
    .end local v25           #eventUri:Ljava/lang/String;
    .end local v35           #phoneNumber:Ljava/lang/String;
    .end local v41           #textView:Landroid/widget/TextView;
    :cond_1d
    const v2, 0x7f0d008c

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v2, v1}, Lcom/htc/calendar/EventInfoActivity;->setTextCommon(ILjava/lang/CharSequence;)V

    .line 2081
    const v2, 0x7f0d008c

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    .line 2082
    .restart local v41       #textView:Landroid/widget/TextView;
    move-object/from16 v0, v41

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2083
    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 2084
    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2085
    invoke-static/range {p0 .. p0}, Lcom/htc/calendar/HtcUtils;->IsMapExist(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 2086
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EventInfoActivity;->mClickLocationIconListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2087
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EventInfoActivity;->mClickLocationIconListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2088
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EventInfoActivity;->mClickLocationIconListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2094
    :goto_d
    const v2, 0x7f020028

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_8

    .line 2090
    :cond_1e
    const/4 v2, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 2091
    const/4 v2, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 2092
    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    goto :goto_d

    .line 2138
    .end local v28           #imgLocation:Landroid/widget/ImageView;
    .end local v30           #ll_Location:Landroid/widget/LinearLayout;
    .end local v39           #showPhoneLink:Z
    .end local v41           #textView:Landroid/widget/TextView;
    .restart local v33       #organizerEmail:Ljava/lang/String;
    .restart local v34       #organizerName:Ljava/lang/String;
    :cond_1f
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 2139
    const v2, 0x7f0d008d

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/htc/calendar/EventInfoActivity;->setVisibilityCommon(II)V

    .line 2140
    const v2, 0x7f0d007b

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/htc/calendar/EventInfoActivity;->setVisibilityCommon(II)V

    goto/16 :goto_9

    .line 2142
    :cond_20
    const v2, 0x7f0d008d

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/htc/calendar/EventInfoActivity;->setVisibilityCommon(II)V

    .line 2146
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/EventInfoActivity;->isTextPlain()Z

    move-result v29

    .line 2147
    .local v29, isTextPlain:Z
    const v2, 0x7f0d008e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 2148
    .local v20, descriptionTextView:Landroid/widget/TextView;
    const v2, 0x7f0d008f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/webkit/WebView;

    .line 2150
    .local v8, descriptionWebView:Landroid/webkit/WebView;
    if-eqz v29, :cond_21

    const/4 v2, 0x0

    :goto_e
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2151
    if-nez v29, :cond_22

    const/4 v2, 0x0

    :goto_f
    invoke-virtual {v8, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 2153
    if-eqz v29, :cond_24

    .line 2154
    if-eqz v20, :cond_b

    .line 2155
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 2156
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2157
    invoke-static/range {p0 .. p0}, Lcom/htc/util/calendar/HtcCalendarManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/calendar/HtcCalendarManager;

    move-result-object v8

    .end local v8           #descriptionWebView:Landroid/webkit/WebView;
    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/htc/calendar/EventInfoActivity;->mEventId:J

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/htc/calendar/EventInfoActivity;->mStartMillis:J

    move-object/from16 v0, p0

    iget-wide v13, v0, Lcom/htc/calendar/EventInfoActivity;->mEndMillis:J

    invoke-virtual/range {v8 .. v14}, Lcom/htc/util/calendar/HtcCalendarManager;->generateEventUriString(JJJ)Ljava/lang/String;

    move-result-object v25

    .line 2158
    .restart local v25       #eventUri:Ljava/lang/String;
    invoke-static {}, Lcom/htc/calendar/HtcUtils;->isLaunchViaDispatcher()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2159
    const/4 v2, 0x7

    move-object/from16 v0, v20

    invoke-static {v0, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    goto/16 :goto_9

    .line 2150
    .end local v25           #eventUri:Ljava/lang/String;
    .restart local v8       #descriptionWebView:Landroid/webkit/WebView;
    :cond_21
    const/16 v2, 0x8

    goto :goto_e

    .line 2151
    :cond_22
    const/16 v2, 0x8

    goto :goto_f

    .line 2161
    .end local v8           #descriptionWebView:Landroid/webkit/WebView;
    .restart local v25       #eventUri:Ljava/lang/String;
    :cond_23
    const/4 v2, 0x7

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-static {v0, v2, v1}, Lcom/htc/text/util/HtcLinkify;->addLinksWithEvent(Landroid/widget/TextView;ILjava/lang/String;)Z

    goto/16 :goto_9

    .line 2168
    .end local v25           #eventUri:Ljava/lang/String;
    .restart local v8       #descriptionWebView:Landroid/webkit/WebView;
    :cond_24
    if-eqz v8, :cond_b

    .line 2169
    const/4 v9, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, "text/html"

    const-string v12, "utf-8"

    const/4 v13, 0x0

    invoke-virtual/range {v8 .. v13}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 2214
    .end local v8           #descriptionWebView:Landroid/webkit/WebView;
    .end local v20           #descriptionTextView:Landroid/widget/TextView;
    .end local v29           #isTextPlain:Z
    .restart local v23       #eventRecurrence:Lcom/android/calendarcommon/EventRecurrence;
    :catch_0
    move-exception v21

    .line 2215
    .local v21, e:Ljava/lang/Exception;
    const-string v2, "EventInfoActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t handle RRULE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    const v2, 0x7f0d0090

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/htc/calendar/EventInfoActivity;->setVisibilityCommon(II)V

    .line 2217
    const v2, 0x7f0d007d

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/htc/calendar/EventInfoActivity;->setVisibilityCommon(II)V

    goto/16 :goto_a

    .line 2220
    .end local v21           #e:Ljava/lang/Exception;
    .end local v23           #eventRecurrence:Lcom/android/calendarcommon/EventRecurrence;
    :cond_25
    const v2, 0x7f0d0090

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/htc/calendar/EventInfoActivity;->setVisibilityCommon(II)V

    .line 2221
    const v2, 0x7f0d007d

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/htc/calendar/EventInfoActivity;->setVisibilityCommon(II)V

    goto/16 :goto_a

    .line 2234
    :cond_26
    const v2, 0x7f0d0098

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EventInfoActivity;->mAttendeeListForUI:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/htc/calendar/EventInfoActivity;->setTextCommon(ILjava/lang/CharSequence;)V

    .line 2235
    const v2, 0x7f0d0094

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/htc/calendar/EventInfoActivity;->setVisibilityCommon(II)V

    .line 2236
    const v2, 0x7f0d0095

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/htc/calendar/EventInfoActivity;->setVisibilityCommon(II)V

    .line 2238
    const v2, 0x7f0d0095

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/htc/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 2239
    .local v15, attendeesLayout:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EventInfoActivity;->mClickAttendeesStatusListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v15, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2240
    const v2, 0x7f0d0098

    invoke-virtual {v15, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EventInfoActivity;->mClickAttendeesStatusListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2242
    invoke-static {}, Lcom/htc/calendar/Utils;->isEnableTheme()Z

    move-result v2

    if-nez v2, :cond_27

    invoke-static {}, Lcom/htc/calendar/Utils;->isEnableSkin()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2243
    :cond_27
    invoke-static/range {p0 .. p0}, Lcom/htc/calendar/HtcUtils;->getListViewSelector(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v15, v2}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto/16 :goto_b
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
    .line 2444
    .local p0, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2445
    .local v0, index:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2447
    const-string v1, "EventInfoActivity"

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

    .line 2448
    const/4 v0, 0x0

    .line 2450
    .end local v0           #index:I
    :cond_0
    return v0
.end method

.method private findResponseIndexFor(I)I
    .locals 3
    .parameter "response"

    .prologue
    .line 1496
    sget-object v2, Lcom/htc/calendar/EventInfoActivity;->ATTENDEE_VALUES:[I

    array-length v1, v2

    .line 1497
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1498
    sget-object v2, Lcom/htc/calendar/EventInfoActivity;->ATTENDEE_VALUES:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_0

    .line 1502
    .end local v0           #index:I
    :goto_1
    return v0

    .line 1497
    .restart local v0       #index:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1502
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getAssociatedNoteId()J
    .locals 6

    .prologue
    .line 3353
    invoke-static {p0}, Lcom/htc/util/calendar/HtcCalendarManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/calendar/HtcCalendarManager;

    move-result-object v3

    iget-wide v4, p0, Lcom/htc/calendar/EventInfoActivity;->mEventId:J

    invoke-virtual {v3, v4, v5}, Lcom/htc/util/calendar/HtcCalendarManager;->generateTheEventUriString(J)Ljava/lang/String;

    move-result-object v2

    .line 3354
    .local v2, uriString:Ljava/lang/String;
    invoke-static {p0}, Lcom/htc/util/calendar/HtcCalendarManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/calendar/HtcCalendarManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/util/calendar/HtcCalendarManager;->getAssociatedNotesId(Ljava/lang/String;)J

    move-result-wide v0

    .line 3355
    .local v0, noteId:J
    return-wide v0
.end method

.method private getAssociatedNoteUri()Landroid/net/Uri;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 3359
    invoke-direct {p0}, Lcom/htc/calendar/EventInfoActivity;->getAssociatedNoteId()J

    move-result-wide v8

    .line 3360
    .local v8, noteId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v8, v2

    if-gez v2, :cond_1

    .line 3382
    :cond_0
    :goto_0
    return-object v10

    .line 3362
    :cond_1
    const/4 v10, 0x0

    .line 3366
    .local v10, noteImgUri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 3368
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/calendar/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3369
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v2, Lcom/htc/provider/Notes;->NOTES_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3370
    .local v1, notesUri:Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "thumbnail_path"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3372
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3373
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 3377
    :cond_2
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3378
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3374
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #notesUri:Landroid/net/Uri;
    :catch_0
    move-exception v7

    .line 3375
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3377
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3378
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3377
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 3378
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method private getMAX_REMINDERS()I
    .locals 2

    .prologue
    .line 2513
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mSyncAccountType:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/calendar/HtcUtils;->isHTCExchangeEvent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mSyncAccountType:Ljava/lang/String;

    invoke-static {v0}, Lcom/htc/calendar/HtcUtils;->isHTCPCSyncEvent(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/calendar/EventInfoActivity;->mSyncAccountType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/htc/calendar/HtcUtils;->isHTCFacebookEvent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2516
    :cond_0
    const/4 v0, 0x1

    .line 2518
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private getPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "str"

    .prologue
    .line 1701
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1702
    const-string v3, ""

    .line 1717
    :goto_0
    return-object v3

    .line 1705
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_1

    .line 1706
    const-string v3, ""

    goto :goto_0

    .line 1708
    :cond_1
    const-string v6, ",| "

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1709
    .local v5, strAry:[Ljava/lang/String;
    const-string v3, ""

    .line 1711
    .local v3, returnStr:Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    .line 1712
    .local v4, s:Ljava/lang/String;
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1713
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1711
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1716
    .end local v4           #s:Ljava/lang/String;
    :cond_3
    const/16 v6, 0x2d

    invoke-static {v3, v6}, Lcom/htc/wrap/java/lang/HtcWrapString;->removeSelf(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v3

    .line 1717
    goto :goto_0
.end method

.method private getReplyMeetingRequester(I)Lcom/htc/calendar/ReplyMeetingRequester;
    .locals 1
    .parameter "replyMode"

    .prologue
    .line 1239
    invoke-static {p0, p1}, Lcom/htc/calendar/ReplyMeetingRequester;->getInstance(Lcom/htc/calendar/EventInfoActivity;I)Lcom/htc/calendar/ReplyMeetingRequester;

    move-result-object v0

    return-object v0
.end method

.method private initAttendeesCursor()V
    .locals 15

    .prologue
    const-wide/16 v13, -0x1

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 964
    const/4 v6, -0x1

    iput v6, p0, Lcom/htc/calendar/EventInfoActivity;->mOriginalAttendeeResponse:I

    .line 965
    iput-wide v13, p0, Lcom/htc/calendar/EventInfoActivity;->mCalendarOwnerAttendeeId:J

    .line 966
    iput v9, p0, Lcom/htc/calendar/EventInfoActivity;->mNumOfAttendees:I

    .line 967
    const/4 v2, 0x0

    .line 968
    .local v2, isOrganizerAttendee:Z
    iget-object v6, p0, Lcom/htc/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    if-eqz v6, :cond_2

    .line 969
    iget-object v6, p0, Lcom/htc/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v6

    iput v6, p0, Lcom/htc/calendar/EventInfoActivity;->mNumOfAttendees:I

    .line 970
    const-string v6, "EventInfoActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mNumOfAttendees: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/htc/calendar/EventInfoActivity;->mNumOfAttendees:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    iget v6, p0, Lcom/htc/calendar/EventInfoActivity;->mNumOfAttendees:I

    if-eqz v6, :cond_3

    .line 973
    iput-boolean v10, p0, Lcom/htc/calendar/EventInfoActivity;->mIsAppointment:Z

    .line 978
    :goto_0
    iget-object v6, p0, Lcom/htc/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 979
    const-string v6, ""

    iput-object v6, p0, Lcom/htc/calendar/EventInfoActivity;->mAttendeeListForUI:Ljava/lang/String;

    .line 981
    :cond_0
    const/4 v2, 0x0

    .line 982
    iget-object v6, p0, Lcom/htc/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 983
    .local v4, name:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 984
    .local v0, email:Ljava/lang/String;
    iget-object v6, p0, Lcom/htc/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 986
    .local v5, relationShip:I
    const-string v6, "default@htc.calendar"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "exchange@htc.calendar"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "Outlook"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1025
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/htc/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1026
    iget-object v6, p0, Lcom/htc/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1033
    .end local v0           #email:Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #relationShip:I
    :cond_2
    iget-boolean v6, p0, Lcom/htc/calendar/EventInfoActivity;->mIsOrganizer:Z

    if-nez v6, :cond_b

    iget-boolean v6, p0, Lcom/htc/calendar/EventInfoActivity;->mHasAttendeeData:Z

    if-eqz v6, :cond_b

    .line 1036
    iget-object v6, p0, Lcom/htc/calendar/EventInfoActivity;->mUIHandler:Landroid/os/Handler;

    iget-object v7, p0, Lcom/htc/calendar/EventInfoActivity;->mOrganizer:Ljava/lang/String;

    invoke-virtual {v6, v11, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1037
    .local v3, msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/htc/calendar/EventInfoActivity;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1044
    :goto_2
    return-void

    .line 975
    .end local v3           #msg:Landroid/os/Message;
    :cond_3
    iput-boolean v9, p0, Lcom/htc/calendar/EventInfoActivity;->mIsAppointment:Z

    goto :goto_0

    .line 992
    .restart local v0       #email:Ljava/lang/String;
    .restart local v4       #name:Ljava/lang/String;
    .restart local v5       #relationShip:I
    :cond_4
    if-ne v5, v11, :cond_6

    .line 993
    const/4 v2, 0x1

    .line 995
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_7

    .line 996
    iput-object v4, p0, Lcom/htc/calendar/EventInfoActivity;->mOrganizer:Ljava/lang/String;

    .line 1001
    :cond_5
    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 1002
    iget-object v6, p0, Lcom/htc/calendar/EventInfoActivity;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/htc/calendar/Utils;->getExchangeLoginName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1003
    .local v1, exchangeAcnt:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-boolean v6, p0, Lcom/htc/calendar/EventInfoActivity;->mIsHtcExchangeEvent:Z

    if-eqz v6, :cond_6

    .line 1004
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1005
    iput-boolean v10, p0, Lcom/htc/calendar/EventInfoActivity;->mIsOrganizer:Z

    .line 1013
    .end local v1           #exchangeAcnt:Ljava/lang/String;
    :cond_6
    :goto_4
    iget-wide v6, p0, Lcom/htc/calendar/EventInfoActivity;->mCalendarOwnerAttendeeId:J

    cmp-long v6, v6, v13

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/htc/calendar/EventInfoActivity;->mCalendarOwnerAccount:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1015
    iget-object v6, p0, Lcom/htc/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, p0, Lcom/htc/calendar/EventInfoActivity;->mCalendarOwnerAttendeeId:J

    .line 1016
    iget-object v6, p0, Lcom/htc/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v7, 0x4

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, p0, Lcom/htc/calendar/EventInfoActivity;->mOriginalAttendeeResponse:I

    goto :goto_1

    .line 997
    :cond_7
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 998
    iput-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mOrganizer:Ljava/lang/String;

    goto :goto_3

    .line 1007
    .restart local v1       #exchangeAcnt:Ljava/lang/String;
    :cond_8
    iput-boolean v9, p0, Lcom/htc/calendar/EventInfoActivity;->mIsOrganizer:Z

    goto :goto_4

    .line 1017
    .end local v1           #exchangeAcnt:Ljava/lang/String;
    :cond_9
    if-nez v2, :cond_1

    .line 1018
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1019
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/htc/calendar/EventInfoActivity;->mAttendeeListForUI:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/calendar/EventInfoActivity;->mAttendeeListForUI:Ljava/lang/String;

    .line 1023
    :goto_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/htc/calendar/EventInfoActivity;->mAttendeeListForUI:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/calendar/EventInfoActivity;->mAttendeeListForUI:Ljava/lang/String;

    goto/16 :goto_1

    .line 1021
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/htc/calendar/EventInfoActivity;->mAttendeeListForUI:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/htc/calendar/EventInfoActivity;->mAttendeeListForUI:Ljava/lang/String;

    goto :goto_5

    .line 1041
    .end local v0           #email:Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #relationShip:I
    :cond_b
    iget-object v6, p0, Lcom/htc/calendar/EventInfoActivity;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v6, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1042
    .restart local v3       #msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/htc/calendar/EventInfoActivity;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2
.end method

.method private initBackgroundProcessor()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2796
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    if-nez v2, :cond_2

    .line 2797
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "LoadEventsBgThread"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/htc/calendar/EventInfoActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 2799
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 2801
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2802
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 2803
    .local v1, myLooper:Landroid/os/Looper;
    if-eqz v1, :cond_0

    .line 2804
    new-instance v2, Lcom/htc/calendar/EventInfoActivity$LoadEventsHandler;

    invoke-direct {v2, p0, v1}, Lcom/htc/calendar/EventInfoActivity$LoadEventsHandler;-><init>(Lcom/htc/calendar/EventInfoActivity;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/htc/calendar/EventInfoActivity;->mBackgroundHandler:Landroid/os/Handler;

    .line 2834
    .end local v1           #myLooper:Landroid/os/Looper;
    :goto_0
    return-void

    .line 2806
    .restart local v1       #myLooper:Landroid/os/Looper;
    :cond_0
    const-string v2, "EventInfoActivity"

    const-string v3, "get Looper is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2807
    iput-object v5, p0, Lcom/htc/calendar/EventInfoActivity;->mBackgroundHandler:Landroid/os/Handler;

    goto :goto_0

    .line 2810
    .end local v1           #myLooper:Landroid/os/Looper;
    :cond_1
    const-string v2, "EventInfoActivity"

    const-string v3, "mBackgroundThread is null or mBackgroundThread is not alive"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2813
    :cond_2
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2815
    :try_start_0
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2821
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2822
    iput-object v5, p0, Lcom/htc/calendar/EventInfoActivity;->mBackgroundHandler:Landroid/os/Handler;

    .line 2823
    const-string v2, "EventInfoActivity"

    const-string v3, "mBackgroundThread still can\'t start it, so set mBackgroundHandler to null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2816
    :catch_0
    move-exception v0

    .line 2817
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "EventInfoActivity"

    const-string v3, "mBackgroundThread is not alive, and can\'t start it"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2825
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 2826
    .restart local v1       #myLooper:Landroid/os/Looper;
    if-eqz v1, :cond_5

    .line 2827
    new-instance v2, Lcom/htc/calendar/EventInfoActivity$LoadEventsHandler;

    invoke-direct {v2, p0, v1}, Lcom/htc/calendar/EventInfoActivity$LoadEventsHandler;-><init>(Lcom/htc/calendar/EventInfoActivity;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/htc/calendar/EventInfoActivity;->mBackgroundHandler:Landroid/os/Handler;

    goto :goto_0

    .line 2829
    :cond_5
    const-string v2, "EventInfoActivity"

    const-string v3, "get Looper is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2830
    iput-object v5, p0, Lcom/htc/calendar/EventInfoActivity;->mBackgroundHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method private initCalendarsCursor()V
    .locals 1

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1050
    :cond_0
    return-void
.end method

.method private initEventCursor()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 941
    :try_start_0
    iget-object v3, p0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    if-nez v3, :cond_1

    .line 958
    :cond_0
    :goto_0
    return v1

    .line 942
    :cond_1
    iget-object v3, p0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 943
    iget-object v3, p0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 944
    iget-object v3, p0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 945
    invoke-virtual {p0}, Lcom/htc/calendar/EventInfoActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 947
    iget-object v3, p0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p0, Lcom/htc/calendar/EventInfoActivity;->mEventId:J

    .line 950
    iget-object v3, p0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/4 v4, 0x2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/htc/calendar/EventInfoActivity;->mRRule:Ljava/lang/String;

    .line 951
    iget-object v3, p0, Lcom/htc/calendar/EventInfoActivity;->mRRule:Ljava/lang/String;

    if-eqz v3, :cond_2

    move v3, v1

    :goto_1
    iput-boolean v3, p0, Lcom/htc/calendar/EventInfoActivity;->mIsRepeating:Z

    .line 954
    iget-object v3, p0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/htc/calendar/EventInfoActivity;->mEventCalendarId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 955
    goto :goto_0

    :cond_2
    move v3, v2

    .line 951
    goto :goto_1

    .line 956
    :catch_0
    move-exception v0

    .line 957
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initHeaderBtn()V
    .locals 2

    .prologue
    .line 3406
    const v0, 0x7f0d00bc

    invoke-virtual {p0, v0}, Lcom/htc/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mBtnEdit:Landroid/widget/ImageButton;

    .line 3407
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mBtnEdit:Landroid/widget/ImageButton;

    const v1, 0x208076b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 3408
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mBtnEdit:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 3409
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mBtnEdit:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3410
    return-void
.end method

.method private isGeoCode(Ljava/lang/String;)Lcom/htc/calendar/EventInfoActivity$GeoCode;
    .locals 4
    .parameter "s"

    .prologue
    .line 1738
    new-instance v0, Lcom/htc/calendar/EventInfoActivity$GeoCode;

    invoke-direct {v0, p0}, Lcom/htc/calendar/EventInfoActivity$GeoCode;-><init>(Lcom/htc/calendar/EventInfoActivity;)V

    .line 1740
    .local v0, g:Lcom/htc/calendar/EventInfoActivity$GeoCode;
    :try_start_0
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1741
    .local v1, geocode:[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/16 v3, 0x7b

    invoke-static {v2, v3}, Lcom/htc/wrap/java/lang/HtcWrapString;->removeSelf(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/calendar/EventInfoActivity$GeoCode;->lon:Ljava/lang/Double;

    .line 1742
    const/4 v2, 0x1

    aget-object v2, v1, v2

    const/16 v3, 0x7d

    invoke-static {v2, v3}, Lcom/htc/wrap/java/lang/HtcWrapString;->removeSelf(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/calendar/EventInfoActivity$GeoCode;->lat:Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1747
    .end local v0           #g:Lcom/htc/calendar/EventInfoActivity$GeoCode;
    .end local v1           #geocode:[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1744
    .restart local v0       #g:Lcom/htc/calendar/EventInfoActivity$GeoCode;
    :catch_0
    move-exception v2

    .line 1747
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMapURL(Ljava/lang/String;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 1728
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "geocode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1729
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTextPlain()Z
    .locals 1

    .prologue
    .line 3413
    iget v0, p0, Lcom/htc/calendar/EventInfoActivity;->mDescMimeType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchAssociatedNotes()V
    .locals 6

    .prologue
    .line 3386
    invoke-direct {p0}, Lcom/htc/calendar/EventInfoActivity;->getAssociatedNoteId()J

    move-result-wide v1

    .line 3387
    .local v1, noteId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    .line 3395
    :goto_0
    return-void

    .line 3389
    :cond_0
    const-string v3, "EventInfoActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "launch note, id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3391
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.LAUNCHNOTE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3392
    .local v0, in:Landroid/content/Intent;
    const-string v3, "NoteID"

    long-to-int v4, v1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3393
    const/high16 v3, 0x3002

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3394
    invoke-virtual {p0, v0}, Lcom/htc/calendar/EventInfoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private prepareData(Landroid/content/Intent;)V
    .locals 7
    .parameter "intent"

    .prologue
    const-wide/16 v5, 0x0

    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    .line 865
    iput-wide v3, p0, Lcom/htc/calendar/EventInfoActivity;->mCalendarOwnerAttendeeId:J

    .line 866
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mOriginalAttendees:Ljava/lang/String;

    .line 868
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mOriginalMinutes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 869
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 870
    invoke-direct {p0}, Lcom/htc/calendar/EventInfoActivity;->clearReminderView()V

    .line 872
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mUri:Landroid/net/Uri;

    .line 873
    const-string v0, "vCalendar"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/calendar/EventInfoActivity;->mVCalMode:Z

    .line 874
    const-string v0, "beginTime"

    invoke-virtual {p1, v0, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/calendar/EventInfoActivity;->mStartMillis:J

    .line 875
    const-string v0, "endTime"

    invoke-virtual {p1, v0, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/calendar/EventInfoActivity;->mEndMillis:J

    .line 877
    iput-boolean v2, p0, Lcom/htc/calendar/EventInfoActivity;->mIsUriFromNotes:Z

    .line 878
    invoke-direct {p0, p1}, Lcom/htc/calendar/EventInfoActivity;->setupUriAndStartEnd(Landroid/content/Intent;)V

    .line 880
    const-string v0, "attendeeStatus"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/htc/calendar/EventInfoActivity;->mAttendeeResponseFromIntent:I

    .line 881
    const-string v0, "need_show_snooze_dismiss"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/calendar/EventInfoActivity;->mNeedShowSnoozeDismiss:Z

    .line 882
    const-string v0, "need_finish_after_viewed"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/calendar/EventInfoActivity;->mNeedFinishAfterViewd:Z

    .line 883
    const-string v0, "calendar_alert_id"

    invoke-virtual {p1, v0, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/calendar/EventInfoActivity;->mCalendarAlertId:J

    .line 884
    return-void
.end method

.method private processNoReminders()V
    .locals 7

    .prologue
    .line 2719
    iget v6, p0, Lcom/htc/calendar/EventInfoActivity;->mDefaultReminderMinutes:I

    .line 2721
    .local v6, defaultReminderMinute:I
    iget-boolean v0, p0, Lcom/htc/calendar/EventInfoActivity;->mOriginalHasAlarm:Z

    if-nez v0, :cond_0

    .line 2722
    const/4 v6, -0x1

    .line 2725
    :cond_0
    iget-boolean v0, p0, Lcom/htc/calendar/EventInfoActivity;->mIsHtcExchangeEvent:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/calendar/EventInfoActivity;->mIsHtcPcSyncEvent:Z

    if-eqz v0, :cond_2

    .line 2726
    :cond_1
    iget-boolean v0, p0, Lcom/htc/calendar/EventInfoActivity;->mIsRepeating:Z

    if-eqz v0, :cond_2

    .line 2727
    const/4 v6, -0x1

    .line 2731
    :cond_2
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mOriginalMinutes:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2733
    iget-object v3, p0, Lcom/htc/calendar/EventInfoActivity;->mReminderItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/calendar/EventInfoActivity;->mReminderValues:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/htc/calendar/EventInfoActivity;->mReminderLabels:Ljava/util/ArrayList;

    move-object v0, p0

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/calendar/EventInfoActivity;->addReminder(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Z

    .line 2735
    invoke-direct {p0}, Lcom/htc/calendar/EventInfoActivity;->updateRemindersVisibility()V

    .line 2736
    return-void
.end method

.method private processReminderData(Ljava/util/ArrayList;)V
    .locals 10
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
    .line 2689
    .local p1, reminders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 2690
    :cond_0
    const-string v0, "EventInfoActivity"

    const-string v1, "processReminderData reminderCursor is null, skip it"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2715
    :goto_0
    return-void

    .line 2696
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 2697
    .local v9, r:Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2698
    .local v6, minutes:I
    const-string v0, "EventInfoActivity"

    const-string v1, "processReminderData"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2699
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mReminderValues:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/htc/calendar/EventInfoActivity;->mReminderLabels:Ljava/util/ArrayList;

    invoke-static {p0, v0, v1, v6}, Lcom/htc/calendar/EditEvent;->addMinutesToList(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2710
    .end local v6           #minutes:I
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #r:Ljava/lang/Integer;
    :catch_0
    move-exception v7

    .line 2711
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "EventInfoActivity"

    const-string v1, "processReminderData error"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2714
    .end local v7           #e:Ljava/lang/Exception;
    :cond_2
    invoke-direct {p0}, Lcom/htc/calendar/EventInfoActivity;->updateRemindersVisibility()V

    goto :goto_0

    .line 2703
    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 2704
    .restart local v9       #r:Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2705
    .restart local v6       #minutes:I
    const-string v0, "EventInfoActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processReminderData minutes:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2706
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mOriginalMinutes:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2707
    iget-object v3, p0, Lcom/htc/calendar/EventInfoActivity;->mReminderItems:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/htc/calendar/EventInfoActivity;->mReminderValues:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/htc/calendar/EventInfoActivity;->mReminderLabels:Ljava/util/ArrayList;

    move-object v0, p0

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/calendar/EventInfoActivity;->addReminder(Landroid/app/Activity;Landroid/view/View$OnClickListener;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 2712
    .end local v6           #minutes:I
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #r:Ljava/lang/Integer;
    :catchall_0
    move-exception v0

    throw v0
.end method

.method private queryOnBackground()V
    .locals 33

    .prologue
    .line 570
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6, v7}, Lcom/htc/calendar/EventInfoActivity;->closeAllCursorLocked(Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 577
    .local v2, cr:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mUri:Landroid/net/Uri;

    if-eqz v4, :cond_0

    .line 578
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EventInfoActivity;->mUri:Landroid/net/Uri;

    sget-object v4, Lcom/htc/calendar/EventInfoActivity;->EVENT_PROJECTION:[Ljava/lang/String;

    const-string v5, "deleted <> 1"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    .line 581
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/EventInfoActivity;->initEventCursor()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 584
    :try_start_1
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 585
    .local v20, intent:Landroid/content/Intent;
    const-class v4, Lcom/htc/calendar/CalendarCarouselActivity;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 586
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/htc/calendar/EventInfoActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 591
    .end local v20           #intent:Landroid/content/Intent;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/EventInfoActivity;->finish()V

    .line 782
    :goto_2
    return-void

    .line 571
    .end local v2           #cr:Landroid/content/ContentResolver;
    :catch_0
    move-exception v14

    .line 572
    .local v14, e:Ljava/lang/Exception;
    const-string v4, "EventInfoActivity"

    const-string v6, "error on closeAllCursorLocked"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 587
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v2       #cr:Landroid/content/ContentResolver;
    :catch_1
    move-exception v17

    .line 588
    .local v17, ex:Ljava/lang/Exception;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 595
    .end local v17           #ex:Ljava/lang/Exception;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v6, 0x15

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mSyncAccount:Ljava/lang/String;

    .line 596
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v6, 0x16

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mSyncAccountType:Ljava/lang/String;

    .line 597
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mSyncAccountType:Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/calendar/HtcUtils;->isHTCExchangeEvent(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/calendar/EventInfoActivity;->mIsHtcExchangeEvent:Z

    .line 598
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mSyncAccountType:Ljava/lang/String;

    invoke-static {v4}, Lcom/htc/calendar/HtcUtils;->isHTCPCSyncEvent(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/calendar/EventInfoActivity;->mIsHtcPcSyncEvent:Z

    .line 601
    const-string v4, "layout_inflater"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/htc/calendar/EventInfoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 604
    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 605
    .local v3, uri:Landroid/net/Uri;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "_id=%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    move-object/from16 v31, v0

    const/16 v32, 0x4

    invoke-interface/range {v31 .. v32}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    aput-object v31, v7, v8

    invoke-static {v4, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 607
    .local v5, where:Ljava/lang/String;
    sget-object v4, Lcom/htc/calendar/EventInfoActivity;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    .line 608
    const-string v4, ""

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mCalendarOwnerAccount:Ljava/lang/String;

    .line 609
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_3

    .line 610
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 611
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v6, 0x2

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 612
    .local v29, tempAccount:Ljava/lang/String;
    if-nez v29, :cond_2

    const-string v29, ""

    .end local v29           #tempAccount:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, v29

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/calendar/EventInfoActivity;->mCalendarOwnerAccount:Ljava/lang/String;

    .line 613
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v6, 0x3

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/calendar/EventInfoActivity;->mOrganizerCanRespond:Z

    .line 616
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v6, 0x5

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/calendar/EventInfoActivity;->mCalendarReminderDuration:I

    .line 617
    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/calendar/EventInfoActivity;->mCalendarReminderDuration:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/calendar/EventInfoActivity;->mDefaultReminderMinutes:I

    .line 618
    const-string v4, "EventInfoActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mDefaultReminderMinutes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/htc/calendar/EventInfoActivity;->mDefaultReminderMinutes:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v6, 0x10

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 623
    .local v16, eventOrganizer:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mCalendarOwnerAccount:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 624
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mCalendarOwnerAccount:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/calendar/EventInfoActivity;->mIsOrganizer:Z

    .line 629
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v6, 0xd

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_b

    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/calendar/EventInfoActivity;->mHasAttendeeData:Z

    .line 632
    sget-object v3, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    .line 633
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "event_id=%d AND (attendeeEmail not in (select attendeeEmail from attendees where event_id=%d AND attendeeRelationship = 2)) or (event_id=%d AND attendeeRelationship = 2)"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/calendar/EventInfoActivity;->mEventId:J

    move-wide/from16 v31, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    aput-object v31, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/calendar/EventInfoActivity;->mEventId:J

    move-wide/from16 v31, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    aput-object v31, v7, v8

    const/4 v8, 0x2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/calendar/EventInfoActivity;->mEventId:J

    move-wide/from16 v31, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    aput-object v31, v7, v8

    invoke-static {v4, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 635
    sget-object v4, Lcom/htc/calendar/EventInfoActivity;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "attendeeName ASC, attendeeEmail ASC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    .line 636
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/EventInfoActivity;->initAttendeesCursor()V

    .line 638
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/calendar/EventInfoActivity;->mIsHtcExchangeEvent:Z

    if-eqz v4, :cond_5

    .line 639
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/calendar/EventInfoActivity;->mSyncAccount:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/htc/calendar/EASMailUtils;->getEventProtocol(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 640
    .local v15, easEventProtocol:Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 641
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/calendar/EventInfoActivity;->mIsOrganizer:Z

    .line 649
    :cond_4
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/4 v6, 0x5

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 650
    .local v10, dtStart:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v6, 0x13

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 651
    .local v12, dtEnd:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v6, 0x14

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 653
    .local v9, guid:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/htc/calendar/EventInfoActivity;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/htc/calendar/EventInfoActivity;->mEventId:J

    invoke-static/range {v6 .. v13}, Lcom/htc/calendar/EASMailUtils;->checkMailExist(Landroid/content/Context;JLjava/lang/String;JJ)J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/htc/calendar/EventInfoActivity;->mIDinMailMessage:J

    .line 659
    .end local v9           #guid:Ljava/lang/String;
    .end local v10           #dtStart:J
    .end local v12           #dtEnd:J
    .end local v15           #easEventProtocol:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/calendar/EventInfoActivity;->mOrganizer:Ljava/lang/String;

    .line 660
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v6, 0xb

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/16 v6, 0x1f4

    if-lt v4, v6, :cond_d

    const/4 v4, 0x1

    :goto_7
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/calendar/EventInfoActivity;->mCanModifyCalendar:Z

    .line 662
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v6, 0xb

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/16 v6, 0x64

    if-ne v4, v6, :cond_e

    const/4 v4, 0x1

    :goto_8
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/calendar/EventInfoActivity;->mIsBusyFreeCalendar:Z

    .line 683
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/calendar/EventInfoActivity;->mCanModifyCalendar:Z

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/calendar/EventInfoActivity;->mIsOrganizer:Z

    if-nez v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v6, 0xe

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/calendar/EventInfoActivity;->mIsHtcExchangeEvent:Z

    if-nez v4, :cond_7

    move-object/from16 v0, p0

    iget v4, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCalendarId:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_f

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/calendar/EventInfoActivity;->mVCalMode:Z

    if-nez v4, :cond_f

    const/4 v4, 0x1

    :goto_9
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/calendar/EventInfoActivity;->mCanModifyEvent:Z

    .line 693
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v6, 0x18

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/htc/calendar/EventInfoActivity;->mDescMimeType:I

    .line 697
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/EventInfoActivity;->isAssociatedNote()Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/calendar/EventInfoActivity;->mIsAssociatedNote:Z

    .line 698
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/htc/calendar/EventInfoActivity;->mIsAssociatedNote:Z

    if-eqz v4, :cond_8

    .line 699
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/EventInfoActivity;->getAssociatedNoteUri()Landroid/net/Uri;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mNoteUri:Landroid/net/Uri;

    .line 701
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mUIHandler:Landroid/os/Handler;

    const/4 v6, 0x4

    invoke-virtual {v4, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v23

    .line 702
    .local v23, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mUIHandler:Landroid/os/Handler;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 706
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    .line 708
    .local v25, r:Landroid/content/res/Resources;
    const v4, 0x7f060024

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v28

    .line 710
    .local v28, strings:[Ljava/lang/String;
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v27, v0

    .line 711
    .local v27, size:I
    new-instance v22, Ljava/util/ArrayList;

    move-object/from16 v0, v22

    move/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 712
    .local v22, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/16 v19, 0x0

    .local v19, i:I
    :goto_a
    move/from16 v0, v19

    move/from16 v1, v27

    if-ge v0, v1, :cond_10

    .line 713
    aget-object v4, v28, v19

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    add-int/lit8 v19, v19, 0x1

    goto :goto_a

    .line 613
    .end local v16           #eventOrganizer:Ljava/lang/String;
    .end local v19           #i:I
    .end local v22           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v23           #msg:Landroid/os/Message;
    .end local v25           #r:Landroid/content/res/Resources;
    .end local v27           #size:I
    .end local v28           #strings:[Ljava/lang/String;
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 626
    .restart local v16       #eventOrganizer:Ljava/lang/String;
    :cond_a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/calendar/EventInfoActivity;->mIsOrganizer:Z

    goto/16 :goto_4

    .line 629
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 643
    .restart local v15       #easEventProtocol:Ljava/lang/String;
    :cond_c
    const-string v30, "2.5"

    .line 644
    .local v30, ver_2003_number:Ljava/lang/String;
    move-object/from16 v0, v30

    invoke-virtual {v0, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 645
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/htc/calendar/EventInfoActivity;->mIsOrganizer:Z

    goto/16 :goto_6

    .line 660
    .end local v15           #easEventProtocol:Ljava/lang/String;
    .end local v30           #ver_2003_number:Ljava/lang/String;
    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 662
    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_8

    .line 683
    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_9

    .line 715
    .restart local v19       #i:I
    .restart local v22       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v23       #msg:Landroid/os/Message;
    .restart local v25       #r:Landroid/content/res/Resources;
    .restart local v27       #size:I
    .restart local v28       #strings:[Ljava/lang/String;
    :cond_10
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/calendar/EventInfoActivity;->mReminderValues:Ljava/util/ArrayList;

    .line 717
    const v4, 0x7f060023

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v21

    .line 719
    .local v21, labels:[Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-static/range {v21 .. v21}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mReminderLabels:Ljava/util/ArrayList;

    .line 730
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v6, 0xa

    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_14

    const/16 v18, 0x1

    .line 731
    .local v18, hasAlarm:Z
    :goto_b
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/htc/calendar/EventInfoActivity;->mOriginalHasAlarm:Z

    .line 732
    if-eqz v18, :cond_18

    .line 733
    sget-object v3, Landroid/provider/CalendarContract$Reminders;->CONTENT_URI:Landroid/net/Uri;

    .line 734
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "event_id=%d AND (method=1 OR method=0)"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/calendar/EventInfoActivity;->mEventId:J

    move-wide/from16 v31, v0

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    aput-object v31, v7, v8

    invoke-static {v4, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 735
    sget-object v4, Lcom/htc/calendar/EventInfoActivity;->REMINDERS_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "minutes"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    .line 738
    .local v26, reminderCursor:Landroid/database/Cursor;
    if-eqz v26, :cond_17

    .line 739
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->getCount()I

    move-result v24

    .line 740
    .local v24, nCntOfReminder:I
    const-string v4, "EventInfoActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nCntOfReminder:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    if-lez v24, :cond_16

    .line 743
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mReminderData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 745
    :try_start_2
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 747
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mReminderData:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/Integer;

    const/4 v7, 0x1

    move-object/from16 v0, v26

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    if-nez v4, :cond_11

    .line 753
    :cond_12
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_13

    .line 754
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 758
    :cond_13
    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mUIHandler:Landroid/os/Handler;

    const/4 v6, 0x5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/calendar/EventInfoActivity;->mReminderData:Ljava/util/ArrayList;

    invoke-virtual {v4, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    .line 759
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mUIHandler:Landroid/os/Handler;

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_2

    .line 730
    .end local v18           #hasAlarm:Z
    .end local v24           #nCntOfReminder:I
    .end local v26           #reminderCursor:Landroid/database/Cursor;
    :cond_14
    const/16 v18, 0x0

    goto/16 :goto_b

    .line 750
    .restart local v18       #hasAlarm:Z
    .restart local v24       #nCntOfReminder:I
    .restart local v26       #reminderCursor:Landroid/database/Cursor;
    :catch_2
    move-exception v14

    .line 751
    .restart local v14       #e:Ljava/lang/Exception;
    :try_start_3
    const-string v4, "EventInfoActivity"

    const-string v6, "process reminderCursor error"

    invoke-static {v4, v6, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 753
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_13

    .line 754
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    goto :goto_c

    .line 753
    .end local v14           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->isClosed()Z

    move-result v6

    if-nez v6, :cond_15

    .line 754
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    :cond_15
    throw v4

    .line 761
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mUIHandler:Landroid/os/Handler;

    const/4 v6, 0x6

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 764
    .end local v24           #nCntOfReminder:I
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mUIHandler:Landroid/os/Handler;

    const/4 v6, 0x6

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2

    .line 767
    .end local v26           #reminderCursor:Landroid/database/Cursor;
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mUIHandler:Landroid/os/Handler;

    const/4 v6, 0x6

    invoke-virtual {v4, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2
.end method

.method private saveResponse(Landroid/content/ContentResolver;)Z
    .locals 11
    .parameter "cr"

    .prologue
    const/4 v10, 0x1

    const/4 v0, 0x0

    .line 1346
    iget-object v1, p0, Lcom/htc/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    .line 1400
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 1350
    :cond_1
    iget-object v1, p0, Lcom/htc/calendar/EventInfoActivity;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1355
    const v1, 0x7f0d00ac

    invoke-virtual {p0, v1}, Lcom/htc/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/htc/calendar/widget/HtcSpinnerEx;

    .line 1357
    .local v8, spinner:Lcom/htc/calendar/widget/HtcSpinnerEx;
    invoke-virtual {v8}, Lcom/htc/calendar/widget/HtcSpinnerEx;->getSelectedItemPosition()I

    move-result v1

    iget v2, p0, Lcom/htc/calendar/EventInfoActivity;->mResponseOffset:I

    sub-int v7, v1, v2

    .line 1358
    .local v7, position:I
    if-lez v7, :cond_0

    .line 1362
    sget-object v1, Lcom/htc/calendar/EventInfoActivity;->ATTENDEE_VALUES:[I

    aget v6, v1, v7

    .line 1365
    .local v6, status:I
    iget v1, p0, Lcom/htc/calendar/EventInfoActivity;->mOriginalAttendeeResponse:I

    if-eq v6, v1, :cond_0

    .line 1370
    iget-wide v1, p0, Lcom/htc/calendar/EventInfoActivity;->mCalendarOwnerAttendeeId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 1376
    iput v6, p0, Lcom/htc/calendar/EventInfoActivity;->mOriginalAttendeeResponse:I

    iput v6, p0, Lcom/htc/calendar/EventInfoActivity;->mAttendeeResponseFromIntent:I

    .line 1379
    iget-boolean v1, p0, Lcom/htc/calendar/EventInfoActivity;->mIsRepeating:Z

    if-nez v1, :cond_2

    .line 1381
    iget-wide v2, p0, Lcom/htc/calendar/EventInfoActivity;->mEventId:J

    iget-wide v4, p0, Lcom/htc/calendar/EventInfoActivity;->mCalendarOwnerAttendeeId:J

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/htc/calendar/EventInfoActivity;->updateResponse(Landroid/content/ContentResolver;JJI)V

    move v0, v10

    .line 1382
    goto :goto_0

    .line 1386
    :cond_2
    iget-object v1, p0, Lcom/htc/calendar/EventInfoActivity;->mEditResponseHelper:Lcom/htc/calendar/EditResponseHelper;

    invoke-virtual {v1}, Lcom/htc/calendar/EditResponseHelper;->getWhichEvents()I

    move-result v9

    .line 1387
    .local v9, whichEvents:I
    packed-switch v9, :pswitch_data_0

    .line 1397
    const-string v1, "EventInfoActivity"

    const-string v2, "Unexpected choice for updating invitation response"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1391
    :pswitch_1
    iget-wide v2, p0, Lcom/htc/calendar/EventInfoActivity;->mEventId:J

    iget-wide v4, p0, Lcom/htc/calendar/EventInfoActivity;->mCalendarOwnerAttendeeId:J

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/htc/calendar/EventInfoActivity;->createExceptionResponse(Landroid/content/ContentResolver;JJI)V

    move v0, v10

    .line 1392
    goto :goto_0

    .line 1394
    :pswitch_2
    iget-wide v2, p0, Lcom/htc/calendar/EventInfoActivity;->mEventId:J

    iget-wide v4, p0, Lcom/htc/calendar/EventInfoActivity;->mCalendarOwnerAttendeeId:J

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/htc/calendar/EventInfoActivity;->updateResponse(Landroid/content/ContentResolver;JJI)V

    move v0, v10

    .line 1395
    goto :goto_0

    .line 1387
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setHtcTitle()V
    .locals 6

    .prologue
    .line 2499
    invoke-virtual {p0}, Lcom/htc/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2500
    .local v0, res:Landroid/content/res/Resources;
    if-nez v0, :cond_0

    .line 2501
    const-string v4, "EventInfoActivity"

    const-string v5, "res is null, on setHtcTitle"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2503
    :cond_0
    const v4, 0x7f08008a

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2505
    .local v1, strTitle:Ljava/lang/String;
    const v4, 0x7f0d00be

    invoke-virtual {p0, v4}, Lcom/htc/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2506
    .local v2, tv:Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2508
    const v4, 0x7f0d00bd

    invoke-virtual {p0, v4}, Lcom/htc/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2509
    .local v3, tvShadow:Landroid/widget/TextView;
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2510
    return-void
.end method

.method private setTextCommon(ILjava/lang/CharSequence;)V
    .locals 1
    .parameter "id"
    .parameter "text"

    .prologue
    .line 1606
    invoke-virtual {p0, p1}, Lcom/htc/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1607
    .local v0, textView:Landroid/widget/TextView;
    if-nez v0, :cond_0

    .line 1610
    :goto_0
    return-void

    .line 1609
    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setVisibilityCommon(II)V
    .locals 1
    .parameter "id"
    .parameter "visibility"

    .prologue
    .line 1613
    invoke-virtual {p0, p1}, Lcom/htc/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1614
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1615
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1617
    :cond_0
    return-void
.end method

.method private setupHeaderBar(Lcom/htc/widget/HeaderBarMiddle;)V
    .locals 6
    .parameter "headerBar"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3423
    new-instance v2, Lcom/htc/widget/HeaderBarText;

    iget-object v3, p0, Lcom/htc/calendar/EventInfoActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/htc/widget/HeaderBarText;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/calendar/EventInfoActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    .line 3424
    new-instance v2, Lcom/htc/widget/HeaderBarImage;

    iget-object v3, p0, Lcom/htc/calendar/EventInfoActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/htc/widget/HeaderBarImage;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/calendar/EventInfoActivity;->mHeaderImage:Lcom/htc/widget/HeaderBarImage;

    .line 3425
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {p1, v2}, Lcom/htc/widget/HeaderBarMiddle;->addCenterView(Landroid/view/View;)V

    .line 3426
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity;->mHeaderImage:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {p1, v2}, Lcom/htc/widget/HeaderBarMiddle;->addView(Landroid/view/View;)V

    .line 3427
    invoke-virtual {p0}, Lcom/htc/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3428
    .local v0, res:Landroid/content/res/Resources;
    const v2, 0x7f08008a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3429
    .local v1, strTitle:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity;->mHeaderImage:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HeaderBarImage;->setImageMode(I)V

    .line 3430
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity;->mHeaderImage:Lcom/htc/widget/HeaderBarImage;

    const v3, 0x20808bc

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarImage;->setImageResource(I)V

    .line 3431
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity;->mHeaderImage:Lcom/htc/widget/HeaderBarImage;

    const v3, 0x7f080081

    invoke-virtual {v2, v3}, Lcom/htc/widget/HeaderBarImage;->setLabelText(I)V

    .line 3432
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity;->mHeaderImage:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V

    .line 3433
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity;->mHeaderImage:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v2, v5}, Lcom/htc/widget/HeaderBarImage;->setClickable(Z)V

    .line 3434
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity;->mHeaderImage:Lcom/htc/widget/HeaderBarImage;

    invoke-virtual {v2, p0}, Lcom/htc/widget/HeaderBarImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3435
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 3436
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v2, v4}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 3437
    return-void
.end method

.method private setupUriAndStartEnd(Landroid/content/Intent;)V
    .locals 13
    .parameter "intent"

    .prologue
    const-wide/16 v11, 0x0

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    .line 3208
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 3209
    .local v4, uri:Landroid/net/Uri;
    if-eqz v4, :cond_0

    .line 3211
    const-wide/16 v0, 0x0

    .line 3212
    .local v0, id:J
    sget-object v5, Lcom/htc/calendar/EventInfoActivity;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v5, v4}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 3213
    .local v2, match:I
    packed-switch v2, :pswitch_data_0

    .line 3259
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EventInfoActivity, Unknown URL "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3216
    :pswitch_0
    iput-object v4, p0, Lcom/htc/calendar/EventInfoActivity;->mUri:Landroid/net/Uri;

    .line 3217
    const-string v5, "beginTime"

    invoke-virtual {p1, v5, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/htc/calendar/EventInfoActivity;->mStartMillis:J

    .line 3218
    const-string v5, "endTime"

    invoke-virtual {p1, v5, v11, v12}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/htc/calendar/EventInfoActivity;->mEndMillis:J

    .line 3262
    .end local v0           #id:J
    .end local v2           #match:I
    :cond_0
    :goto_0
    return-void

    .line 3225
    .restart local v0       #id:J
    .restart local v2       #match:I
    :pswitch_1
    invoke-static {p0}, Lcom/htc/util/calendar/HtcCalendarManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/calendar/HtcCalendarManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/htc/util/calendar/HtcCalendarManager;->uniEventToEventUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 3226
    if-nez v4, :cond_1

    .line 3227
    invoke-virtual {p0}, Lcom/htc/calendar/EventInfoActivity;->finish()V

    goto :goto_0

    .line 3232
    :cond_1
    :try_start_0
    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 3239
    :try_start_1
    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/htc/calendar/EventInfoActivity;->mStartMillis:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3246
    :try_start_2
    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x4

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/htc/calendar/EventInfoActivity;->mEndMillis:J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3252
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "content://com.android.calendar/events/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/calendar/EventInfoActivity;->mUri:Landroid/net/Uri;

    goto :goto_0

    .line 3233
    :catch_0
    move-exception v3

    .line 3234
    .local v3, nfe:Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot parse event id"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3240
    .end local v3           #nfe:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v3

    .line 3241
    .restart local v3       #nfe:Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot parse begin time"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3247
    .end local v3           #nfe:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v3

    .line 3248
    .restart local v3       #nfe:Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot parse end time "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3256
    .end local v3           #nfe:Ljava/lang/NumberFormatException;
    :pswitch_2
    iput-boolean v8, p0, Lcom/htc/calendar/EventInfoActivity;->mIsUriFromNotes:Z

    goto/16 :goto_0

    .line 3213
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private showInvalidInput()V
    .locals 3

    .prologue
    .line 449
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x108009b

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f08002f

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080030

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 455
    return-void
.end method

.method private showPhoneLink(Ljava/lang/String;)Z
    .locals 10
    .parameter "str"

    .prologue
    const/4 v7, 0x1

    const/16 v9, 0x8

    const/4 v6, 0x0

    .line 1673
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1696
    :cond_0
    :goto_0
    return v6

    .line 1677
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v8, v9, :cond_0

    .line 1679
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-lt v8, v9, :cond_0

    .line 1680
    const-string v8, ",| "

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1682
    .local v5, strAry:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 1683
    .local v4, s:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-le v8, v9, :cond_2

    .line 1684
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v6, v7

    .line 1685
    goto :goto_0

    .line 1682
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1689
    .end local v4           #s:Ljava/lang/String;
    :cond_3
    const-string v8, " "

    const-string v9, ""

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    .line 1691
    .local v1, b:Z
    if-eqz v1, :cond_0

    move v6, v7

    .line 1692
    goto :goto_0
.end method

.method private startQueryCalForNotesOnBackground(Landroid/content/Intent;)V
    .locals 13
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    const/4 v12, 0x2

    const/4 v7, 0x0

    const/4 v1, 0x1

    .line 3440
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v4, v7

    const-string v0, "rrule"

    aput-object v0, v4, v1

    const-string v0, "dtstart"

    aput-object v0, v4, v12

    const/4 v0, 0x3

    const-string v3, "dtend"

    aput-object v3, v4, v0

    .line 3444
    .local v4, proj:[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    .line 3445
    .local v11, uri:Landroid/net/Uri;
    const-string v0, "type"

    invoke-virtual {v11, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3446
    .local v8, accountType:Ljava/lang/String;
    const-string v0, "uid"

    invoke-virtual {v11, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 3447
    .local v10, uid:Ljava/lang/String;
    new-array v6, v12, [Ljava/lang/String;

    aput-object v8, v6, v7

    aput-object v10, v6, v1

    .line 3448
    .local v6, selectionArgs:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 3449
    .local v9, selection:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/calendar/HtcUtils;->isHTCExchangeEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3450
    const-string v9, "iCalGUID"

    .line 3458
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "account_type= (?) AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " = (?)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3460
    .local v5, where:Ljava/lang/String;
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mQueryHandler:Lcom/htc/calendar/EventInfoActivity$QueryHandler;

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/calendar/EventInfoActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 3467
    return-void

    .line 3451
    .end local v5           #where:Ljava/lang/String;
    :cond_0
    invoke-static {v8}, Lcom/htc/calendar/HtcUtils;->isGoogleEvent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3452
    const-string v9, "_sync_id"

    goto :goto_0

    .line 3453
    :cond_1
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Lcom/htc/calendar/HtcUtils;->isHTCFacebookEvent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3454
    const-string v9, "facebook_source_id"

    goto :goto_0

    .line 3456
    :cond_2
    const-string v9, "iCalGUID"

    goto :goto_0
.end method

.method private startQueryCalInstanceOnBackgroud(JJ)V
    .locals 11
    .parameter "eventId"
    .parameter "startTime"

    .prologue
    .line 3470
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 3471
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 3472
    .local v10, now:Landroid/text/format/Time;
    invoke-virtual {v10}, Landroid/text/format/Time;->setToNow()V

    .line 3473
    const/4 v0, 0x0

    iput v0, v10, Landroid/text/format/Time;->hour:I

    .line 3474
    const/4 v0, 0x0

    iput v0, v10, Landroid/text/format/Time;->minute:I

    .line 3475
    iget v0, v10, Landroid/text/format/Time;->month:I

    add-int/lit8 v0, v0, 0x2

    iput v0, v10, Landroid/text/format/Time;->month:I

    .line 3476
    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    .line 3477
    .local v8, endTime:J
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "begin"

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-string v1, "end"

    aput-object v1, v4, v0

    .line 3478
    .local v4, proj:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3479
    .local v5, where:Ljava/lang/String;
    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 3481
    .local v3, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mQueryHandler:Lcom/htc/calendar/EventInfoActivity$QueryHandler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/htc/calendar/EventInfoActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 3489
    .end local v3           #uri:Landroid/net/Uri;
    .end local v4           #proj:[Ljava/lang/String;
    .end local v5           #where:Ljava/lang/String;
    .end local v8           #endTime:J
    .end local v10           #now:Landroid/text/format/Time;
    :cond_0
    return-void
.end method

.method private updateRemindersVisibility()V
    .locals 3

    .prologue
    .line 1328
    const-string v0, "EventInfoActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mReminderItems.size():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    iget-boolean v0, p0, Lcom/htc/calendar/EventInfoActivity;->mIsBusyFreeCalendar:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mReminderItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1330
    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mRemindersContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1336
    :goto_0
    return-void

    .line 1332
    :cond_1
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mRemindersContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateResponse(Landroid/content/ContentResolver;JJI)V
    .locals 7
    .parameter "cr"
    .parameter "eventId"
    .parameter "attendeeId"
    .parameter "status"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 1405
    cmp-long v2, p4, v5

    if-ltz v2, :cond_0

    cmp-long v2, p2, v5

    if-gez v2, :cond_1

    .line 1406
    :cond_0
    const-string v2, "EventInfoActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateResponse error, eventId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " attendeeId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    :goto_0
    return-void

    .line 1413
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1415
    .local v1, values:Landroid/content/ContentValues;
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity;->mCalendarOwnerAccount:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1416
    const-string v2, "attendeeEmail"

    iget-object v3, p0, Lcom/htc/calendar/EventInfoActivity;->mCalendarOwnerAccount:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1418
    :cond_2
    const-string v2, "attendeeStatus"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1419
    const-string v2, "event_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1421
    sget-object v2, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p4, p5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1422
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p1, v0, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateSnoozeDismissBtn(Ljava/lang/Boolean;)V
    .locals 4
    .parameter "show"

    .prologue
    .line 2669
    const v3, 0x7f0d00b6

    invoke-virtual {p0, v3}, Lcom/htc/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcFooter;

    .line 2671
    .local v2, v:Lcom/htc/widget/HtcFooter;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2672
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    .line 2673
    const v3, 0x7f0d00b7

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcFooterButton;

    .line 2674
    .local v1, btnSnooze:Lcom/htc/widget/HtcFooterButton;
    const v3, 0x20c00ac

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 2675
    iget-object v3, p0, Lcom/htc/calendar/EventInfoActivity;->snoozeEventByIdListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2677
    const v3, 0x7f0d00b8

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooter;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcFooterButton;

    .line 2678
    .local v0, btnDismiss:Lcom/htc/widget/HtcFooterButton;
    const v3, 0x20c00ab

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooterButton;->setText(I)V

    .line 2679
    iget-object v3, p0, Lcom/htc/calendar/EventInfoActivity;->dismissEventByIdListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcFooterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2685
    .end local v0           #btnDismiss:Lcom/htc/widget/HtcFooterButton;
    .end local v1           #btnSnooze:Lcom/htc/widget/HtcFooterButton;
    :goto_0
    const v3, 0x7f0d00b5

    invoke-virtual {p0, v3}, Lcom/htc/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->requestLayout()V

    .line 2686
    return-void

    .line 2681
    :cond_0
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooter;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateTitle()V
    .locals 2

    .prologue
    .line 925
    invoke-virtual {p0}, Lcom/htc/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 926
    .local v0, res:Landroid/content/res/Resources;
    iget-boolean v1, p0, Lcom/htc/calendar/EventInfoActivity;->mCanModifyCalendar:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/htc/calendar/EventInfoActivity;->mIsOrganizer:Z

    if-nez v1, :cond_0

    .line 927
    const v1, 0x7f080097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/calendar/EventInfoActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 931
    :goto_0
    return-void

    .line 929
    :cond_0
    const v1, 0x7f080096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/calendar/EventInfoActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateView_HTC()V
    .locals 5

    .prologue
    .line 1889
    const-class v2, Lcom/htc/calendar/EventInfoActivity;

    monitor-enter v2

    .line 1891
    :try_start_0
    invoke-direct {p0}, Lcom/htc/calendar/EventInfoActivity;->doUpdateView_HTC()V

    .line 1892
    iget-boolean v1, p0, Lcom/htc/calendar/EventInfoActivity;->mCanModifyEvent:Z

    if-nez v1, :cond_0

    .line 1893
    iget-object v1, p0, Lcom/htc/calendar/EventInfoActivity;->mHeaderImage:Lcom/htc/widget/HeaderBarImage;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1901
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1902
    return-void

    .line 1895
    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/htc/calendar/EventInfoActivity;->mHeaderImage:Lcom/htc/widget/HeaderBarImage;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/htc/widget/HeaderBarImage;->setVisibility(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1897
    :catch_0
    move-exception v0

    .line 1898
    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v1, "EventInfoActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "warning in updateView_HTC() :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1901
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method


# virtual methods
.method public createNotes()V
    .locals 5

    .prologue
    .line 3310
    invoke-static {p0}, Lcom/htc/util/calendar/HtcCalendarManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/calendar/HtcCalendarManager;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/calendar/EventInfoActivity;->mEventId:J

    invoke-virtual {v2, v3, v4}, Lcom/htc/util/calendar/HtcCalendarManager;->generateTheEventUriString(J)Ljava/lang/String;

    move-result-object v1

    .line 3311
    .local v1, uriString:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.ADDNOTEFROMCALENDAR"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3312
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x3002

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3313
    const-string v2, "event_uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3314
    const-string v2, "event_title"

    iget-object v3, p0, Lcom/htc/calendar/EventInfoActivity;->mEventTitle:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3315
    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/htc/calendar/EventInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3316
    return-void
.end method

.method public isAssociatedNote()Z
    .locals 5

    .prologue
    .line 3344
    invoke-static {p0}, Lcom/htc/util/calendar/HtcCalendarManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/calendar/HtcCalendarManager;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/calendar/EventInfoActivity;->mEventId:J

    invoke-virtual {v2, v3, v4}, Lcom/htc/util/calendar/HtcCalendarManager;->generateTheEventUriString(J)Ljava/lang/String;

    move-result-object v1

    .line 3345
    .local v1, uriString:Ljava/lang/String;
    sget-object v2, Lcom/htc/util/calendar/HtcCalendarManager;->ASSOCIATE_NOTE_TRUE:Ljava/lang/Long;

    invoke-static {p0}, Lcom/htc/util/calendar/HtcCalendarManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/calendar/HtcCalendarManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/htc/util/calendar/HtcCalendarManager;->checkIfAssociatedNotes(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 3349
    .local v0, isAssociated:Z
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x1

    .line 3320
    if-ne p1, v10, :cond_1

    .line 3321
    const/4 v4, -0x1

    if-ne p2, v4, :cond_0

    .line 3322
    const-string v4, "notepicker_uri_result"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 3323
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3325
    .local v2, noteId:I
    invoke-static {p0}, Lcom/htc/util/calendar/HtcCalendarManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/calendar/HtcCalendarManager;

    move-result-object v4

    int-to-long v5, v2

    invoke-static {p0}, Lcom/htc/util/calendar/HtcCalendarManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/calendar/HtcCalendarManager;

    move-result-object v7

    iget-wide v8, p0, Lcom/htc/calendar/EventInfoActivity;->mEventId:J

    invoke-virtual {v7, v8, v9}, Lcom/htc/util/calendar/HtcCalendarManager;->generateTheEventUriString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7, v10}, Lcom/htc/util/calendar/HtcCalendarManager;->setAssociation(JLjava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    .line 3330
    .local v0, associatedUri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/htc/calendar/EventInfoActivity;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v4, v11}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3331
    .local v1, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/htc/calendar/EventInfoActivity;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3338
    .end local v0           #associatedUri:Landroid/net/Uri;
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #noteId:I
    .end local v3           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 3333
    :cond_1
    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    .line 3334
    iget-object v4, p0, Lcom/htc/calendar/EventInfoActivity;->mUIHandler:Landroid/os/Handler;

    invoke-virtual {v4, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 3336
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const v3, 0x7f0d0084

    .line 388
    const-string v1, "EventInfoActivity"

    const-string v2, "onClick"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-eq v1, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0d00a4

    if-ne v1, v2, :cond_2

    .line 392
    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/widget/HtcSpinnerEx;

    .line 394
    .local v0, spinner:Lcom/htc/calendar/widget/HtcSpinnerEx;
    invoke-virtual {v0}, Lcom/htc/calendar/widget/HtcSpinnerEx;->performClick()Z

    .line 395
    invoke-virtual {v0}, Lcom/htc/calendar/widget/HtcSpinnerEx;->getSelectedItemPosition()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/htc/calendar/EventInfoActivity;->spinner_seleted_idx:J

    .line 407
    .end local v0           #spinner:Lcom/htc/calendar/widget/HtcSpinnerEx;
    :cond_1
    :goto_0
    return-void

    .line 396
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0d009e

    if-ne v1, v2, :cond_3

    .line 397
    invoke-direct {p0}, Lcom/htc/calendar/EventInfoActivity;->launchAssociatedNotes()V

    goto :goto_0

    .line 398
    :cond_3
    iget-object v1, p0, Lcom/htc/calendar/EventInfoActivity;->mNoteArea:Landroid/widget/LinearLayout;

    if-ne p1, v1, :cond_5

    .line 399
    iget-boolean v1, p0, Lcom/htc/calendar/EventInfoActivity;->mIsAssociatedNote:Z

    if-eqz v1, :cond_4

    .line 400
    invoke-direct {p0}, Lcom/htc/calendar/EventInfoActivity;->launchAssociatedNotes()V

    goto :goto_0

    .line 402
    :cond_4
    invoke-virtual {p0}, Lcom/htc/calendar/EventInfoActivity;->createNotes()V

    goto :goto_0

    .line 404
    :cond_5
    iget-object v1, p0, Lcom/htc/calendar/EventInfoActivity;->mHeaderImage:Lcom/htc/widget/HeaderBarImage;

    if-ne p1, v1, :cond_1

    .line 405
    invoke-direct {p0}, Lcom/htc/calendar/EventInfoActivity;->doEdit()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 3399
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3400
    invoke-static {p0}, Lcom/htc/calendar/HtcUtils;->getAppBackground(Landroid/content/Context;)I

    move-result v0

    .line 3401
    .local v0, bkgId:I
    if-eqz v0, :cond_0

    .line 3402
    invoke-virtual {p0}, Lcom/htc/calendar/EventInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 3403
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v5, 0x1

    .line 786
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 787
    invoke-virtual {p0, v5}, Lcom/htc/calendar/EventInfoActivity;->requestWindowFeature(I)Z

    .line 789
    invoke-virtual {p0}, Lcom/htc/calendar/EventInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/calendar/EventInfoActivity;->mContext:Landroid/content/Context;

    .line 790
    invoke-static {}, Lcom/htc/calendar/Utils;->isSupportHWKeyBoard()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 791
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/htc/calendar/EventInfoActivity;->setDefaultKeyMode(I)V

    .line 794
    :cond_0
    invoke-virtual {p0}, Lcom/htc/calendar/EventInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 796
    .local v1, intent:Landroid/content/Intent;
    invoke-direct {p0, v1}, Lcom/htc/calendar/EventInfoActivity;->prepareData(Landroid/content/Intent;)V

    .line 804
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 805
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "com.htc.intent.lockscreen.ClearCalendarReminder"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 806
    const-string v2, "android.intent.action.UPDATE_NOTE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 807
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/htc/calendar/EventInfoActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 810
    new-instance v2, Lcom/htc/calendar/EventInfoActivity$UIHandler;

    iget-object v3, p0, Lcom/htc/calendar/EventInfoActivity;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/htc/calendar/EventInfoActivity$UIHandler;-><init>(Lcom/htc/calendar/EventInfoActivity;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/htc/calendar/EventInfoActivity;->mUIHandler:Landroid/os/Handler;

    .line 819
    const-string v2, "EventInfoActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mNeedShowSnoozeDismiss:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/calendar/EventInfoActivity;->mNeedShowSnoozeDismiss:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mNeedFinishAfterViewd:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/htc/calendar/EventInfoActivity;->mNeedFinishAfterViewd:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    invoke-direct {p0}, Lcom/htc/calendar/EventInfoActivity;->initBackgroundProcessor()V

    .line 823
    const v2, 0x7f030025

    invoke-virtual {p0, v2}, Lcom/htc/calendar/EventInfoActivity;->setContentView(I)V

    .line 825
    const v2, 0x7f0d000d

    invoke-virtual {p0, v2}, Lcom/htc/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HeaderBarMiddle;

    invoke-direct {p0, v2}, Lcom/htc/calendar/EventInfoActivity;->setupHeaderBar(Lcom/htc/widget/HeaderBarMiddle;)V

    .line 827
    invoke-static {}, Lcom/htc/calendar/Utils;->isEnableTheme()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 828
    const v2, 0x7f0d00b5

    invoke-virtual {p0, v2}, Lcom/htc/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {p0}, Lcom/htc/calendar/HtcUtils;->getListViewBackground(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 831
    :cond_1
    const v2, 0x7f0d00a1

    invoke-virtual {p0, v2}, Lcom/htc/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/htc/calendar/EventInfoActivity;->mNoteArea:Landroid/widget/LinearLayout;

    .line 832
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity;->mNoteArea:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 833
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/calendar/HtcUtils;->isNoteModuleExist(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/htc/calendar/EventInfoActivity;->mIsNoteExist:Z

    .line 834
    iget-boolean v2, p0, Lcom/htc/calendar/EventInfoActivity;->mIsNoteExist:Z

    if-nez v2, :cond_2

    .line 835
    const v2, 0x7f0d009f

    invoke-virtual {p0, v2}, Lcom/htc/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 838
    :cond_2
    const v2, 0x7f0d0016

    invoke-virtual {p0, v2}, Lcom/htc/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/htc/calendar/EventInfoActivity;->mRemindersContainer:Landroid/widget/LinearLayout;

    .line 840
    const v2, 0x7f0d0087

    invoke-virtual {p0, v2}, Lcom/htc/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/htc/calendar/EventInfoActivity;->mOrganizerView:Landroid/widget/TextView;

    .line 842
    new-instance v2, Lcom/htc/calendar/EventInfoActivity$QueryHandler;

    invoke-virtual {p0}, Lcom/htc/calendar/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/htc/calendar/EventInfoActivity$QueryHandler;-><init>(Lcom/htc/calendar/EventInfoActivity;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/htc/calendar/EventInfoActivity;->mQueryHandler:Lcom/htc/calendar/EventInfoActivity$QueryHandler;

    .line 844
    iget-boolean v2, p0, Lcom/htc/calendar/EventInfoActivity;->mIsUriFromNotes:Z

    if-eqz v2, :cond_3

    .line 845
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 851
    :goto_0
    const v2, 0x7f0d00b4

    invoke-virtual {p0, v2}, Lcom/htc/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/htc/calendar/EventInfoActivity;->mReminderAdder:Landroid/widget/LinearLayout;

    .line 853
    new-instance v2, Lcom/htc/calendar/DeleteEventHelper;

    invoke-direct {v2, p0, v5}, Lcom/htc/calendar/DeleteEventHelper;-><init>(Landroid/app/Activity;Z)V

    iput-object v2, p0, Lcom/htc/calendar/EventInfoActivity;->mDeleteEventHelper:Lcom/htc/calendar/DeleteEventHelper;

    .line 854
    new-instance v2, Lcom/htc/calendar/EditResponseHelper;

    invoke-direct {v2, p0}, Lcom/htc/calendar/EditResponseHelper;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/htc/calendar/EventInfoActivity;->mEditResponseHelper:Lcom/htc/calendar/EditResponseHelper;

    .line 855
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/htc/calendar/EventInfoActivity;->mIsAssociatedNote:Z

    .line 862
    return-void

    .line 847
    :cond_3
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v3, 0x2

    const/16 v7, 0x13

    const/16 v6, 0x12

    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 1098
    iget-boolean v2, p0, Lcom/htc/calendar/EventInfoActivity;->mVCalMode:Z

    if-eqz v2, :cond_1

    .line 1159
    :cond_0
    :goto_0
    return v1

    .line 1102
    :cond_1
    iget-boolean v2, p0, Lcom/htc/calendar/EventInfoActivity;->mDirtyCheckAlreadyCreadted:Z

    if-eqz v2, :cond_0

    .line 1108
    const v2, 0x7f080098

    invoke-interface {p1, v5, v5, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1110
    .local v0, item:Landroid/view/MenuItem;
    const v2, 0x2080a51

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1111
    const/16 v2, 0x72

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1113
    const v2, 0x7f0800ae

    invoke-interface {p1, v3, v3, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1114
    const v2, 0x2080324

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1115
    const/16 v2, 0x65

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1117
    const/4 v2, 0x3

    const/4 v3, 0x3

    const v4, 0x7f0800b0

    invoke-interface {p1, v2, v3, v1, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1118
    const v2, 0x2080323

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1121
    const/4 v2, 0x4

    const/4 v3, 0x4

    const v4, 0x7f08003e

    invoke-interface {p1, v2, v3, v1, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1122
    const v1, 0x7f02006c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1128
    iget-boolean v1, p0, Lcom/htc/calendar/EventInfoActivity;->mIsAppointment:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/htc/calendar/EventInfoActivity;->mIsHtcExchangeEvent:Z

    if-eqz v1, :cond_2

    .line 1130
    const/4 v1, 0x6

    const/4 v2, 0x6

    const/high16 v3, 0x3

    const v4, 0x7f08000d

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1132
    const v1, 0x7f02006f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1135
    const/4 v1, 0x7

    const/4 v2, 0x7

    const/high16 v3, 0x3

    const v4, 0x7f08000e

    invoke-interface {p1, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1137
    const v1, 0x7f020070

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1145
    :cond_2
    const/16 v1, 0x14

    const/16 v2, 0x1d

    const v3, 0x7f08004b

    invoke-interface {p1, v1, v2, v5, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1146
    const v1, 0x2080746

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1148
    const/16 v1, 0x1b

    const v2, 0x7f080049

    invoke-interface {p1, v6, v1, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1149
    const v1, 0x2080334

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1150
    const/16 v1, 0x65

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1152
    const/16 v1, 0x1c

    const v2, 0x7f08004a

    invoke-interface {p1, v7, v1, v5, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 1153
    const v1, 0x208033c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1154
    const/16 v1, 0x75

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1155
    iget-boolean v1, p0, Lcom/htc/calendar/EventInfoActivity;->mIsNoteExist:Z

    invoke-interface {p1, v6, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1156
    iget-boolean v1, p0, Lcom/htc/calendar/EventInfoActivity;->mIsNoteExist:Z

    invoke-interface {p1, v6, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1157
    iget-boolean v1, p0, Lcom/htc/calendar/EventInfoActivity;->mIsNoteExist:Z

    invoke-interface {p1, v7, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1158
    iget-boolean v1, p0, Lcom/htc/calendar/EventInfoActivity;->mIsNoteExist:Z

    invoke-interface {p1, v7, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1159
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    .line 2427
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2429
    :try_start_0
    iget-object v1, p0, Lcom/htc/calendar/EventInfoActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/htc/calendar/EventInfoActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2434
    :goto_0
    invoke-direct {p0}, Lcom/htc/calendar/EventInfoActivity;->clearWebView()V

    .line 2436
    const-string v1, "EventInfoActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">> going destory << eventID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/htc/calendar/EventInfoActivity;->mEventId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2437
    iget-object v1, p0, Lcom/htc/calendar/EventInfoActivity;->mDeleteEventHelper:Lcom/htc/calendar/DeleteEventHelper;

    invoke-virtual {v1}, Lcom/htc/calendar/DeleteEventHelper;->release()V

    .line 2438
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/calendar/EventInfoActivity;->mDirtyCheckOnDestory:Z

    .line 2439
    iget-object v1, p0, Lcom/htc/calendar/EventInfoActivity;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2440
    iget-object v1, p0, Lcom/htc/calendar/EventInfoActivity;->mUIHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2441
    return-void

    .line 2430
    :catch_0
    move-exception v0

    .line 2431
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "EventInfoActivity"

    const-string v2, "Receiver not registered"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onItemSelected(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 22
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
    .line 460
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    move-object/from16 v4, p2

    .line 461
    .local v4, _view:Landroid/view/View;
    move-object/from16 v3, p1

    .local v3, __parent:Lcom/htc/widget/HtcAdapterView;
    move-object/from16 v18, p1

    .line 466
    check-cast v18, Lcom/htc/calendar/widget/HtcSpinnerEx;

    .line 468
    .local v18, spinner:Lcom/htc/calendar/widget/HtcSpinnerEx;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f060024

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v16

    .line 471
    .local v16, reminderValue:[Ljava/lang/String;
    invoke-virtual {v3}, Lcom/htc/widget/HtcAdapterView;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout;

    .line 472
    .local v15, reminderItem:Landroid/widget/RelativeLayout;
    const v19, 0x7f0d00a7

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 474
    .local v17, reminderView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/htc/calendar/EventInfoActivity;->mReminderLabels:Ljava/util/ArrayList;

    .line 475
    .local v11, label:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move/from16 v10, p3

    .line 477
    .local v10, index:I
    const-string v12, ""

    .line 479
    .local v12, minutes:Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EventInfoActivity;->mReminderValues:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 484
    :goto_0
    if-eqz v18, :cond_5

    .line 491
    :goto_1
    sget-object v19, Lcom/htc/calendar/CalendarConstants;->NO_REMINDER_STRING_VALUE:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EventInfoActivity;->mReminderItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_6

    .line 494
    :try_start_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/calendar/EventInfoActivity;->spinner_seleted_idx:J

    move-wide/from16 v19, v0

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/htc/calendar/widget/HtcSpinnerEx;->setSelection(I)V

    .line 495
    invoke-virtual/range {v18 .. v18}, Lcom/htc/calendar/widget/HtcSpinnerEx;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 496
    .local v6, eventDetailReminderItem:Landroid/widget/LinearLayout;
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 497
    .local v7, eventDetailReminderscontainer:Landroid/widget/LinearLayout;
    const-string v19, "EventInfoActivity"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "eventDetailReminderItem.id: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const-string v19, "EventInfoActivity"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "eventDetailReminderscontainer.id: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EventInfoActivity;->mReminderItems:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 501
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/EventInfoActivity;->updateRemindersVisibility()V

    .line 503
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/EventInfoActivity;->saveReminderAndResponse()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 515
    .end local v6           #eventDetailReminderItem:Landroid/widget/LinearLayout;
    .end local v7           #eventDetailReminderscontainer:Landroid/widget/LinearLayout;
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/calendar/EventInfoActivity;->mIsHtcExchangeEvent:Z

    move/from16 v19, v0

    if-nez v19, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/calendar/EventInfoActivity;->mIsHtcPcSyncEvent:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 516
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/calendar/EventInfoActivity;->mIsRepeating:Z

    move/from16 v19, v0

    if-eqz v19, :cond_4

    .line 517
    new-instance v8, Lcom/android/calendarcommon/EventRecurrence;

    invoke-direct {v8}, Lcom/android/calendarcommon/EventRecurrence;-><init>()V

    .line 519
    .local v8, eventRecurrence:Lcom/android/calendarcommon/EventRecurrence;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EventInfoActivity;->mRRule:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 520
    iget v9, v8, Lcom/android/calendarcommon/EventRecurrence;->freq:I

    .line 521
    .local v9, freq:I
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 523
    .local v13, nMinutes:I
    const/4 v14, 0x0

    .line 524
    .local v14, needShowAlert:Z
    const/16 v19, 0x4

    move/from16 v0, v19

    if-eq v9, v0, :cond_2

    invoke-virtual {v8}, Lcom/android/calendarcommon/EventRecurrence;->repeatsOnEveryWeekDay()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 525
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/calendar/EventInfoActivity;->mAllDay:Z

    move/from16 v19, v0

    if-nez v19, :cond_7

    const/16 v19, 0x5a0

    move/from16 v0, v19

    if-lt v13, v0, :cond_7

    .line 526
    const/4 v14, 0x1

    .line 536
    :cond_3
    :goto_3
    if-eqz v14, :cond_4

    .line 537
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/EventInfoActivity;->showInvalidInput()V

    .line 538
    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/EventInfoActivity;->mDirtyReminderIndex:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/htc/calendar/widget/HtcSpinnerEx;->setSelection(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 546
    .end local v8           #eventRecurrence:Lcom/android/calendarcommon/EventRecurrence;
    .end local v9           #freq:I
    .end local v13           #nMinutes:I
    .end local v14           #needShowAlert:Z
    :cond_4
    :goto_4
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/htc/calendar/EventInfoActivity;->saveReminderAndResponse(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 547
    return-void

    .line 480
    :catch_0
    move-exception v5

    .line 481
    .local v5, e:Ljava/lang/Exception;
    const-string v19, "EventInfoActivity"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "value in mReminderValues.size: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EventInfoActivity;->mReminderValues:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " position: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " error."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 482
    const-string v12, "10"

    goto/16 :goto_0

    .line 487
    .end local v5           #e:Ljava/lang/Exception;
    :cond_5
    const-string v19, "EventInfoActivity"

    const-string v20, "spinner is null"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 504
    :catch_1
    move-exception v5

    .line 505
    .restart local v5       #e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 509
    .end local v5           #e:Ljava/lang/Exception;
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/htc/calendar/EventInfoActivity;->updateRemindersVisibility()V

    .line 510
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/htc/calendar/EventInfoActivity;->saveReminderAndResponse(Landroid/widget/TextView;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 527
    .restart local v8       #eventRecurrence:Lcom/android/calendarcommon/EventRecurrence;
    .restart local v9       #freq:I
    .restart local v13       #nMinutes:I
    .restart local v14       #needShowAlert:Z
    :cond_7
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/calendar/EventInfoActivity;->mAllDay:Z

    move/from16 v19, v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v19, :cond_3

    if-lez v13, :cond_3

    .line 528
    const/4 v14, 0x1

    goto/16 :goto_3

    .line 530
    :cond_8
    const/16 v19, 0x5

    move/from16 v0, v19

    if-ne v9, v0, :cond_3

    .line 531
    const/16 v19, 0x2760

    move/from16 v0, v19

    if-lt v13, v0, :cond_3

    .line 532
    const/4 v14, 0x1

    goto/16 :goto_3

    .line 540
    .end local v9           #freq:I
    .end local v13           #nMinutes:I
    .end local v14           #needShowAlert:Z
    :catch_2
    move-exception v5

    .line 541
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v19, "EventInfoActivity"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "can\'t parse rrule:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EventInfoActivity;->mRRule:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1317
    const/16 v0, 0x43

    if-ne p1, v0, :cond_0

    .line 1318
    invoke-static {}, Lcom/htc/calendar/Utils;->isSupportHWKeyBoard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1319
    invoke-direct {p0}, Lcom/htc/calendar/EventInfoActivity;->doDelete()V

    .line 1320
    const/4 v0, 0x1

    .line 1323
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 892
    if-eqz p1, :cond_0

    .line 893
    const-string v0, "EventInfoActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/calendar/EventInfoActivity;->prepareData(Landroid/content/Intent;)V

    .line 896
    invoke-virtual {p0, p1}, Lcom/htc/calendar/EventInfoActivity;->setIntent(Landroid/content/Intent;)V

    .line 897
    iget-boolean v0, p0, Lcom/htc/calendar/EventInfoActivity;->mIsUriFromNotes:Z

    if-eqz v0, :cond_1

    .line 898
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 903
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 904
    return-void

    .line 900
    :cond_1
    iget-object v0, p0, Lcom/htc/calendar/EventInfoActivity;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
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
    .line 550
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v7, 0x1

    .line 1245
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 1246
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1312
    :goto_0
    return v7

    .line 1248
    :sswitch_0
    invoke-direct {p0}, Lcom/htc/calendar/EventInfoActivity;->addReminder()V

    goto :goto_0

    .line 1251
    :sswitch_1
    invoke-direct {p0}, Lcom/htc/calendar/EventInfoActivity;->doEdit()V

    goto :goto_0

    .line 1254
    :sswitch_2
    invoke-direct {p0}, Lcom/htc/calendar/EventInfoActivity;->doDelete()V

    goto :goto_0

    .line 1259
    :sswitch_3
    iget-wide v1, p0, Lcom/htc/calendar/EventInfoActivity;->mEventId:J

    iget-wide v3, p0, Lcom/htc/calendar/EventInfoActivity;->mStartMillis:J

    iget-wide v5, p0, Lcom/htc/calendar/EventInfoActivity;->mEndMillis:J

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/htc/calendar/VCalendar;->launchShareVCalMenu(Landroid/app/Activity;JJJ)V

    goto :goto_0

    .line 1269
    :sswitch_4
    invoke-direct {p0, v7}, Lcom/htc/calendar/EventInfoActivity;->getReplyMeetingRequester(I)Lcom/htc/calendar/ReplyMeetingRequester;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/calendar/ReplyMeetingRequester;->requestReplyMeeting()V

    goto :goto_0

    .line 1280
    :sswitch_5
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/htc/calendar/EventInfoActivity;->getReplyMeetingRequester(I)Lcom/htc/calendar/ReplyMeetingRequester;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/calendar/ReplyMeetingRequester;->requestReplyMeeting()V

    goto :goto_0

    .line 1300
    :sswitch_6
    invoke-virtual {p0}, Lcom/htc/calendar/EventInfoActivity;->requestAssociateNotes()V

    goto :goto_0

    .line 1304
    :sswitch_7
    invoke-virtual {p0}, Lcom/htc/calendar/EventInfoActivity;->requestUnAssociateNotes()V

    goto :goto_0

    .line 1308
    :sswitch_8
    invoke-virtual {p0}, Lcom/htc/calendar/EventInfoActivity;->requestPrintEvent()V

    goto :goto_0

    .line 1246
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x1b -> :sswitch_6
        0x1c -> :sswitch_7
        0x1d -> :sswitch_8
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1054
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1089
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/calendar/EventInfoActivity;->mVCalMode:Z

    .line 1091
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const/16 v8, 0x14

    const/4 v3, 0x1

    const/16 v7, 0x13

    const/16 v6, 0x12

    const/4 v4, 0x0

    .line 1166
    iget-boolean v2, p0, Lcom/htc/calendar/EventInfoActivity;->mVCalMode:Z

    if-eqz v2, :cond_1

    .line 1199
    :cond_0
    :goto_0
    return v4

    .line 1170
    :cond_1
    iget-boolean v2, p0, Lcom/htc/calendar/EventInfoActivity;->mDirtyCheckAlreadyCreadted:Z

    if-eqz v2, :cond_0

    .line 1173
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity;->mUri:Landroid/net/Uri;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    if-nez v2, :cond_3

    .line 1174
    :cond_2
    invoke-interface {p1, v6, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1175
    invoke-interface {p1, v6, v4}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1176
    invoke-interface {p1, v7, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1177
    invoke-interface {p1, v7, v4}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1178
    invoke-interface {p1, v8, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_0

    .line 1183
    :cond_3
    invoke-direct {p0}, Lcom/htc/calendar/EventInfoActivity;->canAddReminders()Z

    move-result v0

    .line 1184
    .local v0, canAddReminders:Z
    invoke-interface {p1, v3, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1186
    const/4 v2, 0x2

    iget-boolean v5, p0, Lcom/htc/calendar/EventInfoActivity;->mCanModifyEvent:Z

    invoke-interface {p1, v2, v5}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1187
    const/4 v2, 0x3

    iget-boolean v5, p0, Lcom/htc/calendar/EventInfoActivity;->mCanModifyCalendar:Z

    invoke-interface {p1, v2, v5}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1189
    iget-boolean v1, p0, Lcom/htc/calendar/EventInfoActivity;->mIsAssociatedNote:Z

    .line 1191
    .local v1, isAssociated:Z
    iget-boolean v2, p0, Lcom/htc/calendar/EventInfoActivity;->mIsNoteExist:Z

    if-eqz v2, :cond_4

    .line 1192
    if-nez v1, :cond_5

    move v2, v3

    :goto_1
    invoke-interface {p1, v6, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1193
    if-nez v1, :cond_6

    :goto_2
    invoke-interface {p1, v6, v3}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1194
    invoke-interface {p1, v7, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1195
    invoke-interface {p1, v7, v1}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1197
    :cond_4
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/htc/calendar/HtcUtils;->isPrinterModuleExist(Landroid/content/Context;)Z

    move-result v2

    invoke-interface {p1, v8, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1199
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v4

    goto :goto_0

    :cond_5
    move v2, v4

    .line 1192
    goto :goto_1

    :cond_6
    move v3, v4

    .line 1193
    goto :goto_2
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 908
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 909
    const-string v3, "EventInfoActivity"

    const-string v4, "onResume"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    invoke-virtual {p0}, Lcom/htc/calendar/EventInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 913
    .local v0, in:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 914
    const-string v3, "vCalendar"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/htc/calendar/EventInfoActivity;->mVCalMode:Z

    .line 919
    :cond_0
    const-string v2, "onResume"

    .line 920
    .local v2, tag:Ljava/lang/String;
    iget-object v3, p0, Lcom/htc/calendar/EventInfoActivity;->mBackgroundHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 921
    .local v1, myMsg:Landroid/os/Message;
    iget-object v3, p0, Lcom/htc/calendar/EventInfoActivity;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 922
    return-void
.end method

.method protected replyMeetingInvitation(I)Landroid/content/Intent;
    .locals 54
    .parameter "type"

    .prologue
    .line 2948
    const-wide/16 v42, -0x1

    .line 2949
    .local v42, exchgId:J
    const-string v44, ""

    .line 2950
    .local v44, exchgName:Ljava/lang/String;
    const/16 v35, 0x0

    .line 2951
    .local v35, cur:Landroid/database/Cursor;
    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string v4, "_emailaddress"

    aput-object v4, v5, v3

    .line 2952
    .local v5, proj:[Ljava/lang/String;
    const-string v6, "_protocol = \'4\'"

    .line 2954
    .local v6, where:Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/android/pim/eas/EASMail;->EASACCOUNTS_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v35

    .line 2955
    if-eqz v35, :cond_0

    .line 2956
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->getCount()I

    move-result v34

    .line 2957
    .local v34, cnt:I
    const-string v3, "_id"

    move-object/from16 v0, v35

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 2958
    .local v23, INDEX_OF_ID:I
    const-string v3, "_emailaddress"

    move-object/from16 v0, v35

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 2959
    .local v24, INDEX_OF_NAME:I
    if-lez v34, :cond_0

    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2960
    const/16 v46, 0x0

    .local v46, idx:I
    :goto_0
    move/from16 v0, v46

    move/from16 v1, v34

    if-ge v0, v1, :cond_0

    .line 2961
    move-object/from16 v0, v35

    move/from16 v1, v46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2962
    move-object/from16 v0, v35

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v42, v0

    .line 2963
    move-object/from16 v0, v35

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v44

    .line 2964
    const-string v3, "EventInfoActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSyncAccount: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/htc/calendar/EventInfoActivity;->mSyncAccount:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " exchgId:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v42

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " exchgName:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2965
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EventInfoActivity;->mSyncAccount:Ljava/lang/String;

    move-object/from16 v0, v44

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_13

    .line 2972
    .end local v23           #INDEX_OF_ID:I
    .end local v24           #INDEX_OF_NAME:I
    .end local v34           #cnt:I
    .end local v46           #idx:I
    :cond_0
    if-eqz v35, :cond_2

    .line 2973
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2974
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->close()V

    .line 2976
    :cond_1
    const/16 v35, 0x0

    .line 2980
    :cond_2
    const-string v51, ""

    .line 2981
    .local v51, ownerAccount:Ljava/lang/String;
    const-string v10, "account_type=?"

    .line 2982
    .local v10, calendars_selection:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v11, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {}, Landroid/provider/HtcExCalendar;->getHtcEasAccountType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v11, v3

    .line 2983
    .local v11, calendars_whereArgs:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v9, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ownerAccount"

    aput-object v4, v9, v3

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v33

    .line 2986
    .local v33, calendarsCursor:Landroid/database/Cursor;
    if-eqz v33, :cond_4

    :try_start_1
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2988
    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, v33

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v51

    .line 2989
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-nez v3, :cond_3

    .line 2994
    :cond_4
    if-eqz v33, :cond_5

    .line 2995
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_5

    .line 2996
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    .line 2999
    :cond_5
    const/16 v33, 0x0

    .line 3002
    :goto_1
    const-string v50, ""

    .line 3003
    .local v50, organizer:Ljava/lang/String;
    sget-object v13, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    .line 3004
    .local v13, uri:Landroid/net/Uri;
    const-string v15, "event_id=?"

    .line 3005
    .local v15, selection:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/htc/calendar/EventInfoActivity;->mEventId:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v16, v3

    .line 3006
    .local v16, whereArgs:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v14, Lcom/htc/calendar/EventInfoActivity;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    const/16 v17, 0x0

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v28

    .line 3008
    .local v28, attendeeCursor:Landroid/database/Cursor;
    if-eqz v28, :cond_a

    :try_start_2
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3009
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    .line 3010
    .local v30, b:Ljava/lang/StringBuilder;
    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    .line 3012
    .local v32, c:Ljava/lang/StringBuilder;
    :cond_6
    const/4 v3, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v49

    .line 3013
    .local v49, name:Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    .line 3014
    .local v41, email:Ljava/lang/String;
    const/4 v3, 0x3

    move-object/from16 v0, v28

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v52

    .line 3015
    .local v52, relationship:I
    if-eqz v41, :cond_8

    .line 3016
    const/4 v3, 0x2

    move/from16 v0, v52

    if-ne v0, v3, :cond_7

    .line 3017
    invoke-static/range {v41 .. v41}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 3018
    move-object/from16 v0, v32

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3021
    :cond_7
    invoke-static/range {v41 .. v41}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 3022
    move-object/from16 v0, v30

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_8

    .line 3023
    move-object/from16 v0, v30

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3027
    :cond_8
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3029
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_9

    .line 3030
    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/calendar/EventInfoActivity;->mOriginalAttendees:Ljava/lang/String;

    .line 3032
    :cond_9
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_a

    .line 3033
    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v51

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ";"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, ""

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v50

    .line 3043
    .end local v30           #b:Ljava/lang/StringBuilder;
    .end local v32           #c:Ljava/lang/StringBuilder;
    .end local v41           #email:Ljava/lang/String;
    .end local v49           #name:Ljava/lang/String;
    .end local v52           #relationship:I
    :cond_a
    if-eqz v28, :cond_b

    .line 3044
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_b

    .line 3045
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 3048
    :cond_b
    const/16 v28, 0x0

    .line 3051
    :goto_2
    new-instance v47, Landroid/content/Intent;

    const-string v3, "android.intent.action.SENDMEETING"

    move-object/from16 v0, v47

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3053
    .local v47, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/htc/calendar/EventInfoActivity;->mIDinMailMessage:J

    const-wide/16 v7, -0x1

    cmp-long v3, v3, v7

    if-eqz v3, :cond_1a

    .line 3054
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://mail/messages/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/htc/calendar/EventInfoActivity;->mIDinMailMessage:J

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3055
    const/4 v3, 0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_c

    .line 3056
    const-string v3, "cmd"

    const-string v4, "reply"

    move-object/from16 v0, v47

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3058
    :cond_c
    const/4 v3, 0x2

    move/from16 v0, p1

    if-ne v0, v3, :cond_d

    .line 3059
    const-string v3, "cmd"

    const-string v4, "replyall"

    move-object/from16 v0, v47

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3061
    :cond_d
    const/4 v3, 0x3

    move/from16 v0, p1

    if-ne v0, v3, :cond_e

    .line 3062
    const-string v3, "cmd"

    const-string v4, "forward"

    move-object/from16 v0, v47

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3076
    :cond_e
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/EventInfoActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/EventInfoActivity;->mUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    sget-object v19, Lcom/htc/calendar/EventInfoActivity;->EVENT_PROJECTION:[Ljava/lang/String;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v17 .. v22}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    .line 3078
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_11

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 3079
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v53

    .line 3080
    .local v53, subject:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v4, 0x9

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v48

    .line 3081
    .local v48, meetingLocation:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/4 v4, 0x5

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v38

    .line 3082
    .local v38, dtStart:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v4, 0x13

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v36

    .line 3083
    .local v36, dtEnd:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1d

    const/16 v27, 0x1

    .line 3084
    .local v27, allDay:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v4, 0x14

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v45

    .line 3089
    .local v45, guid:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 3100
    const-string v29, ""

    .line 3102
    .local v29, attendeeList:Ljava/lang/String;
    :goto_5
    invoke-static/range {v50 .. v50}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 3103
    move-object/from16 v50, v51

    .line 3105
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f080013

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 3106
    .local v31, bodyText:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f080010

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v53

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 3107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f080011

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v50

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 3110
    const-string v25, ""

    .line 3111
    .local v25, TO:Ljava/lang/String;
    const-string v26, ""

    .line 3112
    .local v26, TO_RECEIVER:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080012

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v25

    .line 3114
    :try_start_4
    const-string v3, "EventInfoActivity"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v7, "mOriginalAttendees: %s, organizer: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/htc/calendar/EventInfoActivity;->mOriginalAttendees:Ljava/lang/String;

    aput-object v12, v8, v9

    const/4 v9, 0x1

    aput-object v50, v8, v9

    invoke-static {v4, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3115
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EventInfoActivity;->mOriginalAttendees:Ljava/lang/String;

    const-string v4, ""

    move-object/from16 v0, v50

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v26

    .line 3116
    const-string v3, ";;"

    const-string v4, ";"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 3117
    const-string v3, ";"

    move-object/from16 v0, v26

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_10

    .line 3118
    const-string v3, ";"

    const-string v4, ""

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v26

    .line 3123
    :cond_10
    :goto_6
    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 3126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    const/16 v7, 0x8

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 3132
    const-string v3, "accountID"

    move-object/from16 v0, v47

    move-wide/from16 v1, v42

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3133
    const-string v3, "isExchange"

    const/4 v4, 0x1

    move-object/from16 v0, v47

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3134
    const-string v3, "meetingView"

    const/4 v4, 0x0

    move-object/from16 v0, v47

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3135
    const-string v3, "subject"

    move-object/from16 v0, v47

    move-object/from16 v1, v53

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3136
    const-string v3, "meetingLocation"

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3137
    const-string v3, "bodyText"

    move-object/from16 v0, v47

    move-object/from16 v1, v31

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3138
    const-string v3, "dtStart"

    move-object/from16 v0, v47

    move-wide/from16 v1, v38

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3139
    const-string v3, "dtEnd"

    move-object/from16 v0, v47

    move-wide/from16 v1, v36

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3140
    const-string v3, "allDay"

    move-object/from16 v0, v47

    move/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3141
    const-string v4, "isNewEvent"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    if-nez v3, :cond_1f

    const/4 v3, 0x1

    :goto_7
    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3142
    const-string v3, "guid"

    move-object/from16 v0, v47

    move-object/from16 v1, v45

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3143
    const-string v3, "attendeesList"

    move-object/from16 v0, v47

    move-object/from16 v1, v29

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3144
    const-string v3, "attendeeReply"

    const/4 v4, 0x1

    move-object/from16 v0, v47

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3145
    const-string v3, "id"

    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/htc/calendar/EventInfoActivity;->mIDinMailMessage:J

    move-object/from16 v0, v47

    invoke-virtual {v0, v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 3150
    .end local v25           #TO:Ljava/lang/String;
    .end local v26           #TO_RECEIVER:Ljava/lang/String;
    .end local v27           #allDay:Z
    .end local v29           #attendeeList:Ljava/lang/String;
    .end local v31           #bodyText:Ljava/lang/String;
    .end local v36           #dtEnd:J
    .end local v38           #dtStart:J
    .end local v45           #guid:Ljava/lang/String;
    .end local v48           #meetingLocation:Ljava/lang/String;
    .end local v53           #subject:Ljava/lang/String;
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_12

    .line 3151
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_12

    .line 3152
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 3155
    :cond_12
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    .line 3157
    :goto_8
    return-object v47

    .line 2960
    .end local v10           #calendars_selection:Ljava/lang/String;
    .end local v11           #calendars_whereArgs:[Ljava/lang/String;
    .end local v13           #uri:Landroid/net/Uri;
    .end local v15           #selection:Ljava/lang/String;
    .end local v16           #whereArgs:[Ljava/lang/String;
    .end local v28           #attendeeCursor:Landroid/database/Cursor;
    .end local v33           #calendarsCursor:Landroid/database/Cursor;
    .end local v47           #intent:Landroid/content/Intent;
    .end local v50           #organizer:Ljava/lang/String;
    .end local v51           #ownerAccount:Ljava/lang/String;
    .restart local v23       #INDEX_OF_ID:I
    .restart local v24       #INDEX_OF_NAME:I
    .restart local v34       #cnt:I
    .restart local v46       #idx:I
    :cond_13
    add-int/lit8 v46, v46, 0x1

    goto/16 :goto_0

    .line 2972
    .end local v23           #INDEX_OF_ID:I
    .end local v24           #INDEX_OF_NAME:I
    .end local v34           #cnt:I
    .end local v46           #idx:I
    :catchall_0
    move-exception v3

    if-eqz v35, :cond_15

    .line 2973
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_14

    .line 2974
    invoke-interface/range {v35 .. v35}, Landroid/database/Cursor;->close()V

    .line 2976
    :cond_14
    const/16 v35, 0x0

    :cond_15
    throw v3

    .line 2991
    .restart local v10       #calendars_selection:Ljava/lang/String;
    .restart local v11       #calendars_whereArgs:[Ljava/lang/String;
    .restart local v33       #calendarsCursor:Landroid/database/Cursor;
    .restart local v51       #ownerAccount:Ljava/lang/String;
    :catch_0
    move-exception v40

    .line 2992
    .local v40, e:Ljava/lang/Exception;
    :try_start_6
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2994
    if-eqz v33, :cond_16

    .line 2995
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_16

    .line 2996
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    .line 2999
    :cond_16
    const/16 v33, 0x0

    .line 3000
    goto/16 :goto_1

    .line 2994
    .end local v40           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v3

    if-eqz v33, :cond_17

    .line 2995
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_17

    .line 2996
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    .line 2999
    :cond_17
    const/16 v33, 0x0

    throw v3

    .line 3040
    .restart local v13       #uri:Landroid/net/Uri;
    .restart local v15       #selection:Ljava/lang/String;
    .restart local v16       #whereArgs:[Ljava/lang/String;
    .restart local v28       #attendeeCursor:Landroid/database/Cursor;
    .restart local v50       #organizer:Ljava/lang/String;
    :catch_1
    move-exception v40

    .line 3041
    .restart local v40       #e:Ljava/lang/Exception;
    :try_start_7
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 3043
    if-eqz v28, :cond_18

    .line 3044
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_18

    .line 3045
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 3048
    :cond_18
    const/16 v28, 0x0

    .line 3049
    goto/16 :goto_2

    .line 3043
    .end local v40           #e:Ljava/lang/Exception;
    :catchall_2
    move-exception v3

    if-eqz v28, :cond_19

    .line 3044
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_19

    .line 3045
    invoke-interface/range {v28 .. v28}, Landroid/database/Cursor;->close()V

    .line 3048
    :cond_19
    const/16 v28, 0x0

    throw v3

    .line 3065
    .restart local v47       #intent:Landroid/content/Intent;
    :cond_1a
    const-string v3, "mailto:nobody"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object/from16 v0, v47

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3066
    const/4 v3, 0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_1b

    .line 3067
    const-string v3, "cmd"

    const-string v4, "compose"

    move-object/from16 v0, v47

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3069
    :cond_1b
    const/4 v3, 0x2

    move/from16 v0, p1

    if-ne v0, v3, :cond_1c

    .line 3070
    const-string v3, "cmd"

    const-string v4, "compose"

    move-object/from16 v0, v47

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3072
    :cond_1c
    const/4 v3, 0x3

    move/from16 v0, p1

    if-ne v0, v3, :cond_e

    .line 3073
    const-string v3, "cmd"

    const-string v4, "composeMeeting"

    move-object/from16 v0, v47

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 3083
    .restart local v36       #dtEnd:J
    .restart local v38       #dtStart:J
    .restart local v48       #meetingLocation:Ljava/lang/String;
    .restart local v53       #subject:Ljava/lang/String;
    :cond_1d
    const/16 v27, 0x0

    goto/16 :goto_4

    .line 3091
    .restart local v27       #allDay:Z
    .restart local v45       #guid:Ljava/lang/String;
    :pswitch_0
    move-object/from16 v29, v50

    .line 3092
    .restart local v29       #attendeeList:Ljava/lang/String;
    goto/16 :goto_5

    .line 3094
    .end local v29           #attendeeList:Ljava/lang/String;
    :pswitch_1
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EventInfoActivity;->mOriginalAttendees:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v51

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ";"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, ""

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v29

    .line 3095
    .restart local v29       #attendeeList:Ljava/lang/String;
    goto/16 :goto_5

    .line 3097
    .end local v29           #attendeeList:Ljava/lang/String;
    :pswitch_2
    const-string v29, ""

    .line 3098
    .restart local v29       #attendeeList:Ljava/lang/String;
    goto/16 :goto_5

    .line 3120
    .restart local v25       #TO:Ljava/lang/String;
    .restart local v26       #TO_RECEIVER:Ljava/lang/String;
    .restart local v31       #bodyText:Ljava/lang/String;
    :catch_2
    move-exception v40

    .line 3121
    .restart local v40       #e:Ljava/lang/Exception;
    const-string v3, "EventInfoActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error in TO_RECEIVER: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v40

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_6

    .line 3147
    .end local v25           #TO:Ljava/lang/String;
    .end local v26           #TO_RECEIVER:Ljava/lang/String;
    .end local v27           #allDay:Z
    .end local v29           #attendeeList:Ljava/lang/String;
    .end local v31           #bodyText:Ljava/lang/String;
    .end local v36           #dtEnd:J
    .end local v38           #dtStart:J
    .end local v40           #e:Ljava/lang/Exception;
    .end local v45           #guid:Ljava/lang/String;
    .end local v48           #meetingLocation:Ljava/lang/String;
    .end local v53           #subject:Ljava/lang/String;
    :catch_3
    move-exception v40

    .line 3148
    .restart local v40       #e:Ljava/lang/Exception;
    :try_start_9
    const-string v3, "EventInfoActivity"

    const-string v4, "error in reply/reply_all"

    move-object/from16 v0, v40

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 3150
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_1e

    .line 3151
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 3152
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 3155
    :cond_1e
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    goto/16 :goto_8

    .line 3141
    .end local v40           #e:Ljava/lang/Exception;
    .restart local v25       #TO:Ljava/lang/String;
    .restart local v26       #TO_RECEIVER:Ljava/lang/String;
    .restart local v27       #allDay:Z
    .restart local v29       #attendeeList:Ljava/lang/String;
    .restart local v31       #bodyText:Ljava/lang/String;
    .restart local v36       #dtEnd:J
    .restart local v38       #dtStart:J
    .restart local v45       #guid:Ljava/lang/String;
    .restart local v48       #meetingLocation:Ljava/lang/String;
    .restart local v53       #subject:Ljava/lang/String;
    :cond_1f
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 3150
    .end local v25           #TO:Ljava/lang/String;
    .end local v26           #TO_RECEIVER:Ljava/lang/String;
    .end local v27           #allDay:Z
    .end local v29           #attendeeList:Ljava/lang/String;
    .end local v31           #bodyText:Ljava/lang/String;
    .end local v36           #dtEnd:J
    .end local v38           #dtStart:J
    .end local v45           #guid:Ljava/lang/String;
    .end local v48           #meetingLocation:Ljava/lang/String;
    .end local v53           #subject:Ljava/lang/String;
    :catchall_3
    move-exception v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_20

    .line 3151
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_20

    .line 3152
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 3155
    :cond_20
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/htc/calendar/EventInfoActivity;->mEventCursor:Landroid/database/Cursor;

    throw v3

    .line 3089
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public requestAssociateNotes()V
    .locals 2

    .prologue
    .line 3305
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.NOTEPICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3306
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/htc/calendar/EventInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3307
    return-void
.end method

.method protected requestPrintEvent()V
    .locals 5

    .prologue
    .line 3281
    invoke-static {p0}, Lcom/htc/calendar/HtcUtils;->isPrinterModuleExist(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3299
    :goto_0
    return-void

    .line 3285
    :cond_0
    const-string v3, "content://com.android.calendar/events"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 3286
    .local v0, builder:Landroid/net/Uri$Builder;
    iget-wide v3, p0, Lcom/htc/calendar/EventInfoActivity;->mEventId:J

    invoke-static {v0, v3, v4}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 3288
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 3290
    .local v2, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v3, "com.westtek.jcp"

    const-string v4, "com.westtek.jcp.JCPRINT"

    invoke-direct {v1, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3291
    .local v1, component:Landroid/content/ComponentName;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3296
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "text/android.provider.calendar"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 3298
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/htc/calendar/EventInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public requestUnAssociateNotes()V
    .locals 7

    .prologue
    .line 3265
    invoke-static {p0}, Lcom/htc/util/calendar/HtcCalendarManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/calendar/HtcCalendarManager;

    move-result-object v3

    iget-wide v4, p0, Lcom/htc/calendar/EventInfoActivity;->mEventId:J

    invoke-virtual {v3, v4, v5}, Lcom/htc/util/calendar/HtcCalendarManager;->generateTheEventUriString(J)Ljava/lang/String;

    move-result-object v2

    .line 3266
    .local v2, uriString:Ljava/lang/String;
    invoke-static {p0}, Lcom/htc/util/calendar/HtcCalendarManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/calendar/HtcCalendarManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/util/calendar/HtcCalendarManager;->getAssociatedNotesId(Ljava/lang/String;)J

    move-result-wide v0

    .line 3267
    .local v0, noteId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gez v3, :cond_0

    .line 3277
    :goto_0
    return-void

    .line 3269
    :cond_0
    invoke-static {p0}, Lcom/htc/util/calendar/HtcCalendarManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/calendar/HtcCalendarManager;

    move-result-object v3

    invoke-static {p0}, Lcom/htc/util/calendar/HtcCalendarManager;->getInstance(Landroid/content/Context;)Lcom/htc/util/calendar/HtcCalendarManager;

    move-result-object v4

    iget-wide v5, p0, Lcom/htc/calendar/EventInfoActivity;->mEventId:J

    invoke-virtual {v4, v5, v6}, Lcom/htc/util/calendar/HtcCalendarManager;->generateTheEventUriString(J)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/htc/util/calendar/HtcCalendarManager;->setAssociation(JLjava/lang/String;Z)Landroid/net/Uri;

    .line 3274
    const-string v3, "EventInfoActivity"

    const-string v4, "requestUnAssociateNotes"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3276
    invoke-direct {p0}, Lcom/htc/calendar/EventInfoActivity;->checkIsAssociatedNote()V

    goto :goto_0
.end method

.method public saveReminderAndResponse()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 554
    invoke-virtual {p0, v0, v0}, Lcom/htc/calendar/EventInfoActivity;->saveReminderAndResponse(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 555
    return-void
.end method

.method public saveReminderAndResponse(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2
    .parameter "tv"
    .parameter "strReminderValue"

    .prologue
    .line 558
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 560
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 562
    :cond_0
    new-instance v0, Lcom/htc/calendar/EventInfoActivity$onPauseSaveThread;

    invoke-direct {v0, p0}, Lcom/htc/calendar/EventInfoActivity$onPauseSaveThread;-><init>(Lcom/htc/calendar/EventInfoActivity;)V

    .line 563
    .local v0, myThread:Lcom/htc/calendar/EventInfoActivity$onPauseSaveThread;
    invoke-virtual {v0}, Lcom/htc/calendar/EventInfoActivity$onPauseSaveThread;->start()V

    .line 564
    return-void
.end method

.method updateResponse()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const v10, 0x7f0d00a8

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 1541
    invoke-static {}, Lcom/htc/calendar/Utils;->isEnableTheme()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/htc/calendar/Utils;->isEnableSkin()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1542
    :cond_0
    invoke-virtual {p0, v10}, Lcom/htc/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {p0}, Lcom/htc/calendar/HtcUtils;->getListViewSelector(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1544
    :cond_1
    iget-boolean v5, p0, Lcom/htc/calendar/EventInfoActivity;->mCanModifyCalendar:Z

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/htc/calendar/EventInfoActivity;->mHasAttendeeData:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/htc/calendar/EventInfoActivity;->mIsOrganizer:Z

    if-eqz v5, :cond_2

    iget v5, p0, Lcom/htc/calendar/EventInfoActivity;->mNumOfAttendees:I

    if-le v5, v9, :cond_4

    :cond_2
    iget-boolean v5, p0, Lcom/htc/calendar/EventInfoActivity;->mIsOrganizer:Z

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/htc/calendar/EventInfoActivity;->mOrganizerCanRespond:Z

    if-eqz v5, :cond_4

    :cond_3
    iget v5, p0, Lcom/htc/calendar/EventInfoActivity;->mEventCalendarId:I

    if-eq v5, v9, :cond_4

    iget-boolean v5, p0, Lcom/htc/calendar/EventInfoActivity;->mIsHtcExchangeEvent:Z

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/htc/calendar/EventInfoActivity;->mSyncId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1550
    :cond_4
    const v5, 0x7f0d009a

    invoke-direct {p0, v5, v11}, Lcom/htc/calendar/EventInfoActivity;->setVisibilityCommon(II)V

    .line 1551
    const v5, 0x7f0d009b

    invoke-direct {p0, v5, v11}, Lcom/htc/calendar/EventInfoActivity;->setVisibilityCommon(II)V

    .line 1552
    invoke-virtual {p0, v10}, Lcom/htc/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1603
    :goto_0
    return-void

    .line 1556
    :cond_5
    const v5, 0x7f0d009a

    invoke-direct {p0, v5, v8}, Lcom/htc/calendar/EventInfoActivity;->setVisibilityCommon(II)V

    .line 1557
    const v5, 0x7f0d009b

    invoke-direct {p0, v5, v8}, Lcom/htc/calendar/EventInfoActivity;->setVisibilityCommon(II)V

    .line 1558
    invoke-virtual {p0, v10}, Lcom/htc/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/htc/calendar/EventInfoActivity;->mClickResponseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1561
    const v5, 0x7f0d00ac

    invoke-virtual {p0, v5}, Lcom/htc/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/calendar/widget/HtcSpinnerEx;

    .line 1562
    .local v4, spinner:Lcom/htc/calendar/widget/HtcSpinnerEx;
    invoke-virtual {p0}, Lcom/htc/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08001a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/htc/calendar/widget/HtcSpinnerEx;->setPrompt(Ljava/lang/CharSequence;)V

    .line 1563
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/htc/calendar/widget/HtcSpinnerEx;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1565
    iput v8, p0, Lcom/htc/calendar/EventInfoActivity;->mResponseOffset:I

    .line 1572
    invoke-virtual {p0}, Lcom/htc/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060025

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 1573
    .local v1, entries:[Ljava/lang/CharSequence;
    iget v5, p0, Lcom/htc/calendar/EventInfoActivity;->mOriginalAttendeeResponse:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_6

    iget v5, p0, Lcom/htc/calendar/EventInfoActivity;->mOriginalAttendeeResponse:I

    if-eq v5, v7, :cond_6

    iget v5, p0, Lcom/htc/calendar/EventInfoActivity;->mOriginalAttendeeResponse:I

    if-eqz v5, :cond_6

    .line 1576
    invoke-virtual {p0}, Lcom/htc/calendar/EventInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060026

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 1577
    iput v7, p0, Lcom/htc/calendar/EventInfoActivity;->mResponseOffset:I

    .line 1580
    :cond_6
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v5, 0x20900ee

    invoke-direct {v0, p0, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1583
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v5, 0x20900af

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1584
    invoke-virtual {v4, v0}, Lcom/htc/calendar/widget/HtcSpinnerEx;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1587
    iget v5, p0, Lcom/htc/calendar/EventInfoActivity;->mAttendeeResponseFromIntent:I

    if-eq v5, v7, :cond_8

    .line 1588
    iget v5, p0, Lcom/htc/calendar/EventInfoActivity;->mAttendeeResponseFromIntent:I

    invoke-direct {p0, v5}, Lcom/htc/calendar/EventInfoActivity;->findResponseIndexFor(I)I

    move-result v2

    .line 1594
    .local v2, index:I
    :goto_1
    iget v5, p0, Lcom/htc/calendar/EventInfoActivity;->mResponseOffset:I

    add-int v3, v2, v5

    .line 1595
    .local v3, selection:I
    invoke-virtual {v4, v3, v9}, Lcom/htc/calendar/widget/HtcSpinnerEx;->setSelection(IZ)V

    .line 1596
    if-eqz v1, :cond_7

    if-ltz v3, :cond_7

    array-length v5, v1

    if-ge v3, v5, :cond_7

    .line 1597
    const v5, 0x7f0d00ab

    aget-object v6, v1, v3

    invoke-direct {p0, v5, v6}, Lcom/htc/calendar/EventInfoActivity;->setTextCommon(ILjava/lang/CharSequence;)V

    .line 1601
    :cond_7
    iget-object v5, p0, Lcom/htc/calendar/EventInfoActivity;->responseListener:Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;

    invoke-virtual {v4, v5}, Lcom/htc/calendar/widget/HtcSpinnerEx;->setOnItemSelectedListener(Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;)V

    goto/16 :goto_0

    .line 1590
    .end local v2           #index:I
    .end local v3           #selection:I
    :cond_8
    iget v5, p0, Lcom/htc/calendar/EventInfoActivity;->mOriginalAttendeeResponse:I

    invoke-direct {p0, v5}, Lcom/htc/calendar/EventInfoActivity;->findResponseIndexFor(I)I

    move-result v2

    .restart local v2       #index:I
    goto :goto_1
.end method
