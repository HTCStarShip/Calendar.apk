.class public Lcom/htc/calendar/CalendarPreferenceActivity;
.super Lcom/htc/preference/HtcPreferenceActivity;
.source "CalendarPreferenceActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;,
        Lcom/htc/calendar/CalendarPreferenceActivity$saveReminderToCalendarDBThread;,
        Lcom/htc/calendar/CalendarPreferenceActivity$CalendarPreference;
    }
.end annotation


# static fields
.field static final ALERT_TYPE_ALERTS:Ljava/lang/String; = "0"

.field static final ALERT_TYPE_OFF:Ljava/lang/String; = "2"

.field static final ALERT_TYPE_STATUS_BAR:Ljava/lang/String; = "1"

.field private static final APPLY_TO_ALL_CALENDARS:Ljava/lang/String; = "All calendars"

.field private static final CALENDARS_INDEX_ALERTS_RINGTONE:I = 0x8

.field private static final CALENDARS_INDEX_DISPLAY_NAME:I = 0x1

.field private static final CALENDARS_INDEX_HIDE_DECLINED:I = 0x5

.field private static final CALENDARS_INDEX_ID:I = 0x0

.field private static final CALENDARS_INDEX_REMINDER_DURATION:I = 0x7

.field private static final CALENDARS_INDEX_REMINDER_TYPE:I = 0x6

