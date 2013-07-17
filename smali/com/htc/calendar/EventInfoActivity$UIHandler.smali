.class Lcom/htc/calendar/EventInfoActivity$UIHandler;
.super Landroid/os/Handler;
.source "EventInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/EventInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/htc/calendar/EventInfoActivity;


# direct methods
.method public constructor <init>(Lcom/htc/calendar/EventInfoActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 2599
    iput-object p1, p0, Lcom/htc/calendar/EventInfoActivity$UIHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2600
    iput-object p2, p0, Lcom/htc/calendar/EventInfoActivity$UIHandler;->mContext:Landroid/content/Context;

    .line 2601
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/16 v4, 0x8

    .line 2604
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 2605
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity$UIHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    const v3, 0x7f080090

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2630
    :cond_0
    :goto_0
    return-void

    .line 2606
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 2607
    iget-object v3, p0, Lcom/htc/calendar/EventInfoActivity$UIHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    #setter for: Lcom/htc/calendar/EventInfoActivity;->mOrganizer:Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/htc/calendar/EventInfoActivity;->access$2402(Lcom/htc/calendar/EventInfoActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2608
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity$UIHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mOrganizerView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/htc/calendar/EventInfoActivity;->access$2500(Lcom/htc/calendar/EventInfoActivity;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/calendar/EventInfoActivity$UIHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mOrganizer:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/calendar/EventInfoActivity;->access$2400(Lcom/htc/calendar/EventInfoActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 2610
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 2611
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity$UIHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mOrganizerView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/htc/calendar/EventInfoActivity;->access$2500(Lcom/htc/calendar/EventInfoActivity;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 2612
    :cond_3
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    .line 2613
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity$UIHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    invoke-virtual {v2}, Lcom/htc/calendar/EventInfoActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2614
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity$UIHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #calls: Lcom/htc/calendar/EventInfoActivity;->updateView_HTC()V
    invoke-static {v2}, Lcom/htc/calendar/EventInfoActivity;->access$000(Lcom/htc/calendar/EventInfoActivity;)V

    goto :goto_0

    .line 2616
    :cond_4
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    .line 2617
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 2618
    .local v0, reminders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity$UIHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #calls: Lcom/htc/calendar/EventInfoActivity;->processReminderData(Ljava/util/ArrayList;)V
    invoke-static {v2, v0}, Lcom/htc/calendar/EventInfoActivity;->access$2600(Lcom/htc/calendar/EventInfoActivity;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 2619
    .end local v0           #reminders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_5
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_6

    .line 2621
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity$UIHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #calls: Lcom/htc/calendar/EventInfoActivity;->processNoReminders()V
    invoke-static {v2}, Lcom/htc/calendar/EventInfoActivity;->access$2700(Lcom/htc/calendar/EventInfoActivity;)V

    goto :goto_0

    .line 2622
    :cond_6
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_7

    .line 2623
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity$UIHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    invoke-virtual {v2}, Lcom/htc/calendar/EventInfoActivity;->updateResponse()V

    .line 2624
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity$UIHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #calls: Lcom/htc/calendar/EventInfoActivity;->updateTitle()V
    invoke-static {v2}, Lcom/htc/calendar/EventInfoActivity;->access$2800(Lcom/htc/calendar/EventInfoActivity;)V

    .line 2625
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity$UIHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #calls: Lcom/htc/calendar/EventInfoActivity;->checkIsAssociatedNote()V
    invoke-static {v2}, Lcom/htc/calendar/EventInfoActivity;->access$1700(Lcom/htc/calendar/EventInfoActivity;)V

    goto :goto_0

    .line 2626
    :cond_7
    iget v2, p1, Landroid/os/Message;->what:I

    if-ne v2, v4, :cond_0

    .line 2627
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    .line 2628
    .local v1, show:Ljava/lang/Boolean;
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity$UIHandler;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #calls: Lcom/htc/calendar/EventInfoActivity;->updateSnoozeDismissBtn(Ljava/lang/Boolean;)V
    invoke-static {v2, v1}, Lcom/htc/calendar/EventInfoActivity;->access$2900(Lcom/htc/calendar/EventInfoActivity;Ljava/lang/Boolean;)V

    goto :goto_0
.end method
