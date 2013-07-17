.class Lcom/htc/calendar/MeetingInvitationActivity$UIHandler;
.super Landroid/os/Handler;
.source "MeetingInvitationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/MeetingInvitationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/htc/calendar/MeetingInvitationActivity;


# direct methods
.method public constructor <init>(Lcom/htc/calendar/MeetingInvitationActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 252
    iput-object p1, p0, Lcom/htc/calendar/MeetingInvitationActivity$UIHandler;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 253
    iput-object p2, p0, Lcom/htc/calendar/MeetingInvitationActivity$UIHandler;->mContext:Landroid/content/Context;

    .line 254
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 257
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/htc/calendar/MeetingInvitationActivity$UIHandler;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    #getter for: Lcom/htc/calendar/MeetingInvitationActivity;->mListView:Lcom/htc/widget/HtcListView;
    invoke-static {v0}, Lcom/htc/calendar/MeetingInvitationActivity;->access$000(Lcom/htc/calendar/MeetingInvitationActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 259
    iget-object v0, p0, Lcom/htc/calendar/MeetingInvitationActivity$UIHandler;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    #getter for: Lcom/htc/calendar/MeetingInvitationActivity;->mNoMeetingView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/calendar/MeetingInvitationActivity;->access$100(Lcom/htc/calendar/MeetingInvitationActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    iget-object v0, p0, Lcom/htc/calendar/MeetingInvitationActivity$UIHandler;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    #getter for: Lcom/htc/calendar/MeetingInvitationActivity;->mBottomRound:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/calendar/MeetingInvitationActivity;->access$200(Lcom/htc/calendar/MeetingInvitationActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 262
    iget-object v0, p0, Lcom/htc/calendar/MeetingInvitationActivity$UIHandler;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    #getter for: Lcom/htc/calendar/MeetingInvitationActivity;->mListView:Lcom/htc/widget/HtcListView;
    invoke-static {v0}, Lcom/htc/calendar/MeetingInvitationActivity;->access$000(Lcom/htc/calendar/MeetingInvitationActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/htc/calendar/MeetingInvitationActivity$UIHandler;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    #getter for: Lcom/htc/calendar/MeetingInvitationActivity;->mNoMeetingView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/htc/calendar/MeetingInvitationActivity;->access$100(Lcom/htc/calendar/MeetingInvitationActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/htc/calendar/MeetingInvitationActivity$UIHandler;->this$0:Lcom/htc/calendar/MeetingInvitationActivity;

    #getter for: Lcom/htc/calendar/MeetingInvitationActivity;->mBottomRound:Landroid/view/View;
    invoke-static {v0}, Lcom/htc/calendar/MeetingInvitationActivity;->access$200(Lcom/htc/calendar/MeetingInvitationActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
