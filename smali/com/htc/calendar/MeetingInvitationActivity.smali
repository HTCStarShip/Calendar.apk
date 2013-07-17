.class public Lcom/htc/calendar/MeetingInvitationActivity;
.super Landroid/app/Activity;
.source "MeetingInvitationActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemClickListener;
.implements Lcom/htc/calendar/Navigator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/calendar/MeetingInvitationActivity$MeetingInvitationAdapter;,
        Lcom/htc/calendar/MeetingInvitationActivity$CloseCursorThread;,
        Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;,
        Lcom/htc/calendar/MeetingInvitationActivity$UIHandler;
    }
.end annotation


# static fields
.field private static final ACTION_HTC_EAS_ACNT_REMOVED:Ljava/lang/String; = "android.intent.action.EAS_ACCOUNT_REMOVED"

.field private static final ACTION_HTC_EAS_ALL_SYNC_FINISH:Ljava/lang/String; = "android.intent.action.mail.new_mail_notification"

.field public static final CALENDAR_INDEX_COLOR:I = 0x2

.field public static final CALENDAR_INDEX_DISPLAY_NAME:I = 0x1

.field public static final CALENDAR_INDEX_ID:I = 0x0

.field public static final CALENDAR_INDEX_SELECTED:I = 0x3

.field public static final CALENDAR_INDEX_SYNC_ACCOUNT:I = 0x5

.field public static final CALENDAR_INDEX_SYNC_ACCOUNT_TYPE:I = 0x6

.field public static final CALENDAR_INDEX_SYNC_EVENTS:I = 0x4

