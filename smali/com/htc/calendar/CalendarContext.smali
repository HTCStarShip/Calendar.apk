.class public Lcom/htc/calendar/CalendarContext;
.super Ljava/lang/Object;
.source "CalendarContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/calendar/CalendarContext$checkHtcCustomization;
    }
.end annotation


# static fields
.field public static final DISPLAY_ALL_CALENDAR:I = 0x0

.field public static final DISPLAY_DEFAULT_CALENDAR_NAME:Ljava/lang/String; = "All Calendar"

.field protected static final SIE_INDEX_AGENDA:I = 0x1

.field protected static final SIE_INDEX_DAY:I = 0x3

.field protected static final SIE_INDEX_DEFAULT:I = -0x1

.field protected static final SIE_INDEX_MEETING:I = 0x4

.field protected static final SIE_INDEX_MONTH:I = 0x0

.field protected static final SIE_INDEX_WEEK:I = 0x2

.field protected static final TAB_TAG_AGENDA:Ljava/lang/String; = "Agenda"

.field protected static final TAB_TAG_DAY:Ljava/lang/String; = "Day"

.field protected static final TAB_TAG_MEETING:Ljava/lang/String; = "Invitation"

.field protected static final TAB_TAG_MONTH:Ljava/lang/String; = "Month"

.field protected static final TAB_TAG_WEEK:Ljava/lang/String; = "Week"

.field public static final TAG:Ljava/lang/String; = "CalendarContext"

.field private static mCalendarContext:Lcom/htc/calendar/CalendarContext;


# instance fields
.field private isMonthToDay:Z

.field private isWeekToDay:Z

.field private mCalendarMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentSelectedCalendarId:I

.field private mCurrentSelectedCalendarName:Ljava/lang/String;

.field private mCurrentSelectedTime:Landroid/text/format/Time;

.field private mIntentFromNotes:Z

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mSelectedEventUri:Landroid/net/Uri;

.field private mStartActivityIndex:I

.field private mWeekStartDay:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/calendar/CalendarContext;->mCalendarContext:Lcom/htc/calendar/CalendarContext;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 99
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v2, p0, Lcom/htc/calendar/CalendarContext;->mContext:Landroid/content/Context;

    .line 32
    iput-object v2, p0, Lcom/htc/calendar/CalendarContext;->mCurrentSelectedTime:Landroid/text/format/Time;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/CalendarContext;->mCalendarMap:Ljava/util/HashMap;

    .line 50
    iput v1, p0, Lcom/htc/calendar/CalendarContext;->mCurrentSelectedCalendarId:I

    .line 57
    const-string v0, "All Calendar"

    iput-object v0, p0, Lcom/htc/calendar/CalendarContext;->mCurrentSelectedCalendarName:Ljava/lang/String;

    .line 68
    iput v1, p0, Lcom/htc/calendar/CalendarContext;->mStartActivityIndex:I

    .line 94
    iput-object v2, p0, Lcom/htc/calendar/CalendarContext;->mSelectedEventUri:Landroid/net/Uri;

    .line 307
    iput-boolean v1, p0, Lcom/htc/calendar/CalendarContext;->mIntentFromNotes:Z

    .line 319
    iput-boolean v1, p0, Lcom/htc/calendar/CalendarContext;->isMonthToDay:Z

    .line 320
    iput-boolean v1, p0, Lcom/htc/calendar/CalendarContext;->isWeekToDay:Z

    .line 100
    return-void
.end method

.method private convertTabIndex(I)Ljava/lang/String;
    .locals 1
    .parameter "nIdx_sie"

    .prologue
    .line 229
    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    .line 230
    :cond_0
    const-string v0, ""

    .line 249
    :goto_0
    return-object v0

    .line 233
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 249
    const-string v0, "Month"

    goto :goto_0

    .line 235
    :pswitch_0
    const-string v0, "Month"

    goto :goto_0

    .line 238
    :pswitch_1
    const-string v0, "Agenda"

    goto :goto_0

    .line 241
    :pswitch_2
    const-string v0, "Week"

    goto :goto_0

    .line 244
    :pswitch_3
    const-string v0, "Day"

    goto :goto_0

    .line 247
    :pswitch_4
    const-string v0, "Invitation"

    goto :goto_0

    .line 233
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getInstance()Lcom/htc/calendar/CalendarContext;
    .locals 2

    .prologue
    .line 103
    const-class v1, Lcom/htc/calendar/CalendarContext;

    monitor-enter v1

    .line 104
    :try_start_0
    sget-object v0, Lcom/htc/calendar/CalendarContext;->mCalendarContext:Lcom/htc/calendar/CalendarContext;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lcom/htc/calendar/CalendarContext;

    invoke-direct {v0}, Lcom/htc/calendar/CalendarContext;-><init>()V

    sput-object v0, Lcom/htc/calendar/CalendarContext;->mCalendarContext:Lcom/htc/calendar/CalendarContext;

    .line 107
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    sget-object v0, Lcom/htc/calendar/CalendarContext;->mCalendarContext:Lcom/htc/calendar/CalendarContext;

    return-object v0

    .line 107
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private loadWeekStartDay()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/htc/calendar/CalendarContext;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/calendar/CalendarContext;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0, v1}, Lcom/htc/calendar/CalendarPreferenceActivity;->getStartWeekDay(Landroid/content/Context;Landroid/content/SharedPreferences;)I

    move-result v0

    iput v0, p0, Lcom/htc/calendar/CalendarContext;->mWeekStartDay:I

    .line 160
    return-void
