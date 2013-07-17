.class Lcom/htc/calendar/EventInfoActivity$2;
.super Ljava/lang/Object;
.source "EventInfoActivity.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/EventInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/EventInfoActivity;


# direct methods
.method constructor <init>(Lcom/htc/calendar/EventInfoActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 412
    iput-object p1, p0, Lcom/htc/calendar/EventInfoActivity$2;->this$0:Lcom/htc/calendar/EventInfoActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "v"
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
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    const v4, 0x7f0d00ab

    .line 416
    const-wide/16 v2, 0x0

    cmp-long v2, p4, v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity$2;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mResponseOffset:I
    invoke-static {v2}, Lcom/htc/calendar/EventInfoActivity;->access$100(Lcom/htc/calendar/EventInfoActivity;)I

    move-result v2

    if-nez v2, :cond_1

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 420
    :cond_1
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity$2;->this$0:Lcom/htc/calendar/EventInfoActivity;

    invoke-virtual {p1, p3}, Lcom/htc/widget/HtcAdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/htc/calendar/EventInfoActivity;->setTextCommon(ILjava/lang/CharSequence;)V
    invoke-static {v2, v4, v3}, Lcom/htc/calendar/EventInfoActivity;->access$200(Lcom/htc/calendar/EventInfoActivity;ILjava/lang/CharSequence;)V

    .line 423
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity$2;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mIsRepeating:Z
    invoke-static {v2}, Lcom/htc/calendar/EventInfoActivity;->access$300(Lcom/htc/calendar/EventInfoActivity;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 424
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity$2;->this$0:Lcom/htc/calendar/EventInfoActivity;

    invoke-virtual {v2}, Lcom/htc/calendar/EventInfoActivity;->saveReminderAndResponse()V

    goto :goto_0

    .line 430
    :cond_2
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity$2;->this$0:Lcom/htc/calendar/EventInfoActivity;

    iget-object v3, p0, Lcom/htc/calendar/EventInfoActivity$2;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mOriginalAttendeeResponse:I
    invoke-static {v3}, Lcom/htc/calendar/EventInfoActivity;->access$400(Lcom/htc/calendar/EventInfoActivity;)I

    move-result v3

    #calls: Lcom/htc/calendar/EventInfoActivity;->findResponseIndexFor(I)I
    invoke-static {v2, v3}, Lcom/htc/calendar/EventInfoActivity;->access$500(Lcom/htc/calendar/EventInfoActivity;I)I

    move-result v0

    .line 431
    .local v0, index:I
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity$2;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mResponseOffset:I
    invoke-static {v2}, Lcom/htc/calendar/EventInfoActivity;->access$100(Lcom/htc/calendar/EventInfoActivity;)I

    move-result v2

    add-int/2addr v2, v0

    if-eq p3, v2, :cond_0

    .line 434
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity$2;->this$0:Lcom/htc/calendar/EventInfoActivity;

    invoke-virtual {v2, v4}, Lcom/htc/calendar/EventInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 435
    .local v1, responseView:Landroid/widget/TextView;
    invoke-virtual {p1, p3}, Lcom/htc/widget/HtcAdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity$2;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mEditResponseHelper:Lcom/htc/calendar/EditResponseHelper;
    invoke-static {v2}, Lcom/htc/calendar/EventInfoActivity;->access$600(Lcom/htc/calendar/EventInfoActivity;)Lcom/htc/calendar/EditResponseHelper;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/calendar/EventInfoActivity$2;->this$0:Lcom/htc/calendar/EventInfoActivity;

    #getter for: Lcom/htc/calendar/EventInfoActivity;->mEditResponseHelper:Lcom/htc/calendar/EditResponseHelper;
    invoke-static {v3}, Lcom/htc/calendar/EventInfoActivity;->access$600(Lcom/htc/calendar/EventInfoActivity;)Lcom/htc/calendar/EditResponseHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/calendar/EditResponseHelper;->getWhichEvents()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/htc/calendar/EditResponseHelper;->showDialog(I)V

    .line 439
    iget-object v2, p0, Lcom/htc/calendar/EventInfoActivity$2;->this$0:Lcom/htc/calendar/EventInfoActivity;

    invoke-virtual {v2}, Lcom/htc/calendar/EventInfoActivity;->saveReminderAndResponse()V

    goto :goto_0
.end method

.method public onNothingSelected(Lcom/htc/widget/HtcAdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/HtcAdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 443
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    return-void
.end method
