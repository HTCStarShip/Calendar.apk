.class Lcom/htc/calendar/ReplyMeetingRequester$1;
.super Ljava/lang/Object;
.source "ReplyMeetingRequester.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/ReplyMeetingRequester;->requestReplyMeeting()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/ReplyMeetingRequester;


# direct methods
.method constructor <init>(Lcom/htc/calendar/ReplyMeetingRequester;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/htc/calendar/ReplyMeetingRequester$1;->this$0:Lcom/htc/calendar/ReplyMeetingRequester;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 44
    :try_start_0
    iget-object v1, p0, Lcom/htc/calendar/ReplyMeetingRequester$1;->this$0:Lcom/htc/calendar/ReplyMeetingRequester;

    iget-object v2, p0, Lcom/htc/calendar/ReplyMeetingRequester$1;->this$0:Lcom/htc/calendar/ReplyMeetingRequester;

    #getter for: Lcom/htc/calendar/ReplyMeetingRequester;->mEventInfoActivity:Lcom/htc/calendar/EventInfoActivity;
    invoke-static {v2}, Lcom/htc/calendar/ReplyMeetingRequester;->access$200(Lcom/htc/calendar/ReplyMeetingRequester;)Lcom/htc/calendar/EventInfoActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/calendar/ReplyMeetingRequester$1;->this$0:Lcom/htc/calendar/ReplyMeetingRequester;

    #getter for: Lcom/htc/calendar/ReplyMeetingRequester;->mReplyMode:I
    invoke-static {v3}, Lcom/htc/calendar/ReplyMeetingRequester;->access$100(Lcom/htc/calendar/ReplyMeetingRequester;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/calendar/EventInfoActivity;->replyMeetingInvitation(I)Landroid/content/Intent;

    move-result-object v2

    #setter for: Lcom/htc/calendar/ReplyMeetingRequester;->mIntent:Landroid/content/Intent;
    invoke-static {v1, v2}, Lcom/htc/calendar/ReplyMeetingRequester;->access$002(Lcom/htc/calendar/ReplyMeetingRequester;Landroid/content/Intent;)Landroid/content/Intent;

    .line 45
    iget-object v1, p0, Lcom/htc/calendar/ReplyMeetingRequester$1;->this$0:Lcom/htc/calendar/ReplyMeetingRequester;

    invoke-static {}, Lcom/htc/calendar/ReplyMeetingRequester;->access$300()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/htc/calendar/ReplyMeetingRequester;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "ReplyMeetingRequester"

    const-string v2, "reply meeting invitation exception "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