.field private static final CALENDAR_PROJECTION:[Ljava/lang/String; = null

.field private static final DEBUG:Z = false

.field private static final MAIL_BOX_ID:Ljava/lang/String; = "_mailboxId"

.field private static final MAIL_DATE:Ljava/lang/String; = "_date"

.field private static final MAIL_DEFAULT_FOLDER:Ljava/lang/String; = "_defaultFolderId"

.field private static final MAIL_END_TIME:Ljava/lang/String; = "_endTime"

.field private static final MAIL_GLOBAL_OBJ_ID:Ljava/lang/String; = "_globalObjId"

.field private static final MAIL_ID:Ljava/lang/String; = "_id"

.field private static final MAIL_INDEX_DATE:I = 0x1

.field private static final MAIL_INDEX_END_TIME:I = 0xa

.field private static final MAIL_INDEX_GLOBAL_OBJ_ID:I = 0x3

.field private static final MAIL_INDEX_ID:I = 0x0

.field private static final MAIL_INDEX_INST_TYPE:I = 0x4

.field private static final MAIL_INDEX_LOCATION:I = 0x7

.field private static final MAIL_INDEX_MAIL_BOX_ID:I = 0x8

.field private static final MAIL_INDEX_ORGANIZER:I = 0x5

.field private static final MAIL_INDEX_READ:I = 0x2

.field private static final MAIL_INDEX_START_TIME:I = 0x9

.field private static final MAIL_INDEX_SUBJECT:I = 0x6

.field private static final MAIL_INST_TYPE:Ljava/lang/String; = "_instanceType"

.field private static final MAIL_LOCATION:Ljava/lang/String; = "_location"

.field private static final MAIL_MESSAGE_URI:Landroid/net/Uri; = null

.field private static final MAIL_ORGANIZER:Ljava/lang/String; = "_organizer"

.field private static final MAIL_PROJECTION:[Ljava/lang/String; = null

.field private static final MAIL_READ:Ljava/lang/String; = "_read"

.field private static final MAIL_START_TIME:Ljava/lang/String; = "_startTime"

.field private static final MAIL_SUBJECT:Ljava/lang/String; = "_subject"

.field private static final MSG_INIT_LISTVIEW:I = 0x0

.field private static final MSG_NO_MEETING:I = 0x1

.field private static final QUERY_TOKEN_CALENDAR:I = 0x1

.field private static final QUERY_TOKEN_DEFAULT:I = -0x1

.field private static final QUERY_TOKEN_MAIL_DEFAULT_FOLDER:I = 0x0

.field private static final QUERY_TOKEN_UNRESPONSE_MEETING_INVITATION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MeetingInvitationActivity"


# instance fields
.field private mAccountColorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/htc/calendar/MeetingInvitationActivity$MeetingInvitationAdapter;

.field private mBottomRound:Landroid/view/View;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mListView:Lcom/htc/widget/HtcListView;

.field private mMailCursor:Landroid/database/Cursor;

.field private mMailDefaultFolderIDs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mNoMeetingView:Landroid/widget/TextView;

.field private mQueryHandler:Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;

.field private mQueryToken:I

.field private mUIHandler:Lcom/htc/calendar/MeetingInvitationActivity$UIHandler;

.field private mbIsReceiverRegistered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    const-string v0, "content://mail/messages/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/calendar/MeetingInvitationActivity;->MAIL_MESSAGE_URI:Landroid/net/Uri;

    .line 56
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "calendar_displayName"

    aput-object v1, v0, v4

    const-string v1, "calendar_color"

    aput-object v1, v0, v5

    const-string v1, "visible"

    aput-object v1, v0, v6

    const-string v1, "sync_events"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "account_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "account_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/calendar/MeetingInvitationActivity;->CALENDAR_PROJECTION:[Ljava/lang/String;

    .line 87
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_date"

    aput-object v1, v0, v4

    const-string v1, "_read"

    aput-object v1, v0, v5

    const-string v1, "_globalObjId"

    aput-object v1, v0, v6

    const-string v1, "_instanceType"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "_organizer"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_subject"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_location"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_mailboxId"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "_startTime"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "_endTime"

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/calendar/MeetingInvitationActivity;->MAIL_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mMailDefaultFolderIDs:Ljava/util/ArrayList;

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mAccountColorMap:Ljava/util/HashMap;

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mAdapter:Lcom/htc/calendar/MeetingInvitationActivity$MeetingInvitationAdapter;

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mbIsReceiverRegistered:Z

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mQueryToken:I

    .line 571
    new-instance v0, Lcom/htc/calendar/MeetingInvitationActivity$1;

    invoke-direct {v0, p0}, Lcom/htc/calendar/MeetingInvitationActivity$1;-><init>(Lcom/htc/calendar/MeetingInvitationActivity;)V

    iput-object v0, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/htc/calendar/MeetingInvitationActivity;)Lcom/htc/widget/HtcListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mListView:Lcom/htc/widget/HtcListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/htc/calendar/MeetingInvitationActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mNoMeetingView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/htc/calendar/MeetingInvitationActivity;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mMailCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/htc/calendar/MeetingInvitationActivity;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mMailCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/htc/calendar/MeetingInvitationActivity;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/htc/calendar/MeetingInvitationActivity;->closeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/htc/calendar/MeetingInvitationActivity;)Lcom/htc/calendar/MeetingInvitationActivity$MeetingInvitationAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mAdapter:Lcom/htc/calendar/MeetingInvitationActivity$MeetingInvitationAdapter;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/htc/calendar/MeetingInvitationActivity;Lcom/htc/calendar/MeetingInvitationActivity$MeetingInvitationAdapter;)Lcom/htc/calendar/MeetingInvitationActivity$MeetingInvitationAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mAdapter:Lcom/htc/calendar/MeetingInvitationActivity$MeetingInvitationAdapter;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/htc/calendar/MeetingInvitationActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/htc/calendar/MeetingInvitationActivity;->startEASQueryInBackground()V

    return-void
.end method

