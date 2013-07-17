.class public Lcom/htc/calendar/CalendarConstants;
.super Ljava/lang/Object;
.source "CalendarConstants.java"


# static fields
.field public static final ACTION_CALENDARS_PICKER_CHANGED:Ljava/lang/String; = "action.calendars.picker.changed"

.field public static final ACTION_CUSOMIZATION:Ljava/lang/String; = "com.htc.calendar.ACTION_CUSTOMIZATION"

.field public static final ACTION_EVENT_CHANGED:Ljava/lang/String; = "com.htc.calendar.event_changed"

.field public static final ACTION_HTC_MAIL_CHANGE:Ljava/lang/String; = "com.htc.android.mail.intent.change"

.field public static final ACTION_LUNAR_SHOW_CHANGED:Ljava/lang/String; = "action.lunar.show.changed"

.field public static final ACTION_SET_DEFAULT_CALENDAR:Ljava/lang/String; = "com.htc.calendar.ACTION_SET_DEFAULT_CALENDAR"

.field public static final ACTION_START_WEEK_DAY_CHANGED:Ljava/lang/String; = "action.start.week.day.changed"

.field public static final ACTION_TIME_FORMAT_CHANGED:Ljava/lang/String; = "android.intent.action.TIMEFORMAT_CHANGED"

.field public static final AGENDA_VIEW:I = 0x1

.field public static final CALENAR_ALERT_ID:Ljava/lang/String; = "calendar_alert_id"

.field public static final COLOR_EXCHANGE_CALENDAR:I = -0x4ebbf2

.field public static final COLOR_OFFSET_PRESSED:I = 0x30

.field public static final COLOR_OFFSET_RESTED:I = 0x20

.field public static final COLOR_OFFSET_SELECTED:I = 0x40

.field public static final DATE_PICKER_MAX_MONTH:I = 0xc

.field public static final DATE_PICKER_MAX_MONTHDAY:I = 0x1f

.field public static final DATE_PICKER_MAX_YEAR:I = 0x7ee

.field public static final DATE_PICKER_MIN_YEAR:I = 0x7d0

.field public static final DAY_EVENT_VIEW:I = 0x4

.field public static final DAY_TIME_VIEW:I = 0x3

.field public static final DESCRIPTION_TITLE_MAX_LENGTH:I = 0x7a120

.field public static final EDIT_EVENT_TITLE_MAX_LENGTH:I = 0xc8

.field public static final EVENT_LIST_MODE_NORMAL:I = 0x0

.field public static final EVENT_LIST_MODE_SEARCH:I = 0x1

.field public static final EVENT_VIEW_MODE:Ljava/lang/String; = "1"

.field public static final FAKE_CALENDAR_PREVIEW:Ljava/lang/String; = "fake_calendar_preview"

.field public static final FAKE_CALENDAR_PREVIEW_ID:J = 0x7fffffffL

.field public static final HTC_ACTION_EAS_ACNT_REMOVED:Ljava/lang/String; = "android.intent.action.EAS_ACCOUNT_REMOVED"

.field public static final MODE_AGENDA_LIST:I = 0x0

.field public static final MODE_CALENDAR_URI:I = 0x4

.field public static final MODE_DAY_EVENT_LIST:I = 0x1

.field public static final MODE_DRAG:I = 0x2

.field public static final MODE_EXCLUDE_NOTES:I = 0x5

.field public static final MODE_NORMAL:I = 0x0

.field public static final MODE_PREVIEW:I = 0x1

.field public static final MODE_SEARCH_RESULT_LIST:I = 0x2

.field public static final MODE_VCALENDAR_LIST:I = 0x3

.field public static final MONTH_VIEW:I = 0x0

.field public static final NEED_FINISH_AFTER_VIEWED:Ljava/lang/String; = "need_finish_after_viewed"

.field public static final NEED_SHOW_SNOOZE_DISMISS:Ljava/lang/String; = "need_show_snooze_dismiss"

.field public static final NO_REMINDER_INTEGER_VALUE:I = -0x1

.field public static final NO_REMINDER_STRING_VALUE:Ljava/lang/String; = null

.field public static final PACKAGE_NAME_EXCHANGE:Ljava/lang/String; = "com.htc.android.mail"

.field public static final PACKAGE_NAME_FACEBOOK:Ljava/lang/String; = "com.htc.socialnetwork.facebook"

.field public static final PACKAGE_NAME_GMAIL:Ljava/lang/String; = "com.google.android.gm"

.field public static final PACKAGE_NAME_PCSC:Ljava/lang/String; = "com.htc.android.psclient"

.field public static final SNOOZED:I = 0x3

.field public static final START_IN_ACTIVITY_NAMES:[Ljava/lang/String; = null

.field public static final TIME_VIEW_MODE:Ljava/lang/String; = "0"

.field public static final WEEK_VIEW:I = 0x2

.field public static final uriUnResponseInvitation:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    const-string v0, "content://com.android.calendar/unresponse_invitation"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/calendar/CalendarConstants;->uriUnResponseInvitation:Landroid/net/Uri;

    .line 57
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-class v2, Lcom/htc/calendar/MonthActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/htc/calendar/AgendaActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/htc/calendar/WeekActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/htc/calendar/DayActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/calendar/CalendarConstants;->START_IN_ACTIVITY_NAMES:[Ljava/lang/String;

    .line 79
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/htc/calendar/CalendarConstants;->NO_REMINDER_STRING_VALUE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
