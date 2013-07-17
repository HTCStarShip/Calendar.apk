.class public Lcom/htc/calendar/AttendeesStatus2;
.super Landroid/app/Activity;
.source "AttendeesStatus2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/calendar/AttendeesStatus2$QueryHandler;
    }
.end annotation


# static fields
.field public static final ATTENDEES_INDEX_EMAIL:I = 0x2

.field public static final ATTENDEES_INDEX_EVENT_ID:I = 0x5

.field public static final ATTENDEES_INDEX_ID:I = 0x0

.field public static final ATTENDEES_INDEX_NAME:I = 0x1

.field public static final ATTENDEES_INDEX_RELATIONSHIP:I = 0x3

.field public static final ATTENDEES_INDEX_STATUS:I = 0x4

.field private static final ATTENDEES_PROJECTION:[Ljava/lang/String; = null

.field private static final ATTENDEES_SORT_ORDER:Ljava/lang/String; = "attendeeStatus ASC,attendeeName ASC,attendeeEmail ASC"

.field private static final ATTENDEES_WHERE:Ljava/lang/String; = "event_id=%d AND (attendeeEmail not in (select attendeeEmail from attendees where event_id=%d AND attendeeRelationship = 2))) group by (attendeeEmail"

.field static final CALENDARS_INDEX_DISPLAY_NAME:I = 0x1

.field static final CALENDARS_INDEX_OWNER_ACCOUNT:I = 0x2

.field static final CALENDARS_INDEX_REMINDER_DURATION:I = 0x4

.field static final CALENDARS_INDEX_REMINDER_TYPE:I = 0x3

.field static final CALENDARS_PROJECTION:[Ljava/lang/String; = null

.field static final CALENDARS_WHERE:Ljava/lang/String; = "_id=%d"

.field private static final EVENT_INDEX_ACCOUNT_TYPE:I = 0x11

.field private static final EVENT_INDEX_ID:I = 0x0

.field private static final EVENT_PROJECTION:[Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "AttendeesStatus_2"


# instance fields
.field private mAccountType:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mEventCursor:Landroid/database/Cursor;

.field private mEventId:J

.field private mHeaderText:Lcom/htc/widget/HeaderBarText;

.field private mIsOrganizer:Z

.field private mListView:Lcom/htc/calendar/AttendeesListView;

.field private mQueryHandler:Lcom/htc/calendar/AttendeesStatus2$QueryHandler;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "title"

    aput-object v1, v0, v4

    const-string v1, "rrule"

    aput-object v1, v0, v5

    const-string v1, "allDay"

    aput-object v1, v0, v6

    const-string v1, "calendar_id"

    aput-object v1, v0, v7

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

    const-string v2, "accessLevel"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "eventColor"

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

    const-string v2, "account_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/calendar/AttendeesStatus2;->EVENT_PROJECTION:[Ljava/lang/String;

    .line 56
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "attendeeName"

    aput-object v1, v0, v4

    const-string v1, "attendeeEmail"

    aput-object v1, v0, v5

    const-string v1, "attendeeRelationship"

    aput-object v1, v0, v6

    const-string v1, "attendeeStatus"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "event_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/calendar/AttendeesStatus2;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    .line 81
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "calendar_displayName"

    aput-object v1, v0, v4

    const-string v1, "ownerAccount"

    aput-object v1, v0, v5

    const-string v1, "reminder_type"

    aput-object v1, v0, v6

    const-string v1, "reminder_duration"

    aput-object v1, v0, v7

    sput-object v0, Lcom/htc/calendar/AttendeesStatus2;->CALENDARS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/calendar/AttendeesStatus2;->mIsOrganizer:Z

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/htc/calendar/AttendeesStatus2;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/htc/calendar/AttendeesStatus2;->mIsOrganizer:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/calendar/AttendeesStatus2;)Lcom/htc/calendar/AttendeesListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/calendar/AttendeesStatus2;->mListView:Lcom/htc/calendar/AttendeesListView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/calendar/AttendeesStatus2;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/htc/calendar/AttendeesStatus2;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method private initEventCursor()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 137
    iget-object v1, p0, Lcom/htc/calendar/AttendeesStatus2;->mEventCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/calendar/AttendeesStatus2;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 138
    :cond_0
    const/4 v0, 0x1

    .line 143
    :goto_0
    return v0

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/htc/calendar/AttendeesStatus2;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 141
    iget-object v1, p0, Lcom/htc/calendar/AttendeesStatus2;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/htc/calendar/AttendeesStatus2;->mEventId:J

    .line 142
    iget-object v1, p0, Lcom/htc/calendar/AttendeesStatus2;->mEventCursor:Landroid/database/Cursor;

    const/16 v2, 0x11

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/calendar/AttendeesStatus2;->mAccountType:Ljava/lang/String;

    goto :goto_0
.end method

.method private setHtcTitle()V
    .locals 5

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/htc/calendar/AttendeesStatus2;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 148
    .local v1, res:Landroid/content/res/Resources;
    if-nez v1, :cond_0

    .line 149
    const-string v3, "AttendeesStatus_2"

    const-string v4, "res is null, on setHtcTitle"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    const v3, 0x7f080017

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, strTitle:Ljava/lang/String;
    const v3, 0x7f0d000d

    invoke-virtual {p0, v3}, Lcom/htc/calendar/AttendeesStatus2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HeaderBarMiddle;

    .line 154
    .local v0, headerBar:Lcom/htc/widget/HeaderBarMiddle;
    new-instance v3, Lcom/htc/widget/HeaderBarText;

    invoke-direct {v3, p0}, Lcom/htc/widget/HeaderBarText;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/htc/calendar/AttendeesStatus2;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    .line 155
    iget-object v3, p0, Lcom/htc/calendar/AttendeesStatus2;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HeaderBarMiddle;->addCenterView(Landroid/view/View;)V

    .line 156
    iget-object v3, p0, Lcom/htc/calendar/AttendeesStatus2;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    invoke-virtual {v3, v2}, Lcom/htc/widget/HeaderBarText;->setPrimaryText(Ljava/lang/String;)V

    .line 157
    iget-object v3, p0, Lcom/htc/calendar/AttendeesStatus2;->mHeaderText:Lcom/htc/widget/HeaderBarText;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/htc/widget/HeaderBarText;->setPrimaryVisibility(I)V

    .line 158
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 213
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 214
    invoke-static {p0}, Lcom/htc/calendar/HtcUtils;->getAppBackground(Landroid/content/Context;)I

    move-result v0

    .line 215
    .local v0, bkgId:I
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/calendar/AttendeesStatus2;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 216
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    .line 162
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 163
    invoke-virtual {p0, v12}, Lcom/htc/calendar/AttendeesStatus2;->requestWindowFeature(I)Z

    .line 166
    invoke-virtual {p0}, Lcom/htc/calendar/AttendeesStatus2;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 167
    .local v9, intent:Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/AttendeesStatus2;->mUri:Landroid/net/Uri;

    .line 168
    invoke-virtual {p0}, Lcom/htc/calendar/AttendeesStatus2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 170
    .local v8, cr:Landroid/content/ContentResolver;
    iget-object v0, p0, Lcom/htc/calendar/AttendeesStatus2;->mUri:Landroid/net/Uri;

    sget-object v2, Lcom/htc/calendar/AttendeesStatus2;->EVENT_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v6, v6}, Lcom/htc/calendar/AttendeesStatus2;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/AttendeesStatus2;->mEventCursor:Landroid/database/Cursor;

    .line 171
    invoke-direct {p0}, Lcom/htc/calendar/AttendeesStatus2;->initEventCursor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/htc/calendar/AttendeesStatus2;->finish()V

    .line 199
    :goto_0
    return-void

    .line 176
    :cond_0
    const-string v0, "IsOrganizer"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    const-string v0, "IsOrganizer"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/htc/calendar/AttendeesStatus2;->mIsOrganizer:Z

    .line 182
    :goto_1
    const-string v0, "AttendeesStatus_2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsOrganizer: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/htc/calendar/AttendeesStatus2;->mIsOrganizer:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/htc/calendar/AttendeesStatus2;->setContentView(I)V

    .line 185
    const v0, 0x7f0d0027

    invoke-virtual {p0, v0}, Lcom/htc/calendar/AttendeesStatus2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/AttendeesListView;

    iput-object v0, p0, Lcom/htc/calendar/AttendeesStatus2;->mListView:Lcom/htc/calendar/AttendeesListView;

    .line 186
    iget-object v0, p0, Lcom/htc/calendar/AttendeesStatus2;->mListView:Lcom/htc/calendar/AttendeesListView;

    invoke-virtual {v0, v6}, Lcom/htc/calendar/AttendeesListView;->setTopRound(Landroid/graphics/drawable/Drawable;)V

    .line 187
    iget-object v0, p0, Lcom/htc/calendar/AttendeesStatus2;->mListView:Lcom/htc/calendar/AttendeesListView;

    invoke-static {v0, v12}, Lcom/htc/wrap/android/view/HtcWrapView;->setRoundedCornerEnabled(Landroid/view/View;Z)V

    .line 189
    sget-object v3, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    .line 190
    .local v3, uri:Landroid/net/Uri;
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "event_id=%d AND (attendeeEmail not in (select attendeeEmail from attendees where event_id=%d AND attendeeRelationship = 2))) group by (attendeeEmail"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-wide v10, p0, Lcom/htc/calendar/AttendeesStatus2;->mEventId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v1

    iget-wide v10, p0, Lcom/htc/calendar/AttendeesStatus2;->mEventId:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v12

    invoke-static {v0, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 194
    .local v5, where:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/htc/calendar/AttendeesStatus2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/AttendeesStatus2;->mContentResolver:Landroid/content/ContentResolver;

    .line 195
    new-instance v0, Lcom/htc/calendar/AttendeesStatus2$QueryHandler;

    iget-object v2, p0, Lcom/htc/calendar/AttendeesStatus2;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v2}, Lcom/htc/calendar/AttendeesStatus2$QueryHandler;-><init>(Lcom/htc/calendar/AttendeesStatus2;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/htc/calendar/AttendeesStatus2;->mQueryHandler:Lcom/htc/calendar/AttendeesStatus2$QueryHandler;

    .line 196
    iget-object v0, p0, Lcom/htc/calendar/AttendeesStatus2;->mQueryHandler:Lcom/htc/calendar/AttendeesStatus2$QueryHandler;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v4, Lcom/htc/calendar/AttendeesStatus2;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    const-string v7, "attendeeStatus ASC,attendeeName ASC,attendeeEmail ASC"

    invoke-virtual/range {v0 .. v7}, Lcom/htc/calendar/AttendeesStatus2$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-direct {p0}, Lcom/htc/calendar/AttendeesStatus2;->setHtcTitle()V

    goto/16 :goto_0

    .line 179
    .end local v3           #uri:Landroid/net/Uri;
    .end local v5           #where:Ljava/lang/String;
    :cond_1
    const-string v0, "AttendeesStatus_2"

    const-string v2, "can\'t get extra IsOrganizer"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iput-boolean v1, p0, Lcom/htc/calendar/AttendeesStatus2;->mIsOrganizer:Z

    goto :goto_1
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 203
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 204
    invoke-direct {p0}, Lcom/htc/calendar/AttendeesStatus2;->initEventCursor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/htc/calendar/AttendeesStatus2;->finish()V

    .line 209
    :cond_0
    return-void
.end method