.method static synthetic access$200(Lcom/htc/calendar/MeetingInvitationActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mBottomRound:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/htc/calendar/MeetingInvitationActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mMailDefaultFolderIDs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/htc/calendar/MeetingInvitationActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mMailDefaultFolderIDs:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/htc/calendar/MeetingInvitationActivity;->CALENDAR_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/htc/calendar/MeetingInvitationActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mQueryToken:I

    return p1
.end method

.method static synthetic access$600(Lcom/htc/calendar/MeetingInvitationActivity;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mAccountColorMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/htc/calendar/MeetingInvitationActivity;->MAIL_MESSAGE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$800()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/htc/calendar/MeetingInvitationActivity;->MAIL_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/htc/calendar/MeetingInvitationActivity;)Lcom/htc/calendar/MeetingInvitationActivity$UIHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mUIHandler:Lcom/htc/calendar/MeetingInvitationActivity$UIHandler;

    return-object v0
.end method

.method private cancelPreviousQuery()V
    .locals 3

    .prologue
    .line 438
    const-string v0, "MeetingInvitationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelPreviousQuery, mQueryToken : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mQueryToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget v0, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mQueryToken:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 440
    const-string v0, "MeetingInvitationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query in process, cancel previous token. mQueryToken : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mQueryToken:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v0, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mQueryHandler:Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;

    iget v1, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mQueryToken:I

    invoke-virtual {v0, v1}, Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;->cancelOperation(I)V

    .line 443
    :cond_0
    return-void
.end method

.method private closeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 585
    if-eqz p1, :cond_1

    .line 586
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 587
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 589
    :cond_0
    const/4 p1, 0x0

    .line 591
    :cond_1
    return-void
.end method

.method private debug(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 597
    return-void
.end method

.method private setHtcTitle()V
    .locals 3

    .prologue
    .line 600
    invoke-virtual {p0}, Lcom/htc/calendar/MeetingInvitationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 601
    .local v0, title:Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/htc/calendar/HtcUtils;->setHtc_Title_21(Landroid/app/Activity;Ljava/lang/String;)V

    .line 602
    return-void
.end method

.method private startEASQueryInBackground()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 424
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string v0, "_defaultFolderId"

    aput-object v0, v4, v1

    .line 425
    .local v4, proj:[Ljava/lang/String;
    const-string v5, "_protocol = \'4\'"

    .line 426
    .local v5, where:Ljava/lang/String;
    invoke-direct {p0}, Lcom/htc/calendar/MeetingInvitationActivity;->cancelPreviousQuery()V

    .line 427
    iget-object v0, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mQueryHandler:Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;

    sget-object v3, Lcom/htc/android/pim/eas/EASMail;->EASACCOUNTS_URI:Landroid/net/Uri;

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iput v1, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mQueryToken:I

    .line 435
    return-void
.end method


# virtual methods
.method public getAllDay()Z
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public getSelectedTime()J
    .locals 2

    .prologue
    .line 235
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public goTo(Landroid/text/format/Time;Z)V
    .locals 0
    .parameter "time"
    .parameter "animate"

    .prologue
    .line 238
    return-void
.end method

.method public goTo(Landroid/text/format/Time;ZLandroid/text/format/Time;)V
    .locals 0
    .parameter "time"
    .parameter "animate"
    .parameter "forcusOn"

    .prologue
    .line 240
    return-void
.end method

.method public goToToday()V
    .locals 0

    .prologue
    .line 242
    return-void
.end method

.method protected initReceiver()V
    .locals 2

    .prologue
    .line 560
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 561
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.mail.new_mail_notification"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 562
    const-string v1, "android.intent.action.EAS_ACCOUNT_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 563
    const-string v1, "action.calendars.picker.changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 565
    iget-object v1, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/htc/calendar/MeetingInvitationActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 567
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mbIsReceiverRegistered:Z

    .line 568
    const-string v1, "Receiver registered."

    invoke-direct {p0, v1}, Lcom/htc/calendar/MeetingInvitationActivity;->debug(Ljava/lang/String;)V

    .line 569
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 149
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 150
    const v0, 0x7f030031

    invoke-virtual {p0, v0}, Lcom/htc/calendar/MeetingInvitationActivity;->setContentView(I)V

    .line 152
    const v0, 0x7f0d00d2

    invoke-virtual {p0, v0}, Lcom/htc/calendar/MeetingInvitationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcListView;

    iput-object v0, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mListView:Lcom/htc/widget/HtcListView;

    .line 153
    iget-object v0, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {p0}, Lcom/htc/calendar/MeetingInvitationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2080700

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 154
    iget-object v0, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcListView;->setOnItemClickListener(Lcom/htc/widget/HtcAdapterView$OnItemClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 156
    iget-object v0, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListView;->setFastScrollEnabled(Z)V

    .line 157
    iget-object v0, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListView;->setTopBorderHeight(I)V

    .line 158
    iget-object v0, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mListView:Lcom/htc/widget/HtcListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v3, v1}, Lcom/htc/widget/HtcListView;->setRoundCorner(ZZ)V

    .line 159
    iget-object v0, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mListView:Lcom/htc/widget/HtcListView;

    invoke-virtual {p0}, Lcom/htc/calendar/MeetingInvitationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020099

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcListView;->setListBackground(Landroid/graphics/drawable/Drawable;)V

    .line 161
    const v0, 0x7f0d00d3

    invoke-virtual {p0, v0}, Lcom/htc/calendar/MeetingInvitationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mNoMeetingView:Landroid/widget/TextView;

    .line 162
    const v0, 0x7f0d00d4

    invoke-virtual {p0, v0}, Lcom/htc/calendar/MeetingInvitationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mBottomRound:Landroid/view/View;

    .line 164
    new-instance v0, Lcom/htc/calendar/MeetingInvitationActivity$UIHandler;

    invoke-direct {v0, p0, p0}, Lcom/htc/calendar/MeetingInvitationActivity$UIHandler;-><init>(Lcom/htc/calendar/MeetingInvitationActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mUIHandler:Lcom/htc/calendar/MeetingInvitationActivity$UIHandler;

    .line 165
    new-instance v0, Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;

    invoke-virtual {p0}, Lcom/htc/calendar/MeetingInvitationActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;-><init>(Lcom/htc/calendar/MeetingInvitationActivity;Landroid/content/ContentResolver;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mQueryHandler:Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;

    .line 166
    invoke-direct {p0}, Lcom/htc/calendar/MeetingInvitationActivity;->setHtcTitle()V

    .line 167
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 197
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 199
    iget-object v1, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mUIHandler:Lcom/htc/calendar/MeetingInvitationActivity$UIHandler;

    invoke-virtual {v1, v2}, Lcom/htc/calendar/MeetingInvitationActivity$UIHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 200
    iput-object v2, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mUIHandler:Lcom/htc/calendar/MeetingInvitationActivity$UIHandler;

    .line 201
    invoke-direct {p0}, Lcom/htc/calendar/MeetingInvitationActivity;->cancelPreviousQuery()V

    .line 202
    iput-object v2, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mQueryHandler:Lcom/htc/calendar/MeetingInvitationActivity$QueryHandler;

    .line 204
    iget-object v1, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mAdapter:Lcom/htc/calendar/MeetingInvitationActivity$MeetingInvitationAdapter;

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mAdapter:Lcom/htc/calendar/MeetingInvitationActivity$MeetingInvitationAdapter;

    invoke-virtual {v1, v2}, Lcom/htc/calendar/MeetingInvitationActivity$MeetingInvitationAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 207
    :cond_0
    iput-object v2, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mAdapter:Lcom/htc/calendar/MeetingInvitationActivity$MeetingInvitationAdapter;

    .line 209
    iget-object v1, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mMailDefaultFolderIDs:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mMailDefaultFolderIDs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 212
    :cond_1
    iput-object v2, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mMailDefaultFolderIDs:Ljava/util/ArrayList;

    .line 214
    iget-object v1, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mAccountColorMap:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    .line 215
    iget-object v1, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mAccountColorMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 217
    :cond_2
    iput-object v2, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mAccountColorMap:Ljava/util/HashMap;

    .line 219
    new-instance v0, Lcom/htc/calendar/MeetingInvitationActivity$CloseCursorThread;

    iget-object v1, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mMailCursor:Landroid/database/Cursor;

    invoke-direct {v0, p0, v1}, Lcom/htc/calendar/MeetingInvitationActivity$CloseCursorThread;-><init>(Lcom/htc/calendar/MeetingInvitationActivity;Landroid/database/Cursor;)V

    .line 220
    .local v0, thread:Lcom/htc/calendar/MeetingInvitationActivity$CloseCursorThread;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "OnDestroy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/calendar/MeetingInvitationActivity$CloseCursorThread;->setName(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0}, Lcom/htc/calendar/MeetingInvitationActivity$CloseCursorThread;->start()V

    .line 222
    return-void
.end method

.method public onItemClick(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 272
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 273
    .local v0, messageID:Ljava/lang/Long;
    const-string v1, "MeetingInvitationActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemSelected,  messageID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/htc/calendar/EASMailUtils;->launchDetail(Landroid/content/Context;J)V

    .line 275
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 186
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 188
    iget-boolean v0, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mbIsReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/htc/calendar/MeetingInvitationActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mbIsReceiverRegistered:Z

    .line 193
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 171
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 172
    invoke-static {}, Lcom/htc/calendar/CalendarULog;->printSwitchToInvite()V

    .line 173
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/htc/calendar/Utils;->getExchangeLoginName(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, exchangeAcnt:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/htc/calendar/MeetingInvitationActivity;->startEASQueryInBackground()V

    .line 181
    :goto_0
    invoke-virtual {p0}, Lcom/htc/calendar/MeetingInvitationActivity;->initReceiver()V

    .line 182
    return-void

    .line 177
    :cond_0
    const-string v1, "No Exchange account."

    invoke-direct {p0, v1}, Lcom/htc/calendar/MeetingInvitationActivity;->debug(Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/htc/calendar/MeetingInvitationActivity;->mUIHandler:Lcom/htc/calendar/MeetingInvitationActivity$UIHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/calendar/MeetingInvitationActivity$UIHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 226
    invoke-static {p0}, Lcom/htc/calendar/Utils;->onSearchRequestedLocked(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
