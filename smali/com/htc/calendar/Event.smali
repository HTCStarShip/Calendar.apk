.class public Lcom/htc/calendar/Event;
.super Ljava/lang/Object;
.source "Event.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/htc/calendar/Event;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MINUTES_OF_DAY:I = 0x5a0

.field private static final PROFILE:Z = false

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final PROJECTION_ACCESS_LEVEL_INDEX:I = 0x14

.field private static final PROJECTION_ALL_DAY_INDEX:I = 0x2

.field private static final PROJECTION_BEGIN_INDEX:I = 0x6

.field private static final PROJECTION_CALENDAR_ID_INDEX:I = 0x13

.field private static final PROJECTION_COLOR_INDEX:I = 0x3

.field private static final PROJECTION_END_DAY_INDEX:I = 0xa

.field private static final PROJECTION_END_INDEX:I = 0x7

.field private static final PROJECTION_END_MINUTE_INDEX:I = 0xc

.field private static final PROJECTION_EVENT_ID_INDEX:I = 0x5

.field private static final PROJECTION_FACEBOOK_SOURCE_ID:I = 0x18

.field private static final PROJECTION_FACEBOOK_TYPE_INDEX:I = 0x17

.field private static final PROJECTION_GUESTS_CAN_INVITE_OTHERS_INDEX:I = 0x12

.field private static final PROJECTION_HAS_ALARM_INDEX:I = 0xd

.field private static final PROJECTION_ICALENDAR_UID:I = 0x19

.field private static final PROJECTION_LOCATION_INDEX:I = 0x1

.field private static final PROJECTION_ORGANIZER_INDEX:I = 0x11

.field private static final PROJECTION_OWNER_ACCOUNT_INDEX:I = 0x15

.field private static final PROJECTION_RDATE_INDEX:I = 0xf

.field private static final PROJECTION_RRULE_INDEX:I = 0xe

.field private static final PROJECTION_SELF_ATTENDEE_STATUS_INDEX:I = 0x10

.field private static final PROJECTION_START_DAY_INDEX:I = 0x9

.field private static final PROJECTION_START_MINUTE_INDEX:I = 0xb

.field private static final PROJECTION_SYNC_ACCOUNT_TYPE_INDEX:I = 0x16

.field private static final PROJECTION_TIMEZONE_INDEX:I = 0x4

.field private static final PROJECTION_TITLE_INDEX:I = 0x0

.field private static final SORT_EVENTS_BY:Ljava/lang/String; = "begin ASC, end DESC, title ASC"

.field private static final TAG:Ljava/lang/String; = "Event"

.field private static group_indicator:I


# instance fields
.field public allDay:Z

.field public bottom:F

.field public color:I

.field public endDay:I

.field public endMillis:J

.field public endTime:I

.field public facebookSourceId:Ljava/lang/String;

.field public facebookType:Ljava/lang/String;

.field public guestsCanModify:Z

.field public hasAlarm:Z

.field public iCalGUID:Ljava/lang/String;

.field public id:J

.field public isRepeating:Z

.field public left:F

.field public location:Ljava/lang/CharSequence;

.field private mColumn:I

.field public mGroup:I

.field public mIsCrossDayEvent:Z

.field public mIsEventEditable:Z

.field private mMaxColumns:I

.field public nextDown:Lcom/htc/calendar/Event;

.field public nextLeft:Lcom/htc/calendar/Event;

.field public nextRight:Lcom/htc/calendar/Event;

.field public nextUp:Lcom/htc/calendar/Event;

.field public organizer:Ljava/lang/String;

.field public originalEndMillis:J

.field public originalStartMillis:J

.field public right:F

.field public selfAttendeeStatus:I

.field public startDay:I

.field public startMillis:J

.field public startTime:I

.field public syncAccountType:Ljava/lang/String;

.field public title:Ljava/lang/CharSequence;

