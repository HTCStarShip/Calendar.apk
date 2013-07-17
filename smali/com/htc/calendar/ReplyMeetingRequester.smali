.class public Lcom/htc/calendar/ReplyMeetingRequester;
.super Landroid/os/Handler;
.source "ReplyMeetingRequester.java"


# static fields
.field private static MSG_START_REPLY_ACTIVITY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ReplyMeetingRequester"

.field private static me:Lcom/htc/calendar/ReplyMeetingRequester;


# instance fields
.field private isProcessing:Z

.field private mEventInfoActivity:Lcom/htc/calendar/EventInfoActivity;

.field private mIntent:Landroid/content/Intent;

.field private mReplyMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    sput-object v0, Lcom/htc/calendar/ReplyMeetingRequester;->me:Lcom/htc/calendar/ReplyMeetingRequester;

    .line 11
    const/16 v0, 0x3e8

    sput v0, Lcom/htc/calendar/ReplyMeetingRequester;->MSG_START_REPLY_ACTIVITY:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/calendar/ReplyMeetingRequester;->isProcessing:Z

    .line 19
    return-void
.end method

.method static synthetic access$002(Lcom/htc/calendar/ReplyMeetingRequester;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 8
    iput-object p1, p0, Lcom/htc/calendar/ReplyMeetingRequester;->mIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$100(Lcom/htc/calendar/ReplyMeetingRequester;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    iget v0, p0, Lcom/htc/calendar/ReplyMeetingRequester;->mReplyMode:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/calendar/ReplyMeetingRequester;)Lcom/htc/calendar/EventInfoActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 8
    iget-object v0, p0, Lcom/htc/calendar/ReplyMeetingRequester;->mEventInfoActivity:Lcom/htc/calendar/EventInfoActivity;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 8
    sget v0, Lcom/htc/calendar/ReplyMeetingRequester;->MSG_START_REPLY_ACTIVITY:I

    return v0
.end method

.method public static getInstance(Lcom/htc/calendar/EventInfoActivity;I)Lcom/htc/calendar/ReplyMeetingRequester;
    .locals 3
    .parameter "context"
    .parameter "replyMode"

    .prologue
    .line 22
    const-class v1, Lcom/htc/calendar/ReplyMeetingRequester;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Lcom/htc/calendar/ReplyMeetingRequester;->me:Lcom/htc/calendar/ReplyMeetingRequester;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/htc/calendar/ReplyMeetingRequester;

    invoke-direct {v0}, Lcom/htc/calendar/ReplyMeetingRequester;-><init>()V

    sput-object v0, Lcom/htc/calendar/ReplyMeetingRequester;->me:Lcom/htc/calendar/ReplyMeetingRequester;

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    sget-object v0, Lcom/htc/calendar/ReplyMeetingRequester;->me:Lcom/htc/calendar/ReplyMeetingRequester;

    iput-object p0, v0, Lcom/htc/calendar/ReplyMeetingRequester;->mEventInfoActivity:Lcom/htc/calendar/EventInfoActivity;

    .line 29
    sget-object v0, Lcom/htc/calendar/ReplyMeetingRequester;->me:Lcom/htc/calendar/ReplyMeetingRequester;

    iput p1, v0, Lcom/htc/calendar/ReplyMeetingRequester;->mReplyMode:I

    .line 30
    const-string v0, "ReplyMeetingRequester"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInstance, ReplyMode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    sget-object v0, Lcom/htc/calendar/ReplyMeetingRequester;->me:Lcom/htc/calendar/ReplyMeetingRequester;

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 56
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/htc/calendar/ReplyMeetingRequester;->MSG_START_REPLY_ACTIVITY:I

    if-ne v0, v1, :cond_0

    .line 57
    const-string v0, "ReplyMeetingRequester"

    const-string v1, "startActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/htc/calendar/ReplyMeetingRequester;->mEventInfoActivity:Lcom/htc/calendar/EventInfoActivity;

    iget-object v1, p0, Lcom/htc/calendar/ReplyMeetingRequester;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/htc/calendar/EventInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/calendar/ReplyMeetingRequester;->isProcessing:Z

    .line 64
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public requestReplyMeeting()V
    .locals 3

    .prologue
    .line 35
    iget-boolean v1, p0, Lcom/htc/calendar/ReplyMeetingRequester;->isProcessing:Z

    if-eqz v1, :cond_0

    .line 36
    const-string v1, "ReplyMeetingRequester"

    const-string v2, "Previous process still running!!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :goto_0
    return-void

    .line 40
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/htc/calendar/ReplyMeetingRequester;->isProcessing:Z

    .line 41
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/htc/calendar/ReplyMeetingRequester$1;

    invoke-direct {v1, p0}, Lcom/htc/calendar/ReplyMeetingRequester$1;-><init>(Lcom/htc/calendar/ReplyMeetingRequester;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 51
    .local v0, mThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