.end method


# virtual methods
.method public clearSelectedEventUri()V
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/calendar/CalendarContext;->mSelectedEventUri:Landroid/net/Uri;

    .line 297
    return-void
.end method

.method public convertTabString(Ljava/lang/String;)I
    .locals 1
    .parameter "tabName"

    .prologue
    .line 257
    const-string v0, "Month"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    const/4 v0, 0x0

    .line 272
    :goto_0
    return v0

    .line 260
    :cond_0
    const-string v0, "Agenda"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    const/4 v0, 0x1

    goto :goto_0

    .line 263
    :cond_1
    const-string v0, "Week"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 264
    const/4 v0, 0x2

    goto :goto_0

    .line 266
    :cond_2
    const-string v0, "Day"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 267
    const/4 v0, 0x3

    goto :goto_0

    .line 269
    :cond_3
    const-string v0, "Invitation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 270
    const/4 v0, 0x4

    goto :goto_0

    .line 272
    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/calendar/CalendarContext;->mContext:Landroid/content/Context;

    .line 301
    return-void
.end method

.method public getCalendarName(Ljava/lang/Long;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/htc/calendar/CalendarContext;->mCalendarMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/htc/calendar/CalendarContext;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentSelectedCalendarId()I
    .locals 1

    .prologue
    .line 208
    iget v0, p0, Lcom/htc/calendar/CalendarContext;->mCurrentSelectedCalendarId:I

    return v0
.end method

.method public getCurrentSelectedTime()Landroid/text/format/Time;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/htc/calendar/CalendarContext;->mCurrentSelectedTime:Landroid/text/format/Time;

    return-object v0
.end method

.method public getCurrentSelectedTimeInMillis()J
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/htc/calendar/CalendarContext;->mCurrentSelectedTime:Landroid/text/format/Time;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonthToDay()Z
    .locals 1

    .prologue
    .line 334
    iget-boolean v0, p0, Lcom/htc/calendar/CalendarContext;->isMonthToDay:Z

    return v0
.end method

.method public getSelectedEventUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/htc/calendar/CalendarContext;->mSelectedEventUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/htc/calendar/CalendarContext;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getStartActivity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/htc/calendar/CalendarContext;->mStartActivityIndex:I

    invoke-direct {p0, v0}, Lcom/htc/calendar/CalendarContext;->convertTabIndex(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToday()Landroid/text/format/Time;
    .locals 3

    .prologue
    .line 190
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 191
    .local v0, today:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 192
    return-object v0
.end method

.method public getTodayInMillis()J
    .locals 2

    .prologue
    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWeekStartDay()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/htc/calendar/CalendarContext;->mWeekStartDay:I

    return v0
.end method

.method public getWeekToDay()Z
    .locals 1

    .prologue
    .line 338
    iget-boolean v0, p0, Lcom/htc/calendar/CalendarContext;->isWeekToDay:Z

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/htc/calendar/CalendarContext;->mContext:Landroid/content/Context;

    .line 134
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/calendar/CalendarContext;->mPrefs:Landroid/content/SharedPreferences;

    .line 137
    invoke-direct {p0}, Lcom/htc/calendar/CalendarContext;->loadWeekStartDay()V

    .line 139
    new-instance v0, Lcom/htc/calendar/CalendarContext$checkHtcCustomization;

    invoke-direct {v0, p0}, Lcom/htc/calendar/CalendarContext$checkHtcCustomization;-><init>(Lcom/htc/calendar/CalendarContext;)V

    .line 140
    .local v0, thread:Lcom/htc/calendar/CalendarContext$checkHtcCustomization;
    invoke-virtual {v0}, Lcom/htc/calendar/CalendarContext$checkHtcCustomization;->start()V

    .line 141
    invoke-virtual {p0}, Lcom/htc/calendar/CalendarContext;->getToday()Landroid/text/format/Time;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/calendar/CalendarContext;->setCurrentSelectedTime(Landroid/text/format/Time;)V

    .line 142
    return-void
.end method

.method public isIntentFromNotes()Z
    .locals 1

    .prologue
    .line 310
    iget-boolean v0, p0, Lcom/htc/calendar/CalendarContext;->mIntentFromNotes:Z

    return v0
.end method

.method protected loadStartActivity()V
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/htc/calendar/CalendarContext;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/htc/calendar/CalendarContext;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {v0, v1}, Lcom/htc/calendar/CalendarPreferenceActivity;->didHtcCustomizationDone(Landroid/content/Context;Landroid/content/SharedPreferences;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/htc/calendar/CalendarContext;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/htc/calendar/CalendarPreferenceActivity;->checkHtcCustomization(Landroid/content/Context;)V

    .line 155
    :cond_0
    const-string v0, "CalendarContext"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start_Calendar_Index on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/calendar/CalendarContext;->mStartActivityIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void
.end method

.method public setCalendarMap(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/htc/calendar/CalendarContext;->mCalendarMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    return-void
.end method

.method public setCurrentSelectedCalendarIdAndName(ILjava/lang/String;)V
    .locals 0
    .parameter "calendarId"
    .parameter "calendarName"

    .prologue
    .line 185
    iput p1, p0, Lcom/htc/calendar/CalendarContext;->mCurrentSelectedCalendarId:I

    .line 186
    iput-object p2, p0, Lcom/htc/calendar/CalendarContext;->mCurrentSelectedCalendarName:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setCurrentSelectedTime(Landroid/text/format/Time;)V
    .locals 2
    .parameter "time"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/htc/calendar/CalendarContext;->mCurrentSelectedTime:Landroid/text/format/Time;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/CalendarContext;->mCurrentSelectedTime:Landroid/text/format/Time;

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/CalendarContext;->mCurrentSelectedTime:Landroid/text/format/Time;

    invoke-static {p1}, Lcom/htc/calendar/HtcUtils;->getCorrectTime(Landroid/text/format/Time;)Landroid/text/format/Time;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 170
    return-void
.end method

.method public setCurrentSelectedTime(Ljava/lang/Long;)V
    .locals 3
    .parameter "millis"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/htc/calendar/CalendarContext;->mCurrentSelectedTime:Landroid/text/format/Time;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/CalendarContext;->mCurrentSelectedTime:Landroid/text/format/Time;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/CalendarContext;->mCurrentSelectedTime:Landroid/text/format/Time;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/htc/calendar/HtcUtils;->getCorrectMillis(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 178
    return-void
.end method

.method public setIntentFromNotes(Z)V
    .locals 0
    .parameter "intentFromNotes"

    .prologue
    .line 314
    iput-boolean p1, p0, Lcom/htc/calendar/CalendarContext;->mIntentFromNotes:Z

    .line 315
    return-void
.end method

.method public setMonthToDay(Z)V
    .locals 0
    .parameter "monthToDay"

    .prologue
    .line 323
    iput-boolean p1, p0, Lcom/htc/calendar/CalendarContext;->isMonthToDay:Z

    .line 324
    return-void
.end method

.method public setSelectedEventUri(Landroid/net/Uri;)V
    .locals 0
    .parameter "uri"

    .prologue
    .line 292
    iput-object p1, p0, Lcom/htc/calendar/CalendarContext;->mSelectedEventUri:Landroid/net/Uri;

    .line 293
    return-void
.end method

.method public setWeekToDay(Z)V
    .locals 0
    .parameter "weekToDay"

    .prologue
    .line 327
    iput-boolean p1, p0, Lcom/htc/calendar/CalendarContext;->isWeekToDay:Z

    .line 328
    return-void
.end method

.method public updateCurrentSelectedTimezone()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/htc/calendar/CalendarContext;->mCurrentSelectedTime:Landroid/text/format/Time;

    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method public updateStartActivity(I)V
    .locals 0
    .parameter "startActivityIndex"

    .prologue
    .line 277
    iput p1, p0, Lcom/htc/calendar/CalendarContext;->mStartActivityIndex:I

    .line 278
    return-void
.end method

.method public updateStartWeekDay(I)V
    .locals 0
    .parameter "startDay"

    .prologue
    .line 281
    iput p1, p0, Lcom/htc/calendar/CalendarContext;->mWeekStartDay:I

    .line 282
    return-void
.end method