.field private static final CALENDARS_PROJECTION:[Ljava/lang/String; = null

.field public static CALENDAR_CUSTOMIZE_URI:Ljava/lang/String; = null

.field public static final Calendars_INDEX_SYNC_ACCOUNT_NAME:I = 0xa

.field public static final Calendars_INDEX_SYNC_ACCOUNT_TYPE:I = 0x9

.field private static final DEBUG:Z = false

.field static final DEFAULT_DETAILED_VIEW:Ljava/lang/String; = null

.field static final DEFAULT_START_VIEW:Ljava/lang/String; = null

.field public static final KEY_ALERTS_RINGTONE:Ljava/lang/String; = "preferences_alerts_ringtone"

.field static final KEY_ALERTS_TYPE:Ljava/lang/String; = "preferences_alerts_type"

.field static final KEY_ALERTS_VIBRATE_WHEN:Ljava/lang/String; = "preferences_alerts_vibrateWhen"

.field private static final KEY_CALENDARS_ENTRY:Ljava/lang/String; = "key_calendars_entry"

.field private static final KEY_CALENDARS_ENTRY_VAULES:Ljava/lang/String; = "key_calendars_entry_values"

.field public static KEY_CITY_CODE:Ljava/lang/String; = null

.field public static KEY_CITY_COUNT:Ljava/lang/String; = null

.field public static KEY_CITY_LATITUDE:Ljava/lang/String; = null

.field public static KEY_CITY_LONGITUDE:Ljava/lang/String; = null

.field public static KEY_CITY_NAME:Ljava/lang/String; = null

.field public static final KEY_CUSTOMIZATION:Ljava/lang/String; = "preference_customization"

.field static final KEY_DEFAULT_CALENDAR:Ljava/lang/String; = "preference_defaultCalendar"

.field static final KEY_DEFAULT_CALENDAR_TYPE:Ljava/lang/String; = "preference_defaultCalendarType"

.field static final KEY_DEFAULT_REMINDER:Ljava/lang/String; = "preferences_default_reminder"

.field static final KEY_DETAILED_VIEW:Ljava/lang/String; = "preferredDetailedView"

.field static final KEY_HIDE_DECLINED:Ljava/lang/String; = "preferences_hide_declined"

.field static final KEY_HOME_TZ:Ljava/lang/String; = "preferences_home_tz"

.field static final KEY_HOME_TZ_ENABLED:Ljava/lang/String; = "preferences_home_tz_enabled"

.field static final KEY_LAST_SYNC_WHEN_OPEN:Ljava/lang/String; = "preferences_last_sync_when_open"

.field public static KEY_LUNAR_ENABLE:Ljava/lang/String; = null

.field public static KEY_START_DAYVIEW:Ljava/lang/String; = null

.field static final KEY_START_VIEW:Ljava/lang/String; = "startView"

.field public static KEY_START_WEEKDAY:Ljava/lang/String; = null

.field public static final KEY_WEATHER_DEFAULT_INDEX:Ljava/lang/String; = "preference_weather_default_index"

.field public static KEY_WEATHER_ENABLE:Ljava/lang/String; = null

.field public static final KEY_WEATHER_ENABLED:Ljava/lang/String; = "preference_weather_enable"

.field public static final KEY_WEATHER_SELECTED_CITY_CODE:Ljava/lang/String; = "preference_weather_city_code"

.field public static final KEY_WEATHER_SELECTED_CITY_NAME:Ljava/lang/String; = "preference_weather_city_name"

.field public static final LOCATION_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.htc.htclocationservice"

.field private static final QUERY_COMPLETE:I = 0x1

.field private static final QUERY_EMPTY:I = 0x2

.field private static final SHARED_PREFS_NAME:Ljava/lang/String; = "com.htc.calendar_preferences"

.field private static final TAG:Ljava/lang/String; = "CalendarPreferenceActivity"

.field public static final WEATHER_APP_PACKAGE_NAME:Ljava/lang/String; = "com.htc.elroy.Weather"

.field public static final defaultRingTone:Ljava/lang/String; = "content://settings/system/cal_notification"


# instance fields
.field private final ALL_CALENDAR_ID:J

.field private KEY_APPLY_SETTINGS_TO:Ljava/lang/String;

.field private KEY_APPLY_TO_ALL_CALENDARS:Ljava/lang/String;

.field private calendar_count:I

.field private cityListCode:[Ljava/lang/String;

.field private cityListLatitude:[Ljava/lang/String;

.field private cityListLongitude:[Ljava/lang/String;

.field private cityListName:[Ljava/lang/String;

.field private entries:[Ljava/lang/String;

.field private entryValues:[Ljava/lang/String;

.field mAlertDuration:Lcom/htc/preference/HtcListPreference;

.field mAlertType:Lcom/htc/preference/HtcListPreference;

.field mApplyToAllCalendar:Lcom/htc/preference/HtcCheckBoxPreference;

.field mCalendars:Lcom/htc/preference/HtcListPreference;

.field private mCalendarsCursor:Landroid/database/Cursor;

.field mCityList:Lcom/htc/calendar/widget/HtcListPreferenceContentChanged;

.field private mCityListDialog:Landroid/app/Dialog;

.field private mCurrentCalendarId:J

.field private mCurrentLabel:Ljava/lang/String;

.field mEnableLunar:Lcom/htc/preference/HtcCheckBoxPreference;

.field mEnableWeather:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mFirstUpdatePref:Z

.field mHideDeclined:Lcom/htc/preference/HtcCheckBoxPreference;

.field private mPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/calendar/CalendarPreferenceActivity$CalendarPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryHandler:Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;

.field private mResources:Landroid/content/res/Resources;

.field mRingtone:Lcom/htc/calendar/preference/HtcRingtonePreference2;

.field mStartWeekDay:Lcom/htc/preference/HtcListPreference;

.field private mSupportWeather:Z

.field private mWeatherHandler:Landroid/os/Handler;

.field private onCityListClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

.field reminderPreference:Lcom/htc/preference/HtcPreferenceCategory;

.field private selectedCityCode:Ljava/lang/String;

.field private selectedCityName:Ljava/lang/String;

.field private syncAccountTypeList:[Ljava/lang/String;

.field viewPreference:Lcom/htc/preference/HtcPreferenceCategory;

.field private weather_locs:[Lcom/htc/util/weather/WeatherLocation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 88
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "calendar_displayName"

    aput-object v2, v0, v1

    const-string v1, "calendar_color"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "visible"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "sync_events"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "hide_declined"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "reminder_type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "reminder_duration"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "alerts_ringtone"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "account_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/calendar/CalendarPreferenceActivity;->CALENDARS_PROJECTION:[Ljava/lang/String;

    .line 180
    const-string v0, "preferences_start_dayview"

    sput-object v0, Lcom/htc/calendar/CalendarPreferenceActivity;->KEY_START_DAYVIEW:Ljava/lang/String;

    .line 181
    const-string v0, "preferences_weather_enable"

    sput-object v0, Lcom/htc/calendar/CalendarPreferenceActivity;->KEY_WEATHER_ENABLE:Ljava/lang/String;

    .line 182
    const-string v0, "preferences_lunar_enable"

    sput-object v0, Lcom/htc/calendar/CalendarPreferenceActivity;->KEY_LUNAR_ENABLE:Ljava/lang/String;

    .line 183
    const-string v0, "preferences_weather_city_list"

    sput-object v0, Lcom/htc/calendar/CalendarPreferenceActivity;->KEY_CITY_CODE:Ljava/lang/String;

    .line 184
    const-string v0, "preferences_weather_city_name"

    sput-object v0, Lcom/htc/calendar/CalendarPreferenceActivity;->KEY_CITY_NAME:Ljava/lang/String;

    .line 185
    const-string v0, "preferences_weather_city_latitude"

    sput-object v0, Lcom/htc/calendar/CalendarPreferenceActivity;->KEY_CITY_LATITUDE:Ljava/lang/String;

    .line 186
    const-string v0, "preferences_weather_city_longitude"

    sput-object v0, Lcom/htc/calendar/CalendarPreferenceActivity;->KEY_CITY_LONGITUDE:Ljava/lang/String;

    .line 187
    const-string v0, "preferences_start_weekday"

    sput-object v0, Lcom/htc/calendar/CalendarPreferenceActivity;->KEY_START_WEEKDAY:Ljava/lang/String;

    .line 188
    const-string v0, "preferences_city_count"

    sput-object v0, Lcom/htc/calendar/CalendarPreferenceActivity;->KEY_CITY_COUNT:Ljava/lang/String;

    .line 208
    sget-object v0, Lcom/htc/calendar/CalendarApplication;->ACTIVITY_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v3

    sput-object v0, Lcom/htc/calendar/CalendarPreferenceActivity;->DEFAULT_START_VIEW:Ljava/lang/String;

    .line 210
    sget-object v0, Lcom/htc/calendar/CalendarApplication;->ACTIVITY_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v4

    sput-object v0, Lcom/htc/calendar/CalendarPreferenceActivity;->DEFAULT_DETAILED_VIEW:Ljava/lang/String;

    .line 446
    const-string v0, "content://customization_settings/SettingTable/application_Calendar"

    sput-object v0, Lcom/htc/calendar/CalendarPreferenceActivity;->CALENDAR_CUSTOMIZE_URI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-direct {p0}, Lcom/htc/preference/HtcPreferenceActivity;-><init>()V

    .line 123
    iput-object v2, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->viewPreference:Lcom/htc/preference/HtcPreferenceCategory;

    .line 124
    iput-object v2, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->reminderPreference:Lcom/htc/preference/HtcPreferenceCategory;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mPreferences:Ljava/util/ArrayList;

    .line 147
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->ALL_CALENDAR_ID:J

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mFirstUpdatePref:Z

    .line 163
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCurrentLabel:Ljava/lang/String;

    .line 190
    const-string v0, "preferences_apply_settings_to"

    iput-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->KEY_APPLY_SETTINGS_TO:Ljava/lang/String;

    .line 191
    const-string v0, "preferences_apply_settings_to_all_calendar"

    iput-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->KEY_APPLY_TO_ALL_CALENDARS:Ljava/lang/String;

    .line 1205
    new-instance v0, Lcom/htc/calendar/CalendarPreferenceActivity$3;

    invoke-direct {v0, p0}, Lcom/htc/calendar/CalendarPreferenceActivity$3;-><init>(Lcom/htc/calendar/CalendarPreferenceActivity;)V

    iput-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mWeatherHandler:Landroid/os/Handler;

    .line 1508
    iput-object v2, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCityListDialog:Landroid/app/Dialog;

    .line 1510
    new-instance v0, Lcom/htc/calendar/CalendarPreferenceActivity$4;

    invoke-direct {v0, p0}, Lcom/htc/calendar/CalendarPreferenceActivity$4;-><init>(Lcom/htc/calendar/CalendarPreferenceActivity;)V

    iput-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->onCityListClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    return-void
.end method

.method public static SaveRingtone(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .parameter "ringtone"
    .parameter "context"

    .prologue
    .line 1539
    invoke-static {p1}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1541
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "preferences_alerts_ringtone"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1543
    return-void
.end method

.method static synthetic access$000(Lcom/htc/calendar/CalendarPreferenceActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/htc/calendar/CalendarPreferenceActivity;->saveLunarSettings(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/htc/calendar/CalendarPreferenceActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/htc/calendar/CalendarPreferenceActivity;->getWeatherCityList()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/htc/calendar/CalendarPreferenceActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mPreferences:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/htc/calendar/CalendarPreferenceActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mFirstUpdatePref:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/htc/calendar/CalendarPreferenceActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCurrentCalendarId:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/htc/calendar/CalendarPreferenceActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-wide p1, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCurrentCalendarId:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/htc/calendar/CalendarPreferenceActivity;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/htc/calendar/CalendarPreferenceActivity;->reloadChildPreferences(J)V

    return-void
.end method

.method static synthetic access$1400(Lcom/htc/calendar/CalendarPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/htc/calendar/CalendarPreferenceActivity;->updateCalendarPreferences()V

    return-void
.end method

.method static synthetic access$1502(Lcom/htc/calendar/CalendarPreferenceActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCityListDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$200(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-static {p0, p1}, Lcom/htc/calendar/CalendarPreferenceActivity;->saveReminderToCalendarDBLocked(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/htc/calendar/CalendarPreferenceActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/htc/calendar/CalendarPreferenceActivity;->initWeather(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/htc/calendar/CalendarPreferenceActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCalendarsCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$402(Lcom/htc/calendar/CalendarPreferenceActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCalendarsCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$502(Lcom/htc/calendar/CalendarPreferenceActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput p1, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->calendar_count:I

    return p1
.end method

.method static synthetic access$600(Lcom/htc/calendar/CalendarPreferenceActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/htc/calendar/CalendarPreferenceActivity;->debug(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/htc/calendar/CalendarPreferenceActivity;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->entries:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/htc/calendar/CalendarPreferenceActivity;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->entries:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/htc/calendar/CalendarPreferenceActivity;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->entryValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/htc/calendar/CalendarPreferenceActivity;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->entryValues:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/htc/calendar/CalendarPreferenceActivity;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->syncAccountTypeList:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/htc/calendar/CalendarPreferenceActivity;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->syncAccountTypeList:[Ljava/lang/String;

    return-object p1
.end method

.method public static byteArray2Bundle([B)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 713
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 714
    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p0

    invoke-virtual {v1, p0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 715
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 716
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 717
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 718
    const/4 v0, 0x0

    .line 720
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 719
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_0
.end method

.method public static checkHtcCustomization(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 506
    invoke-static {p0}, Lcom/htc/calendar/CalendarPreferenceActivity;->didHtcCustomizationDone(Landroid/content/Context;)Z

    move-result v1

    .line 507
    .local v1, didDone:Z
    if-nez v1, :cond_0

    .line 508
    sget-object v2, Lcom/htc/calendar/CalendarPreferenceActivity;->CALENDAR_CUSTOMIZE_URI:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/htc/calendar/CalendarPreferenceActivity;->getCustomizationData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 509
    .local v0, bundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 510
    invoke-static {v0, p0}, Lcom/htc/calendar/CalendarPreferenceActivity;->parseBundle(Landroid/os/Bundle;Landroid/content/Context;)V

    .line 512
    const/4 v2, 0x1

    invoke-static {v2, p0}, Lcom/htc/calendar/CalendarPreferenceActivity;->saveHtcCustomization(ZLandroid/content/Context;)V

    .line 515
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method private debug(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 223
    return-void
.end method

.method public static didHtcCustomizationDone(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 461
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 462
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-static {p0, v0}, Lcom/htc/calendar/CalendarPreferenceActivity;->didHtcCustomizationDone(Landroid/content/Context;Landroid/content/SharedPreferences;)Z

    move-result v1

    return v1
.end method

.method public static didHtcCustomizationDone(Landroid/content/Context;Landroid/content/SharedPreferences;)Z
    .locals 3
    .parameter "context"
    .parameter "prefs"

    .prologue
    .line 456
    const-string v1, "preference_customization"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 457
    .local v0, bCustomization:Z
    return v0
.end method

.method public static getAlertType(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 1180
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1181
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "preferences_alerts_type"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCityCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 1150
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1151
    .local v0, prefs:Landroid/content/SharedPreferences;
    sget-object v1, Lcom/htc/calendar/CalendarPreferenceActivity;->KEY_CITY_CODE:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getCityCount()I
    .locals 3

    .prologue
    .line 1099
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1100
    .local v0, prefs:Landroid/content/SharedPreferences;
    sget-object v1, Lcom/htc/calendar/CalendarPreferenceActivity;->KEY_CITY_COUNT:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getCityLatitude(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 1155
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1156
    .local v0, prefs:Landroid/content/SharedPreferences;
    sget-object v1, Lcom/htc/calendar/CalendarPreferenceActivity;->KEY_CITY_LATITUDE:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCityLongitude(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 1160
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1161
    .local v0, prefs:Landroid/content/SharedPreferences;
    sget-object v1, Lcom/htc/calendar/CalendarPreferenceActivity;->KEY_CITY_LONGITUDE:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCityName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 1140
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1141
    .local v0, prefs:Landroid/content/SharedPreferences;
    sget-object v1, Lcom/htc/calendar/CalendarPreferenceActivity;->KEY_CITY_NAME:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCustomizationData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 11
    .parameter "context"
    .parameter "uriString"
    .parameter "selection"

    .prologue
    const/4 v2, 0x0

    .line 650
    const/4 v1, 0x0

    .line 651
    .local v1, uri:Landroid/net/Uri;
    if-nez p0, :cond_1

    .line 709
    :cond_0
    :goto_0
    return-object v2

    .line 656
    :cond_1
    if-eqz p1, :cond_0

    .line 659
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 662
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, p2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 665
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_2

    .line 666
    const-string v0, "CalendarPreferenceActivity"

    const-string v3, "Failed to get cursor"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 670
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 671
    const-string v0, "CalendarPreferenceActivity"

    const-string v3, "cursor size is 0"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 673
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 675
    :cond_3
    const/4 v7, 0x0

    .line 676
    goto :goto_0

    .line 679
    :cond_4
    const-string v0, "value"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 680
    .local v10, nValueIdx:I
    const/4 v0, -0x1

    if-ne v0, v10, :cond_6

    .line 681
    const-string v0, "CalendarPreferenceActivity"

    const-string v3, "no customized data support"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 683
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 685
    :cond_5
    const/4 v7, 0x0

    .line 686
    goto :goto_0

    .line 688
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 690
    const/4 v8, 0x0

    .line 691
    .local v8, data:[B
    const/4 v6, 0x0

    .line 694
    .local v6, bundle:Landroid/os/Bundle;
    :try_start_0
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 695
    invoke-static {v8}, Lcom/htc/calendar/CalendarPreferenceActivity;->byteArray2Bundle([B)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 701
    if-eqz v7, :cond_8

    .line 702
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 703
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 705
    :cond_7
    const/4 v7, 0x0

    :cond_8
    :goto_1
    move-object v2, v6

    .line 709
    goto :goto_0

    .line 696
    :catch_0
    move-exception v9

    .line 697
    .local v9, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "CalendarPreferenceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load customize URI failed, get exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 699
    const/4 v6, 0x0

    .line 701
    if-eqz v7, :cond_8

    .line 702
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_9

    .line 703
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 705
    :cond_9
    const/4 v7, 0x0

    goto :goto_1

    .line 701
    .end local v9           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_b

    .line 702
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_a

    .line 703
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 705
    :cond_a
    const/4 v7, 0x0

    :cond_b
    throw v0
.end method

.method public static getLastSyncOnOpen(Landroid/content/Context;)J
    .locals 4
    .parameter "context"

    .prologue
    .line 1523
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1524
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "preferences_last_sync_when_open"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public static getLunarSettings(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 1129
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1130
    .local v0, prefs:Landroid/content/SharedPreferences;
    sget-object v1, Lcom/htc/calendar/CalendarPreferenceActivity;->KEY_LUNAR_ENABLE:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private getPresetIndex()I
    .locals 3

    .prologue
    .line 1134
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1135
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "preference_weather_default_index"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getReminderDuration(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 1190
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1191
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "preferences_default_reminder"

    const-string v2, "10"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getRingtone(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 1533
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1534
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "preferences_alerts_ringtone"

    const-string v2, "content://settings/system/cal_notification"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .parameter "context"

    .prologue
    .line 227
    const-string v0, "com.htc.calendar_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getStartWeekDay(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 1170
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1171
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-static {p0, v0}, Lcom/htc/calendar/CalendarPreferenceActivity;->getStartWeekDay(Landroid/content/Context;Landroid/content/SharedPreferences;)I

    move-result v1

    return v1
.end method

.method public static getStartWeekDay(Landroid/content/Context;Landroid/content/SharedPreferences;)I
    .locals 3
    .parameter "context"
    .parameter "prefs"

    .prologue
    .line 1165
    sget-object v1, Lcom/htc/calendar/CalendarPreferenceActivity;->KEY_START_WEEKDAY:Ljava/lang/String;

    const-string v2, "1"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1166
    .local v0, start_week_day:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private getWeatherCityList()I
    .locals 14

    .prologue
    const/4 v11, 0x2

    const/4 v13, 0x1

    const/4 v9, 0x0

    .line 952
    new-array v6, v11, [Ljava/lang/String;

    const-string v10, "com.htc.htclocationservice"

    aput-object v10, v6, v9

    const-string v10, "com.htc.elroy.Weather"

    aput-object v10, v6, v13

    .line 953
    .local v6, pkgname:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v10, v6}, Lcom/htc/util/weather/WeatherUtility;->loadMultiAppLocations(Landroid/content/ContentResolver;[Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v10

    iput-object v10, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->weather_locs:[Lcom/htc/util/weather/WeatherLocation;

    .line 954
    iget-object v10, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->weather_locs:[Lcom/htc/util/weather/WeatherLocation;

    array-length v1, v10

    .line 956
    .local v1, count:I
    if-nez v1, :cond_0

    .line 958
    iget-object v10, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mWeatherHandler:Landroid/os/Handler;

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move v1, v9

    .line 997
    .end local v1           #count:I
    :goto_0
    return v1

    .line 962
    .restart local v1       #count:I
    :cond_0
    invoke-direct {p0, v1}, Lcom/htc/calendar/CalendarPreferenceActivity;->saveCityCount(I)V

    .line 963
    new-array v10, v1, [Ljava/lang/String;

    iput-object v10, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->cityListName:[Ljava/lang/String;

    .line 964
    new-array v10, v1, [Ljava/lang/String;

    iput-object v10, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->cityListCode:[Ljava/lang/String;

    .line 965
    new-array v10, v1, [Ljava/lang/String;

    iput-object v10, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->cityListLatitude:[Ljava/lang/String;

    .line 966
    new-array v10, v1, [Ljava/lang/String;

    iput-object v10, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->cityListLongitude:[Ljava/lang/String;

    .line 967
    const/4 v5, 0x0

    .line 969
    .local v5, nIdx:I
    invoke-static {}, Lcom/htc/util/weather/WSPUtility;->generateWSPReqestForCurrentLocation()Lcom/htc/util/weather/WSPRequest;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/htc/util/weather/WSPUtility;->request(Landroid/content/Context;Lcom/htc/util/weather/WSPRequest;)Lcom/htc/util/weather/WSPData;

    move-result-object v8

    .line 972
    .local v8, tempWSPdata:Lcom/htc/util/weather/WSPData;
    iget-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->weather_locs:[Lcom/htc/util/weather/WeatherLocation;

    .local v0, arr$:[Lcom/htc/util/weather/WeatherLocation;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v4, v0, v2

    .line 973
    .local v4, loc:Lcom/htc/util/weather/WeatherLocation;
    iget-object v10, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->cityListName:[Ljava/lang/String;

    invoke-virtual {v4}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    .line 974
    iget-object v10, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->cityListName:[Ljava/lang/String;

    aget-object v10, v10, v5

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    if-nez v5, :cond_1

    .line 975
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 976
    .local v7, res:Landroid/content/res/Resources;
    iget-object v10, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->cityListName:[Ljava/lang/String;

    const v11, 0x7f080035

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    .line 979
    .end local v7           #res:Landroid/content/res/Resources;
    :cond_1
    if-nez v5, :cond_2

    invoke-static {p0}, Lcom/htc/calendar/Utils;->hasCurrentLocation(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 980
    iget-object v10, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->cityListCode:[Ljava/lang/String;

    const-string v11, "Current"

    aput-object v11, v10, v5

    .line 984
    :goto_2
    iget-object v10, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->cityListLatitude:[Ljava/lang/String;

    invoke-virtual {v4}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    .line 985
    iget-object v10, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->cityListLongitude:[Ljava/lang/String;

    invoke-virtual {v4}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    .line 986
    const-string v10, "CalendarPreferenceActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Name:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/htc/util/weather/WeatherLocation;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " Code:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " Latitude:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " Longitude:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    add-int/lit8 v5, v5, 0x1

    .line 972
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 982
    :cond_2
    iget-object v10, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->cityListCode:[Ljava/lang/String;

    invoke-virtual {v4}, Lcom/htc/util/weather/WeatherLocation;->getCode()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v5

    goto :goto_2

    .line 990
    .end local v4           #loc:Lcom/htc/util/weather/WeatherLocation;
    :cond_3
    invoke-static {p0}, Lcom/htc/calendar/Utils;->hasCurrentLocation(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 991
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->cityListName:[Ljava/lang/String;

    aget-object v12, v11, v9

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v12, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCurrentLabel:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v11, v9

    .line 994
    :cond_4
    iget-object v9, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mWeatherHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mWeatherHandler:Landroid/os/Handler;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v13, v11}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method private haveLocationCity()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 939
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "com.htc.htclocationservice"

    invoke-static {v3, v4}, Lcom/htc/util/weather/WeatherUtility;->loadLocations(Landroid/content/ContentResolver;Ljava/lang/String;)[Lcom/htc/util/weather/WeatherLocation;

    move-result-object v1

    .line 940
    .local v1, weather_locs:[Lcom/htc/util/weather/WeatherLocation;
    array-length v0, v1

    .line 942
    .local v0, nCount:I
    if-nez v0, :cond_0

    .line 946
    :goto_0
    return v2

    .line 945
    :cond_0
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lcom/htc/util/weather/WeatherLocation;->getLatitude()Ljava/lang/String;

    move-result-object v3

    aget-object v2, v1, v2

    invoke-virtual {v2}, Lcom/htc/util/weather/WeatherLocation;->getLongitude()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/htc/calendar/CalendarPreferenceActivity;->saveCityLatLong(Ljava/lang/String;Ljava/lang/String;)V

    .line 946
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private havePreviousLatLong()Z
    .locals 5

    .prologue
    .line 1104
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1105
    .local v2, prefs:Landroid/content/SharedPreferences;
    sget-object v3, Lcom/htc/calendar/CalendarPreferenceActivity;->KEY_CITY_LATITUDE:Ljava/lang/String;

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1106
    .local v0, latitude:Ljava/lang/String;
    sget-object v3, Lcom/htc/calendar/CalendarPreferenceActivity;->KEY_CITY_LONGITUDE:Ljava/lang/String;

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1108
    .local v1, longitude:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1110
    :cond_0
    const/4 v3, 0x0

    .line 1113
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private initWeather(I)V
    .locals 7
    .parameter "count"

    .prologue
    const/4 v5, 0x0

    .line 1001
    if-nez p1, :cond_1

    .line 1002
    iget-object v4, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCityList:Lcom/htc/calendar/widget/HtcListPreferenceContentChanged;

    invoke-virtual {v4, v5}, Lcom/htc/calendar/widget/HtcListPreferenceContentChanged;->setEnabled(Z)V

    .line 1076
    :cond_0
    :goto_0
    return-void

    .line 1004
    :cond_1
    if-eqz p1, :cond_7

    iget-object v4, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mEnableWeather:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1005
    iget-object v4, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCityList:Lcom/htc/calendar/widget/HtcListPreferenceContentChanged;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/calendar/widget/HtcListPreferenceContentChanged;->setEnabled(Z)V

    .line 1010
    :goto_1
    iget-object v4, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCityList:Lcom/htc/calendar/widget/HtcListPreferenceContentChanged;

    iget-object v5, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->cityListName:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/htc/calendar/widget/HtcListPreferenceContentChanged;->setEntries([Ljava/lang/CharSequence;)V

    .line 1011
    iget-object v4, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCityList:Lcom/htc/calendar/widget/HtcListPreferenceContentChanged;

    iget-object v5, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->cityListCode:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/htc/calendar/widget/HtcListPreferenceContentChanged;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1014
    invoke-direct {p0}, Lcom/htc/calendar/CalendarPreferenceActivity;->getPresetIndex()I

    move-result v1

    .line 1016
    .local v1, defaultIndex:I
    iget-object v4, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->cityListName:[Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1018
    iget-object v4, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->cityListName:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_3

    .line 1020
    invoke-direct {p0}, Lcom/htc/calendar/CalendarPreferenceActivity;->haveLocationCity()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->cityListName:[Ljava/lang/String;

    array-length v4, v4

    if-gt v4, v1, :cond_3

    .line 1021
    :cond_2
    const/4 v1, 0x0

    .line 1032
    :cond_3
    invoke-static {p0}, Lcom/htc/calendar/CalendarPreferenceActivity;->getCityCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1038
    .local v0, defaultCityCode:Ljava/lang/String;
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_4

    .line 1039
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1043
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1044
    iget-object v4, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCityList:Lcom/htc/calendar/widget/HtcListPreferenceContentChanged;

    invoke-virtual {v4, v0}, Lcom/htc/calendar/widget/HtcListPreferenceContentChanged;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 1045
    if-gez v1, :cond_5

    .line 1046
    const-string v4, "CalendarPreferenceActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t find code: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    const/4 v1, 0x0

    .line 1050
    :cond_5
    iget-object v4, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->cityListCode:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_8

    iget-object v4, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->cityListCode:[Ljava/lang/String;

    invoke-static {p0, v0, v4}, Lcom/htc/calendar/Utils;->isExistingCitycode(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1054
    invoke-direct {p0, v0}, Lcom/htc/calendar/CalendarPreferenceActivity;->saveCityCode(Ljava/lang/String;)V

    .line 1058
    :goto_2
    iget-object v4, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCityList:Lcom/htc/calendar/widget/HtcListPreferenceContentChanged;

    invoke-virtual {v4, v1}, Lcom/htc/calendar/widget/HtcListPreferenceContentChanged;->setValueIndex(I)V

    .line 1061
    :cond_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1062
    const-string v4, ""

    invoke-direct {p0, v4}, Lcom/htc/calendar/CalendarPreferenceActivity;->saveCityCode(Ljava/lang/String;)V

    .line 1063
    iget-object v4, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->cityListLatitude:[Ljava/lang/String;

    aget-object v2, v4, v1

    .line 1064
    .local v2, latitude:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->cityListLongitude:[Ljava/lang/String;

    aget-object v3, v4, v1

    .line 1065
    .local v3, longitude:Ljava/lang/String;
    invoke-direct {p0, v2, v3}, Lcom/htc/calendar/CalendarPreferenceActivity;->saveCityLatLong(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    .end local v2           #latitude:Ljava/lang/String;
    .end local v3           #longitude:Ljava/lang/String;
    :goto_3
    iget-object v4, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCityList:Lcom/htc/calendar/widget/HtcListPreferenceContentChanged;

    iget-object v5, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->cityListName:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v4, v5}, Lcom/htc/calendar/widget/HtcListPreferenceContentChanged;->setSummary(Ljava/lang/CharSequence;)V

    .line 1072
    iget-object v4, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCityList:Lcom/htc/calendar/widget/HtcListPreferenceContentChanged;

    invoke-virtual {v4, v1}, Lcom/htc/calendar/widget/HtcListPreferenceContentChanged;->setValueIndex(I)V

    goto/16 :goto_0

    .line 1007
    .end local v0           #defaultCityCode:Ljava/lang/String;
    .end local v1           #defaultIndex:I
    :cond_7
    iget-object v4, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCityList:Lcom/htc/calendar/widget/HtcListPreferenceContentChanged;

    invoke-virtual {v4, v5}, Lcom/htc/calendar/widget/HtcListPreferenceContentChanged;->setEnabled(Z)V

    goto/16 :goto_1

    .line 1056
    .restart local v0       #defaultCityCode:Ljava/lang/String;
    .restart local v1       #defaultIndex:I
    :cond_8
    const/4 v1, 0x0

    goto :goto_2

    .line 1067
    :cond_9
    invoke-direct {p0, v0}, Lcom/htc/calendar/CalendarPreferenceActivity;->saveCityCode(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static parseBundle(Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 21
    .parameter "bundle"
    .parameter "context"

    .prologue
    .line 520
    const-string v18, "reminder"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v13

    .line 521
    .local v13, reminderList:Landroid/os/Bundle;
    if-eqz v13, :cond_2

    invoke-virtual {v13}, Landroid/os/Bundle;->size()I

    move-result v18

    if-lez v18, :cond_2

    .line 523
    const-string v10, "plenty_set1"

    .line 524
    .local v10, key_plenty:Ljava/lang/String;
    invoke-virtual {v13, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v12

    .line 526
    .local v12, reminder:Landroid/os/Bundle;
    const-string v3, "reminder_type"

    .line 527
    .local v3, KEY_REMINDER_TYPE:Ljava/lang/String;
    const-string v2, "reminder_time"

    .line 530
    .local v2, KEY_REMINDER_TIME:Ljava/lang/String;
    const-string v15, "1"

    .line 531
    .local v15, type:Ljava/lang/String;
    invoke-virtual {v12, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 532
    invoke-virtual {v12, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 534
    invoke-static {v3, v15}, Lcom/htc/calendar/CalendarPreferenceActivity;->printCustomizeData(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    :goto_0
    move-object/from16 v0, p1

    invoke-static {v15, v0}, Lcom/htc/calendar/CalendarPreferenceActivity;->saveReminderType(Ljava/lang/String;Landroid/content/Context;)V

    .line 541
    const-string v8, "10"

    .line 542
    .local v8, duration:Ljava/lang/String;
    invoke-virtual {v12, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 543
    invoke-virtual {v12, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 545
    invoke-static {v2, v8}, Lcom/htc/calendar/CalendarPreferenceActivity;->printCustomizeData(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    :goto_1
    move-object/from16 v0, p1

    invoke-static {v8, v0}, Lcom/htc/calendar/CalendarPreferenceActivity;->saveReminderToCalendarDB(Ljava/lang/String;Landroid/content/Context;)V

    .line 551
    move-object/from16 v0, p1

    invoke-static {v8, v0}, Lcom/htc/calendar/CalendarPreferenceActivity;->saveReminderDuration(Ljava/lang/String;Landroid/content/Context;)V

    .line 556
    .end local v2           #KEY_REMINDER_TIME:Ljava/lang/String;
    .end local v3           #KEY_REMINDER_TYPE:Ljava/lang/String;
    .end local v8           #duration:Ljava/lang/String;
    .end local v10           #key_plenty:Ljava/lang/String;
    .end local v12           #reminder:Landroid/os/Bundle;
    .end local v15           #type:Ljava/lang/String;
    :goto_2
    const-string v18, "view"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v17

    .line 557
    .local v17, viewList:Landroid/os/Bundle;
    if-eqz v17, :cond_6

    invoke-virtual/range {v17 .. v17}, Landroid/os/Bundle;->size()I

    move-result v18

    if-lez v18, :cond_6

    .line 558
    const-string v18, "CalendarPreferenceActivity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "viewList.size():"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Landroid/os/Bundle;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const-string v10, "plenty_set1"

    .line 560
    .restart local v10       #key_plenty:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v16

    .line 562
    .local v16, view:Landroid/os/Bundle;
    const-string v4, "include_weather"

    .line 563
    .local v4, KEY_VIEW_INCLUDE_WEATHER:Ljava/lang/String;
    const-string v5, "preset_city"

    .line 564
    .local v5, KEY_VIEW_PRESET_CITY:Ljava/lang/String;
    const-string v7, "start_weekday"

    .line 565
    .local v7, KEY_VIEW_START_WEEKDAY:Ljava/lang/String;
    const-string v6, "start_in"

    .line 568
    .local v6, KEY_VIEW_START_IN:Ljava/lang/String;
    const-string v9, "false"

    .line 569
    .local v9, includeWeather:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 570
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 571
    move-object/from16 v0, p1

    invoke-static {v9, v0}, Lcom/htc/calendar/CalendarPreferenceActivity;->saveIncludeWeather(Ljava/lang/String;Landroid/content/Context;)V

    .line 573
    invoke-static {v4, v9}, Lcom/htc/calendar/CalendarPreferenceActivity;->printCustomizeData(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    :goto_3
    const-string v11, "0"

    .line 580
    .local v11, preset_city:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 581
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 583
    invoke-static {v5, v11}, Lcom/htc/calendar/CalendarPreferenceActivity;->printCustomizeData(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/htc/calendar/CalendarPreferenceActivity;->saveCityIndex(ILandroid/content/Context;)V

    .line 592
    :goto_4
    const-string v14, "1"

    .line 593
    .local v14, start_weekday:Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 594
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 596
    invoke-static {v7, v14}, Lcom/htc/calendar/CalendarPreferenceActivity;->printCustomizeData(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    :goto_5
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/htc/calendar/CalendarPreferenceActivity;->saveStartWeekDay(ILandroid/content/Context;)V

    .line 606
    .end local v4           #KEY_VIEW_INCLUDE_WEATHER:Ljava/lang/String;
    .end local v5           #KEY_VIEW_PRESET_CITY:Ljava/lang/String;
    .end local v6           #KEY_VIEW_START_IN:Ljava/lang/String;
    .end local v7           #KEY_VIEW_START_WEEKDAY:Ljava/lang/String;
    .end local v9           #includeWeather:Ljava/lang/String;
    .end local v10           #key_plenty:Ljava/lang/String;
    .end local v11           #preset_city:Ljava/lang/String;
    .end local v14           #start_weekday:Ljava/lang/String;
    .end local v16           #view:Landroid/os/Bundle;
    :goto_6
    return-void

    .line 536
    .end local v17           #viewList:Landroid/os/Bundle;
    .restart local v2       #KEY_REMINDER_TIME:Ljava/lang/String;
    .restart local v3       #KEY_REMINDER_TYPE:Ljava/lang/String;
    .restart local v10       #key_plenty:Ljava/lang/String;
    .restart local v12       #reminder:Landroid/os/Bundle;
    .restart local v15       #type:Ljava/lang/String;
    :cond_0
    const-string v18, "CalendarPreferenceActivity"

    const-string v19, "Can\'t get type"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 547
    .restart local v8       #duration:Ljava/lang/String;
    :cond_1
    const-string v18, "CalendarPreferenceActivity"

    const-string v19, "Can\'t get duration"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 553
    .end local v2           #KEY_REMINDER_TIME:Ljava/lang/String;
    .end local v3           #KEY_REMINDER_TYPE:Ljava/lang/String;
    .end local v8           #duration:Ljava/lang/String;
    .end local v10           #key_plenty:Ljava/lang/String;
    .end local v12           #reminder:Landroid/os/Bundle;
    .end local v15           #type:Ljava/lang/String;
    :cond_2
    const-string v18, "CalendarPreferenceActivity"

    const-string v19, "reminder is null or reminder is 0"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 575
    .restart local v4       #KEY_VIEW_INCLUDE_WEATHER:Ljava/lang/String;
    .restart local v5       #KEY_VIEW_PRESET_CITY:Ljava/lang/String;
    .restart local v6       #KEY_VIEW_START_IN:Ljava/lang/String;
    .restart local v7       #KEY_VIEW_START_WEEKDAY:Ljava/lang/String;
    .restart local v9       #includeWeather:Ljava/lang/String;
    .restart local v10       #key_plenty:Ljava/lang/String;
    .restart local v16       #view:Landroid/os/Bundle;
    .restart local v17       #viewList:Landroid/os/Bundle;
    :cond_3
    const-string v18, "CalendarPreferenceActivity"

    const-string v19, "Can\'t get includeWeather"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 586
    .restart local v11       #preset_city:Ljava/lang/String;
    :cond_4
    const-string v18, "CalendarPreferenceActivity"

    const-string v19, "Can\'t get preset_city"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 598
    .restart local v14       #start_weekday:Ljava/lang/String;
    :cond_5
    const-string v18, "CalendarPreferenceActivity"

    const-string v19, "Can\'t get week_startday"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 604
    .end local v4           #KEY_VIEW_INCLUDE_WEATHER:Ljava/lang/String;
    .end local v5           #KEY_VIEW_PRESET_CITY:Ljava/lang/String;
    .end local v6           #KEY_VIEW_START_IN:Ljava/lang/String;
    .end local v7           #KEY_VIEW_START_WEEKDAY:Ljava/lang/String;
    .end local v9           #includeWeather:Ljava/lang/String;
    .end local v10           #key_plenty:Ljava/lang/String;
    .end local v11           #preset_city:Ljava/lang/String;
    .end local v14           #start_weekday:Ljava/lang/String;
    .end local v16           #view:Landroid/os/Bundle;
    :cond_6
    const-string v18, "CalendarPreferenceActivity"

    const-string v19, "view is null or view is 0"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method private static printCustomizeData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1519
    const-string v0, "Cust_Calendar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    return-void
.end method

.method private reloadChildPreferences(J)V
    .locals 9
    .parameter "nCalendarId"

    .prologue
    const/4 v6, 0x1

    .line 1471
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "reloadChildPreferences id:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/htc/calendar/CalendarPreferenceActivity;->debug(Ljava/lang/String;)V

    .line 1472
    const/4 v0, 0x0

    .line 1473
    .local v0, bHideDeclined:Z
    const/4 v3, 0x1

    .line 1474
    .local v3, nReminderType:I
    const/16 v2, 0xa

    .line 1475
    .local v2, nReminderDuration:I
    const-string v5, "content://settings/system/cal_notification"

    .line 1477
    .local v5, strAlertRingtone:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1478
    .local v1, i:I
    const/4 v1, 0x0

    :goto_0
    iget-object v7, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 1479
    iget-object v7, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/calendar/CalendarPreferenceActivity$CalendarPreference;

    .line 1480
    .local v4, pref:Lcom/htc/calendar/CalendarPreferenceActivity$CalendarPreference;
    iget-wide v7, v4, Lcom/htc/calendar/CalendarPreferenceActivity$CalendarPreference;->lCalendarId:J

    cmp-long v7, v7, p1

    if-nez v7, :cond_2

    .line 1481
    iget v7, v4, Lcom/htc/calendar/CalendarPreferenceActivity$CalendarPreference;->nHideDeclined:I

    if-ne v7, v6, :cond_1

    move v0, v6

    .line 1483
    :goto_1
    iget v3, v4, Lcom/htc/calendar/CalendarPreferenceActivity$CalendarPreference;->nReminderType:I

    .line 1484
    iget v2, v4, Lcom/htc/calendar/CalendarPreferenceActivity$CalendarPreference;->nReminderDuration:I

    .line 1485
    iget-object v5, v4, Lcom/htc/calendar/CalendarPreferenceActivity$CalendarPreference;->strAlertRingtone:Ljava/lang/String;

    .line 1486
    invoke-static {v5, p0}, Lcom/htc/calendar/CalendarPreferenceActivity;->SaveRingtone(Ljava/lang/String;Landroid/content/Context;)V

    .line 1492
    .end local v4           #pref:Lcom/htc/calendar/CalendarPreferenceActivity$CalendarPreference;
    :cond_0
    const-string v7, "CalendarPreferenceActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCalendars:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v6}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    iget-object v6, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mAlertType:Lcom/htc/preference/HtcListPreference;

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 1494
    iget-object v6, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mAlertDuration:Lcom/htc/preference/HtcListPreference;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 1495
    iget-object v6, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mHideDeclined:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v6, v0}, Lcom/htc/preference/HtcCheckBoxPreference;->setChecked(Z)V

    .line 1496
    return-void

    .line 1481
    .restart local v4       #pref:Lcom/htc/calendar/CalendarPreferenceActivity$CalendarPreference;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1478
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private saveCityCode(Ljava/lang/String;)V
    .locals 3
    .parameter "cityCode"

    .prologue
    .line 1079
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1080
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/htc/calendar/CalendarPreferenceActivity;->KEY_CITY_CODE:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1081
    return-void
.end method

.method private saveCityCount(I)V
    .locals 4
    .parameter "count"

    .prologue
    .line 1089
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1092
    .local v1, prefs:Landroid/content/SharedPreferences;
    :try_start_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/htc/calendar/CalendarPreferenceActivity;->KEY_CITY_COUNT:Ljava/lang/String;

    invoke-interface {v2, v3, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1096
    :goto_0
    return-void

    .line 1093
    :catch_0
    move-exception v0

    .line 1094
    .local v0, e:Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static saveCityIndex(ILandroid/content/Context;)V
    .locals 3
    .parameter "index"
    .parameter "context"

    .prologue
    .line 621
    invoke-static {p1}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 622
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "preference_weather_default_index"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 623
    return-void
.end method

.method private saveCityLatLong(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "cityLatitude"
    .parameter "cityLongitude"

    .prologue
    .line 1118
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1119
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/htc/calendar/CalendarPreferenceActivity;->KEY_CITY_LATITUDE:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1120
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/htc/calendar/CalendarPreferenceActivity;->KEY_CITY_LONGITUDE:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1121
    return-void
.end method

.method private saveCityName(Ljava/lang/String;)V
    .locals 3
    .parameter "cityName"

    .prologue
    .line 1084
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1085
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/htc/calendar/CalendarPreferenceActivity;->KEY_CITY_NAME:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1086
    return-void
.end method

.method public static saveHtcCustomization(ZLandroid/content/Context;)V
    .locals 3
    .parameter "set"
    .parameter "context"

    .prologue
    .line 451
    invoke-static {p1}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 452
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "preference_customization"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 453
    return-void
.end method

.method public static saveIncludeWeather(Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .parameter "value"
    .parameter "context"

    .prologue
    .line 610
    const/4 v0, 0x0

    .line 611
    .local v0, defaultVaule:Z
    const-string v2, "true"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 612
    const/4 v0, 0x1

    .line 616
    :goto_0
    invoke-static {p1}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 617
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/htc/calendar/CalendarPreferenceActivity;->KEY_WEATHER_ENABLE:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 618
    return-void

    .line 614
    .end local v1           #prefs:Landroid/content/SharedPreferences;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static saveLastSyncOnOpen(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "_millis"

    .prologue
    .line 1527
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1529
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "preferences_last_sync_when_open"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1530
    return-void
.end method

.method private saveLunarSettings(Z)V
    .locals 3
    .parameter "isLunarEnabled"

    .prologue
    .line 1124
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1125
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Lcom/htc/calendar/CalendarPreferenceActivity;->KEY_LUNAR_ENABLE:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1126
    return-void
.end method

.method public static saveReminderDuration(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .parameter "duration"
    .parameter "context"

    .prologue
    .line 643
    invoke-static {p1}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 644
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "preferences_default_reminder"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 645
    return-void
.end method

.method private static saveReminderToCalendarDB(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .parameter "reminderValue"
    .parameter "context"

    .prologue
    .line 724
    new-instance v0, Lcom/htc/calendar/CalendarPreferenceActivity$saveReminderToCalendarDBThread;

    invoke-direct {v0, p0, p1}, Lcom/htc/calendar/CalendarPreferenceActivity$saveReminderToCalendarDBThread;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 725
    .local v0, thread:Lcom/htc/calendar/CalendarPreferenceActivity$saveReminderToCalendarDBThread;
    invoke-virtual {v0}, Lcom/htc/calendar/CalendarPreferenceActivity$saveReminderToCalendarDBThread;->start()V

    .line 726
    return-void
.end method

.method private static saveReminderToCalendarDBLocked(Ljava/lang/String;Landroid/content/Context;)V
    .locals 14
    .parameter "reminderValue"
    .parameter "context"

    .prologue
    .line 744
    if-nez p1, :cond_1

    .line 745
    const-string v1, "CalendarPreferenceActivity"

    const-string v3, "saveReminderToCalendarDB error : context is null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 749
    :cond_1
    const-string v1, "10"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 753
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 754
    .local v0, cr:Landroid/content/ContentResolver;
    if-nez v0, :cond_2

    .line 755
    const-string v1, "CalendarPreferenceActivity"

    const-string v3, "saveReminderToCalendarDB error : ContentResolver is null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 759
    :cond_2
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v1

    .line 762
    .local v2, projectArys:[Ljava/lang/String;
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 764
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 765
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 766
    .local v12, nCnt:I
    const-string v1, "CalendarPreferenceActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "total have "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " calendars"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    if-lez v12, :cond_5

    .line 768
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 769
    .local v10, cv:Landroid/content/ContentValues;
    const-string v1, "reminder_duration"

    invoke-virtual {v10, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 774
    .local v13, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 776
    :cond_3
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 777
    .local v8, calendar_id:J
    sget-object v1, Landroid/provider/HtcExCalendar$ExCalendars;->SETTING_ID_URI:Landroid/net/Uri;

    invoke-static {v1, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 778
    .local v7, calendarUri:Landroid/net/Uri;
    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 779
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 781
    .end local v7           #calendarUri:Landroid/net/Uri;
    .end local v8           #calendar_id:J
    :cond_4
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 783
    :try_start_0
    const-string v1, "com.android.calendar"

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 793
    .end local v10           #cv:Landroid/content/ContentValues;
    .end local v13           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_5
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 794
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 785
    .restart local v10       #cv:Landroid/content/ContentValues;
    .restart local v13       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_0
    move-exception v11

    .line 786
    .local v11, e:Landroid/os/RemoteException;
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 787
    .end local v11           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v11

    .line 788
    .local v11, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v11}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_1
.end method

.method public static saveReminderType(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .parameter "type"
    .parameter "context"

    .prologue
    .line 637
    invoke-static {p1}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 638
    .local v0, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "preferences_alerts_type"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 639
    return-void
.end method

.method public static saveStartWeekDay(ILandroid/content/Context;)V
    .locals 5
    .parameter "index"
    .parameter "context"

    .prologue
    .line 626
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "calendar_start_weekday"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 628
    invoke-static {p1}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 629
    .local v1, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sget-object v3, Lcom/htc/calendar/CalendarPreferenceActivity;->KEY_START_WEEKDAY:Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 630
    new-instance v0, Landroid/content/Intent;

    const-string v2, "action.start.week.day.changed"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 631
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 632
    return-void
.end method

.method public static setDefaultValues(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 232
    const-string v0, "com.htc.calendar_preferences"

    const v1, 0x7f050001

    invoke-static {p0, v0, v2, v1, v2}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;Ljava/lang/String;IIZ)V

    .line 234
    return-void
.end method

.method public static showWeatherInfo(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 1145
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1146
    .local v0, prefs:Landroid/content/SharedPreferences;
    sget-object v1, Lcom/htc/calendar/CalendarPreferenceActivity;->KEY_WEATHER_ENABLE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private updateAllCalaendar()V
    .locals 4

    .prologue
    .line 1384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAllCalaendar count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/htc/calendar/CalendarPreferenceActivity;->debug(Ljava/lang/String;)V

    .line 1385
    const/4 v0, 0x0

    .line 1387
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1388
    iget-object v2, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/calendar/CalendarPreferenceActivity$CalendarPreference;

    .line 1389
    .local v1, pref:Lcom/htc/calendar/CalendarPreferenceActivity$CalendarPreference;
    iget-wide v2, v1, Lcom/htc/calendar/CalendarPreferenceActivity$CalendarPreference;->lCalendarId:J

    invoke-direct {p0, v2, v3}, Lcom/htc/calendar/CalendarPreferenceActivity;->updateCalendarById(J)V

    .line 1387
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1391
    .end local v1           #pref:Lcom/htc/calendar/CalendarPreferenceActivity$CalendarPreference;
    :cond_0
    return-void
.end method

.method private updateCalendarById(J)V
    .locals 9
    .parameter "calendar_id"

    .prologue
    .line 1394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCalendarById:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/htc/calendar/CalendarPreferenceActivity;->debug(Ljava/lang/String;)V

    .line 1395
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 1397
    .local v8, prefs:Landroid/content/SharedPreferences;
    const-string v0, "preferences_hide_declined"

    const/4 v1, 0x0

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 1398
    .local v7, bHideDeclined:Z
    const-string v0, "preferences_alerts_type"

    const-string v1, "1"

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1399
    .local v3, strReminderType:Ljava/lang/String;
    const-string v0, "preferences_default_reminder"

    const-string v1, "10"

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1400
    .local v4, strReminderDuration:Ljava/lang/String;
    const-string v0, "preferences_alerts_ringtone"

    const-string v1, "content://settings/system/cal_notification"

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1402
    .local v5, strAlertRingtone:Ljava/lang/String;
    if-eqz v7, :cond_0

    const-string v6, "1"

    :goto_0
    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/htc/calendar/CalendarPreferenceActivity;->updateSettingById(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1403
    return-void

    .line 1402
    :cond_0
    const-string v6, "0"

    goto :goto_0
.end method

.method private updateCalendarPreferences()V
    .locals 5

    .prologue
    .line 1436
    iget-object v3, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mApplyToAllCalendar:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 1437
    iget-object v3, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->reminderPreference:Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v4, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCalendars:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1438
    iget-object v3, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->reminderPreference:Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v4, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mHideDeclined:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1460
    :goto_0
    return-void

    .line 1440
    :cond_0
    iget-object v3, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCalendars:Lcom/htc/preference/HtcListPreference;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCalendars:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1442
    iget-object v3, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCalendars:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    array-length v2, v3

    .line 1443
    .local v2, len:I
    if-lez v2, :cond_1

    .line 1444
    iget-object v3, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCalendars:Lcom/htc/preference/HtcListPreference;

    iget-object v4, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCalendars:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 1445
    .local v1, idx:I
    if-ltz v1, :cond_1

    .line 1446
    iget-object v3, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCalendars:Lcom/htc/preference/HtcListPreference;

    iget-object v4, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCalendars:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v4}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1447
    iget-object v3, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->syncAccountTypeList:[Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1449
    iget-object v3, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->syncAccountTypeList:[Ljava/lang/String;

    aget-object v0, v3, v1

    .line 1450
    .local v0, _sync_account_type:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/calendar/HtcUtils;->isGoogleEvent(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1452
    iget-object v3, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->reminderPreference:Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v4, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mHideDeclined:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 1458
    .end local v0           #_sync_account_type:Ljava/lang/String;
    .end local v1           #idx:I
    .end local v2           #len:I
    :cond_1
    iget-object v3, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->reminderPreference:Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v4, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCalendars:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_0
.end method

.method private updateChildPreferences()V
    .locals 2

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mAlertType:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1464
    iget-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mRingtone:Lcom/htc/calendar/preference/HtcRingtonePreference2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/calendar/preference/HtcRingtonePreference2;->setEnabled(Z)V

    .line 1468
    :goto_0
    return-void

    .line 1466
    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mRingtone:Lcom/htc/calendar/preference/HtcRingtonePreference2;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/calendar/preference/HtcRingtonePreference2;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateSettingById(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "calendar_id"
    .parameter "reminderType"
    .parameter "reminderDuration"
    .parameter "ringtone"
    .parameter "hide_declined"

    .prologue
    const/4 v7, 0x0

    .line 1406
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1408
    .local v4, values:Landroid/content/ContentValues;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updated Calendar.id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/calendar/CalendarPreferenceActivity;->debug(Ljava/lang/String;)V

    .line 1409
    const-string v5, "hide_declined"

    invoke-virtual {v4, v5, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    const-string v5, "reminder_type"

    invoke-virtual {v4, v5, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    const-string v5, "reminder_duration"

    invoke-virtual {v4, v5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    const-string v5, "alerts_ringtone"

    invoke-virtual {v4, v5, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    sget-object v5, Landroid/provider/HtcExCalendar$ExCalendars;->SETTING_ID_URI:Landroid/net/Uri;

    invoke-static {v5, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1415
    .local v3, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v3, v4, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1418
    .local v2, ret:I
    const/4 v0, 0x0

    .line 1419
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    iget-object v5, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 1421
    iget-object v5, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/calendar/CalendarPreferenceActivity$CalendarPreference;

    .line 1422
    .local v1, pref:Lcom/htc/calendar/CalendarPreferenceActivity$CalendarPreference;
    iget-wide v5, v1, Lcom/htc/calendar/CalendarPreferenceActivity$CalendarPreference;->lCalendarId:J

    cmp-long v5, v5, p1

    if-nez v5, :cond_1

    .line 1423
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v1, Lcom/htc/calendar/CalendarPreferenceActivity$CalendarPreference;->nHideDeclined:I

    .line 1424
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v1, Lcom/htc/calendar/CalendarPreferenceActivity$CalendarPreference;->nReminderType:I

    .line 1425
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v1, Lcom/htc/calendar/CalendarPreferenceActivity$CalendarPreference;->nReminderDuration:I

    .line 1426
    iput-object p5, v1, Lcom/htc/calendar/CalendarPreferenceActivity$CalendarPreference;->strAlertRingtone:Ljava/lang/String;

    .line 1427
    iget-object v5, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v5, v0, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1428
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update local at:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/htc/calendar/CalendarPreferenceActivity;->debug(Ljava/lang/String;)V

    .line 1432
    .end local v1           #pref:Lcom/htc/calendar/CalendarPreferenceActivity$CalendarPreference;
    :cond_0
    const-string v5, "------------------------------------"

    invoke-direct {p0, v5}, Lcom/htc/calendar/CalendarPreferenceActivity;->debug(Ljava/lang/String;)V

    .line 1433
    return-void

    .line 1419
    .restart local v1       #pref:Lcom/htc/calendar/CalendarPreferenceActivity$CalendarPreference;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getAlertType()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1175
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1176
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "preferences_alerts_type"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getHideDeclined()Z
    .locals 3

    .prologue
    .line 1195
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1196
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "preferences_hide_declined"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getReminderDuration()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1185
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1186
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "preferences_default_reminder"

    const-string v2, "10"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRingtone()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1200
    invoke-static {p0}, Lcom/htc/preference/HtcPreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1201
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "preferences_alerts_ringtone"

    const-string v2, "content://settings/system/cal_notification"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v9, 0x1

    .line 249
    invoke-virtual {p0, v9}, Lcom/htc/calendar/CalendarPreferenceActivity;->requestWindowFeature(I)Z

    .line 250
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 253
    const v0, 0x7f050001

    invoke-virtual {p0, v0}, Lcom/htc/calendar/CalendarPreferenceActivity;->addPreferencesFromResource(I)V

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/htc/calendar/CalendarPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080038

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCurrentLabel:Ljava/lang/String;

    .line 257
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v8

    .line 258
    .local v8, preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {v8}, Lcom/htc/preference/HtcPreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 261
    const-string v0, "preferenceView"

    invoke-virtual {v8, v0}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceCategory;

    iput-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->viewPreference:Lcom/htc/preference/HtcPreferenceCategory;

    .line 264
    sget-object v0, Lcom/htc/calendar/CalendarPreferenceActivity;->KEY_START_WEEKDAY:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    iput-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mStartWeekDay:Lcom/htc/preference/HtcListPreference;

    .line 266
    iget-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mStartWeekDay:Lcom/htc/preference/HtcListPreference;

    iget-object v3, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mStartWeekDay:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v3}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 268
    sget-object v0, Lcom/htc/calendar/CalendarPreferenceActivity;->KEY_WEATHER_ENABLE:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mEnableWeather:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 270
    sget-object v0, Lcom/htc/calendar/CalendarPreferenceActivity;->KEY_LUNAR_ENABLE:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mEnableLunar:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 272
    sget-object v0, Lcom/htc/calendar/CalendarPreferenceActivity;->KEY_CITY_CODE:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/widget/HtcListPreferenceContentChanged;

    iput-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCityList:Lcom/htc/calendar/widget/HtcListPreferenceContentChanged;

    .line 274
    iget-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCityList:Lcom/htc/calendar/widget/HtcListPreferenceContentChanged;

    iget-object v3, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->onCityListClickListener:Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;

    invoke-virtual {v0, v3}, Lcom/htc/calendar/widget/HtcListPreferenceContentChanged;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 276
    invoke-static {}, Lcom/htc/calendar/Utils;->isSupportLunarCalendar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->viewPreference:Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v3, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mEnableLunar:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 278
    iget-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mEnableLunar:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/htc/calendar/CalendarPreferenceActivity;->saveLunarSettings(Z)V

    .line 279
    iget-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mEnableLunar:Lcom/htc/preference/HtcCheckBoxPreference;

    new-instance v3, Lcom/htc/calendar/CalendarPreferenceActivity$1;

    invoke-direct {v3, p0}, Lcom/htc/calendar/CalendarPreferenceActivity$1;-><init>(Lcom/htc/calendar/CalendarPreferenceActivity;)V

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcCheckBoxPreference;->setOnPreferenceClickListener(Lcom/htc/preference/HtcPreference$OnPreferenceClickListener;)V

    .line 308
    :goto_0
    const-string v0, "preferenceReminder"

    invoke-virtual {v8, v0}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcPreferenceCategory;

    iput-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->reminderPreference:Lcom/htc/preference/HtcPreferenceCategory;

    .line 310
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mResources:Landroid/content/res/Resources;

    .line 312
    iget-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->KEY_APPLY_SETTINGS_TO:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    iput-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCalendars:Lcom/htc/preference/HtcListPreference;

    .line 314
    const-string v0, "preferences_alerts_type"

    invoke-virtual {v8, v0}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    iput-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mAlertType:Lcom/htc/preference/HtcListPreference;

    .line 316
    const-string v0, "preferences_default_reminder"

    invoke-virtual {v8, v0}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcListPreference;

    iput-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mAlertDuration:Lcom/htc/preference/HtcListPreference;

    .line 318
    const-string v0, "preferences_alerts_ringtone"

    invoke-virtual {v8, v0}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/preference/HtcRingtonePreference2;

    iput-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mRingtone:Lcom/htc/calendar/preference/HtcRingtonePreference2;

    .line 320
    const-string v0, "preferences_hide_declined"

    invoke-virtual {v8, v0}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mHideDeclined:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 322
    iget-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->KEY_APPLY_TO_ALL_CALENDARS:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/htc/preference/HtcPreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Lcom/htc/preference/HtcPreference;

    move-result-object v0

    check-cast v0, Lcom/htc/preference/HtcCheckBoxPreference;

    iput-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mApplyToAllCalendar:Lcom/htc/preference/HtcCheckBoxPreference;

    .line 337
    if-nez p1, :cond_1

    .line 339
    new-instance v0, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;

    invoke-virtual {p0}, Lcom/htc/calendar/CalendarPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;-><init>(Lcom/htc/calendar/CalendarPreferenceActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mQueryHandler:Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;

    .line 340
    iget-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mQueryHandler:Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;

    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/htc/calendar/CalendarPreferenceActivity;->CALENDARS_PROJECTION:[Ljava/lang/String;

    const-string v7, "displayOrder,_id,calendar_displayName"

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :goto_1
    iget-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCalendars:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f08003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mAlertType:Lcom/htc/preference/HtcListPreference;

    invoke-static {p0}, Lcom/htc/calendar/CalendarPreferenceActivity;->getAlertType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 373
    iget-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mAlertType:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mAlertType:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mAlertDuration:Lcom/htc/preference/HtcListPreference;

    invoke-static {p0}, Lcom/htc/calendar/CalendarPreferenceActivity;->getReminderDuration(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mAlertDuration:Lcom/htc/preference/HtcListPreference;

    iget-object v1, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mAlertDuration:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 379
    invoke-direct {p0}, Lcom/htc/calendar/CalendarPreferenceActivity;->updateChildPreferences()V

    .line 380
    invoke-direct {p0}, Lcom/htc/calendar/CalendarPreferenceActivity;->updateCalendarPreferences()V

    .line 381
    iput-boolean v9, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mFirstUpdatePref:Z

    .line 392
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->viewPreference:Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v3, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mEnableLunar:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v3}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 290
    const-string v0, "CalendarPreferenceActivity"

    const-string v3, "removePreference(mEnableLunar)"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 351
    :cond_1
    const-string v0, "key_calendars_entry"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->entries:[Ljava/lang/String;

    .line 352
    const-string v0, "key_calendars_entry_values"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->entryValues:[Ljava/lang/String;

    .line 354
    iput-boolean v9, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mFirstUpdatePref:Z

    .line 355
    iget-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCalendars:Lcom/htc/preference/HtcListPreference;

    iget-object v2, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->entries:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 356
    iget-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCalendars:Lcom/htc/preference/HtcListPreference;

    iget-object v2, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->entryValues:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 357
    iget-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCalendars:Lcom/htc/preference/HtcListPreference;

    iget-object v2, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->entryValues:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcListPreference;->setValue(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->entryValues:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCurrentCalendarId:J

    .line 359
    iget-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_2

    .line 360
    iget-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->reminderPreference:Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v1, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mApplyToAllCalendar:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 361
    iget-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->reminderPreference:Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v1, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCalendars:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 365
    :goto_2
    iget-wide v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCurrentCalendarId:J

    invoke-direct {p0, v0, v1}, Lcom/htc/calendar/CalendarPreferenceActivity;->reloadChildPreferences(J)V

    goto/16 :goto_1

    .line 363
    :cond_2
    iget-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->reminderPreference:Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v1, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mApplyToAllCalendar:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 1499
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onDestroy()V

    .line 1500
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mFirstUpdatePref:Z

    .line 1501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy mCurrentCalendarId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCurrentCalendarId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/htc/calendar/CalendarPreferenceActivity;->debug(Ljava/lang/String;)V

    .line 1502
    iget-wide v1, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCurrentCalendarId:J

    invoke-direct {p0, v1, v2}, Lcom/htc/calendar/CalendarPreferenceActivity;->updateCalendarById(J)V

    .line 1504
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarPreferenceActivity;->getPreferenceScreen()Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v0

    .line 1505
    .local v0, preferenceScreen:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {v0}, Lcom/htc/preference/HtcPreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 1506
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 239
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onPause()V

    .line 241
    iget-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mQueryHandler:Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mQueryHandler:Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/calendar/CalendarPreferenceActivity$QueryHandler;->cancelOperation(I)V

    .line 245
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 466
    invoke-super {p0}, Lcom/htc/preference/HtcPreferenceActivity;->onResume()V

    .line 469
    invoke-static {}, Lcom/htc/calendar/Utils;->isSupportWeather()Z

    move-result v1

    iput-boolean v1, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mSupportWeather:Z

    .line 471
    iget-boolean v1, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mSupportWeather:Z

    if-eqz v1, :cond_3

    .line 474
    iget-object v1, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mEnableWeather:Lcom/htc/preference/HtcCheckBoxPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcCheckBoxPreference;->setEnabled(Z)V

    .line 476
    iget-object v1, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mEnableWeather:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 477
    iget-object v1, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCityList:Lcom/htc/calendar/widget/HtcListPreferenceContentChanged;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/calendar/widget/HtcListPreferenceContentChanged;->setEnabled(Z)V

    .line 481
    :cond_0
    const/4 v0, 0x0

    .line 482
    .local v0, cityIsShowing:Z
    iget-object v1, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCityListDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_2

    .line 483
    iget-object v1, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCityListDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    .line 484
    const-string v1, "CalendarPreferenceActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cityIsShowing:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    if-eqz v0, :cond_1

    .line 486
    iget-object v1, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCityListDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 492
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/calendar/CalendarPreferenceActivity$2;

    invoke-direct {v2, p0}, Lcom/htc/calendar/CalendarPreferenceActivity$2;-><init>(Lcom/htc/calendar/CalendarPreferenceActivity;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 504
    .end local v0           #cityIsShowing:Z
    :goto_1
    return-void

    .line 489
    .restart local v0       #cityIsShowing:Z
    :cond_2
    const-string v1, "CalendarPreferenceActivity"

    const-string v2, "mCityListDialog is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 500
    .end local v0           #cityIsShowing:Z
    :cond_3
    iget-object v1, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->viewPreference:Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v2, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mEnableWeather:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 501
    iget-object v1, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->viewPreference:Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v2, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCityList:Lcom/htc/calendar/widget/HtcListPreferenceContentChanged;

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 1370
    invoke-super {p0, p1}, Lcom/htc/preference/HtcPreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1372
    iget-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->entries:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1373
    const-string v0, "key_calendars_entry"

    iget-object v1, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->entries:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1376
    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->entryValues:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1377
    const-string v0, "key_calendars_entry_values"

    iget-object v1, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->entryValues:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1379
    :cond_1
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 13
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    const/4 v12, 0x0

    .line 804
    sget-object v9, Lcom/htc/calendar/CalendarPreferenceActivity;->KEY_WEATHER_ENABLE:Ljava/lang/String;

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 805
    iget-object v9, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mEnableWeather:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v3

    .line 806
    .local v3, enable:Z
    invoke-direct {p0}, Lcom/htc/calendar/CalendarPreferenceActivity;->getWeatherCityList()I

    move-result v9

    if-eqz v9, :cond_0

    .line 807
    iget-object v9, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCityList:Lcom/htc/calendar/widget/HtcListPreferenceContentChanged;

    invoke-virtual {v9, v3}, Lcom/htc/calendar/widget/HtcListPreferenceContentChanged;->setEnabled(Z)V

    .line 935
    .end local v3           #enable:Z
    :cond_0
    :goto_0
    return-void

    .line 811
    :cond_1
    sget-object v9, Lcom/htc/calendar/CalendarPreferenceActivity;->KEY_CITY_CODE:Ljava/lang/String;

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 812
    const-string v9, "CalendarPreferenceActivity"

    const-string v10, "onSharedPreferenceChanged-KEY_CITY_CODE"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    iget-object v9, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCityList:Lcom/htc/calendar/widget/HtcListPreferenceContentChanged;

    invoke-virtual {v9}, Lcom/htc/calendar/widget/HtcListPreferenceContentChanged;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 814
    .local v2, currentEntry:Ljava/lang/String;
    const-string v9, "CalendarPreferenceActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "currentEntry: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    iget-object v9, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCityList:Lcom/htc/calendar/widget/HtcListPreferenceContentChanged;

    invoke-virtual {v9}, Lcom/htc/calendar/widget/HtcListPreferenceContentChanged;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 818
    .local v1, code:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCityList:Lcom/htc/calendar/widget/HtcListPreferenceContentChanged;

    invoke-virtual {v9, v1}, Lcom/htc/calendar/widget/HtcListPreferenceContentChanged;->findIndexOfValue(Ljava/lang/String;)I

    move-result v8

    .line 819
    .local v8, nIndex:I
    if-gez v8, :cond_2

    .line 820
    const-string v9, "CalendarPreferenceActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Can\'t find code: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    const/4 v8, 0x0

    .line 823
    :cond_2
    iget-object v9, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCityList:Lcom/htc/calendar/widget/HtcListPreferenceContentChanged;

    invoke-virtual {v9, v2}, Lcom/htc/calendar/widget/HtcListPreferenceContentChanged;->setSummary(Ljava/lang/CharSequence;)V

    .line 825
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 826
    const-string v9, ""

    invoke-direct {p0, v9}, Lcom/htc/calendar/CalendarPreferenceActivity;->saveCityCode(Ljava/lang/String;)V

    .line 827
    iget-object v9, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->cityListLatitude:[Ljava/lang/String;

    aget-object v6, v9, v12

    .line 828
    .local v6, latitude:Ljava/lang/String;
    iget-object v9, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->cityListLongitude:[Ljava/lang/String;

    aget-object v7, v9, v12

    .line 829
    .local v7, longitude:Ljava/lang/String;
    invoke-direct {p0, v6, v7}, Lcom/htc/calendar/CalendarPreferenceActivity;->saveCityLatLong(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    iget-object v9, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->cityListLatitude:[Ljava/lang/String;

    aget-object v9, v9, v12

    invoke-direct {p0, v9}, Lcom/htc/calendar/CalendarPreferenceActivity;->saveCityName(Ljava/lang/String;)V

    goto :goto_0

    .line 832
    .end local v6           #latitude:Ljava/lang/String;
    .end local v7           #longitude:Ljava/lang/String;
    :cond_3
    invoke-direct {p0, v1}, Lcom/htc/calendar/CalendarPreferenceActivity;->saveCityCode(Ljava/lang/String;)V

    .line 833
    invoke-direct {p0, v2}, Lcom/htc/calendar/CalendarPreferenceActivity;->saveCityName(Ljava/lang/String;)V

    goto :goto_0

    .line 837
    .end local v1           #code:Ljava/lang/String;
    .end local v2           #currentEntry:Ljava/lang/String;
    .end local v8           #nIndex:I
    :cond_4
    sget-object v9, Lcom/htc/calendar/CalendarPreferenceActivity;->KEY_START_WEEKDAY:Ljava/lang/String;

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 838
    iget-object v9, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mStartWeekDay:Lcom/htc/preference/HtcListPreference;

    iget-object v10, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mStartWeekDay:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 839
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "calendar_start_weekday"

    iget-object v11, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mStartWeekDay:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v11}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 841
    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mStartWeekDay:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/htc/calendar/CalendarContext;->updateStartWeekDay(I)V

    .line 843
    new-instance v5, Landroid/content/Intent;

    const-string v9, "action.start.week.day.changed"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 844
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/htc/calendar/CalendarPreferenceActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 847
    .end local v5           #intent:Landroid/content/Intent;
    :cond_5
    sget-object v9, Lcom/htc/calendar/CalendarPreferenceActivity;->KEY_LUNAR_ENABLE:Ljava/lang/String;

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 848
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "calendar_show_lunar"

    iget-object v9, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mEnableLunar:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, "1"

    :goto_1
    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 852
    new-instance v5, Landroid/content/Intent;

    const-string v9, "action.lunar.show.changed"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 853
    .restart local v5       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v5}, Lcom/htc/calendar/CalendarPreferenceActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 848
    .end local v5           #intent:Landroid/content/Intent;
    :cond_6
    const-string v9, "0"

    goto :goto_1

    .line 856
    :cond_7
    iget-object v9, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->KEY_APPLY_TO_ALL_CALENDARS:Ljava/lang/String;

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 858
    invoke-direct {p0}, Lcom/htc/calendar/CalendarPreferenceActivity;->updateCalendarPreferences()V

    .line 861
    invoke-direct {p0}, Lcom/htc/calendar/CalendarPreferenceActivity;->updateAllCalaendar()V

    goto/16 :goto_0

    .line 865
    :cond_8
    iget-object v9, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->KEY_APPLY_SETTINGS_TO:Ljava/lang/String;

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 866
    const-string v9, "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"

    invoke-direct {p0, v9}, Lcom/htc/calendar/CalendarPreferenceActivity;->debug(Ljava/lang/String;)V

    .line 867
    iget-object v9, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCalendars:Lcom/htc/preference/HtcListPreference;

    iget-object v10, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCalendars:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 868
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ">>> Name:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCalendars:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/htc/calendar/CalendarPreferenceActivity;->debug(Ljava/lang/String;)V

    .line 869
    iget-object v9, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCalendars:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCurrentCalendarId:J

    .line 870
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ">>> Select mCurrentCalendarId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCurrentCalendarId:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/htc/calendar/CalendarPreferenceActivity;->debug(Ljava/lang/String;)V

    .line 874
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mFirstUpdatePref:Z

    .line 875
    iget-wide v9, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCurrentCalendarId:J

    invoke-direct {p0, v9, v10}, Lcom/htc/calendar/CalendarPreferenceActivity;->reloadChildPreferences(J)V

    .line 877
    iput-boolean v12, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mFirstUpdatePref:Z

    .line 878
    const-string v9, "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"

    invoke-direct {p0, v9}, Lcom/htc/calendar/CalendarPreferenceActivity;->debug(Ljava/lang/String;)V

    .line 880
    iget-object v9, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCalendars:Lcom/htc/preference/HtcListPreference;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCalendars:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 884
    iget-object v9, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCalendars:Lcom/htc/preference/HtcListPreference;

    iget-object v10, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCalendars:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v4

    .line 885
    .local v4, idx:I
    if-ltz v4, :cond_0

    .line 886
    iget-object v9, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->syncAccountTypeList:[Ljava/lang/String;

    aget-object v0, v9, v4

    .line 887
    .local v0, _sync_account_type:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/calendar/HtcUtils;->isGoogleEvent(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 888
    iget-object v9, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->reminderPreference:Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v10, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mHideDeclined:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreferenceCategory;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_0

    .line 890
    :cond_9
    iget-object v9, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->reminderPreference:Lcom/htc/preference/HtcPreferenceCategory;

    iget-object v10, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mHideDeclined:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcPreferenceCategory;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    goto/16 :goto_0

    .line 895
    .end local v0           #_sync_account_type:Ljava/lang/String;
    .end local v4           #idx:I
    :cond_a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCurrentCalendarId:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCurrentCalendarId:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/htc/calendar/CalendarPreferenceActivity;->debug(Ljava/lang/String;)V

    .line 897
    const-string v9, "preferences_alerts_type"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 898
    iget-object v9, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mAlertType:Lcom/htc/preference/HtcListPreference;

    iget-object v10, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mAlertType:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 899
    invoke-direct {p0}, Lcom/htc/calendar/CalendarPreferenceActivity;->updateChildPreferences()V

    .line 900
    iget-object v9, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mApplyToAllCalendar:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 901
    invoke-direct {p0}, Lcom/htc/calendar/CalendarPreferenceActivity;->updateAllCalaendar()V

    goto/16 :goto_0

    .line 903
    :cond_b
    iget-wide v9, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCurrentCalendarId:J

    invoke-direct {p0, v9, v10}, Lcom/htc/calendar/CalendarPreferenceActivity;->updateCalendarById(J)V

    goto/16 :goto_0

    .line 908
    :cond_c
    const-string v9, "preferences_default_reminder"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 909
    iget-object v9, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mAlertDuration:Lcom/htc/preference/HtcListPreference;

    iget-object v10, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mAlertDuration:Lcom/htc/preference/HtcListPreference;

    invoke-virtual {v10}, Lcom/htc/preference/HtcListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/htc/preference/HtcListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 910
    iget-object v9, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mApplyToAllCalendar:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 911
    invoke-direct {p0}, Lcom/htc/calendar/CalendarPreferenceActivity;->updateAllCalaendar()V

    goto/16 :goto_0

    .line 913
    :cond_d
    iget-wide v9, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCurrentCalendarId:J

    invoke-direct {p0, v9, v10}, Lcom/htc/calendar/CalendarPreferenceActivity;->updateCalendarById(J)V

    goto/16 :goto_0

    .line 918
    :cond_e
    const-string v9, "preferences_alerts_ringtone"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 919
    iget-object v9, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mApplyToAllCalendar:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 920
    invoke-direct {p0}, Lcom/htc/calendar/CalendarPreferenceActivity;->updateAllCalaendar()V

    goto/16 :goto_0

    .line 922
    :cond_f
    iget-wide v9, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCurrentCalendarId:J

    invoke-direct {p0, v9, v10}, Lcom/htc/calendar/CalendarPreferenceActivity;->updateCalendarById(J)V

    goto/16 :goto_0

    .line 927
    :cond_10
    const-string v9, "preferences_hide_declined"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 928
    iget-object v9, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mApplyToAllCalendar:Lcom/htc/preference/HtcCheckBoxPreference;

    invoke-virtual {v9}, Lcom/htc/preference/HtcCheckBoxPreference;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 929
    invoke-direct {p0}, Lcom/htc/calendar/CalendarPreferenceActivity;->updateAllCalaendar()V

    goto/16 :goto_0

    .line 931
    :cond_11
    iget-wide v9, p0, Lcom/htc/calendar/CalendarPreferenceActivity;->mCurrentCalendarId:J

    invoke-direct {p0, v9, v10}, Lcom/htc/calendar/CalendarPreferenceActivity;->updateCalendarById(J)V

    goto/16 :goto_0
.end method
