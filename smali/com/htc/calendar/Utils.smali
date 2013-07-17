.class public Lcom/htc/calendar/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final APPWIDGET_DATA_TYPE:Ljava/lang/String; = "vnd.android.data/update"

.field public static final CALENDARS_INDEX_ACCESS_LEVEL:I = 0x1

.field public static final CALENDARS_INDEX_ID:I = 0x0

.field public static final CALENDARS_INDEX_OWNER_ACCOUNT:I = 0x2

.field public static final CALENDARS_INDEX_SYNC_ACCOUNT_TYPE:I = 0x3

.field public static final CALENDARS_PROJECTION:[Ljava/lang/String; = null

.field public static final CALENDARS_WHERE:Ljava/lang/String; = "_id=%d"

.field private static final CLEAR_ALPHA_MASK:I = 0xffffff

.field protected static final CLOSE_EMAIL_MARKER:Ljava/lang/String; = ">"

.field private static final CORNERS:[F = null

.field public static DEFAULT_DATE_FORMAT:Ljava/lang/String; = null

.field public static DEFAULT_DATE_FORMAT_SHORT:Ljava/lang/String; = null

.field public static final EVENTS_DELETE_ALLOWED:I = 0x1

.field public static final EVENTS_EDIT_ALLOWED:I = 0x2

.field public static final EVENTS_FULL_CONTROL:I = 0x3

.field public static final EVENTS_INDEX_CALENDAR_ID:I = 0x0

.field public static final EVENTS_INDEX_FACEBOOK_TYPE:I = 0x3

.field public static final EVENTS_INDEX_GUESTS_CAN_MODIFY:I = 0x2

.field public static final EVENTS_INDEX_ORGANIZER:I = 0x1

.field public static final EVENTS_PROJECTION:[Ljava/lang/String; = null

.field public static final EVENTS_READ_ONLY:I = 0x0

.field private static final FAKE_CALENDAR_LOCKSCREEN_EXIST:Ljava/lang/String; = "fake_calendar_lockscreen_exist"

.field private static final HIGH_ALPHA:I = -0x1000000

.field public static final INTENT_KEY_DETAIL_VIEW:Ljava/lang/String; = "DETAIL_VIEW"

.field private static final KEY_DEFAULT_INSERT_CALENDAR:Ljava/lang/String; = "default_insert_calendar"

.field private static final KEY_EXCHANGE_LOGIN_NAME:Ljava/lang/String; = "exchange_login_name"

.field private static final KEY_IS_EXCHANGE_LOGIN:Ljava/lang/String; = "is_exchange_login"

.field private static final KEY_IS_GOOGLE_LOGIN:Ljava/lang/String; = "is_google_login"

.field private static final KEY_UNRESPONSE_INVITATION_COUNT:Ljava/lang/String; = "unresponse_invitation_count"

.field private static final LOW_ALPHA:I = -0x57000000

.field private static final MED_ALPHA:I = -0x4c000000

.field private static final MY_CALENDAR_ID:I = 0x1

.field protected static final OPEN_EMAIL_MARKER:Ljava/lang/String; = " <"

.field private static final SATURATION_ADJUST:F = 0.3f

.field private static final SHARED_PREFS_NAME:Ljava/lang/String; = "com.android.calendar_preferences"

.field private static final TAG:Ljava/lang/String; = "Utils"

.field private static final UNKNOW_CALENDAR_ID:I = -0x1

.field private static colorChipCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public static final colorMartix:[I

.field public static final englishNthDay:[Ljava/lang/String;

.field public static exchange_acnt_name:Ljava/lang/String;

.field private static isAlreadyCheckedMapAp:I

.field public static labels_ids:[I

.field private static final mTZUtils:Lcom/htc/calendar/CalendarUtils$TimeZoneUtils;

.field public static system_date_format:Ljava/lang/String;

.field public static system_date_format_short:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 99
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/htc/calendar/Utils;->CORNERS:[F

    .line 114
    new-instance v0, Lcom/htc/calendar/CalendarUtils$TimeZoneUtils;

    const-string v1, "com.android.calendar_preferences"

    invoke-direct {v0, v1}, Lcom/htc/calendar/CalendarUtils$TimeZoneUtils;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/htc/calendar/Utils;->mTZUtils:Lcom/htc/calendar/CalendarUtils$TimeZoneUtils;

    .line 316
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/calendar/Utils;->colorChipCache:Ljava/util/HashMap;

    .line 364
    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, "1st"

    aput-object v1, v0, v4

    const-string v1, "2nd"

    aput-object v1, v0, v5

    const-string v1, "3rd"

    aput-object v1, v0, v6

    const-string v1, "4th"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "5th"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "6th"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "7th"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "8th"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "9th"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "10th"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "11th"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "12th"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "13th"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "14th"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "15th"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "16th"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "17th"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "18th"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "19th"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "20th"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "21st"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "22nd"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "23rd"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "24th"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "25th"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "26th"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "27th"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "28th"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "29th"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "30th"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "31st"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/calendar/Utils;->englishNthDay:[Ljava/lang/String;

    .line 577
    const-string v0, "EE, MMM d"

    sput-object v0, Lcom/htc/calendar/Utils;->DEFAULT_DATE_FORMAT_SHORT:Ljava/lang/String;

    .line 578
    const-string v0, "EE, MMM d, yyyy"

    sput-object v0, Lcom/htc/calendar/Utils;->DEFAULT_DATE_FORMAT:Ljava/lang/String;

    .line 579
    const-string v0, ""

    sput-object v0, Lcom/htc/calendar/Utils;->exchange_acnt_name:Ljava/lang/String;

    .line 584
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/htc/calendar/Utils;->colorMartix:[I

    .line 624
    const/16 v0, 0x15

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/htc/calendar/Utils;->labels_ids:[I

    .line 1176
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "calendar_id"

    aput-object v1, v0, v3

    const-string v1, "organizer"

    aput-object v1, v0, v4

    const-string v1, "guestsCanModify"

    aput-object v1, v0, v5

    const-string v1, "facebook_type"

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/calendar/Utils;->EVENTS_PROJECTION:[Ljava/lang/String;

    .line 1188
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "calendar_access_level"

    aput-object v1, v0, v4

    const-string v1, "ownerAccount"

    aput-object v1, v0, v5

    const-string v1, "account_type"

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/calendar/Utils;->CALENDARS_PROJECTION:[Ljava/lang/String;

    .line 1445
    const/4 v0, -0x1

    sput v0, Lcom/htc/calendar/Utils;->isAlreadyCheckedMapAp:I

    return-void

    .line 99
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 584
    :array_1
    .array-data 0x4
        0x29t 0x29t 0xa3t 0xfft
        0x5ft 0x36t 0xb1t 0xfft
        0x7at 0x36t 0x7at 0xfft
        0xa3t 0x29t 0x52t 0xfft
        0x7at 0x52t 0x29t 0xfft
        0xa3t 0x52t 0x29t 0xfft
        0x7at 0x88t 0x1bt 0xfft
        0x4et 0x75t 0x28t 0xfft
        0x13t 0x78t 0xdt 0xfft
        0x0t 0x88t 0x52t 0xfft
        0xet 0x88t 0x88t 0xfft
        0x0t 0x8bt 0xabt 0xfft
        0x0t 0x6dt 0xbet 0xfft
        0xet 0x44t 0xb1t 0xfft
        0x5at 0x5at 0x86t 0xfft
        0x70t 0x57t 0x70t 0xfft
        0x6ct 0x5dt 0x4et 0xfft
        0x86t 0x69t 0x5at 0xfft
        0x6ct 0x71t 0x4at 0xfft
        0x41t 0x6et 0x6et 0xfft
        0x47t 0x6ft 0x8dt 0xfft
    .end array-data

    .line 624
    :array_2
    .array-data 0x4
        0x48t 0x0t 0x8t 0x2t
        0x49t 0x0t 0x8t 0x2t
        0x4at 0x0t 0x8t 0x2t
        0x4bt 0x0t 0x8t 0x2t
        0x4ct 0x0t 0x8t 0x2t
        0x4dt 0x0t 0x8t 0x2t
        0x4et 0x0t 0x8t 0x2t
        0x4ft 0x0t 0x8t 0x2t
        0x50t 0x0t 0x8t 0x2t
        0x51t 0x0t 0x8t 0x2t
        0x52t 0x0t 0x8t 0x2t
        0x53t 0x0t 0x8t 0x2t
        0x54t 0x0t 0x8t 0x2t
        0x55t 0x0t 0x8t 0x2t
        0x56t 0x0t 0x8t 0x2t
        0x57t 0x0t 0x8t 0x2t
        0x58t 0x0t 0x8t 0x2t
        0x59t 0x0t 0x8t 0x2t
        0x5at 0x0t 0x8t 0x2t
        0x5bt 0x0t 0x8t 0x2t
        0x5ct 0x0t 0x8t 0x2t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 89
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static FOTA_Activity_Name_Update_Issue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "className"

    .prologue
    .line 106
    const-string v0, "DayTimeGridActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.htc.calendar.DayTimeGridActivity"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    :cond_0
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/htc/calendar/Utils;->setDefaultView(Landroid/content/Context;I)V

    .line 108
    const-class v0, Lcom/htc/calendar/DayActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 110
    :cond_1
    return-object p1
.end method

.method public static final applyAlphaAnimation(Landroid/widget/ViewFlipper;)V
    .locals 8
    .parameter "v"

    .prologue
    const-wide/16 v6, 0x1f4

    const-wide/16 v4, 0x0

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 302
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 304
    .local v0, in:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 305
    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 307
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 309
    .local v1, out:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 310
    invoke-virtual {v1, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 312
    invoke-virtual {p0, v0}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 313
    invoke-virtual {p0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 314
    return-void
.end method

.method public static checkDefaultInsertCalendar(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 1022
    const-string v0, "PC Sync"

    .line 1023
    .local v0, PCSC_CALENDAR:Ljava/lang/String;
    invoke-static {p0}, Lcom/htc/calendar/Utils;->getDefaultInsertCalendar(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1024
    .local v1, defaultCalendar:Ljava/lang/String;
    invoke-static {p0}, Lcom/htc/calendar/Utils;->getDefaultInsertCalendarType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 1025
    .local v2, defaultType:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1027
    invoke-static {p0}, Lcom/htc/calendar/Utils;->isGoogleLogin(Landroid/content/Context;)Z

    move-result v5

    .line 1028
    .local v5, isGoogleExist:Z
    invoke-static {p0}, Lcom/htc/calendar/Utils;->isExchangeLogin(Landroid/content/Context;)Z

    move-result v3

    .line 1029
    .local v3, isExchangeExist:Z
    invoke-static {p0}, Lcom/htc/calendar/Utils;->isFacebookLogin(Landroid/content/Context;)Z

    move-result v4

    .line 1031
    .local v4, isFacebookExist:Z
    if-eqz v3, :cond_1

    .line 1032
    invoke-static {}, Landroid/provider/HtcExCalendar;->getHtcEasAccountType()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/htc/calendar/Utils;->getFisrtAccountInType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1033
    invoke-static {}, Landroid/provider/HtcExCalendar;->getHtcEasAccountType()Ljava/lang/String;

    move-result-object v2

    .line 1048
    :goto_0
    invoke-static {p0, v1, v2}, Lcom/htc/calendar/Utils;->updateDefaultInsertCalendar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    .end local v3           #isExchangeExist:Z
    .end local v4           #isFacebookExist:Z
    .end local v5           #isGoogleExist:Z
    :cond_0
    return-void

    .line 1035
    .restart local v3       #isExchangeExist:Z
    .restart local v4       #isFacebookExist:Z
    .restart local v5       #isGoogleExist:Z
    :cond_1
    if-eqz v5, :cond_2

    .line 1036
    invoke-static {}, Landroid/provider/HtcExCalendar;->getGoogleAccountType()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/htc/calendar/Utils;->getFisrtAccountInType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1037
    invoke-static {}, Landroid/provider/HtcExCalendar;->getGoogleAccountType()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1039
    :cond_2
    if-eqz v4, :cond_3

    .line 1040
    invoke-static {p0}, Landroid/provider/HtcExCalendar;->getHtcFacebookAccountType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/htc/calendar/Utils;->getFisrtAccountInType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1041
    invoke-static {p0}, Landroid/provider/HtcExCalendar;->getHtcFacebookAccountType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1044
    :cond_3
    const-string v1, "PC Sync"

    .line 1045
    invoke-static {}, Landroid/provider/HtcExCalendar;->getHtcPcSyncAccountType()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static checkForDuplicateNames(Ljava/util/Map;Landroid/database/Cursor;I)V
    .locals 2
    .parameter
    .parameter "cursor"
    .parameter "nameIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/database/Cursor;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 460
    .local p0, isDuplicateName:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 461
    const/4 v1, -0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 462
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 463
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 465
    .local v0, displayName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 466
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 469
    .end local v0           #displayName:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static cleanUnreadInvitationFlag(Landroid/content/Context;J)V
    .locals 7
    .parameter "context"
    .parameter "eventId"

    .prologue
    const/4 v6, 0x0

    .line 1054
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1055
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1056
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "viewed"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1057
    const-string v4, "content://com.android.calendar/attendees_event_id"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1058
    .local v1, myUri:Landroid/net/Uri;
    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1059
    .local v2, updateUri:Landroid/net/Uri;
    invoke-virtual {v0, v2, v3, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1060
    return-void
.end method

.method public static compareCursors(Landroid/database/Cursor;Landroid/database/Cursor;)Z
    .locals 6
    .parameter "c1"
    .parameter "c2"

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x0

    .line 250
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 273
    :cond_0
    :goto_0
    return v2

    .line 254
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    .line 255
    .local v1, numColumns:I
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 259
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 263
    invoke-interface {p0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 264
    invoke-interface {p1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 265
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 266
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 267
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 266
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 273
    .end local v0           #i:I
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static convertAlldayLocalToUTC(Landroid/text/format/Time;JLjava/lang/String;)J
    .locals 2
    .parameter "recycle"
    .parameter "localTime"
    .parameter "tz"

    .prologue
    .line 494
    if-nez p0, :cond_0

    .line 495
    new-instance p0, Landroid/text/format/Time;

    .end local p0
    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    .line 497
    .restart local p0
    :cond_0
    iput-object p3, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 498
    invoke-virtual {p0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 499
    const-string v0, "UTC"

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 500
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static convertAlldayUtcToLocal(Landroid/text/format/Time;JLjava/lang/String;)J
    .locals 2
    .parameter "recycle"
    .parameter "utcTime"
    .parameter "tz"

    .prologue
    .line 484
    if-nez p0, :cond_0

    .line 485
    new-instance p0, Landroid/text/format/Time;

    .end local p0
    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    .line 487
    .restart local p0
    :cond_0
    const-string v0, "UTC"

    iput-object v0, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 488
    invoke-virtual {p0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 489
    iput-object p3, p0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 490
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static createAddContactIntent(Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 2
    .parameter "address"
    .parameter "isPhoneNum"

    .prologue
    .line 1497
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1498
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1499
    const-string v1, "vnd.android.cursor.item/person"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1500
    if-eqz p1, :cond_0

    .line 1501
    const-string v1, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1506
    :goto_0
    return-object v0

    .line 1503
    :cond_0
    const-string v1, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static createAddToNewContactIntent(Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 3
    .parameter "address"
    .parameter "isPhoneNum"

    .prologue
    .line 1484
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1485
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/person"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1486
    if-eqz p1, :cond_0

    .line 1487
    const-string v1, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1488
    const-string v1, "phone"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1493
    :goto_0
    return-object v0

    .line 1490
    :cond_0
    const-string v1, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1491
    const-string v1, "email"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static dayViewSwitcher(Landroid/app/Activity;Ljava/lang/String;J)V
    .locals 3
    .parameter "activity"
    .parameter "className"
    .parameter "startMillis"

    .prologue
    .line 1415
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1416
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1417
    const-string v1, "beginTime"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1418
    const-string v1, "vCalendar"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1419
    const/high16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1420
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1421
    return-void
.end method

.method public static debugJulianDay(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter "MODULE_TAG"
    .parameter "str"
    .parameter "julianDay"

    .prologue
    .line 1170
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 1171
    .local v0, time:Landroid/text/format/Time;
    invoke-virtual {v0, p2}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 1172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%04d-%02d-%02d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v0, Landroid/text/format/Time;->year:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget v6, v0, Landroid/text/format/Time;->monthDay:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    return-void
.end method

.method public static debugLongTime(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .parameter "MODULE_TAG"
    .parameter "str"
    .parameter "longTime"

    .prologue
    .line 1163
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 1164
    .local v0, time:Landroid/text/format/Time;
    invoke-virtual {v0, p2, p3}, Landroid/text/format/Time;->set(J)V

    .line 1165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%04d-%02d-%02d %02d:%02d:%02d"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v0, Landroid/text/format/Time;->year:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v6, v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget v6, v0, Landroid/text/format/Time;->monthDay:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget v6, v0, Landroid/text/format/Time;->hour:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget v6, v0, Landroid/text/format/Time;->minute:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget v6, v0, Landroid/text/format/Time;->second:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    return-void
.end method

.method public static debugTime(Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)V
    .locals 6
    .parameter "MODULE_TAG"
    .parameter "str"
    .parameter "time"

    .prologue
    .line 1155
    if-nez p2, :cond_0

    .line 1156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " time is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    :goto_0
    return-void

    .line 1159
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%04d-%02d-%02d %02d:%02d:%02d"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p2, Landroid/text/format/Time;->year:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget v5, p2, Landroid/text/format/Time;->month:I

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget v5, p2, Landroid/text/format/Time;->monthDay:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget v5, p2, Landroid/text/format/Time;->hour:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget v5, p2, Landroid/text/format/Time;->minute:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget v5, p2, Landroid/text/format/Time;->second:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static doCalendarSearch(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 834
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 835
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 836
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 837
    const-class v1, Lcom/htc/calendar/CalendarSearchActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 838
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 839
    return-void
.end method

.method public static doServoSearch(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 826
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 827
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 828
    const-string v1, "content://servo_search/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 829
    const-string v1, "CATEGORY_ORDER"

    const-string v2, "pim/calendar/android"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 830
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 831
    return-void
.end method

.method public static drawDate(Landroid/content/Context;Landroid/graphics/Canvas;Landroid/widget/ImageView;Landroid/graphics/Paint;Landroid/graphics/Bitmap;)V
    .locals 22
    .parameter "context"
    .parameter "dateCanvas"
    .parameter "dateImg"
    .parameter "datePaint"
    .parameter "dateBmp"

    .prologue
    .line 1303
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    .line 1305
    .local v21, res:Landroid/content/res/Resources;
    if-nez v21, :cond_0

    .line 1306
    const-string v2, "Utils"

    const-string v4, "cannot get resource"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    :goto_0
    return-void

    .line 1310
    :cond_0
    const/16 v18, 0x0

    .line 1311
    .local v18, month_font_size:F
    const/16 v19, 0x0

    .line 1312
    .local v19, month_x_position:I
    const/16 v20, 0x0

    .line 1314
    .local v20, month_y_position:I
    const/4 v15, 0x0

    .line 1315
    .local v15, date_font_size:F
    const/4 v11, 0x0

    .line 1316
    .local v11, date_1_x_position:I
    const/4 v12, 0x0

    .line 1317
    .local v12, date_1_y_position:I
    const/4 v13, 0x0

    .line 1318
    .local v13, date_2_x_position:I
    const/4 v14, 0x0

    .line 1321
    .local v14, date_2_y_position:I
    const v2, 0x7f090026

    :try_start_0
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    .line 1322
    const v2, 0x7f0a0002

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v19

    .line 1323
    const v2, 0x7f0a0003

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v20

    .line 1325
    const v2, 0x7f090027

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    .line 1326
    const v2, 0x7f0a0004

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 1327
    const v2, 0x7f0a0005

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 1328
    const v2, 0x7f0a0006

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    .line 1329
    const v2, 0x7f0a0007

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    .line 1335
    new-instance v17, Landroid/text/format/Time;

    invoke-direct/range {v17 .. v17}, Landroid/text/format/Time;-><init>()V

    .line 1336
    .local v17, mTimeToday:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 1338
    const/4 v2, 0x0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1339
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1341
    const/16 v2, 0xff

    const/16 v4, 0xff

    const/16 v6, 0xff

    const/16 v7, 0xff

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v4, v6, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1343
    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1345
    move-object/from16 v0, v17

    iget v2, v0, Landroid/text/format/Time;->month:I

    const/16 v4, 0x14

    invoke-static {v2, v4}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v3

    .line 1346
    .local v3, month:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 1347
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v19

    int-to-float v6, v0

    move/from16 v0, v20

    int-to-float v7, v0

    move-object/from16 v2, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 1349
    const/16 v2, 0xff

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v2, v4, v6, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1350
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1351
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1353
    move-object/from16 v0, v17

    iget v2, v0, Landroid/text/format/Time;->monthDay:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 1354
    .local v5, today:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    .line 1355
    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    int-to-float v8, v11

    int-to-float v9, v12

    move-object/from16 v4, p1

    move-object/from16 v10, p3

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 1330
    .end local v3           #month:Ljava/lang/String;
    .end local v5           #today:Ljava/lang/String;
    .end local v17           #mTimeToday:Landroid/text/format/Time;
    :catch_0
    move-exception v16

    .line 1331
    .local v16, ex:Ljava/lang/Exception;
    const-string v2, "Utils"

    const-string v4, "drawDate, Resources NotFoundException"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1358
    .end local v16           #ex:Ljava/lang/Exception;
    .restart local v3       #month:Ljava/lang/String;
    .restart local v5       #today:Ljava/lang/String;
    .restart local v17       #mTimeToday:Landroid/text/format/Time;
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    int-to-float v8, v13

    int-to-float v9, v14

    move-object/from16 v4, p1

    move-object/from16 v10, p3

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method public static drawUnResponse(Landroid/content/Context;Lcom/htc/widget/TaskBar;Landroid/view/View;I)V
    .locals 11
    .parameter "context"
    .parameter "taskBar"
    .parameter "centerButton"
    .parameter "count"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1363
    if-nez p0, :cond_0

    .line 1364
    const-string v5, "Utils"

    const-string v6, "context is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    :goto_0
    return-void

    .line 1368
    :cond_0
    if-nez p1, :cond_1

    .line 1369
    const-string v5, "Utils"

    const-string v6, "taskBar is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1373
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1375
    .local v3, res:Landroid/content/res/Resources;
    if-nez v3, :cond_2

    .line 1376
    const-string v5, "Utils"

    const-string v6, "cannot get resource"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1379
    :cond_2
    const-string v5, "Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "drawUnResponse: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    const v5, 0x7f090050

    :try_start_0
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 1385
    .local v1, less100_FontSize:F
    const v5, 0x7f090051

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1391
    .local v2, more100_FontSize:F
    invoke-static {p0, p3}, Lcom/htc/calendar/Utils;->setUnResponseCount(Landroid/content/Context;I)V

    .line 1392
    if-eqz p3, :cond_4

    .line 1393
    invoke-virtual {p2, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1394
    invoke-virtual {p1, v8}, Lcom/htc/widget/TaskBar;->setCountIndicatorVisibility(I)V

    .line 1396
    invoke-virtual {p1}, Lcom/htc/widget/TaskBar;->getCountIndicatorView()Landroid/widget/TextView;

    move-result-object v4

    .line 1397
    .local v4, tvCountIndicator:Landroid/widget/TextView;
    invoke-virtual {v4, v8, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1398
    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1399
    const/high16 v5, 0x3f80

    const/high16 v6, -0x100

    invoke-virtual {v4, v5, v9, v9, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 1400
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1401
    const/16 v5, 0x63

    if-le p3, v5, :cond_3

    .line 1402
    invoke-virtual {v4, v8, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1403
    const-string v5, "99+"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1386
    .end local v1           #less100_FontSize:F
    .end local v2           #more100_FontSize:F
    .end local v4           #tvCountIndicator:Landroid/widget/TextView;
    :catch_0
    move-exception v0

    .line 1387
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "Utils"

    const-string v6, "getDimension error !!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1405
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #less100_FontSize:F
    .restart local v2       #more100_FontSize:F
    .restart local v4       #tvCountIndicator:Landroid/widget/TextView;
    :cond_3
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1408
    .end local v4           #tvCountIndicator:Landroid/widget/TextView;
    :cond_4
    invoke-virtual {p2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1409
    invoke-virtual {p1, v10}, Lcom/htc/widget/TaskBar;->setCountIndicatorVisibility(I)V

    goto/16 :goto_0
.end method

.method public static formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "flags"

    .prologue
    .line 515
    sget-object v0, Lcom/htc/calendar/Utils;->mTZUtils:Lcom/htc/calendar/CalendarUtils$TimeZoneUtils;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/htc/calendar/CalendarUtils$TimeZoneUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatMonthYear(Landroid/content/Context;Landroid/text/format/Time;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "time"

    .prologue
    .line 360
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatNth(I)Ljava/lang/String;
    .locals 2
    .parameter "nth"

    .prologue
    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "the "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/htc/calendar/Utils;->englishNthDay:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCityCodeCount(Landroid/content/Context;)I
    .locals 7
    .parameter "context"

    .prologue
    .line 1550
    const-string v1, "com.htc.elroy.Weather"

    .line 1551
    .local v1, WEATHER_APP_PACKAGE_NAME:Ljava/lang/String;
    const-string v0, "com.htc.htclocationservice"

    .line 1553
    .local v0, LOCATION_SERVICE_PACKAGE_NAME:Ljava/lang/String;
    const/4 v5, 0x2

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "com.htc.htclocationservice"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "com.htc.elroy.Weather"

    aput-object v6, v3, v5

    .line 1555
    .local v3, pkgname:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/htc/util/weather/WeatherUtility;->loadMultiAppLocations(Landroid/content/ContentResolver;[Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v4

    .line 1557
    .local v4, weather_locs:[Lcom/htc/util/weather/WeatherLocation;
    array-length v2, v4

    .line 1558
    .local v2, count:I
    if-nez v2, :cond_0

    .line 1561
    const-string v5, "preferences_weather_city_code"

    const-string v6, ""

    invoke-static {p0, v5, v6}, Lcom/htc/calendar/Utils;->setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    :cond_0
    return v2
.end method

.method public static getColorChip(I)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "color"

    .prologue
    .line 320
    sget-object v5, Lcom/htc/calendar/Utils;->colorChipCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 321
    sget-object v5, Lcom/htc/calendar/Utils;->colorChipCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    .line 349
    :goto_0
    return-object v5

    .line 334
    :cond_0
    const v5, 0xffffff

    and-int/2addr p0, v5

    .line 335
    add-int/lit8 p0, p0, 0x20

    .line 336
    const/high16 v5, -0x100

    or-int v4, p0, v5

    .line 337
    .local v4, startColor:I
    const/high16 v5, -0x4c00

    or-int v3, p0, v5

    .line 338
    .local v3, middleColor:I
    const/high16 v5, -0x5700

    or-int v2, p0, v5

    .line 343
    .local v2, endColor:I
    const/4 v5, 0x2

    new-array v0, v5, [I

    const/4 v5, 0x0

    aput v4, v0, v5

    const/4 v5, 0x1

    aput v2, v0, v5

    .line 345
    .local v0, colors:[I
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v5, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 346
    .local v1, d:Landroid/graphics/drawable/GradientDrawable;
    sget-object v5, Lcom/htc/calendar/Utils;->CORNERS:[F

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 348
    sget-object v5, Lcom/htc/calendar/Utils;->colorChipCache:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v5, v1

    .line 349
    goto :goto_0
.end method

.method public static getDeclinedColorFromColor(I)I
    .locals 10
    .parameter "color"

    .prologue
    const/high16 v9, 0xff

    const v8, 0xff00

    const/high16 v7, -0x100

    .line 537
    const/4 v2, -0x1

    .line 538
    .local v2, bg:I
    const/16 v0, 0x66

    .line 539
    .local v0, a:I
    and-int v5, p0, v9

    mul-int/2addr v5, v0

    const/high16 v6, -0x6799

    add-int/2addr v5, v6

    and-int v4, v5, v7

    .line 540
    .local v4, r:I
    and-int v5, p0, v8

    mul-int/2addr v5, v0

    const v6, 0x986700

    add-int/2addr v5, v6

    and-int v3, v5, v9

    .line 541
    .local v3, g:I
    and-int/lit16 v5, p0, 0xff

    mul-int/2addr v5, v0

    const v6, 0x9867

    add-int/2addr v5, v6

    and-int v1, v5, v8

    .line 542
    .local v1, b:I
    or-int v5, v4, v3

    or-int/2addr v5, v1

    shr-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v7

    return v5
.end method

.method public static getDefaultInsertCalendar(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 990
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 991
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "preference_defaultCalendar"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDefaultInsertCalendarType(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 995
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 996
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "preference_defaultCalendarType"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDisplayColorFromColor(I)I
    .locals 4
    .parameter "color"

    .prologue
    const/4 v3, 0x1

    .line 528
    const/4 v1, 0x3

    new-array v0, v1, [F

    .line 529
    .local v0, hsv:[F
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 530
    aget v1, v0, v3

    const v2, 0x3e99999a

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    aput v1, v0, v3

    .line 531
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    return v1
.end method

.method public static getEventAccessControlByID(Landroid/content/Context;J)I
    .locals 26
    .parameter "context"
    .parameter "eventId"

    .prologue
    .line 1649
    const-wide/16 v6, -0x1

    cmp-long v4, p1, v6

    if-nez v4, :cond_0

    .line 1650
    const/4 v4, 0x0

    .line 1722
    :goto_0
    return v4

    .line 1652
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1654
    .local v2, cr:Landroid/content/ContentResolver;
    const/16 v23, 0x0

    .line 1659
    .local v23, visibility:I
    sget-object v4, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/htc/calendar/Utils;->EVENTS_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1664
    .local v14, cursor:Landroid/database/Cursor;
    if-eqz v14, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_2

    .line 1665
    :cond_1
    const-string v4, "Utils"

    const-string v6, "isEventEditable false (cursor is null or cursor.getCount() = 0) "

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    const/4 v4, 0x0

    goto :goto_0

    .line 1668
    :cond_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1669
    const/4 v4, 0x0

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 1670
    .local v11, calId:J
    const/4 v4, 0x1

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1671
    .local v21, organizer:Ljava/lang/String;
    const/4 v4, 0x2

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_6

    const/16 v17, 0x1

    .line 1672
    .local v17, guestsCanModify:Z
    :goto_1
    const/4 v4, 0x3

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 1673
    .local v16, fb_event_type:I
    invoke-interface {v14}, Landroid/database/Cursor;->deactivate()V

    .line 1675
    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 1676
    .local v3, uri:Landroid/net/Uri;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "_id=%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v24, 0x0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v7, v24

    invoke-static {v4, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1677
    .local v5, where:Ljava/lang/String;
    sget-object v4, Lcom/htc/calendar/Utils;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1679
    const/4 v13, 0x0

    .line 1680
    .local v13, calendarOwnerAccount:Ljava/lang/String;
    invoke-static {}, Landroid/provider/HtcExCalendar;->getGoogleAccountType()Ljava/lang/String;

    move-result-object v15

    .line 1681
    .local v15, event_syncAccountType:Ljava/lang/String;
    const/16 v22, 0x0

    .line 1683
    .local v22, questCanModify:I
    if-eqz v14, :cond_7

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-eqz v4, :cond_7

    .line 1684
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1685
    const/4 v4, 0x3

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1686
    const/4 v4, 0x1

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 1687
    const/4 v4, 0x2

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1688
    const/4 v4, 0x2

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 1690
    invoke-interface {v14}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1691
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1699
    :cond_3
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/16 v19, 0x1

    .line 1701
    .local v19, isOrganizer:Z
    :goto_2
    const/16 v4, 0x1f4

    move/from16 v0, v23

    if-lt v0, v4, :cond_a

    const/4 v8, 0x1

    .line 1703
    .local v8, CanModifyCalendar:Z
    :goto_3
    if-eqz v22, :cond_b

    const/16 v18, 0x1

    .line 1705
    .local v18, isGuestCanModify:Z
    :goto_4
    const-wide/16 v6, 0x1

    cmp-long v4, v11, v6

    if-nez v4, :cond_c

    const/16 v20, 0x1

    .line 1707
    .local v20, isPCSyncEvent:Z
    :goto_5
    invoke-static {v15}, Lcom/htc/calendar/HtcUtils;->isHTCExchangeEvent(Ljava/lang/String;)Z

    move-result v10

    .line 1709
    .local v10, IsHtcExchangeEvent:Z
    if-eqz v8, :cond_4

    if-nez v19, :cond_5

    if-nez v18, :cond_5

    :cond_4
    if-nez v10, :cond_5

    if-eqz v20, :cond_d

    :cond_5
    const/4 v9, 0x1

    .line 1714
    .local v9, CanModifyEvent:Z
    :goto_6
    const-string v4, "Utils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CanModifyCalendar is :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">> guestsCanModify is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">> isOrganizer is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">> Calendars.CAL_ACCESS_CONTRIBUTOR is :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x1f4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">> IsHtcExchangeEvent is :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ">> isPCSyncEvent is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    if-eqz v9, :cond_e

    const/4 v4, 0x3

    goto/16 :goto_0

    .line 1671
    .end local v3           #uri:Landroid/net/Uri;
    .end local v5           #where:Ljava/lang/String;
    .end local v8           #CanModifyCalendar:Z
    .end local v9           #CanModifyEvent:Z
    .end local v10           #IsHtcExchangeEvent:Z
    .end local v13           #calendarOwnerAccount:Ljava/lang/String;
    .end local v15           #event_syncAccountType:Ljava/lang/String;
    .end local v16           #fb_event_type:I
    .end local v17           #guestsCanModify:Z
    .end local v18           #isGuestCanModify:Z
    .end local v19           #isOrganizer:Z
    .end local v20           #isPCSyncEvent:Z
    .end local v22           #questCanModify:I
    :cond_6
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 1693
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v5       #where:Ljava/lang/String;
    .restart local v13       #calendarOwnerAccount:Ljava/lang/String;
    .restart local v15       #event_syncAccountType:Ljava/lang/String;
    .restart local v16       #fb_event_type:I
    .restart local v17       #guestsCanModify:Z
    .restart local v22       #questCanModify:I
    :cond_7
    if-eqz v14, :cond_8

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    .line 1694
    :cond_8
    const-string v4, "Utils"

    const-string v6, "isEventEditable false (cursor is null or cursor.getCount() = 0) "

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1699
    :cond_9
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 1701
    .restart local v19       #isOrganizer:Z
    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 1703
    .restart local v8       #CanModifyCalendar:Z
    :cond_b
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 1705
    .restart local v18       #isGuestCanModify:Z
    :cond_c
    const/16 v20, 0x0

    goto/16 :goto_5

    .line 1709
    .restart local v10       #IsHtcExchangeEvent:Z
    .restart local v20       #isPCSyncEvent:Z
    :cond_d
    const/4 v9, 0x0

    goto :goto_6

    .line 1721
    .restart local v9       #CanModifyEvent:Z
    :cond_e
    if-eqz v8, :cond_f

    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1722
    :cond_f
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method public static getEventColorRect(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "context"
    .parameter "colorIdx"

    .prologue
    .line 641
    const/4 v0, 0x0

    .line 643
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const/16 v1, 0x15

    if-le p1, v1, :cond_1

    .line 644
    :cond_0
    const/4 v1, 0x0

    .line 648
    :goto_0
    return-object v1

    .line 647
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/htc/calendar/Utils;->labels_ids:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v1, v0

    .line 648
    goto :goto_0
.end method

.method public static getEventDrawableIndex(I)I
    .locals 6
    .parameter "color"

    .prologue
    .line 609
    const/4 v4, 0x1

    .line 610
    .local v4, nIdx:I
    sget-object v0, Lcom/htc/calendar/Utils;->colorMartix:[I

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 611
    .local v1, colorCache:I
    if-ne v1, p0, :cond_2

    .line 617
    .end local v1           #colorCache:I
    :cond_0
    const/16 v5, 0x15

    if-le v4, v5, :cond_1

    .line 618
    const/4 v4, 0x1

    .line 621
    :cond_1
    return v4

    .line 614
    .restart local v1       #colorCache:I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 610
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getEventRRule(Landroid/content/Context;J)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "event_id"

    .prologue
    const/4 v4, 0x0

    .line 1273
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "rrule"

    aput-object v3, v2, v1

    .line 1276
    .local v2, PROJECT:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1278
    .local v6, INDEX_EVENT_RRULE:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1279
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_ID="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1283
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 1284
    .local v8, nCount:I
    const-string v9, ""

    .line 1285
    .local v9, rrule:Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 1286
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 1287
    if-eqz v8, :cond_0

    .line 1288
    const/4 v1, -0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1289
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1290
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 1293
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1294
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1296
    :cond_1
    const/4 v7, 0x0

    .line 1298
    :cond_2
    return-object v9
.end method

.method public static getExchangeLoginFromPref(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 904
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 905
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "is_exchange_login"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getExchangeLoginName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 849
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/htc/calendar/Utils;->getExchangeLoginName(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExchangeLoginName(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "save"

    .prologue
    .line 853
    const-string v3, ""

    .line 854
    .local v3, storedEASLogingName:Ljava/lang/String;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 855
    .local v0, accountManager:Landroid/accounts/AccountManager;
    invoke-static {}, Landroid/provider/HtcExCalendar;->getHtcEasAccountType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 856
    .local v1, acnts:[Landroid/accounts/Account;
    const/4 v2, 0x0

    .line 857
    .local v2, isEasLogin:Z
    if-eqz v1, :cond_3

    .line 858
    const-string v4, "Utils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "storedEASLoginName is null, try to use AccountManager acnts.length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    array-length v4, v1

    if-lez v4, :cond_2

    .line 860
    const/4 v4, 0x0

    aget-object v4, v1, v4

    iget-object v3, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 861
    const/4 v2, 0x1

    .line 867
    :goto_0
    if-eqz p1, :cond_0

    .line 868
    invoke-static {p0, v3}, Lcom/htc/calendar/Utils;->updateExchangeLoginName(Landroid/content/Context;Ljava/lang/String;)V

    .line 876
    :cond_0
    :goto_1
    if-eqz p1, :cond_1

    .line 877
    invoke-static {p0, v3}, Lcom/htc/calendar/Utils;->updateExchangeLoginName(Landroid/content/Context;Ljava/lang/String;)V

    .line 878
    invoke-static {p0, v2}, Lcom/htc/calendar/Utils;->updateIsExchangeLogin(Landroid/content/Context;Z)V

    .line 881
    :cond_1
    return-object v3

    .line 863
    :cond_2
    const-string v3, ""

    .line 864
    const/4 v2, 0x0

    goto :goto_0

    .line 871
    :cond_3
    const-string v4, "Utils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "acnts is null by AccountManage use type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/provider/HtcExCalendar;->getHtcEasAccountType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    const-string v3, ""

    .line 873
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getFakeCalendarLockScreenExist(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 657
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 658
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "fake_calendar_lockscreen_exist"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private static getFisrtAccountInType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "type"

    .prologue
    .line 1011
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 1012
    .local v0, accountManager:Landroid/accounts/AccountManager;
    invoke-virtual {v0, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 1013
    .local v1, acnts:[Landroid/accounts/Account;
    if-eqz v1, :cond_0

    .line 1014
    array-length v2, v1

    if-lez v2, :cond_0

    .line 1015
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 1018
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getGoogleLoginFromPref(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 899
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 900
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "is_google_login"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getHideDeclinedEvents(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 524
    const/4 v0, 0x1

    return v0
.end method

.method public static getHtcSenseVersion()F
    .locals 6

    .prologue
    .line 1510
    const/high16 v0, 0x4000

    .line 1514
    .local v0, DEFAULT_SENSE_VERSION:F
    :try_start_0
    sget-object v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1519
    .local v2, senseVersion:F
    :goto_0
    return v2

    .line 1515
    .end local v2           #senseVersion:F
    :catch_0
    move-exception v1

    .line 1516
    .local v1, nfe:Ljava/lang/NumberFormatException;
    const-string v3, "Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parsing Htc Sense version error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    const/high16 v2, 0x4000

    .restart local v2       #senseVersion:F
    goto :goto_0
.end method

.method public static getMakeCallDirectlyIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "context"
    .parameter "number"
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    .line 1464
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1470
    :cond_0
    :goto_0
    return-object v0

    .line 1466
    :cond_1
    const-string v2, "tel"

    invoke-static {v2, p1, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1467
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1468
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1469
    if-eqz p2, :cond_0

    const-string v2, "name"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static getOpenContactCardIntent(JZ)Landroid/content/Intent;
    .locals 5
    .parameter "personId"
    .parameter "isSim"

    .prologue
    .line 1474
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 1475
    .local v1, prefix:Landroid/net/Uri;
    invoke-static {v1, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 1476
    .local v2, uri:Landroid/net/Uri;
    if-eqz p2, :cond_0

    .line 1477
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "account_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "com.anddroid.contacts.sim"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1479
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1480
    .local v0, intent:Landroid/content/Intent;
    return-object v0
.end method

.method static getSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 139
    invoke-static {p0}, Lcom/htc/calendar/CalendarPreferenceActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 140
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 174
    sget-object v0, Lcom/htc/calendar/Utils;->mTZUtils:Lcom/htc/calendar/CalendarUtils$TimeZoneUtils;

    invoke-virtual {v0, p0, p1}, Lcom/htc/calendar/CalendarUtils$TimeZoneUtils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUnreadCount(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 1068
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1069
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "unresponse_invitation_count"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getWidgetScheduledUpdateAction(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".APPWIDGET_SCHEDULED_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWidgetUpdateAction(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "context"

    .prologue
    .line 549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".APPWIDGET_UPDATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasCurrentLocation(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 1537
    invoke-static {}, Lcom/htc/util/weather/WSPUtility;->generateWSPReqestForCurrentLocation()Lcom/htc/util/weather/WSPRequest;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/htc/util/weather/WSPUtility;->request(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)Lcom/htc/util/weather/WSPData;

    move-result-object v0

    .line 1539
    .local v0, tempWSPdata:Lcom/htc/util/weather/WSPData;
    if-eqz v0, :cond_0

    .line 1540
    const/4 v1, 0x1

    .line 1541
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDefaultSearchManager()Z
    .locals 1

    .prologue
    .line 792
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    packed-switch v0, :pswitch_data_0

    .line 798
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 795
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 792
    nop

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method public static isEnableSkin()Z
    .locals 3

    .prologue
    .line 736
    const/high16 v0, 0x4000

    .line 738
    .local v0, ENABLE_SKIN_CHANGE_FROM_SENSE_VERSION:F
    invoke-static {}, Lcom/htc/calendar/Utils;->getHtcSenseVersion()F

    move-result v1

    const/high16 v2, 0x4000

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 739
    const/4 v1, 0x1

    .line 756
    :goto_0
    return v1

    .line 744
    :cond_0
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    .line 756
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isEnableTheme()Z
    .locals 1

    .prologue
    .line 724
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v0, :sswitch_data_0

    .line 731
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 728
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 724
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x30 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isEventEditable(Landroid/content/Context;J)Z
    .locals 20
    .parameter "context"
    .parameter "eventId"

    .prologue
    .line 1201
    const-wide/16 v6, -0x1

    cmp-long v4, p1, v6

    if-nez v4, :cond_0

    .line 1202
    const/4 v15, 0x0

    .line 1268
    :goto_0
    return v15

    .line 1204
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1206
    .local v2, cr:Landroid/content/ContentResolver;
    const/16 v17, 0x0

    .line 1210
    .local v17, visibility:I
    sget-object v4, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lcom/htc/calendar/Utils;->EVENTS_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1215
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_2

    .line 1216
    :cond_1
    const-string v4, "Utils"

    const-string v6, "isEventEditable false (cursor is null or cursor.getCount() = 0) "

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    const/4 v15, 0x0

    goto :goto_0

    .line 1219
    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1220
    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1221
    .local v8, calId:J
    const/4 v4, 0x1

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1222
    .local v16, organizer:Ljava/lang/String;
    const/4 v4, 0x2

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_4

    const/4 v14, 0x1

    .line 1223
    .local v14, guestsCanModify:Z
    :goto_1
    const/4 v4, 0x3

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1224
    .local v13, fb_event_type:I
    invoke-interface {v11}, Landroid/database/Cursor;->deactivate()V

    .line 1226
    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 1227
    .local v3, uri:Landroid/net/Uri;
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "_id=%d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v18, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v7, v18

    invoke-static {v4, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 1228
    .local v5, where:Ljava/lang/String;
    sget-object v4, Lcom/htc/calendar/Utils;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1230
    const/4 v10, 0x0

    .line 1231
    .local v10, calendarOwnerAccount:Ljava/lang/String;
    invoke-static {}, Landroid/provider/HtcExCalendar;->getGoogleAccountType()Ljava/lang/String;

    move-result-object v12

    .line 1233
    .local v12, eventCalendar_syncAccountType:Ljava/lang/String;
    if-eqz v11, :cond_3

    .line 1234
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1235
    const/4 v4, 0x3

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1236
    const/4 v4, 0x1

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    .line 1237
    const/4 v4, 0x2

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1238
    invoke-interface {v11}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1239
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1243
    :cond_3
    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/htc/calendar/HtcUtils;->isHTCFacebookEvent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1252
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1222
    .end local v3           #uri:Landroid/net/Uri;
    .end local v5           #where:Ljava/lang/String;
    .end local v10           #calendarOwnerAccount:Ljava/lang/String;
    .end local v12           #eventCalendar_syncAccountType:Ljava/lang/String;
    .end local v13           #fb_event_type:I
    .end local v14           #guestsCanModify:Z
    :cond_4
    const/4 v14, 0x0

    goto :goto_1

    .line 1255
    .restart local v3       #uri:Landroid/net/Uri;
    .restart local v5       #where:Ljava/lang/String;
    .restart local v10       #calendarOwnerAccount:Ljava/lang/String;
    .restart local v12       #eventCalendar_syncAccountType:Ljava/lang/String;
    .restart local v13       #fb_event_type:I
    .restart local v14       #guestsCanModify:Z
    :cond_5
    const/16 v4, 0x1f4

    move/from16 v0, v17

    if-ge v0, v4, :cond_6

    .line 1256
    const-string v4, "Utils"

    const-string v6, "isEventEditable false (visibility < Calendars.CONTRIBUTOR_ACCESS) "

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1260
    :cond_6
    if-eqz v14, :cond_7

    .line 1261
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 1264
    :cond_7
    const/4 v15, 0x0

    .line 1265
    .local v15, isEditable:Z
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    :cond_8
    invoke-static {v12}, Lcom/htc/calendar/HtcUtils;->isHTCExchangeEvent(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {v12}, Lcom/htc/calendar/HtcUtils;->isHTCPCSyncEvent(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_9
    const/4 v15, 0x1

    .line 1268
    :goto_2
    goto/16 :goto_0

    .line 1265
    :cond_a
    const/4 v15, 0x0

    goto :goto_2
.end method

.method public static isExchangeLogin(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 978
    invoke-static {p0}, Lcom/htc/calendar/Utils;->getExchangeLoginFromPref(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isExistingCitycode(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 22
    .parameter "context"
    .parameter "usercitycode"
    .parameter "cityListCode"

    .prologue
    .line 1571
    const-string v4, "com.htc.elroy.Weather"

    .line 1572
    .local v4, WEATHER_APP_PACKAGE_NAME:Ljava/lang/String;
    const-string v2, "com.htc.htclocationservice"

    .line 1575
    .local v2, LOCATION_SERVICE_PACKAGE_NAME:Ljava/lang/String;
    const/4 v13, 0x0

    .line 1577
    .local v13, isexsitngcitycode:Z
    if-nez p2, :cond_2

    .line 1579
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v20, 0x0

    const-string v21, "com.htc.htclocationservice"

    aput-object v21, v17, v20

    const/16 v20, 0x1

    const-string v21, "com.htc.elroy.Weather"

    aput-object v21, v17, v20

    .line 1581
    .local v17, pkgname:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/htc/util/weather/WeatherUtility;->loadMultiAppLocations(Landroid/content/ContentResolver;[Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v19

    .line 1583
    .local v19, weather_locs:[Lcom/htc/util/weather/WeatherLocation;
    move-object/from16 v0, v19

    array-length v8, v0

    .line 1585
    .local v8, count:I
    if-nez v8, :cond_0

    .line 1586
    const/16 v20, 0x0

    .line 1628
    .end local v8           #count:I
    .end local v17           #pkgname:[Ljava/lang/String;
    .end local v19           #weather_locs:[Lcom/htc/util/weather/WeatherLocation;
    :goto_0
    return v20

    .line 1589
    .restart local v8       #count:I
    .restart local v17       #pkgname:[Ljava/lang/String;
    .restart local v19       #weather_locs:[Lcom/htc/util/weather/WeatherLocation;
    :cond_0
    new-array v0, v8, [Ljava/lang/String;

    move-object/from16 p2, v0

    .line 1591
    const/16 v16, 0x0

    .line 1593
    .local v16, nIdx:I
    invoke-static {}, Lcom/htc/util/weather/WSPUtility;->generateWSPReqestForCurrentLocation()Lcom/htc/util/weather/WSPRequest;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/htc/util/weather/WSPUtility;->request(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)Lcom/htc/util/weather/WSPData;

    move-result-object v18

    .line 1596
    .local v18, tempWSPdata:Lcom/htc/util/weather/WSPData;
    move-object/from16 v5, v19

    .local v5, arr$:[Lcom/htc/util/weather/WeatherLocation;
    array-length v14, v5

    .local v14, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_1
    if-ge v12, v14, :cond_2

    aget-object v15, v5, v12

    .line 1598
    .local v15, loc:Lcom/htc/util/weather/WeatherLocation;
    if-nez v16, :cond_1

    invoke-static/range {p0 .. p0}, Lcom/htc/calendar/Utils;->hasCurrentLocation(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1599
    const-string v20, "Current"

    aput-object v20, p2, v16

    .line 1603
    :goto_2
    add-int/lit8 v16, v16, 0x1

    .line 1596
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1601
    :cond_1
    invoke-virtual {v15}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v20

    aput-object v20, p2, v16

    goto :goto_2

    .line 1611
    .end local v5           #arr$:[Lcom/htc/util/weather/WeatherLocation;
    .end local v8           #count:I
    .end local v12           #i$:I
    .end local v14           #len$:I
    .end local v15           #loc:Lcom/htc/util/weather/WeatherLocation;
    .end local v16           #nIdx:I
    .end local v17           #pkgname:[Ljava/lang/String;
    .end local v18           #tempWSPdata:Lcom/htc/util/weather/WSPData;
    .end local v19           #weather_locs:[Lcom/htc/util/weather/WeatherLocation;
    :cond_2
    const/4 v10, 0x0

    .line 1612
    .local v10, defaultIndex:I
    move-object/from16 v9, p1

    .line 1613
    .local v9, defaultCityCode:Ljava/lang/String;
    aget-object v7, p2, v10

    .line 1614
    .local v7, code:Ljava/lang/String;
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v20, v0

    if-lez v20, :cond_3

    .line 1615
    const/4 v11, 0x0

    .local v11, i:I
    :goto_3
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v11, v0, :cond_3

    .line 1616
    aget-object v3, p2, v11

    .line 1617
    .local v3, Tempcode:Ljava/lang/String;
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 1618
    .local v6, b1:Z
    if-eqz v6, :cond_4

    .line 1619
    move-object v7, v9

    .line 1620
    const/4 v13, 0x1

    .end local v3           #Tempcode:Ljava/lang/String;
    .end local v6           #b1:Z
    .end local v11           #i:I
    :cond_3
    move/from16 v20, v13

    .line 1628
    goto :goto_0

    .line 1624
    .restart local v3       #Tempcode:Ljava/lang/String;
    .restart local v6       #b1:Z
    .restart local v11       #i:I
    :cond_4
    const/4 v13, 0x0

    .line 1615
    add-int/lit8 v11, v11, 0x1

    goto :goto_3
.end method

.method private static isFacebookLogin(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 1000
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 1001
    .local v0, accountManager:Landroid/accounts/AccountManager;
    invoke-static {p0}, Landroid/provider/HtcExCalendar;->getHtcFacebookAccountType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 1002
    .local v1, acnts:[Landroid/accounts/Account;
    if-eqz v1, :cond_0

    .line 1003
    array-length v2, v1

    if-lez v2, :cond_0

    .line 1004
    const/4 v2, 0x1

    .line 1007
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isGoogleLogin(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    .line 911
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x60

    if-ne v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    if-nez v3, :cond_0

    .line 914
    const/4 v2, 0x0

    .line 936
    :goto_0
    return v2

    .line 917
    :cond_0
    invoke-static {p0}, Lcom/htc/calendar/Utils;->getGoogleLoginFromPref(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 918
    const/4 v2, 0x1

    goto :goto_0

    .line 920
    :cond_1
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 921
    .local v0, accountManager:Landroid/accounts/AccountManager;
    invoke-static {}, Landroid/provider/HtcExCalendar;->getGoogleAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 922
    .local v1, acnts:[Landroid/accounts/Account;
    const/4 v2, 0x0

    .line 924
    .local v2, isLogin:Z
    if-eqz v1, :cond_3

    .line 925
    const-string v3, "Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "storedGoogleLogingName is null, try to use AccountManager acnts.length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    array-length v3, v1

    if-lez v3, :cond_2

    .line 927
    const/4 v2, 0x1

    .line 935
    :goto_1
    invoke-static {p0, v2}, Lcom/htc/calendar/Utils;->updateIsGoogleLogin(Landroid/content/Context;Z)V

    goto :goto_0

    .line 929
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 932
    :cond_3
    const-string v3, "Utils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acnts is null by AccountManage use type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/provider/HtcExCalendar;->getGoogleAccountType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static isMapApExist(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1447
    const/4 v6, -0x1

    sget v7, Lcom/htc/calendar/Utils;->isAlreadyCheckedMapAp:I

    if-ne v6, v7, :cond_0

    .line 1449
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1450
    .local v1, pm:Landroid/content/pm/PackageManager;
    const-string v6, "geo:0,0"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1451
    .local v3, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v0, v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1452
    .local v0, mapIntent:Landroid/content/Intent;
    const/16 v6, 0x40

    invoke-virtual {v1, v0, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1453
    .local v2, r:Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_1

    .line 1454
    sput v4, Lcom/htc/calendar/Utils;->isAlreadyCheckedMapAp:I

    .line 1460
    .end local v0           #mapIntent:Landroid/content/Intent;
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    .end local v2           #r:Landroid/content/pm/ResolveInfo;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    sget v6, Lcom/htc/calendar/Utils;->isAlreadyCheckedMapAp:I

    if-ne v4, v6, :cond_2

    :goto_1
    return v4

    .line 1456
    .restart local v0       #mapIntent:Landroid/content/Intent;
    .restart local v1       #pm:Landroid/content/pm/PackageManager;
    .restart local v2       #r:Landroid/content/pm/ResolveInfo;
    .restart local v3       #uri:Landroid/net/Uri;
    :cond_1
    sput v5, Lcom/htc/calendar/Utils;->isAlreadyCheckedMapAp:I

    goto :goto_0

    .end local v0           #mapIntent:Landroid/content/Intent;
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    .end local v2           #r:Landroid/content/pm/ResolveInfo;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_2
    move v4, v5

    .line 1460
    goto :goto_1
.end method

.method public static isSaturday(II)Z
    .locals 3
    .parameter "column"
    .parameter "firstDayOfWeek"

    .prologue
    const/4 v2, 0x6

    const/4 v0, 0x1

    .line 432
    if-nez p1, :cond_0

    if-eq p0, v2, :cond_2

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 v1, 0x5

    if-eq p0, v1, :cond_2

    :cond_1
    if-ne p1, v2, :cond_3

    if-nez p0, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isShowSolarHoilday()Z
    .locals 1

    .prologue
    .line 1523
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    packed-switch v0, :pswitch_data_0

    .line 1528
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1526
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1523
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static isSuitableAppExist(Landroid/content/Intent;Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 3
    .parameter "i"
    .parameter "c"

    .prologue
    .line 787
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x1

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 788
    .local v0, best:Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSunday(II)Z
    .locals 2
    .parameter "column"
    .parameter "firstDayOfWeek"

    .prologue
    const/4 v1, 0x6

    const/4 v0, 0x1

    .line 444
    if-nez p1, :cond_0

    if-eqz p0, :cond_2

    :cond_0
    if-ne p1, v0, :cond_1

    if-eq p0, v1, :cond_2

    :cond_1
    if-ne p1, v1, :cond_3

    if-ne p0, v0, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSupportHWKeyBoard()Z
    .locals 1

    .prologue
    .line 776
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v0, :sswitch_data_0

    .line 782
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 779
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 776
    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0xa8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isSupportJogball()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 663
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sparse-switch v1, :sswitch_data_0

    .line 681
    :goto_0
    :sswitch_0
    return v0

    .line 671
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 663
    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0x18 -> :sswitch_1
        0x1a -> :sswitch_1
        0x39 -> :sswitch_1
        0x3a -> :sswitch_0
        0x3c -> :sswitch_1
        0x60 -> :sswitch_0
        0x90 -> :sswitch_1
        0xa8 -> :sswitch_1
    .end sparse-switch
.end method

.method public static isSupportLunarCalendar()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 686
    const/high16 v0, 0x4000

    .line 687
    .local v0, FROM_VERSION:F
    sget-object v6, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 688
    .local v1, SUPPORT_LANGUAGE_CHINA:Ljava/lang/String;
    sget-object v6, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 690
    .local v2, SUPPORT_LANGUAGE_CHINESE:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 691
    .local v3, systemLanguage:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 693
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 696
    :cond_0
    sget-object v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/high16 v7, 0x4000

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_3

    .line 697
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    move v4, v5

    .line 719
    :cond_2
    :goto_0
    return v4

    .line 707
    :cond_3
    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 709
    :pswitch_0
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_4
    move v4, v5

    .line 711
    goto :goto_0

    .line 707
    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch
.end method

.method public static isSupportWeather()Z
    .locals 1

    .prologue
    .line 761
    const/4 v0, 0x1

    return v0
.end method

.method public static join(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter "delim"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 385
    .local p0, things:Ljava/util/List;,"Ljava/util/List<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 386
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 387
    .local v1, first:Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 388
    .local v3, thing:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 389
    const/4 v1, 0x0

    .line 393
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 391
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 395
    .end local v3           #thing:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;
    .locals 5
    .parameter "cursor"

    .prologue
    .line 230
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 231
    .local v2, newCursor:Landroid/database/MatrixCursor;
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    .line 232
    .local v3, numColumns:I
    new-array v0, v3, [Ljava/lang/String;

    .line 233
    .local v0, data:[Ljava/lang/String;
    const/4 v4, -0x1

    invoke-interface {p0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 234
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 235
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_0

    .line 236
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 235
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 238
    :cond_0
    invoke-virtual {v2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 240
    .end local v1           #i:I
    :cond_1
    return-object v2
.end method

.method public static onSearchRequestedLocked(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 803
    const/4 v1, 0x1

    .line 804
    .local v1, usingDefaultSearchManger:Z
    invoke-static {}, Lcom/htc/calendar/Utils;->isDefaultSearchManager()Z

    move-result v1

    .line 806
    if-nez v1, :cond_0

    .line 807
    const-string v2, "Utils"

    const-string v3, "Try to use servo search..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :try_start_0
    invoke-static {p0}, Lcom/htc/calendar/Utils;->doServoSearch(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 816
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 818
    invoke-static {p0}, Lcom/htc/calendar/Utils;->doCalendarSearch(Landroid/content/Context;)V

    .line 821
    :cond_1
    return v4

    .line 810
    :catch_0
    move-exception v0

    .line 811
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Utils"

    const-string v3, "error on Search request"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static queryExchangeLogin(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 940
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 941
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v5, "Utils"

    const-string v13, "start Query Exchange login account name..."

    invoke-static {v5, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    const-string v10, "_id"

    .line 944
    .local v10, proj_id:Ljava/lang/String;
    const-string v9, "_emailaddress"

    .line 946
    .local v9, proj_email_address:Ljava/lang/String;
    const-string v5, "content://mail/accounts"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 947
    .local v1, mailAccountUri:Landroid/net/Uri;
    const-string v3, "accounts._protocol = 4"

    .line 948
    .local v3, where:Ljava/lang/String;
    const/4 v5, 0x2

    new-array v2, v5, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v2, v12

    const-string v5, "_emailaddress"

    aput-object v5, v2, v11

    .local v2, selection:[Ljava/lang/String;
    move-object v5, v4

    .line 949
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 950
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 951
    .local v8, isLogin:Z
    if-eqz v7, :cond_4

    .line 952
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    move v8, v11

    .line 953
    :goto_0
    if-eqz v8, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 954
    const-string v4, "_emailaddress"

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 955
    .local v6, IDX_EMAIL_ADDRESS:I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/htc/calendar/Utils;->exchange_acnt_name:Ljava/lang/String;

    .line 956
    sget-object v4, Lcom/htc/calendar/Utils;->exchange_acnt_name:Ljava/lang/String;

    invoke-static {p0, v4}, Lcom/htc/calendar/Utils;->updateExchangeLoginName(Landroid/content/Context;Ljava/lang/String;)V

    .line 966
    .end local v6           #IDX_EMAIL_ADDRESS:I
    :goto_1
    invoke-static {p0, v8}, Lcom/htc/calendar/Utils;->updateIsExchangeLogin(Landroid/content/Context;Z)V

    .line 968
    if-eqz v7, :cond_1

    .line 969
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 970
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 972
    :cond_0
    const/4 v7, 0x0

    .line 974
    :cond_1
    return-void

    :cond_2
    move v8, v12

    .line 952
    goto :goto_0

    .line 959
    :cond_3
    const-string v4, ""

    invoke-static {p0, v4}, Lcom/htc/calendar/Utils;->updateExchangeLoginName(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 963
    :cond_4
    const-string v4, ""

    invoke-static {p0, v4}, Lcom/htc/calendar/Utils;->updateExchangeLoginName(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static setDefaultView(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "viewId"

    .prologue
    .line 205
    sget-object v3, Lcom/htc/calendar/CalendarApplication;->ACTIVITY_NAMES:[Ljava/lang/String;

    aget-object v0, v3, p1

    .line 207
    .local v0, activityString:Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 208
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 210
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    const/4 v3, 0x4

    if-ne p1, v3, :cond_1

    .line 215
    :cond_0
    const-string v3, "preferredDetailedView"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 220
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 221
    return-void
.end method

.method public static setFakeCalendarLockScreenExist(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "exist"

    .prologue
    .line 652
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 653
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "fake_calendar_lockscreen_exist"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 654
    return-void
.end method

.method static setSharedPreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 198
    invoke-static {p0}, Lcom/htc/calendar/CalendarPreferenceActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 199
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 200
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 201
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 202
    return-void
.end method

.method public static setStartIn(Landroid/content/Context;I)V
    .locals 8
    .parameter "context"
    .parameter "startInId"

    .prologue
    .line 1424
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1425
    .local v5, res:Landroid/content/res/Resources;
    const v7, 0x7f080029

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1426
    .local v2, defaultDayView:Ljava/lang/String;
    const v7, 0x7f06001d

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 1428
    .local v6, startIn:[Ljava/lang/String;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1430
    .local v4, prefs:Landroid/content/SharedPreferences;
    const/4 v7, 0x3

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ne p1, v7, :cond_0

    .line 1431
    sget-object v7, Lcom/htc/calendar/CalendarPreferenceActivity;->KEY_START_DAYVIEW:Ljava/lang/String;

    invoke-interface {v4, v7, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1432
    .local v1, dayView:Ljava/lang/String;
    const-string v7, "0"

    invoke-virtual {v1, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1433
    const/4 p1, 0x3

    .line 1439
    .end local v1           #dayView:Ljava/lang/String;
    :cond_0
    :goto_0
    sget-object v7, Lcom/htc/calendar/CalendarConstants;->START_IN_ACTIVITY_NAMES:[Ljava/lang/String;

    aget-object v0, v7, p1

    .line 1440
    .local v0, activityString:Ljava/lang/String;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 1441
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const-string v7, "startView"

    invoke-interface {v3, v7, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1442
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1443
    return-void

    .line 1435
    .end local v0           #activityString:Ljava/lang/String;
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    .restart local v1       #dayView:Ljava/lang/String;
    :cond_1
    const/4 p1, 0x4

    goto :goto_0
.end method

.method static setTimeToStartOfDay(Landroid/text/format/Time;)V
    .locals 1
    .parameter "time"

    .prologue
    const/4 v0, 0x0

    .line 404
    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 405
    iput v0, p0, Landroid/text/format/Time;->minute:I

    .line 406
    iput v0, p0, Landroid/text/format/Time;->hour:I

    .line 407
    return-void
.end method

.method public static setTimeZone(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "timeZone"

    .prologue
    .line 155
    sget-object v0, Lcom/htc/calendar/Utils;->mTZUtils:Lcom/htc/calendar/CalendarUtils$TimeZoneUtils;

    invoke-virtual {v0, p0, p1}, Lcom/htc/calendar/CalendarUtils$TimeZoneUtils;->setTimeZone(Landroid/content/Context;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public static setUnResponseCount(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "count"

    .prologue
    .line 1063
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1064
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "unresponse_invitation_count"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1065
    return-void
.end method

.method public static startActivity(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 4
    .parameter "context"
    .parameter "className"
    .parameter "time"

    .prologue
    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "Utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startActivity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-static {p0, p1}, Lcom/htc/calendar/Utils;->FOTA_Activity_Name_Update_Issue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 126
    const-string v1, "DayTimeGridActivity"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.htc.calendar.DayTimeGridActivity"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    :cond_0
    const-class v1, Lcom/htc/calendar/DayActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 131
    :cond_1
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string v1, "beginTime"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 133
    const/high16 v1, 0x2002

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 135
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 136
    return-void
.end method

.method public static final timeFromIntent(Landroid/content/Intent;)Landroid/text/format/Time;
    .locals 3
    .parameter "intent"

    .prologue
    .line 224
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 225
    .local v0, time:Landroid/text/format/Time;
    invoke-static {p0}, Lcom/htc/calendar/Utils;->timeFromIntentInMillis(Landroid/content/Intent;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 226
    return-object v0
.end method

.method public static final timeFromIntentInMillis(Landroid/content/Intent;)J
    .locals 8
    .parameter "intent"

    .prologue
    const-wide/16 v6, -0x1

    .line 282
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 283
    .local v0, data:Landroid/net/Uri;
    const-string v5, "beginTime"

    invoke-virtual {p0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 284
    .local v2, millis:J
    cmp-long v5, v2, v6

    if-nez v5, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 285
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    .line 286
    .local v4, path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "time"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 288
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 295
    .end local v4           #path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-gtz v5, :cond_1

    .line 296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 298
    :cond_1
    return-wide v2

    .line 289
    .restart local v4       #path:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 290
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v5, "Calendar"

    const-string v6, "timeFromIntentInMillis: Data existed but no valid time found. Using current time."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static updateDefaultInsertCalendar(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "ownerAccount"
    .parameter "type"

    .prologue
    .line 983
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 984
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 985
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "preference_defaultCalendar"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 986
    const-string v2, "preference_defaultCalendarType"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 987
    return-void
.end method

.method public static updateExchangeLoginName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "name"

    .prologue
    .line 886
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 887
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 888
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "exchange_login_name"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 889
    return-void
.end method

.method public static updateIsExchangeLogin(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "login"

    .prologue
    .line 893
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 894
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 895
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "is_exchange_login"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 896
    return-void
.end method

.method public static updateIsGoogleLogin(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "login"

    .prologue
    .line 843
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 844
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 845
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "is_google_login"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 846
    return-void
.end method
