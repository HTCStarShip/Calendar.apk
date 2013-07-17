.class public Lcom/htc/calendar/DeleteEventHelper;
.super Ljava/lang/Object;
.source "DeleteEventHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/calendar/DeleteEventHelper$QueryHandler;,
        Lcom/htc/calendar/DeleteEventHelper$EventInfo;,
        Lcom/htc/calendar/DeleteEventHelper$DeleteEventListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final DELETE_ALL:I = 0x2

.field static final DELETE_ALL_FOLLOWING:I = 0x1

.field static final DELETE_SELECTED:I = 0x0

.field private static final EVENT_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "DeleteEventHelper"


# instance fields
.field private mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCursor:Landroid/database/Cursor;

.field private mDelItems:[Ljava/lang/CharSequence;

.field private mDeleteNormalDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field mDeleteRepeatEventsListener:Lcom/htc/calendar/DeleteEventHelper$DeleteEventListener;

.field private mEndMillis:J

.field private mEventIndexId:I

.field private mEventIndexRrule:I

.field private mExitWhenDone:Z

.field private mParent:Landroid/app/Activity;

.field private mQueryHandler:Lcom/htc/calendar/DeleteEventHelper$QueryHandler;

.field private mStartMillis:J

.field private mSyncId:Ljava/lang/String;

.field private mWhichAccount:Ljava/lang/String;

.field private mWhichAccountType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 109
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "rrule"

    aput-object v2, v0, v1

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

    const-string v2, "parentID"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "exdate"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "dtend"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "account_type"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "account_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/calendar/DeleteEventHelper;->EVENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 2
    .parameter "parent"
    .parameter "exitWhenDone"

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-static {}, Landroid/provider/HtcExCalendar;->getGoogleAccountType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/DeleteEventHelper;->mWhichAccountType:Ljava/lang/String;

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/calendar/DeleteEventHelper;->mWhichAccount:Ljava/lang/String;

    .line 107
    iput-object v1, p0, Lcom/htc/calendar/DeleteEventHelper;->mQueryHandler:Lcom/htc/calendar/DeleteEventHelper$QueryHandler;

    .line 146
    new-instance v0, Lcom/htc/calendar/DeleteEventHelper$1;

    invoke-direct {v0, p0}, Lcom/htc/calendar/DeleteEventHelper$1;-><init>(Lcom/htc/calendar/DeleteEventHelper;)V

    iput-object v0, p0, Lcom/htc/calendar/DeleteEventHelper;->mDeleteNormalDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 263
    new-instance v0, Lcom/htc/calendar/DeleteEventHelper$DeleteEventListener;

    invoke-direct {v0, p0}, Lcom/htc/calendar/DeleteEventHelper$DeleteEventListener;-><init>(Lcom/htc/calendar/DeleteEventHelper;)V

    iput-object v0, p0, Lcom/htc/calendar/DeleteEventHelper;->mDeleteRepeatEventsListener:Lcom/htc/calendar/DeleteEventHelper$DeleteEventListener;

    .line 288
    iput-object v1, p0, Lcom/htc/calendar/DeleteEventHelper;->mDelItems:[Ljava/lang/CharSequence;

    .line 132
    iput-object p1, p0, Lcom/htc/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;

    .line 133
    iget-object v0, p0, Lcom/htc/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 134
    iput-boolean p2, p0, Lcom/htc/calendar/DeleteEventHelper;->mExitWhenDone:Z

    .line 136
    new-instance v0, Lcom/htc/calendar/DeleteEventHelper$QueryHandler;

    iget-object v1, p0, Lcom/htc/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, p0, v1}, Lcom/htc/calendar/DeleteEventHelper$QueryHandler;-><init>(Lcom/htc/calendar/DeleteEventHelper;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/htc/calendar/DeleteEventHelper;->mQueryHandler:Lcom/htc/calendar/DeleteEventHelper$QueryHandler;

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/htc/calendar/DeleteEventHelper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/htc/calendar/DeleteEventHelper;->mExitWhenDone:Z

    return v0
.end method

.method static synthetic access$100(Lcom/htc/calendar/DeleteEventHelper;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/htc/calendar/DeleteEventHelper;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/calendar/DeleteEventHelper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/htc/calendar/DeleteEventHelper;->mEventIndexId:I

    return v0
.end method

.method static synthetic access$400(Lcom/htc/calendar/DeleteEventHelper;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/htc/calendar/DeleteEventHelper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/calendar/DeleteEventHelper;->mWhichAccountType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/htc/calendar/DeleteEventHelper;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/calendar/DeleteEventHelper;->mWhichAccount:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/htc/calendar/DeleteEventHelper;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/htc/calendar/DeleteEventHelper;->mDelItems:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$800(Lcom/htc/calendar/DeleteEventHelper;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/htc/calendar/DeleteEventHelper;->deleteRepeatingEvent(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/htc/calendar/DeleteEventHelper;JJLandroid/database/Cursor;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 75
    invoke-direct/range {p0 .. p6}, Lcom/htc/calendar/DeleteEventHelper;->doDelete(JJLandroid/database/Cursor;I)V

    return-void
.end method

.method private cacheHtcAlertDialg(Lcom/htc/widget/HtcAlertDialog;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 837
    iget-object v0, p0, Lcom/htc/calendar/DeleteEventHelper;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 838
    iget-object v0, p0, Lcom/htc/calendar/DeleteEventHelper;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 839
    iget-object v0, p0, Lcom/htc/calendar/DeleteEventHelper;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 842
    :cond_0
    iput-object p1, p0, Lcom/htc/calendar/DeleteEventHelper;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 843
    return-void
.end method

.method private deleteEventById(J)V
    .locals 3
    .parameter "event_id"

    .prologue
    const/4 v2, 0x0

    .line 557
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 558
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/htc/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 559
    return-void
.end method

.method private deleteRepeatingEvent(I)V
    .locals 47
    .parameter "which"

    .prologue
    .line 562
    const-string v40, "DeleteEventHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "deleteRepeatingEvent -which: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v40, v0

    if-eqz v40, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Landroid/database/Cursor;->isFirst()Z

    move-result v40

    if-nez v40, :cond_0

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v40, v0

    invoke-interface/range {v40 .. v40}, Landroid/database/Cursor;->moveToFirst()Z

    .line 565
    const-string v40, "DeleteEventHelper"

    const-string v41, "mCursor move to first"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v40, v0

    const-string v41, "dtstart"

    invoke-interface/range {v40 .. v41}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v23

    .line 568
    .local v23, indexDtstart:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v40, v0

    const-string v41, "allDay"

    invoke-interface/range {v40 .. v41}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    .line 569
    .local v20, indexAllDay:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v40, v0

    const-string v41, "title"

    invoke-interface/range {v40 .. v41}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v26

    .line 570
    .local v26, indexTitle:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v40, v0

    const-string v41, "eventTimezone"

    invoke-interface/range {v40 .. v41}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 571
    .local v25, indexTimezone:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v40, v0

    const-string v41, "calendar_id"

    invoke-interface/range {v40 .. v41}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v21

    .line 572
    .local v21, indexCalendarId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v40, v0

    const-string v41, "exdate"

    invoke-interface/range {v40 .. v41}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v24

    .line 573
    .local v24, indexExDate:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v40, v0

    const-string v41, "dtend"

    invoke-interface/range {v40 .. v41}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v22

    .line 575
    .local v22, indexDtend:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mEventIndexRrule:I

    move/from16 v41, v0

    invoke-interface/range {v40 .. v41}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 576
    .local v33, rRule:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    if-eqz v40, :cond_4

    const/4 v7, 0x1

    .line 577
    .local v7, allDay:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 578
    .local v14, dtstart:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 579
    .local v12, dtend:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mEventIndexId:I

    move/from16 v41, v0

    invoke-interface/range {v40 .. v41}, Landroid/database/Cursor;->getInt(I)I

    move-result v40

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .line 581
    .local v18, id:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v40, v0

    const-string v41, "parentID"

    invoke-interface/range {v40 .. v41}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 582
    .local v16, eventIndexParentId:I
    const-string v40, "DeleteEventHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "eventIndexParentId:"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const-wide/16 v30, -0x1

    .line 584
    .local v30, parentID:J
    const/16 v40, -0x1

    move/from16 v0, v16

    move/from16 v1, v40

    if-eq v0, v1, :cond_1

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v40

    if-nez v40, :cond_1

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v30

    .line 589
    :cond_1
    const-string v40, "DeleteEventHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "parentID:"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    packed-switch p1, :pswitch_data_0

    .line 791
    .end local v30           #parentID:J
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mExitWhenDone:Z

    move/from16 v40, v0

    if-eqz v40, :cond_3

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/app/Activity;->finish()V

    .line 794
    :cond_3
    return-void

    .line 576
    .end local v7           #allDay:Z
    .end local v12           #dtend:J
    .end local v14           #dtstart:J
    .end local v16           #eventIndexParentId:I
    .end local v18           #id:J
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 612
    .restart local v7       #allDay:Z
    .restart local v12       #dtend:J
    .restart local v14       #dtstart:J
    .restart local v16       #eventIndexParentId:I
    .restart local v18       #id:J
    .restart local v30       #parentID:J
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mWhichAccountType:Ljava/lang/String;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/htc/calendar/HtcUtils;->isGoogleEvent(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_9

    .line 617
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mStartMillis:J

    move-wide/from16 v40, v0

    cmp-long v40, v14, v40

    if-nez v40, :cond_5

    .line 623
    :cond_5
    new-instance v39, Landroid/content/ContentValues;

    invoke-direct/range {v39 .. v39}, Landroid/content/ContentValues;-><init>()V

    .line 627
    .local v39, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 628
    .local v37, title:Ljava/lang/String;
    const-string v40, "title"

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 632
    .local v36, timezone:Ljava/lang/String;
    if-eqz v7, :cond_6

    .line 633
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v36

    .line 635
    new-instance v35, Landroid/text/format/Time;

    invoke-direct/range {v35 .. v36}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 636
    .local v35, t:Landroid/text/format/Time;
    invoke-virtual/range {v35 .. v35}, Landroid/text/format/Time;->setToNow()V

    .line 637
    const/16 v40, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 638
    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v40, v0

    const-wide/16 v42, 0x3e8

    mul-long v5, v40, v42

    .line 639
    .local v5, adjustOffset:J
    const-string v40, "DeleteEventHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "deleteRepeatingEvent allDay event :: timezone:"

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string v42, " adjustOffset: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mStartMillis:J

    move-wide/from16 v40, v0

    add-long v40, v40, v5

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/calendar/DeleteEventHelper;->mStartMillis:J

    .line 641
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mEndMillis:J

    move-wide/from16 v40, v0

    add-long v40, v40, v5

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/calendar/DeleteEventHelper;->mEndMillis:J

    .line 643
    const-string v40, "DeleteEventHelper"

    sget-object v41, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v42, "mStartMillis=%d mEndMillis=%d"

    const/16 v43, 0x2

    move/from16 v0, v43

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v43, v0

    const/16 v44, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mStartMillis:J

    move-wide/from16 v45, v0

    invoke-static/range {v45 .. v46}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v45

    aput-object v45, v43, v44

    const/16 v44, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mEndMillis:J

    move-wide/from16 v45, v0

    invoke-static/range {v45 .. v46}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v45

    aput-object v45, v43, v44

    invoke-static/range {v41 .. v43}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const-string v40, "originalAllDay"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 647
    .end local v5           #adjustOffset:J
    .end local v35           #t:Landroid/text/format/Time;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 648
    .local v8, calendarId:I
    const-string v40, "eventTimezone"

    if-eqz v7, :cond_7

    const-string v36, "UTC"

    .end local v36           #timezone:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    const-string v41, "allDay"

    if-eqz v7, :cond_8

    const/16 v40, 0x1

    :goto_2
    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    move-object/from16 v0, v39

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 650
    const-string v40, "calendar_id"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 651
    const-string v40, "dtstart"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mStartMillis:J

    move-wide/from16 v41, v0

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 652
    const-string v40, "dtend"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mEndMillis:J

    move-wide/from16 v41, v0

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 653
    const-string v40, "original_sync_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mSyncId:Ljava/lang/String;

    move-object/from16 v41, v0

    invoke-virtual/range {v39 .. v41}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const-string v40, "originalInstanceTime"

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mStartMillis:J

    move-wide/from16 v41, v0

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 655
    const-string v40, "eventStatus"

    const/16 v41, 0x2

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v40, v0

    sget-object v41, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_1

    .line 649
    :cond_8
    const/16 v40, 0x0

    goto :goto_2

    .line 658
    .end local v8           #calendarId:I
    .end local v37           #title:Ljava/lang/String;
    .end local v39           #values:Landroid/content/ContentValues;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mWhichAccountType:Ljava/lang/String;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/htc/calendar/HtcUtils;->isHTCExchangeEvent(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_2

    .line 659
    new-instance v39, Landroid/content/ContentValues;

    invoke-direct/range {v39 .. v39}, Landroid/content/ContentValues;-><init>()V

    .line 660
    .restart local v39       #values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 662
    .local v29, old_exDate:Ljava/lang/String;
    new-instance v32, Landroid/text/format/Time;

    invoke-direct/range {v32 .. v32}, Landroid/text/format/Time;-><init>()V

    .line 663
    .local v32, parentTime:Landroid/text/format/Time;
    move-object/from16 v0, v32

    invoke-virtual {v0, v14, v15}, Landroid/text/format/Time;->set(J)V

    .line 664
    const/16 v40, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 665
    const-string v40, "UTC"

    move-object/from16 v0, v32

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 667
    const-string v40, "DeleteEventHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "allDay: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const-string v40, "DeleteEventHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "old_exDate: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    new-instance v9, Landroid/text/format/Time;

    invoke-direct {v9}, Landroid/text/format/Time;-><init>()V

    .line 671
    .local v9, childTime:Landroid/text/format/Time;
    if-eqz v7, :cond_a

    .line 672
    new-instance v27, Landroid/text/format/Time;

    invoke-direct/range {v27 .. v27}, Landroid/text/format/Time;-><init>()V

    .line 673
    .local v27, localTime:Landroid/text/format/Time;
    invoke-virtual/range {v27 .. v27}, Landroid/text/format/Time;->setToNow()V

    .line 675
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mStartMillis:J

    move-wide/from16 v40, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x3e8

    mul-long v42, v42, v44

    add-long v40, v40, v42

    move-wide/from16 v0, v40

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/calendar/DeleteEventHelper;->mStartMillis:J

    .line 676
    const-string v40, "DeleteEventHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "all day offset: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x3e8

    mul-long v42, v42, v44

    invoke-virtual/range {v41 .. v43}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    .end local v27           #localTime:Landroid/text/format/Time;
    :cond_a
    const-string v40, "DeleteEventHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "mStartMillis: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mStartMillis:J

    move-wide/from16 v42, v0

    invoke-virtual/range {v41 .. v43}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mStartMillis:J

    move-wide/from16 v40, v0

    move-wide/from16 v0, v40

    invoke-virtual {v9, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 680
    const/16 v40, 0x0

    move/from16 v0, v40

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 681
    const-string v40, "UTC"

    move-object/from16 v0, v40

    invoke-virtual {v9, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 682
    move-object/from16 v0, v32

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v40, v0

    move/from16 v0, v40

    iput v0, v9, Landroid/text/format/Time;->hour:I

    .line 683
    move-object/from16 v0, v32

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v40, v0

    move/from16 v0, v40

    iput v0, v9, Landroid/text/format/Time;->minute:I

    .line 684
    move-object/from16 v0, v32

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v40, v0

    move/from16 v0, v40

    iput v0, v9, Landroid/text/format/Time;->second:I

    .line 686
    invoke-virtual {v9}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v28

    .line 687
    .local v28, newOneExDate:Ljava/lang/String;
    const-string v40, "DeleteEventHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "newOneExDate: "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const-wide/16 v40, -0x1

    cmp-long v40, v30, v40

    if-eqz v40, :cond_b

    .line 690
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/htc/calendar/DeleteEventHelper;->deleteEventById(J)V

    .line 693
    sget-object v40, Landroid/provider/HtcExCalendar;->EAS_TRACKING_URI:Landroid/net/Uri;

    move-object/from16 v0, v40

    move-wide/from16 v1, v30

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v38

    .line 694
    .local v38, uri:Landroid/net/Uri;
    const-string v40, "_modify"

    const/16 v41, 0x1

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move-object/from16 v3, v41

    move-object/from16 v4, v42

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 698
    .end local v38           #uri:Landroid/net/Uri;
    :cond_b
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-eqz v40, :cond_c

    .line 699
    move-object/from16 v29, v28

    .line 704
    :goto_3
    const-string v40, "dtstart"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 705
    const-string v40, "dtend"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 706
    const-string v40, "rrule"

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    const-string v40, "exdate"

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    sget-object v40, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const-wide/16 v41, -0x1

    cmp-long v41, v30, v41

    if-eqz v41, :cond_d

    .end local v30           #parentID:J
    :goto_4
    move-object/from16 v0, v40

    move-wide/from16 v1, v30

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v38

    .line 709
    .restart local v38       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move-object/from16 v3, v41

    move-object/from16 v4, v42

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 701
    .end local v38           #uri:Landroid/net/Uri;
    .restart local v30       #parentID:J
    :cond_c
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v40

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, ","

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto :goto_3

    :cond_d
    move-wide/from16 v30, v18

    .line 708
    goto :goto_4

    .line 719
    .end local v9           #childTime:Landroid/text/format/Time;
    .end local v28           #newOneExDate:Ljava/lang/String;
    .end local v29           #old_exDate:Ljava/lang/String;
    .end local v32           #parentTime:Landroid/text/format/Time;
    .end local v39           #values:Landroid/content/ContentValues;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mWhichAccountType:Ljava/lang/String;

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Lcom/htc/calendar/HtcUtils;->isHTCExchangeEvent(Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_f

    .line 720
    const-wide/16 v40, -0x1

    cmp-long v40, v30, v40

    if-eqz v40, :cond_e

    .end local v30           #parentID:J
    :goto_5
    const/16 v40, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v30

    move/from16 v3, v40

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/calendar/DeleteEventHelper;->deleteExchangeEvent(JZ)V

    goto/16 :goto_1

    .restart local v30       #parentID:J
    :cond_e
    move-wide/from16 v30, v18

    goto :goto_5

    .line 722
    :cond_f
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/htc/calendar/DeleteEventHelper;->deleteEventById(J)V

    goto/16 :goto_1

    .line 733
    :pswitch_2
    new-instance v11, Landroid/text/format/Time;

    invoke-direct {v11}, Landroid/text/format/Time;-><init>()V

    .line 734
    .local v11, dbStartTime:Landroid/text/format/Time;
    invoke-virtual {v11, v14, v15}, Landroid/text/format/Time;->set(J)V

    .line 736
    new-instance v34, Landroid/text/format/Time;

    invoke-direct/range {v34 .. v34}, Landroid/text/format/Time;-><init>()V

    .line 738
    .local v34, startTime:Landroid/text/format/Time;
    if-eqz v7, :cond_10

    .line 739
    new-instance v27, Landroid/text/format/Time;

    invoke-direct/range {v27 .. v27}, Landroid/text/format/Time;-><init>()V

    .line 740
    .restart local v27       #localTime:Landroid/text/format/Time;
    invoke-virtual/range {v27 .. v27}, Landroid/text/format/Time;->setToNow()V

    .line 741
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mStartMillis:J

    move-wide/from16 v40, v0

    move-object/from16 v0, v27

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v42, v0

    const-wide/16 v44, 0x3e8

    mul-long v42, v42, v44

    add-long v40, v40, v42

    move-object/from16 v0, v34

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 749
    .end local v27           #localTime:Landroid/text/format/Time;
    :goto_6
    if-eqz v7, :cond_11

    .line 750
    iget v0, v11, Landroid/text/format/Time;->year:I

    move/from16 v40, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v41, v0

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_12

    iget v0, v11, Landroid/text/format/Time;->month:I

    move/from16 v40, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v41, v0

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_12

    iget v0, v11, Landroid/text/format/Time;->monthDay:I

    move/from16 v40, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v41, v0

    move/from16 v0, v40

    move/from16 v1, v41

    if-ne v0, v1, :cond_12

    .line 753
    sget-object v40, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v40

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v38

    .line 754
    .restart local v38       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v38

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 743
    .end local v38           #uri:Landroid/net/Uri;
    :cond_10
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mStartMillis:J

    move-wide/from16 v40, v0

    move-object/from16 v0, v34

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    goto :goto_6

    .line 760
    :cond_11
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mStartMillis:J

    move-wide/from16 v40, v0

    cmp-long v40, v14, v40

    if-nez v40, :cond_12

    .line 761
    sget-object v40, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v40

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v38

    .line 762
    .restart local v38       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v38

    move-object/from16 v2, v41

    move-object/from16 v3, v42

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 768
    .end local v38           #uri:Landroid/net/Uri;
    :cond_12
    new-instance v17, Lcom/android/calendarcommon/EventRecurrence;

    invoke-direct/range {v17 .. v17}, Lcom/android/calendarcommon/EventRecurrence;-><init>()V

    .line 769
    .local v17, eventRecurrence:Lcom/android/calendarcommon/EventRecurrence;
    move-object/from16 v0, v17

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Lcom/android/calendarcommon/EventRecurrence;->parse(Ljava/lang/String;)V

    .line 770
    new-instance v10, Landroid/text/format/Time;

    invoke-direct {v10}, Landroid/text/format/Time;-><init>()V

    .line 771
    .local v10, date:Landroid/text/format/Time;
    if-eqz v7, :cond_13

    .line 772
    const-string v40, "UTC"

    move-object/from16 v0, v40

    iput-object v0, v10, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 774
    :cond_13
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mStartMillis:J

    move-wide/from16 v40, v0

    move-wide/from16 v0, v40

    invoke-virtual {v10, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 775
    iget v0, v10, Landroid/text/format/Time;->second:I

    move/from16 v40, v0

    add-int/lit8 v40, v40, -0x1

    move/from16 v0, v40

    iput v0, v10, Landroid/text/format/Time;->second:I

    .line 776
    const/16 v40, 0x0

    move/from16 v0, v40

    invoke-virtual {v10, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 780
    const-string v40, "UTC"

    move-object/from16 v0, v40

    invoke-virtual {v10, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 781
    invoke-virtual {v10}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/calendarcommon/EventRecurrence;->until:Ljava/lang/String;

    .line 783
    new-instance v39, Landroid/content/ContentValues;

    invoke-direct/range {v39 .. v39}, Landroid/content/ContentValues;-><init>()V

    .line 784
    .restart local v39       #values:Landroid/content/ContentValues;
    const-string v40, "dtstart"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 785
    const-string v40, "rrule"

    invoke-virtual/range {v17 .. v17}, Lcom/android/calendarcommon/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v39 .. v41}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    sget-object v40, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v40

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v38

    .line 787
    .restart local v38       #uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v40, v0

    const/16 v41, 0x0

    const/16 v42, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    move-object/from16 v3, v41

    move-object/from16 v4, v42

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_1

    .line 609
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private doDelete(JJLandroid/database/Cursor;I)V
    .locals 23
    .parameter "begin"
    .parameter "end"
    .parameter "cursor"
    .parameter "which"

    .prologue
    .line 295
    if-nez p5, :cond_0

    .line 434
    :goto_0
    return-void

    .line 297
    :cond_0
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/calendar/DeleteEventHelper;->mStartMillis:J

    .line 298
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/htc/calendar/DeleteEventHelper;->mEndMillis:J

    .line 299
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    const-string v21, "_id"

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/calendar/DeleteEventHelper;->mEventIndexId:I

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    const-string v21, "rrule"

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/htc/calendar/DeleteEventHelper;->mEventIndexRrule:I

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    const-string v21, "account_type"

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 305
    .local v16, sync_account_type_idx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 306
    .local v15, sync_account_type:Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/htc/calendar/DeleteEventHelper;->mWhichAccountType:Ljava/lang/String;

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    const-string v21, "account_name"

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 309
    .local v14, sync_account_idx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 310
    .local v13, sync_account:Ljava/lang/String;
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/htc/calendar/DeleteEventHelper;->mWhichAccount:Ljava/lang/String;

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    const-string v21, "_sync_id"

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 314
    .local v8, eventIndexSyncId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/calendar/DeleteEventHelper;->mSyncId:Ljava/lang/String;

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    const-string v21, "parentID"

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 318
    .local v7, eventIndexParentId:I
    const-wide/16 v9, -0x1

    .line 319
    .local v9, parentID:J
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v7, v0, :cond_1

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v20

    if-nez v20, :cond_1

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 329
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mEventIndexRrule:I

    move/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 330
    .local v12, rRule:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_2

    const-wide/16 v20, -0x1

    cmp-long v20, v9, v20

    if-eqz v20, :cond_2

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-static {v0, v9, v10}, Lcom/htc/calendar/Utils;->getEventRRule(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    .line 332
    .local v11, parentRrule:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 333
    move-object v12, v11

    .line 337
    .end local v11           #parentRrule:Ljava/lang/String;
    :cond_2
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 339
    new-instance v20, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v21, 0x7f0800af

    invoke-virtual/range {v20 .. v21}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v20

    const v21, 0x7f0800c1

    invoke-virtual/range {v20 .. v21}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v20

    const v21, 0x1080027

    invoke-virtual/range {v20 .. v21}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v20

    const v21, 0x104000a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mDeleteNormalDialogListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v20

    const/high16 v21, 0x104

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    .line 346
    .local v5, dialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v4

    .line 347
    .local v4, dialog:Lcom/htc/widget/HtcAlertDialog;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/calendar/DeleteEventHelper;->cacheHtcAlertDialg(Lcom/htc/widget/HtcAlertDialog;)V

    goto/16 :goto_0

    .line 364
    .end local v4           #dialog:Lcom/htc/widget/HtcAlertDialog;
    .end local v5           #dialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    :cond_3
    new-instance v18, Lcom/htc/calendar/ItemValue;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f06000d

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    aget-object v20, v20, v21

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/calendar/ItemValue;-><init>(Ljava/lang/String;I)V

    .line 365
    .local v18, szDelOnlyThis:Lcom/htc/calendar/ItemValue;
    new-instance v19, Lcom/htc/calendar/ItemValue;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f06000d

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    aget-object v20, v20, v21

    const/16 v21, 0x1

    invoke-direct/range {v19 .. v21}, Lcom/htc/calendar/ItemValue;-><init>(Ljava/lang/String;I)V

    .line 366
    .local v19, szDelThisAndFuture:Lcom/htc/calendar/ItemValue;
    new-instance v17, Lcom/htc/calendar/ItemValue;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f06000d

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x2

    aget-object v20, v20, v21

    const/16 v21, 0x2

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/htc/calendar/ItemValue;-><init>(Ljava/lang/String;I)V

    .line 373
    .local v17, szDelAll:Lcom/htc/calendar/ItemValue;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mWhichAccountType:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/htc/calendar/HtcUtils;->isHTCExchangeEvent(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 380
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Lcom/htc/calendar/ItemValue;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/calendar/DeleteEventHelper;->mDelItems:[Ljava/lang/CharSequence;

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mDelItems:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v18, v20, v21

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mDelItems:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aput-object v17, v20, v21

    .line 415
    :goto_1
    if-ltz p6, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mDelItems:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move/from16 v0, p6

    move/from16 v1, v20

    if-lt v0, v1, :cond_5

    :cond_4
    const/16 p6, 0x0

    .line 417
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mDeleteRepeatEventsListener:Lcom/htc/calendar/DeleteEventHelper$DeleteEventListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/htc/calendar/DeleteEventHelper$DeleteEventListener;->setChoosePos(I)V

    .line 419
    new-instance v20, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v21}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v21, 0x7f0800af

    invoke-virtual/range {v20 .. v21}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v20

    const v21, 0x1080027

    invoke-virtual/range {v20 .. v21}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mDelItems:[Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mDeleteRepeatEventsListener:Lcom/htc/calendar/DeleteEventHelper$DeleteEventListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move/from16 v2, p6

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v20

    const v21, 0x104000a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mDeleteRepeatEventsListener:Lcom/htc/calendar/DeleteEventHelper$DeleteEventListener;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v20

    const/high16 v21, 0x104

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mDeleteRepeatEventsListener:Lcom/htc/calendar/DeleteEventHelper$DeleteEventListener;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v5

    .line 425
    .restart local v5       #dialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const/4 v4, 0x0

    .line 427
    .restart local v4       #dialog:Lcom/htc/widget/HtcAlertDialog;
    :try_start_0
    invoke-virtual {v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 432
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/htc/calendar/DeleteEventHelper;->cacheHtcAlertDialg(Lcom/htc/widget/HtcAlertDialog;)V

    goto/16 :goto_0

    .line 385
    .end local v4           #dialog:Lcom/htc/widget/HtcAlertDialog;
    .end local v5           #dialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mWhichAccountType:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/htc/calendar/HtcUtils;->isGoogleEvent(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 387
    const/16 v20, -0x1

    move/from16 v0, p6

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    const/16 p6, 0x0

    .line 388
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mSyncId:Ljava/lang/String;

    move-object/from16 v20, v0

    if-nez v20, :cond_8

    .line 389
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Lcom/htc/calendar/ItemValue;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/calendar/DeleteEventHelper;->mDelItems:[Ljava/lang/CharSequence;

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mDelItems:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v19, v20, v21

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mDelItems:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aput-object v17, v20, v21

    goto/16 :goto_1

    .line 393
    :cond_8
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Lcom/htc/calendar/ItemValue;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/calendar/DeleteEventHelper;->mDelItems:[Ljava/lang/CharSequence;

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mDelItems:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v18, v20, v21

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mDelItems:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aput-object v19, v20, v21

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mDelItems:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    aput-object v17, v20, v21

    goto/16 :goto_1

    .line 402
    :cond_9
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Lcom/htc/calendar/ItemValue;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/htc/calendar/DeleteEventHelper;->mDelItems:[Ljava/lang/CharSequence;

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/DeleteEventHelper;->mDelItems:[Ljava/lang/CharSequence;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v17, v20, v21

    .line 405
    const/16 p6, 0x0

    goto/16 :goto_1

    .line 428
    .restart local v4       #dialog:Lcom/htc/widget/HtcAlertDialog;
    .restart local v5       #dialogBuilder:Lcom/htc/widget/HtcAlertDialog$Builder;
    :catch_0
    move-exception v6

    .line 429
    .local v6, e:Ljava/lang/Exception;
    const-string v20, "DeleteEventHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "dialogBuilder.show error : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 846
    iget-object v0, p0, Lcom/htc/calendar/DeleteEventHelper;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/htc/calendar/DeleteEventHelper;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 849
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/calendar/DeleteEventHelper;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 850
    return-void
.end method

.method public delete(JJJI)V
    .locals 12
    .parameter "begin"
    .parameter "end"
    .parameter "eventId"
    .parameter "which"

    .prologue
    .line 280
    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, p5

    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    .line 282
    .local v11, uri:Landroid/net/Uri;
    iget-object v3, p0, Lcom/htc/calendar/DeleteEventHelper;->mQueryHandler:Lcom/htc/calendar/DeleteEventHelper$QueryHandler;

    if-eqz v3, :cond_0

    .line 283
    new-instance v2, Lcom/htc/calendar/DeleteEventHelper$EventInfo;

    move-object v3, p0

    move-wide/from16 v4, p5

    move-wide v6, p1

    move-wide v8, p3

    move/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lcom/htc/calendar/DeleteEventHelper$EventInfo;-><init>(Lcom/htc/calendar/DeleteEventHelper;JJJI)V

    .line 284
    .local v2, ei:Lcom/htc/calendar/DeleteEventHelper$EventInfo;
    iget-object v3, p0, Lcom/htc/calendar/DeleteEventHelper;->mQueryHandler:Lcom/htc/calendar/DeleteEventHelper$QueryHandler;

    const/4 v4, 0x0

    sget-object v7, Lcom/htc/calendar/DeleteEventHelper;->EVENT_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, v2

    move-object v6, v11

    invoke-virtual/range {v3 .. v10}, Lcom/htc/calendar/DeleteEventHelper$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .end local v2           #ei:Lcom/htc/calendar/DeleteEventHelper$EventInfo;
    :cond_0
    return-void
.end method

.method public delete(JJLandroid/database/Cursor;I)V
    .locals 9
    .parameter "begin"
    .parameter "end"
    .parameter "cursor"
    .parameter "which"

    .prologue
    .line 467
    if-nez p5, :cond_0

    .line 485
    :goto_0
    return-void

    .line 471
    :cond_0
    new-instance v8, Landroid/os/Handler;

    iget-object v0, p0, Lcom/htc/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/htc/calendar/DeleteEventHelper$2;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/htc/calendar/DeleteEventHelper$2;-><init>(Lcom/htc/calendar/DeleteEventHelper;JJLandroid/database/Cursor;I)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public deleteExchangeEvent(JZ)V
    .locals 17
    .parameter "del_event_id"
    .parameter "onlyThis"

    .prologue
    .line 489
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_1

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "parentID"

    aput-object v3, v4, v2

    .line 497
    .local v4, PROJECTION:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 499
    .local v8, INDEX_EVENT_ID:I
    const-string v5, ""

    .line 500
    .local v5, where:Ljava/lang/String;
    if-eqz p3, :cond_2

    .line 501
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 505
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 510
    .local v10, cursor:Landroid/database/Cursor;
    const/4 v15, 0x0

    .line 511
    .local v15, nCount:I
    const-wide/16 v13, 0x0

    .line 512
    .local v13, event_id:J
    if-eqz v10, :cond_0

    .line 513
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v15

    .line 515
    if-eqz v15, :cond_4

    .line 516
    const/4 v2, -0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 519
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 521
    .local v16, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 522
    invoke-interface {v10, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 523
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v12

    .line 524
    .local v12, eventUri:Landroid/net/Uri;
    invoke-static {v12}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 525
    .local v9, b:Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 503
    .end local v9           #b:Landroid/content/ContentProviderOperation$Builder;
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v12           #eventUri:Landroid/net/Uri;
    .end local v13           #event_id:J
    .end local v15           #nCount:I
    .end local v16           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OR parentID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 531
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v13       #event_id:J
    .restart local v15       #nCount:I
    .restart local v16       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "com.android.calendar"

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 547
    .end local v16           #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :cond_4
    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_5

    .line 548
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 550
    :cond_5
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 538
    .restart local v16       #ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :catch_0
    move-exception v11

    .line 539
    .local v11, e:Landroid/os/RemoteException;
    const-string v2, "DeleteEventHelper"

    const-string v3, "Ignoring unexpected remote exception"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 540
    .end local v11           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v11

    .line 541
    .local v11, e:Landroid/content/OperationApplicationException;
    const-string v2, "DeleteEventHelper"

    const-string v3, "Ignoring unexpected exception"

    invoke-static {v2, v3, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 853
    iget-object v0, p0, Lcom/htc/calendar/DeleteEventHelper;->mQueryHandler:Lcom/htc/calendar/DeleteEventHelper$QueryHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/calendar/DeleteEventHelper$QueryHandler;->cancelOperation(I)V

    .line 854
    iput-object v2, p0, Lcom/htc/calendar/DeleteEventHelper;->mQueryHandler:Lcom/htc/calendar/DeleteEventHelper$QueryHandler;

    .line 855
    iput-object v2, p0, Lcom/htc/calendar/DeleteEventHelper;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 856
    iput-object v2, p0, Lcom/htc/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 857
    iput-object v2, p0, Lcom/htc/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;

    .line 858
    return-void
.end method

.method public setExitWhenDone(Z)V
    .locals 0
    .parameter "exitWhenDone"

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/htc/calendar/DeleteEventHelper;->mExitWhenDone:Z

    .line 141
    return-void
.end method
