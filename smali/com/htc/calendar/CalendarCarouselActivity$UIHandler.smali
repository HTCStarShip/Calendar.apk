.class Lcom/htc/calendar/CalendarCarouselActivity$UIHandler;
.super Landroid/os/Handler;
.source "CalendarCarouselActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/CalendarCarouselActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/CalendarCarouselActivity;


# direct methods
.method private constructor <init>(Lcom/htc/calendar/CalendarCarouselActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 744
    iput-object p1, p0, Lcom/htc/calendar/CalendarCarouselActivity$UIHandler;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/calendar/CalendarCarouselActivity;Lcom/htc/calendar/CalendarCarouselActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 744
    invoke-direct {p0, p1}, Lcom/htc/calendar/CalendarCarouselActivity$UIHandler;-><init>(Lcom/htc/calendar/CalendarCarouselActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 747
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_1

    .line 748
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity$UIHandler;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    #getter for: Lcom/htc/calendar/CalendarCarouselActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/htc/calendar/CalendarCarouselActivity;->access$900(Lcom/htc/calendar/CalendarCarouselActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity$UIHandler;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    #getter for: Lcom/htc/calendar/CalendarCarouselActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/htc/calendar/CalendarCarouselActivity;->access$900(Lcom/htc/calendar/CalendarCarouselActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity$UIHandler;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    #getter for: Lcom/htc/calendar/CalendarCarouselActivity;->mProgressDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v0}, Lcom/htc/calendar/CalendarCarouselActivity;->access$900(Lcom/htc/calendar/CalendarCarouselActivity;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/app/HtcProgressDialog;->dismiss()V

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 751
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v3, :cond_0

    .line 752
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity$UIHandler;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    invoke-virtual {v0}, Lcom/htc/calendar/CalendarCarouselActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 756
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity$UIHandler;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    #getter for: Lcom/htc/calendar/CalendarCarouselActivity;->mUnResponseInvitationCount:I
    invoke-static {v0}, Lcom/htc/calendar/CalendarCarouselActivity;->access$1000(Lcom/htc/calendar/CalendarCarouselActivity;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 757
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity$UIHandler;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    #getter for: Lcom/htc/calendar/CalendarCarouselActivity;->mHost:Lcom/htc/widget/CarouselHost;
    invoke-static {v0}, Lcom/htc/calendar/CalendarCarouselActivity;->access$1100(Lcom/htc/calendar/CalendarCarouselActivity;)Lcom/htc/widget/CarouselHost;

    move-result-object v0

    const-string v1, "Invitation"

    iget-object v2, p0, Lcom/htc/calendar/CalendarCarouselActivity$UIHandler;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    #getter for: Lcom/htc/calendar/CalendarCarouselActivity;->mUnResponseInvitationCount:I
    invoke-static {v2}, Lcom/htc/calendar/CalendarCarouselActivity;->access$1000(Lcom/htc/calendar/CalendarCarouselActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/CarouselHost;->setCountText(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 758
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity$UIHandler;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    #getter for: Lcom/htc/calendar/CalendarCarouselActivity;->mHost:Lcom/htc/widget/CarouselHost;
    invoke-static {v0}, Lcom/htc/calendar/CalendarCarouselActivity;->access$1100(Lcom/htc/calendar/CalendarCarouselActivity;)Lcom/htc/widget/CarouselHost;

    move-result-object v0

    const-string v1, "Invitation"

    invoke-virtual {v0, v1, v3}, Lcom/htc/widget/CarouselHost;->setCountVisibility(Ljava/lang/String;Z)V

    goto :goto_0

    .line 760
    :cond_2
    iget-object v0, p0, Lcom/htc/calendar/CalendarCarouselActivity$UIHandler;->this$0:Lcom/htc/calendar/CalendarCarouselActivity;

    #getter for: Lcom/htc/calendar/CalendarCarouselActivity;->mHost:Lcom/htc/widget/CarouselHost;
    invoke-static {v0}, Lcom/htc/calendar/CalendarCarouselActivity;->access$1100(Lcom/htc/calendar/CalendarCarouselActivity;)Lcom/htc/widget/CarouselHost;

    move-result-object v0

    const-string v1, "Invitation"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/htc/widget/CarouselHost;->setCountVisibility(Ljava/lang/String;Z)V

    goto :goto_0
.end method