.field public top:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 70
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "title"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "calendar_color"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "eventTimezone"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "event_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "end"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "startDay"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "endDay"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "startMinute"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "endMinute"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "rdate"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "selfAttendeeStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "organizer"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "guestsCanModify"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "calendar_access_level"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "ownerAccount"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "facebook_type"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "facebook_source_id"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "iCalGUID"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/calendar/Event;->PROJECTION:[Ljava/lang/String;

    .line 837
    sput v3, Lcom/htc/calendar/Event;->group_indicator:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-boolean v0, p0, Lcom/htc/calendar/Event;->mIsEventEditable:Z

    .line 165
    iput-boolean v0, p0, Lcom/htc/calendar/Event;->mIsCrossDayEvent:Z

    return-void
.end method

.method public static buildEventsFromCursor(Ljava/util/ArrayList;Landroid/database/Cursor;Landroid/content/res/Resources;IIZ)V
    .locals 6
    .parameter
    .parameter "cEvents"
    .parameter "res"
    .parameter "startDay"
    .parameter "endDay"
    .parameter "isCheckCrossDayEvent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/calendar/Event;",
            ">;",
            "Landroid/database/Cursor;",
            "Landroid/content/res/Resources;",
            "IIZ)V"
        }
    .end annotation

    .prologue
    .line 461
    .local p0, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/Event;>;"
    if-eqz p1, :cond_0

    if-nez p0, :cond_2

    .line 462
    :cond_0
    const-string v4, "Event"

    const-string v5, "buildEventsFromCursor: null cursor or null events list!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    :cond_1
    :goto_0
    return-void

    .line 466
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 467
    .local v0, count:I
    if-eqz v0, :cond_1

    .line 473
    :cond_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 475
    invoke-static {p2, p1, p5}, Lcom/htc/calendar/Event;->generateEventFromCursor(Landroid/content/res/Resources;Landroid/database/Cursor;Z)Ljava/util/ArrayList;

    move-result-object v3

    .line 476
    .local v3, tempEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/Event;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/calendar/Event;

    .line 477
    .local v1, ev:Lcom/htc/calendar/Event;
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 481
    .end local v1           #ev:Lcom/htc/calendar/Event;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #tempEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/Event;>;"
    :cond_4
    if-eqz p5, :cond_5

    .line 482
    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 484
    :cond_5
    invoke-static {p0}, Lcom/htc/calendar/Event;->computePositions(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method private static checkCrossDayEvents(Lcom/htc/calendar/Event;)Ljava/util/ArrayList;
    .locals 12
    .parameter "e"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/calendar/Event;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/calendar/Event;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v6, 0x5a0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 994
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 995
    .local v0, crossEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/Event;>;"
    invoke-static {p0}, Lcom/htc/calendar/Event;->isCrossDayEvent(Lcom/htc/calendar/Event;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 999
    move-object v2, p0

    .line 1001
    .local v2, event:Lcom/htc/calendar/Event;
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 1002
    .local v3, time:Landroid/text/format/Time;
    new-instance v1, Lcom/htc/calendar/Event;

    invoke-direct {v1}, Lcom/htc/calendar/Event;-><init>()V

    .line 1005
    .local v1, ev:Lcom/htc/calendar/Event;
    invoke-virtual {v2, v1}, Lcom/htc/calendar/Event;->copyTo(Lcom/htc/calendar/Event;)V

    .line 1006
    iget-wide v4, v2, Lcom/htc/calendar/Event;->startMillis:J

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 1007
    const/16 v4, 0x18

    iput v4, v3, Landroid/text/format/Time;->hour:I

    .line 1008
    iput v10, v3, Landroid/text/format/Time;->minute:I

    .line 1009
    iput v10, v3, Landroid/text/format/Time;->second:I

    .line 1010
    iget v4, v2, Lcom/htc/calendar/Event;->startDay:I

    iput v4, v1, Lcom/htc/calendar/Event;->endDay:I

    .line 1011
    iput v6, v1, Lcom/htc/calendar/Event;->endTime:I

    .line 1012
    invoke-virtual {v3, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/htc/calendar/Event;->endMillis:J

    .line 1013
    iput-boolean v11, v1, Lcom/htc/calendar/Event;->mIsCrossDayEvent:Z

    .line 1014
    iget-wide v4, v2, Lcom/htc/calendar/Event;->startMillis:J

    iput-wide v4, v1, Lcom/htc/calendar/Event;->originalStartMillis:J

    .line 1015
    iget-wide v4, v2, Lcom/htc/calendar/Event;->endMillis:J

    iput-wide v4, v1, Lcom/htc/calendar/Event;->originalEndMillis:J

    .line 1016
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1021
    new-instance v1, Lcom/htc/calendar/Event;

    .end local v1           #ev:Lcom/htc/calendar/Event;
    invoke-direct {v1}, Lcom/htc/calendar/Event;-><init>()V

    .line 1022
    .restart local v1       #ev:Lcom/htc/calendar/Event;
    invoke-virtual {v2, v1}, Lcom/htc/calendar/Event;->copyTo(Lcom/htc/calendar/Event;)V

    .line 1024
    iget-wide v4, v2, Lcom/htc/calendar/Event;->startMillis:J

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 1025
    iget v4, v3, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Landroid/text/format/Time;->monthDay:I

    .line 1026
    iput v10, v3, Landroid/text/format/Time;->hour:I

    .line 1027
    iput v10, v3, Landroid/text/format/Time;->minute:I

    .line 1028
    iput v10, v3, Landroid/text/format/Time;->second:I

    .line 1030
    iget v4, v2, Lcom/htc/calendar/Event;->startDay:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lcom/htc/calendar/Event;->startDay:I

    .line 1031
    iget v4, v2, Lcom/htc/calendar/Event;->endDay:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v1, Lcom/htc/calendar/Event;->endDay:I

    .line 1032
    iput-boolean v11, v1, Lcom/htc/calendar/Event;->allDay:Z

    .line 1033
    iput v10, v1, Lcom/htc/calendar/Event;->startTime:I

    .line 1034
    iput v6, v1, Lcom/htc/calendar/Event;->endTime:I

    .line 1035
    invoke-virtual {v3, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/htc/calendar/Event;->offsetToUTCDay(J)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/htc/calendar/Event;->startMillis:J

    .line 1036
    iget-wide v4, v1, Lcom/htc/calendar/Event;->startMillis:J

    const-wide/32 v6, 0x5265c00

    iget v8, v2, Lcom/htc/calendar/Event;->endDay:I

    iget v9, v2, Lcom/htc/calendar/Event;->startDay:I

    sub-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    int-to-long v8, v8

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, v1, Lcom/htc/calendar/Event;->endMillis:J

    .line 1037
    iput-boolean v11, v1, Lcom/htc/calendar/Event;->mIsCrossDayEvent:Z

    .line 1038
    iget-wide v4, v2, Lcom/htc/calendar/Event;->startMillis:J

    iput-wide v4, v1, Lcom/htc/calendar/Event;->originalStartMillis:J

    .line 1039
    iget-wide v4, v2, Lcom/htc/calendar/Event;->endMillis:J

    iput-wide v4, v1, Lcom/htc/calendar/Event;->originalEndMillis:J

    .line 1040
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1045
    new-instance v1, Lcom/htc/calendar/Event;

    .end local v1           #ev:Lcom/htc/calendar/Event;
    invoke-direct {v1}, Lcom/htc/calendar/Event;-><init>()V

    .line 1046
    .restart local v1       #ev:Lcom/htc/calendar/Event;
    invoke-virtual {v2, v1}, Lcom/htc/calendar/Event;->copyTo(Lcom/htc/calendar/Event;)V

    .line 1047
    iget-wide v4, v2, Lcom/htc/calendar/Event;->endMillis:J

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 1048
    iput v10, v3, Landroid/text/format/Time;->hour:I

    .line 1049
    iput v10, v3, Landroid/text/format/Time;->minute:I

    .line 1050
    iput v10, v3, Landroid/text/format/Time;->second:I

    .line 1051
    iget v4, v2, Lcom/htc/calendar/Event;->endDay:I

    iput v4, v1, Lcom/htc/calendar/Event;->startDay:I

    .line 1052
    iput v10, v1, Lcom/htc/calendar/Event;->startTime:I

    .line 1053
    invoke-virtual {v3, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/htc/calendar/Event;->startMillis:J

    .line 1054
    iput-boolean v11, v1, Lcom/htc/calendar/Event;->mIsCrossDayEvent:Z

    .line 1055
    iget-wide v4, v2, Lcom/htc/calendar/Event;->startMillis:J

    iput-wide v4, v1, Lcom/htc/calendar/Event;->originalStartMillis:J

    .line 1056
    iget-wide v4, v2, Lcom/htc/calendar/Event;->endMillis:J

    iput-wide v4, v1, Lcom/htc/calendar/Event;->originalEndMillis:J

    .line 1057
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1065
    .end local v1           #ev:Lcom/htc/calendar/Event;
    .end local v2           #event:Lcom/htc/calendar/Event;
    .end local v3           #time:Landroid/text/format/Time;
    :goto_0
    return-object v0

    .line 1062
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 312
    if-eqz p1, :cond_0

    .line 313
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, aStr:Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_1

    .line 318
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 322
    .local v1, bStr:Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 315
    .end local v0           #aStr:Ljava/lang/String;
    .end local v1           #bStr:Ljava/lang/String;
    :cond_0
    const-string v0, ""

    .restart local v0       #aStr:Ljava/lang/String;
    goto :goto_0

    .line 320
    :cond_1
    const-string v1, ""

    .restart local v1       #bStr:Ljava/lang/String;
    goto :goto_1
.end method

.method protected static computePositions(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/calendar/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, eventsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/Event;>;"
    const/4 v0, 0x0

    .line 577
    if-nez p0, :cond_0

    .line 586
    :goto_0
    return-void

    .line 580
    :cond_0
    sput v0, Lcom/htc/calendar/Event;->group_indicator:I

    .line 584
    invoke-static {p0, v0}, Lcom/htc/calendar/Event;->doComputePositions(Ljava/util/ArrayList;Z)V

    .line 585
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/htc/calendar/Event;->doComputePositions(Ljava/util/ArrayList;Z)V

    goto :goto_0
.end method

.method private static createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/calendar/Event;
    .locals 4
    .parameter
    .parameter "id"
    .parameter "startMinute"
    .parameter "endMinute"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/calendar/Event;",
            ">;III)",
            "Lcom/htc/calendar/Event;"
        }
    .end annotation

    .prologue
    .local p0, evList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/Event;>;"
    const/4 v3, 0x1

    .line 725
    new-instance v0, Lcom/htc/calendar/Event;

    invoke-direct {v0}, Lcom/htc/calendar/Event;-><init>()V

    .line 726
    .local v0, ev:Lcom/htc/calendar/Event;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ev"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/calendar/Event;->title:Ljava/lang/CharSequence;

    .line 727
    iput v3, v0, Lcom/htc/calendar/Event;->startDay:I

    .line 728
    iput v3, v0, Lcom/htc/calendar/Event;->endDay:I

    .line 729
    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lcom/htc/calendar/Event;->setStartMillis(J)V

    .line 730
    int-to-long v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/htc/calendar/Event;->setEndMillis(J)V

    .line 731
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 732
    return-object v0
.end method

.method private static createTestEventList()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/calendar/Event;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v7, 0x14

    const/16 v6, 0x22

    const/16 v5, 0x20

    const/16 v4, 0xa

    const/4 v3, 0x5

    .line 691
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 692
    .local v0, evList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/Event;>;"
    const/4 v1, 0x1

    invoke-static {v0, v1, v3, v4}, Lcom/htc/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/calendar/Event;

    .line 693
    const/4 v1, 0x2

    invoke-static {v0, v1, v3, v4}, Lcom/htc/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/calendar/Event;

    .line 694
    const/4 v1, 0x3

    const/16 v2, 0xf

    invoke-static {v0, v1, v2, v7}, Lcom/htc/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/calendar/Event;

    .line 695
    const/4 v1, 0x4

    const/16 v2, 0x19

    invoke-static {v0, v1, v7, v2}, Lcom/htc/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/calendar/Event;

    .line 696
    const/16 v1, 0x1e

    const/16 v2, 0x46

    invoke-static {v0, v3, v1, v2}, Lcom/htc/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/calendar/Event;

    .line 697
    const/4 v1, 0x6

    const/16 v2, 0x28

    invoke-static {v0, v1, v5, v2}, Lcom/htc/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/calendar/Event;

    .line 698
    const/4 v1, 0x7

    const/16 v2, 0x28

    invoke-static {v0, v1, v5, v2}, Lcom/htc/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/calendar/Event;

    .line 699
    const/16 v1, 0x8

    const/16 v2, 0x26

    invoke-static {v0, v1, v6, v2}, Lcom/htc/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/calendar/Event;

    .line 700
    const/16 v1, 0x9

    const/16 v2, 0x26

    invoke-static {v0, v1, v6, v2}, Lcom/htc/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/calendar/Event;

    .line 701
    const/16 v1, 0x2a

    const/16 v2, 0x32

    invoke-static {v0, v4, v1, v2}, Lcom/htc/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/calendar/Event;

    .line 702
    const/16 v1, 0xb

    const/16 v2, 0x2d

    const/16 v3, 0x3c

    invoke-static {v0, v1, v2, v3}, Lcom/htc/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/calendar/Event;

    .line 703
    const/16 v1, 0xc

    const/16 v2, 0x37

    const/16 v3, 0x5a

    invoke-static {v0, v1, v2, v3}, Lcom/htc/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/calendar/Event;

    .line 704
    const/16 v1, 0xd

    const/16 v2, 0x41

    const/16 v3, 0x4b

    invoke-static {v0, v1, v2, v3}, Lcom/htc/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/calendar/Event;

    .line 706
    const/16 v1, 0x15

    const/16 v2, 0x69

    const/16 v3, 0x82

    invoke-static {v0, v1, v2, v3}, Lcom/htc/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/calendar/Event;

    .line 707
    const/16 v1, 0x16

    const/16 v2, 0x6e

    const/16 v3, 0x78

    invoke-static {v0, v1, v2, v3}, Lcom/htc/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/calendar/Event;

    .line 708
    const/16 v1, 0x17

    const/16 v2, 0x73

    const/16 v3, 0x82

    invoke-static {v0, v1, v2, v3}, Lcom/htc/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/calendar/Event;

    .line 709
    const/16 v1, 0x18

    const/16 v2, 0x7d

    const/16 v3, 0x8c

    invoke-static {v0, v1, v2, v3}, Lcom/htc/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/calendar/Event;

    .line 710
    const/16 v1, 0x19

    const/16 v2, 0x7f

    const/16 v3, 0x87

    invoke-static {v0, v1, v2, v3}, Lcom/htc/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/calendar/Event;

    .line 712
    const/16 v1, 0x1f

    const/16 v2, 0x96

    const/16 v3, 0xa0

    invoke-static {v0, v1, v2, v3}, Lcom/htc/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/calendar/Event;

    .line 713
    const/16 v1, 0x98

    const/16 v2, 0xa2

    invoke-static {v0, v5, v1, v2}, Lcom/htc/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/calendar/Event;

    .line 714
    const/16 v1, 0x21

    const/16 v2, 0x99

    const/16 v3, 0xa3

    invoke-static {v0, v1, v2, v3}, Lcom/htc/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/calendar/Event;

    .line 715
    const/16 v1, 0x9b

    const/16 v2, 0xaa

    invoke-static {v0, v6, v1, v2}, Lcom/htc/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/calendar/Event;

    .line 716
    const/16 v1, 0x23

    const/16 v2, 0x9e

    const/16 v3, 0xaf

    invoke-static {v0, v1, v2, v3}, Lcom/htc/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/calendar/Event;

    .line 717
    const/16 v1, 0x24

    const/16 v2, 0xa5

    const/16 v3, 0xb4

    invoke-static {v0, v1, v2, v3}, Lcom/htc/calendar/Event;->createTestEvent(Ljava/util/ArrayList;III)Lcom/htc/calendar/Event;

    .line 719
    return-object v0
.end method

.method private debug(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 988
    return-void
.end method

.method private static doComputePositions(Ljava/util/ArrayList;Z)V
    .locals 24
    .parameter
    .parameter "doAllDayEvents"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/calendar/Event;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 590
    .local p0, eventsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/Event;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 591
    .local v3, activeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/Event;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 593
    .local v11, groupList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/Event;>;"
    const-wide/16 v5, 0x0

    .line 594
    .local v5, colMask:J
    const/16 v17, 0x0

    .line 595
    .local v17, maxCols:I
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/htc/calendar/Event;

    .line 597
    .local v10, event:Lcom/htc/calendar/Event;
    iget-boolean v0, v10, Lcom/htc/calendar/Event;->allDay:Z

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, p1

    if-ne v0, v1, :cond_0

    .line 600
    invoke-virtual {v10}, Lcom/htc/calendar/Event;->getStartMillis()J

    move-result-wide v18

    .line 612
    .local v18, start:J
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 613
    .local v15, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/calendar/Event;>;"
    :cond_1
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_2

    .line 614
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/calendar/Event;

    .line 617
    .local v2, active:Lcom/htc/calendar/Event;
    invoke-virtual {v2}, Lcom/htc/calendar/Event;->getEndMillis()J

    move-result-wide v20

    invoke-virtual {v2}, Lcom/htc/calendar/Event;->getStartMillis()J

    move-result-wide v22

    sub-long v20, v20, v22

    sget-wide v22, Lcom/htc/calendar/CalendarView;->EVENT_OVERWRAP_MARGIN_TIME:J

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    .line 619
    .local v7, duration:J
    invoke-virtual {v2}, Lcom/htc/calendar/Event;->getStartMillis()J

    move-result-wide v20

    add-long v20, v20, v7

    cmp-long v20, v20, v18

    if-gtz v20, :cond_1

    .line 628
    const-wide/16 v20, 0x1

    invoke-virtual {v2}, Lcom/htc/calendar/Event;->getColumn()I

    move-result v22

    shl-long v20, v20, v22

    const-wide/16 v22, -0x1

    xor-long v20, v20, v22

    and-long v5, v5, v20

    .line 629
    invoke-interface {v15}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 635
    .end local v2           #active:Lcom/htc/calendar/Event;
    .end local v7           #duration:J
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 637
    sget v12, Lcom/htc/calendar/Event;->group_indicator:I

    add-int/lit8 v20, v12, 0x1

    sput v20, Lcom/htc/calendar/Event;->group_indicator:I

    .line 639
    .local v12, group_label:I
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/calendar/Event;

    .line 640
    .local v9, ev:Lcom/htc/calendar/Event;
    invoke-direct {v9, v12}, Lcom/htc/calendar/Event;->setGroup(I)V

    .line 641
    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/htc/calendar/Event;->setMaxColumns(I)V

    goto :goto_2

    .line 643
    .end local v9           #ev:Lcom/htc/calendar/Event;
    :cond_3
    const/16 v17, 0x0

    .line 644
    const-wide/16 v5, 0x0

    .line 645
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 650
    .end local v12           #group_label:I
    .end local v14           #i$:Ljava/util/Iterator;
    :cond_4
    invoke-static {v5, v6}, Lcom/htc/calendar/Event;->findFirstZeroBit(J)I

    move-result v4

    .line 651
    .local v4, col:I
    const/16 v20, 0x40

    move/from16 v0, v20

    if-ne v4, v0, :cond_5

    .line 652
    const/16 v4, 0x3f

    .line 653
    :cond_5
    const-wide/16 v20, 0x1

    shl-long v20, v20, v4

    or-long v5, v5, v20

    .line 654
    invoke-virtual {v10, v4}, Lcom/htc/calendar/Event;->setColumn(I)V

    .line 655
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 656
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 658
    .local v16, len:I
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_0

    .line 659
    move/from16 v17, v16

    goto/16 :goto_0

    .line 662
    .end local v4           #col:I
    .end local v10           #event:Lcom/htc/calendar/Event;
    .end local v15           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/calendar/Event;>;"
    .end local v16           #len:I
    .end local v18           #start:J
    :cond_6
    sget v12, Lcom/htc/calendar/Event;->group_indicator:I

    add-int/lit8 v20, v12, 0x1

    sput v20, Lcom/htc/calendar/Event;->group_indicator:I

    .line 664
    .restart local v12       #group_label:I
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/calendar/Event;

    .line 665
    .restart local v9       #ev:Lcom/htc/calendar/Event;
    invoke-direct {v9, v12}, Lcom/htc/calendar/Event;->setGroup(I)V

    .line 666
    move/from16 v0, v17

    invoke-virtual {v9, v0}, Lcom/htc/calendar/Event;->setMaxColumns(I)V

    goto :goto_3

    .line 668
    .end local v9           #ev:Lcom/htc/calendar/Event;
    :cond_7
    return-void
.end method

.method public static findFirstZeroBit(J)I
    .locals 6
    .parameter "val"

    .prologue
    const/16 v1, 0x40

    .line 671
    const/4 v0, 0x0

    .local v0, ii:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 672
    const-wide/16 v2, 0x1

    shl-long/2addr v2, v0

    and-long/2addr v2, p0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 675
    .end local v0           #ii:I
    :goto_1
    return v0

    .line 671
    .restart local v0       #ii:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 675
    goto :goto_1
.end method

.method private static generateEventFromCursor(Landroid/content/res/Resources;Landroid/database/Cursor;Z)Ljava/util/ArrayList;
    .locals 16
    .parameter "res"
    .parameter "cEvents"
    .parameter "isCheckCrossDayEvent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Landroid/database/Cursor;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/calendar/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 494
    new-instance v1, Lcom/htc/calendar/Event;

    invoke-direct {v1}, Lcom/htc/calendar/Event;-><init>()V

    .line 495
    .local v1, e:Lcom/htc/calendar/Event;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 496
    .local v7, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/Event;>;"
    const/4 v13, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    iput-wide v13, v1, Lcom/htc/calendar/Event;->id:J

    .line 497
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Lcom/htc/calendar/Event;->title:Ljava/lang/CharSequence;

    .line 498
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Lcom/htc/calendar/Event;->location:Ljava/lang/CharSequence;

    .line 499
    const/4 v13, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    if-eqz v13, :cond_3

    const/4 v13, 0x1

    :goto_0
    iput-boolean v13, v1, Lcom/htc/calendar/Event;->allDay:Z

    .line 500
    const/16 v13, 0x11

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Lcom/htc/calendar/Event;->organizer:Ljava/lang/String;

    .line 501
    const/16 v13, 0x12

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x1

    :goto_1
    iput-boolean v13, v1, Lcom/htc/calendar/Event;->guestsCanModify:Z

    .line 503
    const/4 v13, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 505
    .local v12, timezone:Ljava/lang/String;
    iget-object v13, v1, Lcom/htc/calendar/Event;->title:Ljava/lang/CharSequence;

    if-eqz v13, :cond_0

    iget-object v13, v1, Lcom/htc/calendar/Event;->title:Ljava/lang/CharSequence;

    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-nez v13, :cond_1

    .line 506
    :cond_0
    const v13, 0x7f080078

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Lcom/htc/calendar/Event;->title:Ljava/lang/CharSequence;

    .line 509
    :cond_1
    const/4 v13, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-nez v13, :cond_5

    .line 511
    const/4 v13, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    iput v13, v1, Lcom/htc/calendar/Event;->color:I

    .line 516
    :goto_2
    const/4 v13, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 517
    .local v4, eStart:J
    const/4 v13, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 519
    .local v2, eEnd:J
    iput-wide v4, v1, Lcom/htc/calendar/Event;->startMillis:J

    .line 520
    const/16 v13, 0xb

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    iput v13, v1, Lcom/htc/calendar/Event;->startTime:I

    .line 521
    const/16 v13, 0x9

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    iput v13, v1, Lcom/htc/calendar/Event;->startDay:I

    .line 523
    iput-wide v2, v1, Lcom/htc/calendar/Event;->endMillis:J

    .line 524
    const/16 v13, 0xc

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    iput v13, v1, Lcom/htc/calendar/Event;->endTime:I

    .line 525
    const/16 v13, 0xa

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    iput v13, v1, Lcom/htc/calendar/Event;->endDay:I

    .line 526
    const/16 v13, 0xd

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    if-eqz v13, :cond_6

    const/4 v13, 0x1

    :goto_3
    iput-boolean v13, v1, Lcom/htc/calendar/Event;->hasAlarm:Z

    .line 529
    const/16 v13, 0xe

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 530
    .local v11, rrule:Ljava/lang/String;
    const/16 v13, 0xf

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 531
    .local v10, rdate:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 532
    :cond_2
    const/4 v13, 0x1

    iput-boolean v13, v1, Lcom/htc/calendar/Event;->isRepeating:Z

    .line 537
    :goto_4
    const/16 v13, 0x10

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    iput v13, v1, Lcom/htc/calendar/Event;->selfAttendeeStatus:I

    .line 539
    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Lcom/htc/calendar/Event;->isEventEditable(Landroid/database/Cursor;)Z

    move-result v13

    iput-boolean v13, v1, Lcom/htc/calendar/Event;->mIsEventEditable:Z

    .line 542
    const/16 v13, 0x18

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Lcom/htc/calendar/Event;->facebookSourceId:Ljava/lang/String;

    .line 543
    const/16 v13, 0x17

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Lcom/htc/calendar/Event;->facebookType:Ljava/lang/String;

    .line 544
    const/16 v13, 0x16

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Lcom/htc/calendar/Event;->syncAccountType:Ljava/lang/String;

    .line 545
    const/16 v13, 0x19

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Lcom/htc/calendar/Event;->iCalGUID:Ljava/lang/String;

    .line 546
    const-string v13, "Event"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "guid : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v1, Lcom/htc/calendar/Event;->iCalGUID:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    if-eqz p2, :cond_8

    .line 551
    invoke-static {v1}, Lcom/htc/calendar/Event;->checkCrossDayEvents(Lcom/htc/calendar/Event;)Ljava/util/ArrayList;

    move-result-object v9

    .line 553
    .local v9, newEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/Event;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/htc/calendar/Event;

    .line 554
    .local v6, ev:Lcom/htc/calendar/Event;
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 499
    .end local v2           #eEnd:J
    .end local v4           #eStart:J
    .end local v6           #ev:Lcom/htc/calendar/Event;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #newEvents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/Event;>;"
    .end local v10           #rdate:Ljava/lang/String;
    .end local v11           #rrule:Ljava/lang/String;
    .end local v12           #timezone:Ljava/lang/String;
    :cond_3
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 501
    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 513
    .restart local v12       #timezone:Ljava/lang/String;
    :cond_5
    const v13, 0x7f070024

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    iput v13, v1, Lcom/htc/calendar/Event;->color:I

    goto/16 :goto_2

    .line 526
    .restart local v2       #eEnd:J
    .restart local v4       #eStart:J
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 534
    .restart local v10       #rdate:Ljava/lang/String;
    .restart local v11       #rrule:Ljava/lang/String;
    :cond_7
    const/4 v13, 0x0

    iput-boolean v13, v1, Lcom/htc/calendar/Event;->isRepeating:Z

    goto/16 :goto_4

    .line 557
    :cond_8
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    :cond_9
    return-object v7
.end method

.method private static final getDarkerColor(I)I
    .locals 4
    .parameter "color"

    .prologue
    .line 684
    shr-int/lit8 v2, p0, 0x1

    const v3, 0x7f7f7f

    and-int v1, v2, v3

    .line 685
    .local v1, darker:I
    const/high16 v2, -0x100

    and-int v0, p0, v2

    .line 686
    .local v0, alpha:I
    or-int v2, v0, v1

    return v2
.end method

.method private static final instancesQuery(Landroid/content/ContentResolver;[Ljava/lang/String;IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter "cr"
    .parameter "projection"
    .parameter "startDay"
    .parameter "endDay"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "orderBy"

    .prologue
    .line 433
    const-string v7, "visible= 1"

    .line 434
    .local v7, WHERE_CALENDARS_SELECTED:Ljava/lang/String;
    const-string v6, "begin ASC"

    .line 436
    .local v6, DEFAULT_SORT_ORDER:Ljava/lang/String;
    sget-object v0, Landroid/provider/CalendarContract$Instances;->CONTENT_BY_DAY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    .line 437
    .local v8, builder:Landroid/net/Uri$Builder;
    int-to-long v0, p2

    invoke-static {v8, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 438
    int-to-long v0, p3

    invoke-static {v8, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 439
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    move-object p4, v7

    .line 444
    :goto_0
    new-instance v9, Landroid/text/format/Time;

    invoke-direct {v9}, Landroid/text/format/Time;-><init>()V

    .line 445
    .local v9, time:Landroid/text/format/Time;
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    if-nez p6, :cond_1

    move-object v5, v6

    :goto_1
    move-object v0, p0

    move-object v2, p1

    move-object v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 442
    .end local v9           #time:Landroid/text/format/Time;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    .restart local v9       #time:Landroid/text/format/Time;
    :cond_1
    move-object/from16 v5, p6

    .line 445
    goto :goto_1
.end method

.method private static isCrossDayEvent(Lcom/htc/calendar/Event;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/4 v0, 0x1

    .line 1069
    iget v1, p0, Lcom/htc/calendar/Event;->endDay:I

    iget v2, p0, Lcom/htc/calendar/Event;->startDay:I

    sub-int/2addr v1, v2

    if-le v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/htc/calendar/Event;->allDay:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isEventEditable(Landroid/database/Cursor;)Z
    .locals 13
    .parameter "cursor"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 841
    const/4 v9, 0x0

    .line 842
    .local v9, visibility:I
    const/4 v8, 0x2

    .line 844
    .local v8, relationship:I
    const/16 v12, 0x13

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 845
    .local v0, calId:J
    const/16 v12, 0x11

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 846
    .local v7, organizer:Ljava/lang/String;
    const/16 v12, 0x12

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    if-eqz v12, :cond_1

    move v5, v10

    .line 847
    .local v5, guestsCanModify:Z
    :goto_0
    const/16 v12, 0x17

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 849
    .local v4, fb_event_type:I
    const/4 v2, 0x0

    .line 850
    .local v2, calendarOwnerAccount:Ljava/lang/String;
    invoke-static {}, Landroid/provider/HtcExCalendar;->getGoogleAccountType()Ljava/lang/String;

    move-result-object v3

    .line 852
    .local v3, eventCalendar_syncAccountType:Ljava/lang/String;
    const/16 v12, 0x16

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 853
    const/16 v12, 0x14

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 854
    const/16 v12, 0x15

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 857
    invoke-static {}, Lcom/htc/calendar/CalendarContext;->getInstance()Lcom/htc/calendar/CalendarContext;

    move-result-object v12

    invoke-virtual {v12}, Lcom/htc/calendar/CalendarContext;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v3}, Lcom/htc/calendar/HtcUtils;->isHTCFacebookEvent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 883
    :cond_0
    :goto_1
    return v11

    .end local v2           #calendarOwnerAccount:Ljava/lang/String;
    .end local v3           #eventCalendar_syncAccountType:Ljava/lang/String;
    .end local v4           #fb_event_type:I
    .end local v5           #guestsCanModify:Z
    :cond_1
    move v5, v11

    .line 846
    goto :goto_0

    .line 869
    .restart local v2       #calendarOwnerAccount:Ljava/lang/String;
    .restart local v3       #eventCalendar_syncAccountType:Ljava/lang/String;
    .restart local v4       #fb_event_type:I
    .restart local v5       #guestsCanModify:Z
    :cond_2
    const/16 v12, 0x1f4

    if-lt v9, v12, :cond_0

    .line 874
    if-eqz v5, :cond_3

    move v11, v10

    .line 875
    goto :goto_1

    .line 879
    :cond_3
    const/4 v6, 0x0

    .line 880
    .local v6, isEditable:Z
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    :cond_4
    invoke-static {v3}, Lcom/htc/calendar/HtcUtils;->isHTCExchangeEvent(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-static {v3}, Lcom/htc/calendar/HtcUtils;->isHTCPCSyncEvent(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    :cond_5
    move v6, v10

    :goto_2
    move v11, v6

    .line 883
    goto :goto_1

    :cond_6
    move v6, v11

    .line 880
    goto :goto_2
.end method

.method public static loadEvents(Landroid/content/Context;Ljava/util/ArrayList;JIILjava/util/concurrent/atomic/AtomicInteger;)V
    .locals 21
    .parameter "context"
    .parameter
    .parameter "start"
    .parameter "days"
    .parameter "requestId"
    .parameter "sequenceNumber"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/calendar/Event;",
            ">;JII",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")V"
        }
    .end annotation

    .prologue
    .line 335
    .local p1, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/Event;>;"
    const/4 v14, 0x0

    .line 337
    .local v14, c:Landroid/database/Cursor;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->clear()V

    .line 339
    :try_start_0
    new-instance v19, Landroid/text/format/Time;

    invoke-direct/range {v19 .. v19}, Landroid/text/format/Time;-><init>()V

    .line 342
    .local v19, local:Landroid/text/format/Time;
    move-object/from16 v0, v19

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 343
    move-object/from16 v0, v19

    iget-wide v3, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, p2

    invoke-static {v0, v1, v3, v4}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v5

    .line 344
    .local v5, startDay:I
    add-int v6, v5, p4

    .line 346
    .local v6, endDay:I
    move-object/from16 v0, v19

    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    add-int v3, v3, p4

    move-object/from16 v0, v19

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 347
    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v16

    .line 368
    .local v16, end:J
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 369
    .local v20, prefs:Landroid/content/SharedPreferences;
    const-string v3, "preferences_hide_declined"

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 372
    .local v18, hideDeclined:Z
    const/4 v7, 0x0

    .line 373
    .local v7, where:Ljava/lang/String;
    if-eqz v18, :cond_0

    .line 374
    const-string v7, "selfAttendeeStatus!=2"

    .line 378
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/htc/calendar/Event;->PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "begin ASC, end DESC, title ASC"

    invoke-static/range {v3 .. v9}, Lcom/htc/calendar/Event;->instancesQuery(Landroid/content/ContentResolver;[Ljava/lang/String;IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 381
    .end local v14           #c:Landroid/database/Cursor;
    .local v9, c:Landroid/database/Cursor;
    if-nez v9, :cond_2

    .line 382
    :try_start_1
    const-string v3, "Cal"

    const-string v4, "loadEvents() returned null cursor!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 401
    if-eqz v9, :cond_1

    .line 402
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 403
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 410
    .end local v5           #startDay:I
    .end local v6           #endDay:I
    .end local v7           #where:Ljava/lang/String;
    .end local v16           #end:J
    .end local v18           #hideDeclined:Z
    .end local v19           #local:Landroid/text/format/Time;
    .end local v20           #prefs:Landroid/content/SharedPreferences;
    :cond_1
    :goto_0
    return-void

    .line 388
    .restart local v5       #startDay:I
    .restart local v6       #endDay:I
    .restart local v7       #where:Ljava/lang/String;
    .restart local v16       #end:J
    .restart local v18       #hideDeclined:Z
    .restart local v19       #local:Landroid/text/format/Time;
    .restart local v20       #prefs:Landroid/content/SharedPreferences;
    :cond_2
    :try_start_2
    invoke-virtual/range {p6 .. p6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v3

    move/from16 v0, p5

    if-eq v0, v3, :cond_3

    .line 401
    if-eqz v9, :cond_1

    .line 402
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 403
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 392
    :cond_3
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/4 v13, 0x0

    move-object/from16 v8, p1

    move v11, v5

    move v12, v6

    invoke-static/range {v8 .. v13}, Lcom/htc/calendar/Event;->buildEventsFromCursor(Ljava/util/ArrayList;Landroid/database/Cursor;Landroid/content/res/Resources;IIZ)V

    .line 394
    invoke-static/range {p1 .. p1}, Lcom/htc/calendar/Event;->computePositions(Ljava/util/ArrayList;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 401
    if-eqz v9, :cond_1

    .line 402
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 403
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 395
    .end local v5           #startDay:I
    .end local v6           #endDay:I
    .end local v7           #where:Ljava/lang/String;
    .end local v9           #c:Landroid/database/Cursor;
    .end local v16           #end:J
    .end local v18           #hideDeclined:Z
    .end local v19           #local:Landroid/text/format/Time;
    .end local v20           #prefs:Landroid/content/SharedPreferences;
    .restart local v14       #c:Landroid/database/Cursor;
    :catch_0
    move-exception v15

    move-object v9, v14

    .line 396
    .end local v14           #c:Landroid/database/Cursor;
    .restart local v9       #c:Landroid/database/Cursor;
    .local v15, e:Landroid/database/sqlite/SQLiteDiskIOException;
    :goto_1
    :try_start_4
    const-string v3, "Event"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SQLiteDiskIOException, loadEvents exception: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDiskIOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const v3, 0x20c0165

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 401
    if-eqz v9, :cond_1

    .line 402
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 403
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 398
    .end local v9           #c:Landroid/database/Cursor;
    .end local v15           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    .restart local v14       #c:Landroid/database/Cursor;
    :catch_1
    move-exception v15

    move-object v9, v14

    .line 399
    .end local v14           #c:Landroid/database/Cursor;
    .restart local v9       #c:Landroid/database/Cursor;
    .local v15, e:Ljava/lang/Exception;
    :goto_2
    :try_start_5
    const-string v3, "Event"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadEvents exception: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 401
    if-eqz v9, :cond_1

    .line 402
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 403
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 401
    .end local v9           #c:Landroid/database/Cursor;
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v14       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    move-object v9, v14

    .end local v14           #c:Landroid/database/Cursor;
    .restart local v9       #c:Landroid/database/Cursor;
    :goto_3
    if-eqz v9, :cond_4

    .line 402
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4

    .line 403
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v3

    .line 401
    :catchall_1
    move-exception v3

    goto :goto_3

    .line 398
    .restart local v5       #startDay:I
    .restart local v6       #endDay:I
    .restart local v7       #where:Ljava/lang/String;
    .restart local v16       #end:J
    .restart local v18       #hideDeclined:Z
    .restart local v19       #local:Landroid/text/format/Time;
    .restart local v20       #prefs:Landroid/content/SharedPreferences;
    :catch_2
    move-exception v15

    goto :goto_2

    .line 395
    :catch_3
    move-exception v15

    goto :goto_1
.end method

.method public static loadEvents(Landroid/content/SharedPreferences;Landroid/content/res/Resources;Landroid/content/ContentResolver;Ljava/util/ArrayList;JIILjava/util/concurrent/atomic/AtomicInteger;)V
    .locals 10
    .parameter "prefs"
    .parameter "res"
    .parameter "resolver"
    .parameter
    .parameter "start"
    .parameter "days"
    .parameter "requestId"
    .parameter "sequenceNumber"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Landroid/content/res/Resources;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/calendar/Event;",
            ">;JII",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ")V"
        }
    .end annotation

    .prologue
    .line 889
    .local p3, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/Event;>;"
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v9}, Lcom/htc/calendar/Event;->loadEvents(Landroid/content/SharedPreferences;Landroid/content/res/Resources;Landroid/content/ContentResolver;Ljava/util/ArrayList;JIILjava/util/concurrent/atomic/AtomicInteger;Z)V

    .line 890
    return-void
.end method

.method public static loadEvents(Landroid/content/SharedPreferences;Landroid/content/res/Resources;Landroid/content/ContentResolver;Ljava/util/ArrayList;JIILjava/util/concurrent/atomic/AtomicInteger;Z)V
    .locals 20
    .parameter "prefs"
    .parameter "res"
    .parameter "resolver"
    .parameter
    .parameter "start"
    .parameter "days"
    .parameter "requestId"
    .parameter "sequenceNumber"
    .parameter "isCheckCrossDayEvent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Landroid/content/res/Resources;",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/htc/calendar/Event;",
            ">;JII",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 899
    .local p3, events:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/calendar/Event;>;"
    const/4 v14, 0x0

    .line 901
    .local v14, c:Landroid/database/Cursor;
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->clear()V

    .line 903
    :try_start_0
    new-instance v19, Landroid/text/format/Time;

    invoke-direct/range {v19 .. v19}, Landroid/text/format/Time;-><init>()V

    .line 906
    .local v19, local:Landroid/text/format/Time;
    move-object/from16 v0, v19

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 907
    move-object/from16 v0, v19

    iget-wide v3, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, p4

    invoke-static {v0, v1, v3, v4}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v5

    .line 908
    .local v5, startDay:I
    add-int v6, v5, p6

    .line 910
    .local v6, endDay:I
    move-object/from16 v0, v19

    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    add-int v3, v3, p6

    move-object/from16 v0, v19

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 911
    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v16

    .line 933
    .local v16, end:J
    const-string v3, "preferences_hide_declined"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 936
    .local v18, hideDeclined:Z
    const/4 v7, 0x0

    .line 937
    .local v7, where:Ljava/lang/String;
    if-eqz v18, :cond_0

    .line 938
    const-string v7, "selfAttendeeStatus!=2"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 943
    :cond_0
    :try_start_1
    sget-object v4, Lcom/htc/calendar/Event;->PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "begin ASC, end DESC, title ASC"

    move-object/from16 v3, p2

    invoke-static/range {v3 .. v9}, Lcom/htc/calendar/Event;->instancesQuery(Landroid/content/ContentResolver;[Ljava/lang/String;IILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    .line 950
    .end local v14           #c:Landroid/database/Cursor;
    .local v9, c:Landroid/database/Cursor;
    :goto_0
    if-nez v9, :cond_2

    .line 951
    :try_start_2
    const-string v3, "Cal"

    const-string v4, "loadEvents() returned null cursor!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 967
    if-eqz v9, :cond_1

    .line 968
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 969
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 976
    .end local v5           #startDay:I
    .end local v6           #endDay:I
    .end local v7           #where:Ljava/lang/String;
    .end local v16           #end:J
    .end local v18           #hideDeclined:Z
    .end local v19           #local:Landroid/text/format/Time;
    :cond_1
    :goto_1
    return-void

    .line 945
    .end local v9           #c:Landroid/database/Cursor;
    .restart local v5       #startDay:I
    .restart local v6       #endDay:I
    .restart local v7       #where:Ljava/lang/String;
    .restart local v14       #c:Landroid/database/Cursor;
    .restart local v16       #end:J
    .restart local v18       #hideDeclined:Z
    .restart local v19       #local:Landroid/text/format/Time;
    :catch_0
    move-exception v15

    .line 946
    .local v15, e:Ljava/lang/Exception;
    :try_start_3
    const-string v3, "Event"

    const-string v4, "Instances.query error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 947
    const/4 v9, 0x0

    .end local v14           #c:Landroid/database/Cursor;
    .restart local v9       #c:Landroid/database/Cursor;
    goto :goto_0

    .line 957
    .end local v15           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_4
    invoke-virtual/range {p8 .. p8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result v3

    move/from16 v0, p7

    if-eq v0, v3, :cond_3

    .line 967
    if-eqz v9, :cond_1

    .line 968
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 969
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_3
    move-object/from16 v8, p3

    move-object/from16 v10, p1

    move v11, v5

    move v12, v6

    move/from16 v13, p9

    .line 961
    :try_start_5
    invoke-static/range {v8 .. v13}, Lcom/htc/calendar/Event;->buildEventsFromCursor(Ljava/util/ArrayList;Landroid/database/Cursor;Landroid/content/res/Resources;IIZ)V

    .line 962
    invoke-static/range {p3 .. p3}, Lcom/htc/calendar/Event;->computePositions(Ljava/util/ArrayList;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 967
    if-eqz v9, :cond_1

    .line 968
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 969
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 963
    .end local v5           #startDay:I
    .end local v6           #endDay:I
    .end local v7           #where:Ljava/lang/String;
    .end local v9           #c:Landroid/database/Cursor;
    .end local v16           #end:J
    .end local v18           #hideDeclined:Z
    .end local v19           #local:Landroid/text/format/Time;
    .restart local v14       #c:Landroid/database/Cursor;
    :catch_1
    move-exception v15

    move-object v9, v14

    .line 964
    .end local v14           #c:Landroid/database/Cursor;
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v15       #e:Ljava/lang/Exception;
    :goto_2
    :try_start_6
    const-string v3, "Event"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadEvents : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 967
    if-eqz v9, :cond_1

    .line 968
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 969
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 967
    .end local v9           #c:Landroid/database/Cursor;
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v14       #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    move-object v9, v14

    .end local v14           #c:Landroid/database/Cursor;
    .restart local v9       #c:Landroid/database/Cursor;
    :goto_3
    if-eqz v9, :cond_4

    .line 968
    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4

    .line 969
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v3

    .line 967
    :catchall_1
    move-exception v3

    goto :goto_3

    .line 963
    .restart local v5       #startDay:I
    .restart local v6       #endDay:I
    .restart local v7       #where:Ljava/lang/String;
    .restart local v16       #end:J
    .restart local v18       #hideDeclined:Z
    .restart local v19       #local:Landroid/text/format/Time;
    :catch_2
    move-exception v15

    goto :goto_2
.end method

.method public static final newInstance()Lcom/htc/calendar/Event;
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 228
    new-instance v0, Lcom/htc/calendar/Event;

    invoke-direct {v0}, Lcom/htc/calendar/Event;-><init>()V

    .line 230
    .local v0, e:Lcom/htc/calendar/Event;
    iput-wide v3, v0, Lcom/htc/calendar/Event;->id:J

    .line 231
    iput-object v2, v0, Lcom/htc/calendar/Event;->title:Ljava/lang/CharSequence;

    .line 232
    iput v1, v0, Lcom/htc/calendar/Event;->color:I

    .line 233
    iput-object v2, v0, Lcom/htc/calendar/Event;->location:Ljava/lang/CharSequence;

    .line 234
    iput-boolean v1, v0, Lcom/htc/calendar/Event;->allDay:Z

    .line 235
    iput v1, v0, Lcom/htc/calendar/Event;->startDay:I

    .line 236
    iput v1, v0, Lcom/htc/calendar/Event;->endDay:I

    .line 237
    iput v1, v0, Lcom/htc/calendar/Event;->startTime:I

    .line 238
    iput v1, v0, Lcom/htc/calendar/Event;->endTime:I

    .line 239
    iput-wide v3, v0, Lcom/htc/calendar/Event;->startMillis:J

    .line 240
    iput-wide v3, v0, Lcom/htc/calendar/Event;->endMillis:J

    .line 241
    iput-boolean v1, v0, Lcom/htc/calendar/Event;->hasAlarm:Z

    .line 242
    iput-boolean v1, v0, Lcom/htc/calendar/Event;->isRepeating:Z

    .line 243
    iput v1, v0, Lcom/htc/calendar/Event;->selfAttendeeStatus:I

    .line 245
    iput-object v2, v0, Lcom/htc/calendar/Event;->facebookSourceId:Ljava/lang/String;

    .line 246
    iput-object v2, v0, Lcom/htc/calendar/Event;->facebookType:Ljava/lang/String;

    .line 247
    iput-object v2, v0, Lcom/htc/calendar/Event;->syncAccountType:Ljava/lang/String;

    .line 248
    iput-object v2, v0, Lcom/htc/calendar/Event;->iCalGUID:Ljava/lang/String;

    .line 250
    return-object v0
.end method

.method private static offsetToUTCDay(J)J
    .locals 9
    .parameter "localTime"

    .prologue
    const/4 v1, 0x0

    .line 1075
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 1076
    .local v0, t:Landroid/text/format/Time;
    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 1077
    iget v6, v0, Landroid/text/format/Time;->year:I

    .line 1078
    .local v6, y:I
    iget v5, v0, Landroid/text/format/Time;->month:I

    .line 1079
    .local v5, m:I
    iget v4, v0, Landroid/text/format/Time;->monthDay:I

    .line 1081
    .local v4, d:I
    const-string v2, "UTC"

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    move v2, v1

    move v3, v1

    .line 1082
    invoke-virtual/range {v0 .. v6}, Landroid/text/format/Time;->set(IIIIII)V

    .line 1084
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v7

    .line 1085
    .local v7, ret:J
    const-string v1, "Event"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "offsetToUTCday: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    return-wide v7
.end method

.method private setGroup(I)V
    .locals 0
    .parameter "group"

    .prologue
    .line 979
    iput p1, p0, Lcom/htc/calendar/Event;->mGroup:I

    .line 980
    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 177
    new-instance v0, Lcom/htc/calendar/Event;

    invoke-direct {v0}, Lcom/htc/calendar/Event;-><init>()V

    .line 179
    .local v0, e:Lcom/htc/calendar/Event;
    iget-object v1, p0, Lcom/htc/calendar/Event;->title:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/htc/calendar/Event;->title:Ljava/lang/CharSequence;

    .line 180
    iget v1, p0, Lcom/htc/calendar/Event;->color:I

    iput v1, v0, Lcom/htc/calendar/Event;->color:I

    .line 181
    iget-object v1, p0, Lcom/htc/calendar/Event;->location:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/htc/calendar/Event;->location:Ljava/lang/CharSequence;

    .line 182
    iget-boolean v1, p0, Lcom/htc/calendar/Event;->allDay:Z

    iput-boolean v1, v0, Lcom/htc/calendar/Event;->allDay:Z

    .line 183
    iget v1, p0, Lcom/htc/calendar/Event;->startDay:I

    iput v1, v0, Lcom/htc/calendar/Event;->startDay:I

    .line 184
    iget v1, p0, Lcom/htc/calendar/Event;->endDay:I

    iput v1, v0, Lcom/htc/calendar/Event;->endDay:I

    .line 185
    iget v1, p0, Lcom/htc/calendar/Event;->startTime:I

    iput v1, v0, Lcom/htc/calendar/Event;->startTime:I

    .line 186
    iget v1, p0, Lcom/htc/calendar/Event;->endTime:I

    iput v1, v0, Lcom/htc/calendar/Event;->endTime:I

    .line 187
    iget-wide v1, p0, Lcom/htc/calendar/Event;->startMillis:J

    iput-wide v1, v0, Lcom/htc/calendar/Event;->startMillis:J

    .line 188
    iget-wide v1, p0, Lcom/htc/calendar/Event;->endMillis:J

    iput-wide v1, v0, Lcom/htc/calendar/Event;->endMillis:J

    .line 189
    iget-boolean v1, p0, Lcom/htc/calendar/Event;->hasAlarm:Z

    iput-boolean v1, v0, Lcom/htc/calendar/Event;->hasAlarm:Z

    .line 190
    iget-boolean v1, p0, Lcom/htc/calendar/Event;->isRepeating:Z

    iput-boolean v1, v0, Lcom/htc/calendar/Event;->isRepeating:Z

    .line 191
    iget v1, p0, Lcom/htc/calendar/Event;->selfAttendeeStatus:I

    iput v1, v0, Lcom/htc/calendar/Event;->selfAttendeeStatus:I

    .line 192
    iget-object v1, p0, Lcom/htc/calendar/Event;->organizer:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/calendar/Event;->organizer:Ljava/lang/String;

    .line 193
    iget-boolean v1, p0, Lcom/htc/calendar/Event;->guestsCanModify:Z

    iput-boolean v1, v0, Lcom/htc/calendar/Event;->guestsCanModify:Z

    .line 195
    iget-object v1, p0, Lcom/htc/calendar/Event;->facebookSourceId:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/calendar/Event;->facebookSourceId:Ljava/lang/String;

    .line 196
    iget-object v1, p0, Lcom/htc/calendar/Event;->facebookType:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/calendar/Event;->facebookType:Ljava/lang/String;

    .line 197
    iget-object v1, p0, Lcom/htc/calendar/Event;->syncAccountType:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/calendar/Event;->syncAccountType:Ljava/lang/String;

    .line 198
    iget-object v1, p0, Lcom/htc/calendar/Event;->iCalGUID:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/calendar/Event;->iCalGUID:Ljava/lang/String;

    .line 200
    return-object v0
.end method

.method public final compareTo(Lcom/htc/calendar/Event;)I
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 260
    iget v2, p0, Lcom/htc/calendar/Event;->startDay:I

    iget v3, p1, Lcom/htc/calendar/Event;->startDay:I

    if-ge v2, v3, :cond_1

    .line 298
    :cond_0
    :goto_0
    return v0

    .line 261
    :cond_1
    iget v2, p0, Lcom/htc/calendar/Event;->startDay:I

    iget v3, p1, Lcom/htc/calendar/Event;->startDay:I

    if-le v2, v3, :cond_2

    move v0, v1

    goto :goto_0

    .line 262
    :cond_2
    iget v2, p0, Lcom/htc/calendar/Event;->startTime:I

    iget v3, p1, Lcom/htc/calendar/Event;->startTime:I

    if-lt v2, v3, :cond_0

    .line 263
    iget v2, p0, Lcom/htc/calendar/Event;->startTime:I

    iget v3, p1, Lcom/htc/calendar/Event;->startTime:I

    if-le v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    .line 267
    :cond_3
    iget v2, p0, Lcom/htc/calendar/Event;->endDay:I

    iget v3, p1, Lcom/htc/calendar/Event;->endDay:I

    if-ge v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 268
    :cond_4
    iget v2, p0, Lcom/htc/calendar/Event;->endDay:I

    iget v3, p1, Lcom/htc/calendar/Event;->endDay:I

    if-gt v2, v3, :cond_0

    .line 269
    iget v2, p0, Lcom/htc/calendar/Event;->endTime:I

    iget v3, p1, Lcom/htc/calendar/Event;->endTime:I

    if-ge v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    .line 270
    :cond_5
    iget v2, p0, Lcom/htc/calendar/Event;->endTime:I

    iget v3, p1, Lcom/htc/calendar/Event;->endTime:I

    if-gt v2, v3, :cond_0

    .line 273
    iget-boolean v2, p0, Lcom/htc/calendar/Event;->allDay:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p1, Lcom/htc/calendar/Event;->allDay:Z

    if-eqz v2, :cond_0

    .line 274
    :cond_6
    iget-boolean v2, p0, Lcom/htc/calendar/Event;->allDay:Z

    if-nez v2, :cond_7

    iget-boolean v2, p1, Lcom/htc/calendar/Event;->allDay:Z

    if-eqz v2, :cond_7

    move v0, v1

    goto :goto_0

    .line 276
    :cond_7
    iget-boolean v2, p0, Lcom/htc/calendar/Event;->guestsCanModify:Z

    if-eqz v2, :cond_8

    iget-boolean v2, p1, Lcom/htc/calendar/Event;->guestsCanModify:Z

    if-eqz v2, :cond_0

    .line 277
    :cond_8
    iget-boolean v2, p0, Lcom/htc/calendar/Event;->guestsCanModify:Z

    if-nez v2, :cond_9

    iget-boolean v2, p1, Lcom/htc/calendar/Event;->guestsCanModify:Z

    if-eqz v2, :cond_9

    move v0, v1

    goto :goto_0

    .line 281
    :cond_9
    iget-object v1, p0, Lcom/htc/calendar/Event;->title:Ljava/lang/CharSequence;

    iget-object v2, p1, Lcom/htc/calendar/Event;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v2}, Lcom/htc/calendar/Event;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    .line 282
    .local v0, cmp:I
    if-nez v0, :cond_0

    .line 289
    iget-object v1, p0, Lcom/htc/calendar/Event;->location:Ljava/lang/CharSequence;

    iget-object v2, p1, Lcom/htc/calendar/Event;->location:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v2}, Lcom/htc/calendar/Event;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    .line 290
    if-nez v0, :cond_0

    .line 294
    iget-object v1, p0, Lcom/htc/calendar/Event;->organizer:Ljava/lang/String;

    iget-object v2, p1, Lcom/htc/calendar/Event;->organizer:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/htc/calendar/Event;->compareStrings(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    .line 295
    if-nez v0, :cond_0

    .line 298
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    check-cast p1, Lcom/htc/calendar/Event;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/htc/calendar/Event;->compareTo(Lcom/htc/calendar/Event;)I

    move-result v0

    return v0
.end method

.method public final copyTo(Lcom/htc/calendar/Event;)V
    .locals 2
    .parameter "dest"

    .prologue
    .line 204
    iget-wide v0, p0, Lcom/htc/calendar/Event;->id:J

    iput-wide v0, p1, Lcom/htc/calendar/Event;->id:J

    .line 205
    iget-object v0, p0, Lcom/htc/calendar/Event;->title:Ljava/lang/CharSequence;

    iput-object v0, p1, Lcom/htc/calendar/Event;->title:Ljava/lang/CharSequence;

    .line 206
    iget v0, p0, Lcom/htc/calendar/Event;->color:I

    iput v0, p1, Lcom/htc/calendar/Event;->color:I

    .line 207
    iget-object v0, p0, Lcom/htc/calendar/Event;->location:Ljava/lang/CharSequence;

    iput-object v0, p1, Lcom/htc/calendar/Event;->location:Ljava/lang/CharSequence;

    .line 208
    iget-boolean v0, p0, Lcom/htc/calendar/Event;->allDay:Z

    iput-boolean v0, p1, Lcom/htc/calendar/Event;->allDay:Z

    .line 209
    iget v0, p0, Lcom/htc/calendar/Event;->startDay:I

    iput v0, p1, Lcom/htc/calendar/Event;->startDay:I

    .line 210
    iget v0, p0, Lcom/htc/calendar/Event;->endDay:I

    iput v0, p1, Lcom/htc/calendar/Event;->endDay:I

    .line 211
    iget v0, p0, Lcom/htc/calendar/Event;->startTime:I

    iput v0, p1, Lcom/htc/calendar/Event;->startTime:I

    .line 212
    iget v0, p0, Lcom/htc/calendar/Event;->endTime:I

    iput v0, p1, Lcom/htc/calendar/Event;->endTime:I

    .line 213
    iget-wide v0, p0, Lcom/htc/calendar/Event;->startMillis:J

    iput-wide v0, p1, Lcom/htc/calendar/Event;->startMillis:J

    .line 214
    iget-wide v0, p0, Lcom/htc/calendar/Event;->endMillis:J

    iput-wide v0, p1, Lcom/htc/calendar/Event;->endMillis:J

    .line 215
    iget-boolean v0, p0, Lcom/htc/calendar/Event;->hasAlarm:Z

    iput-boolean v0, p1, Lcom/htc/calendar/Event;->hasAlarm:Z

    .line 216
    iget-boolean v0, p0, Lcom/htc/calendar/Event;->isRepeating:Z

    iput-boolean v0, p1, Lcom/htc/calendar/Event;->isRepeating:Z

    .line 217
    iget v0, p0, Lcom/htc/calendar/Event;->selfAttendeeStatus:I

    iput v0, p1, Lcom/htc/calendar/Event;->selfAttendeeStatus:I

    .line 218
    iget-object v0, p0, Lcom/htc/calendar/Event;->organizer:Ljava/lang/String;

    iput-object v0, p1, Lcom/htc/calendar/Event;->organizer:Ljava/lang/String;

    .line 219
    iget-boolean v0, p0, Lcom/htc/calendar/Event;->guestsCanModify:Z

    iput-boolean v0, p1, Lcom/htc/calendar/Event;->guestsCanModify:Z

    .line 221
    iget-object v0, p0, Lcom/htc/calendar/Event;->facebookSourceId:Ljava/lang/String;

    iput-object v0, p1, Lcom/htc/calendar/Event;->facebookSourceId:Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lcom/htc/calendar/Event;->facebookType:Ljava/lang/String;

    iput-object v0, p1, Lcom/htc/calendar/Event;->facebookType:Ljava/lang/String;

    .line 223
    iget-object v0, p0, Lcom/htc/calendar/Event;->syncAccountType:Ljava/lang/String;

    iput-object v0, p1, Lcom/htc/calendar/Event;->syncAccountType:Ljava/lang/String;

    .line 224
    iget-object v0, p0, Lcom/htc/calendar/Event;->iCalGUID:Ljava/lang/String;

    iput-object v0, p1, Lcom/htc/calendar/Event;->iCalGUID:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public final dump()V
    .locals 4

    .prologue
    .line 736
    const-string v0, "Cal"

    const-string v1, "+-----------------------------------------+"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    const-string v0, "Cal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+          id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/calendar/Event;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const-string v0, "Cal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+       color = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/calendar/Event;->color:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    const-string v0, "Cal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+       title = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/calendar/Event;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    const-string v0, "Cal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+    location = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/calendar/Event;->location:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const-string v0, "Cal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+      allDay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/calendar/Event;->allDay:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    const-string v0, "Cal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+ startMillis = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/calendar/Event;->startMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const-string v0, "Cal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+   endMillis = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/calendar/Event;->endMillis:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    const-string v0, "Cal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+    startDay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/calendar/Event;->startDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    const-string v0, "Cal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+      endDay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/calendar/Event;->endDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    const-string v0, "Cal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+   startTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/calendar/Event;->startTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const-string v0, "Cal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+     endTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/calendar/Event;->endTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const-string v0, "Cal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+   organizer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/calendar/Event;->organizer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    const-string v0, "Cal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+    guestwrt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/htc/calendar/Event;->guestsCanModify:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    return-void
.end method

.method public getColumn()I
    .locals 1

    .prologue
    .line 809
    iget v0, p0, Lcom/htc/calendar/Event;->mColumn:I

    return v0
.end method

.method public getEndMillis()J
    .locals 2

    .prologue
    .line 833
    iget-wide v0, p0, Lcom/htc/calendar/Event;->endMillis:J

    return-wide v0
.end method

.method public getMaxColumns()I
    .locals 1

    .prologue
    .line 817
    iget v0, p0, Lcom/htc/calendar/Event;->mMaxColumns:I

    return v0
.end method

.method public getStartMillis()J
    .locals 2

    .prologue
    .line 825
    iget-wide v0, p0, Lcom/htc/calendar/Event;->startMillis:J

    return-wide v0
.end method

.method public getTitleAndLocation()Ljava/lang/String;
    .locals 4

    .prologue
    .line 790
    iget-object v2, p0, Lcom/htc/calendar/Event;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 795
    .local v1, text:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/calendar/Event;->location:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 796
    iget-object v2, p0, Lcom/htc/calendar/Event;->location:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 797
    .local v0, locationString:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 798
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 801
    .end local v0           #locationString:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public final intersects(III)Z
    .locals 3
    .parameter "julianDay"
    .parameter "startMinute"
    .parameter "endMinute"

    .prologue
    const/4 v0, 0x0

    .line 754
    iget v1, p0, Lcom/htc/calendar/Event;->endDay:I

    if-ge v1, p1, :cond_1

    .line 779
    :cond_0
    :goto_0
    return v0

    .line 758
    :cond_1
    iget v1, p0, Lcom/htc/calendar/Event;->startDay:I

    if-gt v1, p1, :cond_0

    .line 762
    iget v1, p0, Lcom/htc/calendar/Event;->endDay:I

    if-ne v1, p1, :cond_2

    .line 763
    iget v1, p0, Lcom/htc/calendar/Event;->endTime:I

    if-lt v1, p2, :cond_0

    .line 769
    iget v1, p0, Lcom/htc/calendar/Event;->endTime:I

    if-ne v1, p2, :cond_2

    iget v1, p0, Lcom/htc/calendar/Event;->startTime:I

    iget v2, p0, Lcom/htc/calendar/Event;->endTime:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/htc/calendar/Event;->startDay:I

    iget v2, p0, Lcom/htc/calendar/Event;->endDay:I

    if-ne v1, v2, :cond_0

    .line 775
    :cond_2
    iget v1, p0, Lcom/htc/calendar/Event;->startDay:I

    if-ne v1, p1, :cond_3

    iget v1, p0, Lcom/htc/calendar/Event;->startTime:I

    if-gt v1, p3, :cond_0

    .line 779
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setColumn(I)V
    .locals 0
    .parameter "column"

    .prologue
    .line 805
    iput p1, p0, Lcom/htc/calendar/Event;->mColumn:I

    .line 806
    return-void
.end method

.method public setEndMillis(J)V
    .locals 0
    .parameter "endMillis"

    .prologue
    .line 829
    iput-wide p1, p0, Lcom/htc/calendar/Event;->endMillis:J

    .line 830
    return-void
.end method

.method public setMaxColumns(I)V
    .locals 0
    .parameter "maxColumns"

    .prologue
    .line 813
    iput p1, p0, Lcom/htc/calendar/Event;->mMaxColumns:I

    .line 814
    return-void
.end method

.method public setStartMillis(J)V
    .locals 0
    .parameter "startMillis"

    .prologue
    .line 821
    iput-wide p1, p0, Lcom/htc/calendar/Event;->startMillis:J

    .line 822
    return-void
.end method
