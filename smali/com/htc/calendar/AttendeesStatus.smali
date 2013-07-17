.class public Lcom/htc/calendar/AttendeesStatus;
.super Landroid/app/Activity;
.source "AttendeesStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/calendar/AttendeesStatus$1;,
        Lcom/htc/calendar/AttendeesStatus$PresenceQueryHandler;,
        Lcom/htc/calendar/AttendeesStatus$Attendee;,
        Lcom/htc/calendar/AttendeesStatus$ViewHolder;
    }
.end annotation


# static fields
.field private static final ATTENDEES_INDEX_EMAIL:I = 0x2

.field private static final ATTENDEES_INDEX_ID:I = 0x0

.field private static final ATTENDEES_INDEX_NAME:I = 0x1

.field private static final ATTENDEES_INDEX_RELATIONSHIP:I = 0x3

.field private static final ATTENDEES_INDEX_STATUS:I = 0x4

.field private static final ATTENDEES_PROJECTION:[Ljava/lang/String; = null

.field private static final ATTENDEES_SORT_ORDER:Ljava/lang/String; = "attendeeName ASC, attendeeEmail ASC"

.field private static final ATTENDEES_WHERE:Ljava/lang/String; = "event_id=%d"

.field private static final ATTENDEE_NO_RESPONSE:I = -0x1

.field static final CALENDARS_INDEX_DISPLAY_NAME:I = 0x1

.field static final CALENDARS_INDEX_OWNER_ACCOUNT:I = 0x2

.field static final CALENDARS_INDEX_REMINDER_DURATION:I = 0x4

.field static final CALENDARS_INDEX_REMINDER_TYPE:I = 0x3

.field static final CALENDARS_PROJECTION:[Ljava/lang/String; = null

.field static final CALENDARS_WHERE:Ljava/lang/String; = "_id=%d"

.field private static final CONTACT_DATA_WITH_PRESENCE_URI:Landroid/net/Uri; = null

.field public static final DEBUG:Z = true

.field private static final EVENT_INDEX_ACCESS_LEVEL:I = 0xb

.field private static final EVENT_INDEX_ALL_DAY:I = 0x3

.field private static final EVENT_INDEX_CALENDAR_ID:I = 0x4

.field private static final EVENT_INDEX_CAN_INVITE_OTHERS:I = 0xf

.field private static final EVENT_INDEX_COLOR:I = 0xc

.field private static final EVENT_INDEX_DESCRIPTION:I = 0x8

.field private static final EVENT_INDEX_EVENT_LOCATION:I = 0x9

.field private static final EVENT_INDEX_EVENT_TIMEZONE:I = 0x7

.field private static final EVENT_INDEX_GUESTS_CAN_MODIFY:I = 0xe

.field private static final EVENT_INDEX_HAS_ALARM:I = 0xa

.field private static final EVENT_INDEX_HAS_ATTENDEE_DATA:I = 0xd

.field private static final EVENT_INDEX_ID:I = 0x0

.field private static final EVENT_INDEX_ORGANIZER:I = 0x10

.field private static final EVENT_INDEX_RRULE:I = 0x2

.field private static final EVENT_INDEX_SYNC_ACCOUNT_TYPE:I = 0x11

.field private static final EVENT_INDEX_SYNC_ID:I = 0x6

.field private static final EVENT_INDEX_TITLE:I = 0x1

.field private static final EVENT_PROJECTION:[Ljava/lang/String; = null

.field private static final PRESENCE_PROJECTION:[Ljava/lang/String; = null

.field public static final TAG:Ljava/lang/String; = "AttendeesStatus"


# instance fields
.field PRESENCE_PROJECTION_CONTACT_ID_INDEX:I

.field PRESENCE_PROJECTION_EMAIL_INDEX:I

.field PRESENCE_PROJECTION_PHOTO_ID_INDEX:I

.field PRESENCE_PROJECTION_PRESENCE_INDEX:I

.field mAcceptedAttendees:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/calendar/AttendeesStatus$Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private mAttendeesCursor:Landroid/database/Cursor;

.field private mCalendarOwnerAccount:Ljava/lang/String;

.field private mCalendarOwnerAttendeeId:J

.field private mCalendarsCursor:Landroid/database/Cursor;

.field private mColor:I

.field private mCurrentSelectCalendarSyncAccountType:Ljava/lang/String;

.field mDeclinedAttendees:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/calendar/AttendeesStatus$Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private mEventCalendarId:I

.field private mEventCursor:Landroid/database/Cursor;

.field private mEventId:J

.field private mExchangeEvent:Z

.field private mIsOrganizer:Z

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mNumOfAttendees:I

.field private mOrganizer:Ljava/lang/String;

.field private mOriginalAttendeeResponse:I

.field private mPresenceQueryHandler:Lcom/htc/calendar/AttendeesStatus$PresenceQueryHandler;

.field mTentativeAttendees:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/calendar/AttendeesStatus$Attendee;",
            ">;"
        }
    .end annotation
.end field

.field private mUri:Landroid/net/Uri;

.field private mViewHolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/htc/calendar/AttendeesStatus$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 51
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

    sput-object v0, Lcom/htc/calendar/AttendeesStatus;->EVENT_PROJECTION:[Ljava/lang/String;

    .line 90
    const/4 v0, 0x5

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

    sput-object v0, Lcom/htc/calendar/AttendeesStatus;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    .line 108
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

    sput-object v0, Lcom/htc/calendar/AttendeesStatus;->CALENDARS_PROJECTION:[Ljava/lang/String;

    .line 153
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/htc/calendar/AttendeesStatus;->CONTACT_DATA_WITH_PRESENCE_URI:Landroid/net/Uri;

    .line 160
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const-string v1, "contact_presence"

    aput-object v1, v0, v4

    const-string v1, "data1"

    aput-object v1, v0, v5

    const-string v1, "photo_id"

    aput-object v1, v0, v6

    sput-object v0, Lcom/htc/calendar/AttendeesStatus;->PRESENCE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 133
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/htc/calendar/AttendeesStatus;->mCalendarOwnerAttendeeId:J

    .line 139
    invoke-static {}, Landroid/provider/HtcExCalendar;->getGoogleAccountType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/AttendeesStatus;->mCurrentSelectCalendarSyncAccountType:Ljava/lang/String;

    .line 140
    iput-boolean v2, p0, Lcom/htc/calendar/AttendeesStatus;->mExchangeEvent:Z

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/AttendeesStatus;->mViewHolders:Ljava/util/HashMap;

    .line 155
    iput v2, p0, Lcom/htc/calendar/AttendeesStatus;->PRESENCE_PROJECTION_CONTACT_ID_INDEX:I

    .line 156
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/calendar/AttendeesStatus;->PRESENCE_PROJECTION_PRESENCE_INDEX:I

    .line 157
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/calendar/AttendeesStatus;->PRESENCE_PROJECTION_EMAIL_INDEX:I

    .line 158
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/calendar/AttendeesStatus;->PRESENCE_PROJECTION_PHOTO_ID_INDEX:I

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/AttendeesStatus;->mAcceptedAttendees:Ljava/util/ArrayList;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/AttendeesStatus;->mDeclinedAttendees:Ljava/util/ArrayList;

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/AttendeesStatus;->mTentativeAttendees:Ljava/util/ArrayList;

    .line 466
    return-void
.end method

.method static synthetic access$100(Lcom/htc/calendar/AttendeesStatus;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/htc/calendar/AttendeesStatus;->mViewHolders:Ljava/util/HashMap;

    return-object v0
.end method

.method private addAttendeesToLayout(Ljava/util/ArrayList;Landroid/widget/LinearLayout;I)V
    .locals 25
    .parameter
    .parameter "attendeeList"
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/calendar/AttendeesStatus$Attendee;",
            ">;",
            "Landroid/widget/LinearLayout;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 386
    .local p1, attendees:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/AttendeesStatus$Attendee;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/AttendeesStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v12

    .line 387
    .local v12, entries:[Ljava/lang/CharSequence;
    aget-object v17, v12, p3

    .line 389
    .local v17, sectionTitle:Ljava/lang/CharSequence;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 464
    :goto_0
    return-void

    .line 393
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/calendar/AttendeesStatus;->mIsOrganizer:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/calendar/AttendeesStatus;->mExchangeEvent:Z

    if-eqz v2, :cond_1

    .line 394
    if-nez p3, :cond_4

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/AttendeesStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 402
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/AttendeesStatus;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03001a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v21

    .line 403
    .local v21, titleView:Landroid/view/View;
    const v2, 0x7f0d003d

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 404
    const v2, 0x7f0d003e

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 405
    .local v11, divider:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/AttendeesStatus;->mColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 407
    const v2, 0x7f0d003f

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 408
    .local v20, title:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/calendar/AttendeesStatus;->mIsOrganizer:Z

    if-nez v2, :cond_6

    if-nez p3, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/htc/calendar/AttendeesStatus;->mExchangeEvent:Z

    if-eqz v2, :cond_6

    .line 409
    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    :goto_2
    const v2, 0x7f0b003d

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 414
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 417
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 418
    .local v16, numOfAttendees:I
    new-instance v18, Ljava/lang/StringBuilder;

    const-string v2, "data1 IN ("

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 419
    .local v18, selection:Ljava/lang/StringBuilder;
    move/from16 v0, v16

    new-array v8, v0, [Ljava/lang/String;

    .line 421
    .local v8, selectionArgs:[Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_3
    move/from16 v0, v16

    if-ge v14, v0, :cond_9

    .line 422
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/calendar/AttendeesStatus$Attendee;

    .line 423
    .local v10, attendee:Lcom/htc/calendar/AttendeesStatus$Attendee;
    iget-object v2, v10, Lcom/htc/calendar/AttendeesStatus$Attendee;->mEmail:Ljava/lang/String;

    aput-object v2, v8, v14

    .line 425
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/AttendeesStatus;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03001a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v23

    .line 426
    .local v23, v:Landroid/view/View;
    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 428
    const v2, 0x7f0d003e

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 429
    .local v19, separator:Landroid/view/View;
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/htc/calendar/AttendeesStatus;->mColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 432
    const v2, 0x7f0d003f

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 433
    .local v22, tv:Landroid/widget/TextView;
    iget-object v15, v10, Lcom/htc/calendar/AttendeesStatus$Attendee;->mName:Ljava/lang/String;

    .line 434
    .local v15, name:Ljava/lang/String;
    if-eqz v15, :cond_2

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 435
    :cond_2
    iget-object v15, v10, Lcom/htc/calendar/AttendeesStatus$Attendee;->mEmail:Ljava/lang/String;

    .line 437
    :cond_3
    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    new-instance v24, Lcom/htc/calendar/AttendeesStatus$ViewHolder;

    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-direct {v0, v2}, Lcom/htc/calendar/AttendeesStatus$ViewHolder;-><init>(Lcom/htc/calendar/AttendeesStatus$1;)V

    .line 440
    .local v24, vh:Lcom/htc/calendar/AttendeesStatus$ViewHolder;
    const v2, 0x7f0d003d

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/QuickContactBadge;

    move-object/from16 v0, v24

    iput-object v2, v0, Lcom/htc/calendar/AttendeesStatus$ViewHolder;->badge:Lcom/htc/widget/QuickContactBadge;

    .line 441
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/htc/calendar/AttendeesStatus$ViewHolder;->badge:Lcom/htc/widget/QuickContactBadge;

    iget-object v3, v10, Lcom/htc/calendar/AttendeesStatus$Attendee;->mEmail:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/QuickContactBadge;->assignContactFromEmail(Ljava/lang/String;Z)V

    .line 442
    const v2, 0x7f0d0040

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, v24

    iput-object v2, v0, Lcom/htc/calendar/AttendeesStatus$ViewHolder;->presence:Landroid/widget/ImageView;

    .line 443
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/htc/calendar/AttendeesStatus$ViewHolder;->presence:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 444
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/AttendeesStatus;->mViewHolders:Ljava/util/HashMap;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    .line 445
    .local v13, hmvh:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/calendar/AttendeesStatus$ViewHolder;>;"
    if-nez v13, :cond_7

    .line 446
    const-string v2, "AttendeesStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " get from mViewHolder is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 396
    .end local v8           #selectionArgs:[Ljava/lang/String;
    .end local v10           #attendee:Lcom/htc/calendar/AttendeesStatus$Attendee;
    .end local v11           #divider:Landroid/view/View;
    .end local v13           #hmvh:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/calendar/AttendeesStatus$ViewHolder;>;"
    .end local v14           #i:I
    .end local v15           #name:Ljava/lang/String;
    .end local v16           #numOfAttendees:I
    .end local v18           #selection:Ljava/lang/StringBuilder;
    .end local v19           #separator:Landroid/view/View;
    .end local v20           #title:Landroid/widget/TextView;
    .end local v21           #titleView:Landroid/view/View;
    .end local v22           #tv:Landroid/widget/TextView;
    .end local v23           #v:Landroid/view/View;
    .end local v24           #vh:Lcom/htc/calendar/AttendeesStatus$ViewHolder;
    :cond_4
    const/4 v2, 0x1

    move/from16 v0, p3

    if-eq v0, v2, :cond_5

    const/4 v2, 0x2

    move/from16 v0, p3

    if-ne v0, v2, :cond_1

    .line 397
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/htc/calendar/AttendeesStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_1

    .line 411
    .restart local v11       #divider:Landroid/view/View;
    .restart local v20       #title:Landroid/widget/TextView;
    .restart local v21       #titleView:Landroid/view/View;
    :cond_6
    const v2, 0x7f080076

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v17, v3, v4

    const/4 v4, 0x1

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/htc/calendar/AttendeesStatus;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 449
    .restart local v8       #selectionArgs:[Ljava/lang/String;
    .restart local v10       #attendee:Lcom/htc/calendar/AttendeesStatus$Attendee;
    .restart local v13       #hmvh:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/calendar/AttendeesStatus$ViewHolder;>;"
    .restart local v14       #i:I
    .restart local v15       #name:Ljava/lang/String;
    .restart local v16       #numOfAttendees:I
    .restart local v18       #selection:Ljava/lang/StringBuilder;
    .restart local v19       #separator:Landroid/view/View;
    .restart local v22       #tv:Landroid/widget/TextView;
    .restart local v23       #v:Landroid/view/View;
    .restart local v24       #vh:Lcom/htc/calendar/AttendeesStatus$ViewHolder;
    :cond_7
    iget-object v2, v10, Lcom/htc/calendar/AttendeesStatus$Attendee;->mEmail:Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v13, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/AttendeesStatus;->mViewHolders:Ljava/util/HashMap;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    if-nez v14, :cond_8

    .line 453
    const/16 v2, 0x3f

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 458
    :goto_4
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 421
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 455
    :cond_8
    const-string v2, ", ?"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 460
    .end local v10           #attendee:Lcom/htc/calendar/AttendeesStatus$Attendee;
    .end local v13           #hmvh:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/calendar/AttendeesStatus$ViewHolder;>;"
    .end local v15           #name:Ljava/lang/String;
    .end local v19           #separator:Landroid/view/View;
    .end local v22           #tv:Landroid/widget/TextView;
    .end local v23           #v:Landroid/view/View;
    .end local v24           #vh:Lcom/htc/calendar/AttendeesStatus$ViewHolder;
    :cond_9
    const/16 v2, 0x29

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 462
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/AttendeesStatus;->mPresenceQueryHandler:Lcom/htc/calendar/AttendeesStatus$PresenceQueryHandler;

    sget-object v5, Lcom/htc/calendar/AttendeesStatus;->CONTACT_DATA_WITH_PRESENCE_URI:Landroid/net/Uri;

    sget-object v6, Lcom/htc/calendar/AttendeesStatus;->PRESENCE_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    move/from16 v3, p3

    move-object/from16 v4, p1

    invoke-virtual/range {v2 .. v9}, Lcom/htc/calendar/AttendeesStatus$PresenceQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private initAttendeesCursor()V
    .locals 13

    .prologue
    const-wide/16 v11, -0x1

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 277
    const/4 v4, -0x1

    iput v4, p0, Lcom/htc/calendar/AttendeesStatus;->mOriginalAttendeeResponse:I

    .line 278
    iput-wide v11, p0, Lcom/htc/calendar/AttendeesStatus;->mCalendarOwnerAttendeeId:J

    .line 279
    iput v7, p0, Lcom/htc/calendar/AttendeesStatus;->mNumOfAttendees:I

    .line 280
    iget-object v4, p0, Lcom/htc/calendar/AttendeesStatus;->mAttendeesCursor:Landroid/database/Cursor;

    if-eqz v4, :cond_4

    .line 281
    iget-object v4, p0, Lcom/htc/calendar/AttendeesStatus;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v4

    iput v4, p0, Lcom/htc/calendar/AttendeesStatus;->mNumOfAttendees:I

    .line 282
    const-string v4, "AttendeesStatus"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mNumOfAttendees: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/htc/calendar/AttendeesStatus;->mNumOfAttendees:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v4, p0, Lcom/htc/calendar/AttendeesStatus;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 284
    iget-object v4, p0, Lcom/htc/calendar/AttendeesStatus;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 285
    iget-object v4, p0, Lcom/htc/calendar/AttendeesStatus;->mDeclinedAttendees:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 286
    iget-object v4, p0, Lcom/htc/calendar/AttendeesStatus;->mTentativeAttendees:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 289
    :cond_0
    iget-object v4, p0, Lcom/htc/calendar/AttendeesStatus;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 290
    .local v3, status:I
    iget-object v4, p0, Lcom/htc/calendar/AttendeesStatus;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 291
    .local v2, name:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/calendar/AttendeesStatus;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, email:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/calendar/AttendeesStatus;->mAttendeesCursor:Landroid/database/Cursor;

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-ne v4, v9, :cond_3

    .line 296
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 297
    iput-object v2, p0, Lcom/htc/calendar/AttendeesStatus;->mOrganizer:Ljava/lang/String;

    .line 302
    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 303
    invoke-static {p0}, Lcom/htc/calendar/Utils;->getExchangeLoginName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 304
    .local v1, exchangeAcnt:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 305
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 306
    iput-boolean v8, p0, Lcom/htc/calendar/AttendeesStatus;->mIsOrganizer:Z

    .line 312
    .end local v1           #exchangeAcnt:Ljava/lang/String;
    :cond_2
    :goto_1
    const-string v4, "AttendeesStatus"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mOrganizer:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_3
    iget-wide v4, p0, Lcom/htc/calendar/AttendeesStatus;->mCalendarOwnerAttendeeId:J

    cmp-long v4, v4, v11

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/htc/calendar/AttendeesStatus;->mCalendarOwnerAccount:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 316
    iget-object v4, p0, Lcom/htc/calendar/AttendeesStatus;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/htc/calendar/AttendeesStatus;->mCalendarOwnerAttendeeId:J

    .line 317
    iget-object v4, p0, Lcom/htc/calendar/AttendeesStatus;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/htc/calendar/AttendeesStatus;->mOriginalAttendeeResponse:I

    .line 333
    :goto_2
    iget-object v4, p0, Lcom/htc/calendar/AttendeesStatus;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 334
    iget-object v4, p0, Lcom/htc/calendar/AttendeesStatus;->mAttendeesCursor:Landroid/database/Cursor;

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 336
    invoke-direct {p0}, Lcom/htc/calendar/AttendeesStatus;->updateAttendees()V

    .line 339
    .end local v0           #email:Ljava/lang/String;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #status:I
    :cond_4
    return-void

    .line 298
    .restart local v0       #email:Ljava/lang/String;
    .restart local v2       #name:Ljava/lang/String;
    .restart local v3       #status:I
    :cond_5
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 299
    iput-object v0, p0, Lcom/htc/calendar/AttendeesStatus;->mOrganizer:Ljava/lang/String;

    goto :goto_0

    .line 308
    .restart local v1       #exchangeAcnt:Ljava/lang/String;
    :cond_6
    iput-boolean v7, p0, Lcom/htc/calendar/AttendeesStatus;->mIsOrganizer:Z

    goto :goto_1

    .line 322
    .end local v1           #exchangeAcnt:Ljava/lang/String;
    :cond_7
    packed-switch v3, :pswitch_data_0

    .line 330
    iget-object v4, p0, Lcom/htc/calendar/AttendeesStatus;->mTentativeAttendees:Ljava/util/ArrayList;

    new-instance v5, Lcom/htc/calendar/AttendeesStatus$Attendee;

    invoke-direct {v5, v2, v0}, Lcom/htc/calendar/AttendeesStatus$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 324
    :pswitch_0
    iget-object v4, p0, Lcom/htc/calendar/AttendeesStatus;->mAcceptedAttendees:Ljava/util/ArrayList;

    new-instance v5, Lcom/htc/calendar/AttendeesStatus$Attendee;

    invoke-direct {v5, v2, v0}, Lcom/htc/calendar/AttendeesStatus$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 327
    :pswitch_1
    iget-object v4, p0, Lcom/htc/calendar/AttendeesStatus;->mDeclinedAttendees:Ljava/util/ArrayList;

    new-instance v5, Lcom/htc/calendar/AttendeesStatus$Attendee;

    invoke-direct {v5, v2, v0}, Lcom/htc/calendar/AttendeesStatus$Attendee;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initCalendarsCursor()V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/htc/calendar/AttendeesStatus;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/htc/calendar/AttendeesStatus;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 345
    :cond_0
    return-void
.end method

.method private initEventCursor()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 255
    iget-object v1, p0, Lcom/htc/calendar/AttendeesStatus;->mEventCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/calendar/AttendeesStatus;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 256
    :cond_0
    const/4 v0, 0x1

    .line 263
    :goto_0
    return v0

    .line 258
    :cond_1
    iget-object v1, p0, Lcom/htc/calendar/AttendeesStatus;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 259
    iget-object v1, p0, Lcom/htc/calendar/AttendeesStatus;->mEventCursor:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/htc/calendar/AttendeesStatus;->mEventId:J

    .line 261
    iget-object v1, p0, Lcom/htc/calendar/AttendeesStatus;->mEventCursor:Landroid/database/Cursor;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/htc/calendar/AttendeesStatus;->mEventCalendarId:I

    goto :goto_0
.end method

.method private setHtcTitle()V
    .locals 6

    .prologue
    .line 546
    invoke-virtual {p0}, Lcom/htc/calendar/AttendeesStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 547
    .local v0, res:Landroid/content/res/Resources;
    if-nez v0, :cond_0

    .line 548
    const-string v4, "AttendeesStatus"

    const-string v5, "res is null, on setHtcTitle"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_0
    const v4, 0x7f080017

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 552
    .local v1, strTitle:Ljava/lang/String;
    const v4, 0x2020053

    invoke-virtual {p0, v4}, Lcom/htc/calendar/AttendeesStatus;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 553
    .local v2, tv:Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    const v4, 0x2020054

    invoke-virtual {p0, v4}, Lcom/htc/calendar/AttendeesStatus;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 556
    .local v3, tvShadow:Landroid/widget/TextView;
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 557
    return-void
.end method

.method private updateAttendees()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 357
    const v4, 0x7f0d0024

    invoke-virtual {p0, v4}, Lcom/htc/calendar/AttendeesStatus;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 359
    .local v0, attendeesLayout:Landroid/widget/LinearLayout;
    if-nez v0, :cond_0

    .line 360
    const-string v4, "AttendeesStatus"

    const-string v5, "Can\'t find R.id.attendee_list"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :goto_0
    return-void

    .line 364
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    .line 366
    iget-object v4, p0, Lcom/htc/calendar/AttendeesStatus;->mViewHolders:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 368
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 369
    .local v1, hmAccepted:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/calendar/AttendeesStatus$ViewHolder;>;"
    iget-object v4, p0, Lcom/htc/calendar/AttendeesStatus;->mViewHolders:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 372
    .local v2, hmDeclined:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/calendar/AttendeesStatus$ViewHolder;>;"
    iget-object v4, p0, Lcom/htc/calendar/AttendeesStatus;->mViewHolders:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 375
    .local v3, hmTentative:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/htc/calendar/AttendeesStatus$ViewHolder;>;"
    iget-object v4, p0, Lcom/htc/calendar/AttendeesStatus;->mViewHolders:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    iget-object v4, p0, Lcom/htc/calendar/AttendeesStatus;->mAcceptedAttendees:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v0, v6}, Lcom/htc/calendar/AttendeesStatus;->addAttendeesToLayout(Ljava/util/ArrayList;Landroid/widget/LinearLayout;I)V

    .line 378
    iget-object v4, p0, Lcom/htc/calendar/AttendeesStatus;->mDeclinedAttendees:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v0, v8}, Lcom/htc/calendar/AttendeesStatus;->addAttendeesToLayout(Ljava/util/ArrayList;Landroid/widget/LinearLayout;I)V

    .line 379
    iget-object v4, p0, Lcom/htc/calendar/AttendeesStatus;->mTentativeAttendees:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v0, v7}, Lcom/htc/calendar/AttendeesStatus;->addAttendeesToLayout(Ljava/util/ArrayList;Landroid/widget/LinearLayout;I)V

    goto :goto_0
.end method

.method private updateTitle()V
    .locals 2

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/htc/calendar/AttendeesStatus;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 242
    .local v0, res:Landroid/content/res/Resources;
    iget-boolean v1, p0, Lcom/htc/calendar/AttendeesStatus;->mIsOrganizer:Z

    if-nez v1, :cond_0

    .line 243
    const v1, 0x7f080097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/calendar/AttendeesStatus;->setTitle(Ljava/lang/CharSequence;)V

    .line 247
    :goto_0
    return-void

    .line 245
    :cond_0
    const v1, 0x7f080096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/calendar/AttendeesStatus;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 561
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 562
    invoke-static {p0}, Lcom/htc/calendar/HtcUtils;->getAppBackground(Landroid/content/Context;)I

    move-result v0

    .line 563
    .local v0, bkgId:I
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/calendar/AttendeesStatus;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 564
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 174
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 177
    invoke-virtual {p0}, Lcom/htc/calendar/AttendeesStatus;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 178
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/calendar/AttendeesStatus;->mUri:Landroid/net/Uri;

    .line 179
    invoke-virtual {p0}, Lcom/htc/calendar/AttendeesStatus;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 181
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/htc/calendar/AttendeesStatus;->mUri:Landroid/net/Uri;

    sget-object v6, Lcom/htc/calendar/AttendeesStatus;->EVENT_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p0, v5, v6, v12, v12}, Lcom/htc/calendar/AttendeesStatus;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/calendar/AttendeesStatus;->mEventCursor:Landroid/database/Cursor;

    .line 182
    invoke-direct {p0}, Lcom/htc/calendar/AttendeesStatus;->initEventCursor()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/htc/calendar/AttendeesStatus;->finish()V

    .line 225
    :goto_0
    return-void

    .line 188
    :cond_0
    const v5, 0x7f03000e

    invoke-virtual {p0, v5}, Lcom/htc/calendar/AttendeesStatus;->setContentView(I)V

    .line 189
    new-instance v5, Lcom/htc/calendar/AttendeesStatus$PresenceQueryHandler;

    invoke-direct {v5, p0, p0, v0}, Lcom/htc/calendar/AttendeesStatus$PresenceQueryHandler;-><init>(Lcom/htc/calendar/AttendeesStatus;Landroid/content/Context;Landroid/content/ContentResolver;)V

    iput-object v5, p0, Lcom/htc/calendar/AttendeesStatus;->mPresenceQueryHandler:Lcom/htc/calendar/AttendeesStatus$PresenceQueryHandler;

    .line 190
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Lcom/htc/calendar/AttendeesStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    iput-object v5, p0, Lcom/htc/calendar/AttendeesStatus;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 193
    sget-object v3, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 194
    .local v3, uri:Landroid/net/Uri;
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "_id=%d"

    new-array v7, v11, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/htc/calendar/AttendeesStatus;->mEventCursor:Landroid/database/Cursor;

    const/4 v9, 0x4

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 195
    .local v4, where:Ljava/lang/String;
    sget-object v5, Lcom/htc/calendar/AttendeesStatus;->CALENDARS_PROJECTION:[Ljava/lang/String;

    invoke-virtual {p0, v3, v5, v4, v12}, Lcom/htc/calendar/AttendeesStatus;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/calendar/AttendeesStatus;->mCalendarsCursor:Landroid/database/Cursor;

    .line 196
    const-string v5, ""

    iput-object v5, p0, Lcom/htc/calendar/AttendeesStatus;->mCalendarOwnerAccount:Ljava/lang/String;

    .line 197
    iget-object v5, p0, Lcom/htc/calendar/AttendeesStatus;->mCalendarsCursor:Landroid/database/Cursor;

    if-eqz v5, :cond_1

    .line 198
    iget-object v5, p0, Lcom/htc/calendar/AttendeesStatus;->mCalendarsCursor:Landroid/database/Cursor;

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 199
    iget-object v5, p0, Lcom/htc/calendar/AttendeesStatus;->mCalendarsCursor:Landroid/database/Cursor;

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/calendar/AttendeesStatus;->mCalendarOwnerAccount:Ljava/lang/String;

    .line 201
    :cond_1
    iget-object v5, p0, Lcom/htc/calendar/AttendeesStatus;->mEventCursor:Landroid/database/Cursor;

    const/16 v6, 0x10

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, eventOrganizer:Ljava/lang/String;
    iget-object v5, p0, Lcom/htc/calendar/AttendeesStatus;->mCalendarOwnerAccount:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 204
    iget-object v5, p0, Lcom/htc/calendar/AttendeesStatus;->mCalendarOwnerAccount:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/htc/calendar/AttendeesStatus;->mIsOrganizer:Z

    .line 208
    :goto_1
    iget-object v5, p0, Lcom/htc/calendar/AttendeesStatus;->mEventCursor:Landroid/database/Cursor;

    const/16 v6, 0x11

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/calendar/AttendeesStatus;->mCurrentSelectCalendarSyncAccountType:Ljava/lang/String;

    .line 209
    const-string v5, "AttendeesStatus"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCurrentSelectCalendarSyncAccountType: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/calendar/AttendeesStatus;->mCurrentSelectCalendarSyncAccountType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v5, p0, Lcom/htc/calendar/AttendeesStatus;->mCurrentSelectCalendarSyncAccountType:Ljava/lang/String;

    invoke-static {v5}, Lcom/htc/calendar/HtcUtils;->isHTCExchangeEvent(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 211
    iput-boolean v11, p0, Lcom/htc/calendar/AttendeesStatus;->mExchangeEvent:Z

    .line 218
    :goto_2
    sget-object v3, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    .line 219
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "event_id=%d"

    new-array v7, v11, [Ljava/lang/Object;

    iget-wide v8, p0, Lcom/htc/calendar/AttendeesStatus;->mEventId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 220
    sget-object v5, Lcom/htc/calendar/AttendeesStatus;->ATTENDEES_PROJECTION:[Ljava/lang/String;

    const-string v6, "attendeeName ASC, attendeeEmail ASC"

    invoke-virtual {p0, v3, v5, v4, v6}, Lcom/htc/calendar/AttendeesStatus;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    iput-object v5, p0, Lcom/htc/calendar/AttendeesStatus;->mAttendeesCursor:Landroid/database/Cursor;

    .line 222
    iput-object v1, p0, Lcom/htc/calendar/AttendeesStatus;->mOrganizer:Ljava/lang/String;

    .line 224
    invoke-direct {p0}, Lcom/htc/calendar/AttendeesStatus;->setHtcTitle()V

    goto/16 :goto_0

    .line 206
    :cond_2
    iput-boolean v10, p0, Lcom/htc/calendar/AttendeesStatus;->mIsOrganizer:Z

    goto :goto_1

    .line 213
    :cond_3
    iput-boolean v10, p0, Lcom/htc/calendar/AttendeesStatus;->mExchangeEvent:Z

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 539
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 540
    iget-object v0, p0, Lcom/htc/calendar/AttendeesStatus;->mViewHolders:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/calendar/AttendeesStatus;->mViewHolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/htc/calendar/AttendeesStatus;->mViewHolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 543
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 349
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 350
    invoke-virtual {p0}, Lcom/htc/calendar/AttendeesStatus;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 229
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 230
    invoke-direct {p0}, Lcom/htc/calendar/AttendeesStatus;->initEventCursor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/htc/calendar/AttendeesStatus;->finish()V

    .line 238
    :goto_0
    return-void

    .line 235
    :cond_0
    invoke-direct {p0}, Lcom/htc/calendar/AttendeesStatus;->initAttendeesCursor()V

    .line 236
    invoke-direct {p0}, Lcom/htc/calendar/AttendeesStatus;->initCalendarsCursor()V

    .line 237
    invoke-direct {p0}, Lcom/htc/calendar/AttendeesStatus;->updateTitle()V

    goto :goto_0
.end method
