.class Lcom/htc/calendar/EditEvent$13;
.super Ljava/lang/Object;
.source "EditEvent.java"

# interfaces
.implements Lcom/htc/widget/HtcAdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/EditEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/EditEvent;


# direct methods
.method constructor <init>(Lcom/htc/calendar/EditEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 4209
    iput-object p1, p0, Lcom/htc/calendar/EditEvent$13;->this$0:Lcom/htc/calendar/EditEvent;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Lcom/htc/widget/HtcAdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    .line 4213
    .local p1, parent:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    if-nez p2, :cond_2

    .line 4214
    iget-object v5, p0, Lcom/htc/calendar/EditEvent$13;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mCalendarsSpinner:Lcom/htc/widget/HtcSpinner;
    invoke-static {v5}, Lcom/htc/calendar/EditEvent;->access$2200(Lcom/htc/calendar/EditEvent;)Lcom/htc/widget/HtcSpinner;

    move-result-object v5

    if-nez v5, :cond_1

    .line 4215
    const-string v5, "EditEvent"

    const-string v6, "Calendars is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4282
    :cond_0
    :goto_0
    return-void

    .line 4218
    :cond_1
    const-string v5, "EditEvent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Calendars exception: getSelectedItemPosition:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/calendar/EditEvent$13;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mCalendarsSpinner:Lcom/htc/widget/HtcSpinner;
    invoke-static {v7}, Lcom/htc/calendar/EditEvent;->access$2200(Lcom/htc/calendar/EditEvent;)Lcom/htc/widget/HtcSpinner;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/calendar/EditEvent$13;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mCalendarsSpinner:Lcom/htc/widget/HtcSpinner;
    invoke-static {v7}, Lcom/htc/calendar/EditEvent;->access$2200(Lcom/htc/calendar/EditEvent;)Lcom/htc/widget/HtcSpinner;

    move-result-object v7

    invoke-virtual {v7}, Lcom/htc/widget/HtcSpinner;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4224
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/calendar/EditEvent$CalendarValueContainer;

    .line 4227
    .local v0, cvc:Lcom/htc/calendar/EditEvent$CalendarValueContainer;
    iget-object v5, p0, Lcom/htc/calendar/EditEvent$13;->this$0:Lcom/htc/calendar/EditEvent;

    iget v6, v0, Lcom/htc/calendar/EditEvent$CalendarValueContainer;->reminder_duration:I

    #setter for: Lcom/htc/calendar/EditEvent;->mCurrentSelectCalendarReminderDuration:I
    invoke-static {v5, v6}, Lcom/htc/calendar/EditEvent;->access$6802(Lcom/htc/calendar/EditEvent;I)I

    .line 4228
    iget-object v5, p0, Lcom/htc/calendar/EditEvent$13;->this$0:Lcom/htc/calendar/EditEvent;

    iget v6, v0, Lcom/htc/calendar/EditEvent$CalendarValueContainer;->reminder_type:I

    #setter for: Lcom/htc/calendar/EditEvent;->mCurrentSelectCalendarReminderType:I
    invoke-static {v5, v6}, Lcom/htc/calendar/EditEvent;->access$6902(Lcom/htc/calendar/EditEvent;I)I

    .line 4229
    iget-object v5, p0, Lcom/htc/calendar/EditEvent$13;->this$0:Lcom/htc/calendar/EditEvent;

    iget-object v6, p0, Lcom/htc/calendar/EditEvent$13;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mCurrentSelectCalendarReminderDuration:I
    invoke-static {v6}, Lcom/htc/calendar/EditEvent;->access$6800(Lcom/htc/calendar/EditEvent;)I

    move-result v6

    #setter for: Lcom/htc/calendar/EditEvent;->mDefaultReminderMinutes:I
    invoke-static {v5, v6}, Lcom/htc/calendar/EditEvent;->access$7002(Lcom/htc/calendar/EditEvent;I)I

    .line 4232
    iget-object v5, p0, Lcom/htc/calendar/EditEvent$13;->this$0:Lcom/htc/calendar/EditEvent;

    iget-object v6, p0, Lcom/htc/calendar/EditEvent$13;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mCurrentSelectCalendarReminderType:I
    invoke-static {v6}, Lcom/htc/calendar/EditEvent;->access$6900(Lcom/htc/calendar/EditEvent;)I

    move-result v6

    iget-object v7, p0, Lcom/htc/calendar/EditEvent$13;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mCurrentSelectCalendarReminderDuration:I
    invoke-static {v7}, Lcom/htc/calendar/EditEvent;->access$6800(Lcom/htc/calendar/EditEvent;)I

    move-result v7

    #calls: Lcom/htc/calendar/EditEvent;->checkDefaultReminder(II)V
    invoke-static {v5, v6, v7}, Lcom/htc/calendar/EditEvent;->access$7100(Lcom/htc/calendar/EditEvent;II)V

    .line 4234
    iget-object v5, p0, Lcom/htc/calendar/EditEvent$13;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mSyncAccountType:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/calendar/EditEvent;->access$1700(Lcom/htc/calendar/EditEvent;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/htc/calendar/EditEvent$CalendarValueContainer;->sync_account_type:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 4235
    iget-object v5, p0, Lcom/htc/calendar/EditEvent$13;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mComposeTitle:Lcom/htc/calendar/widget/ComposeTitle;
    invoke-static {v5}, Lcom/htc/calendar/EditEvent;->access$5400(Lcom/htc/calendar/EditEvent;)Lcom/htc/calendar/widget/ComposeTitle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/calendar/widget/ComposeTitle;->clearAllReceiverItems()V

    .line 4238
    :cond_3
    iget-object v5, p0, Lcom/htc/calendar/EditEvent$13;->this$0:Lcom/htc/calendar/EditEvent;

    iget-object v6, v0, Lcom/htc/calendar/EditEvent$CalendarValueContainer;->sync_account_type:Ljava/lang/String;

    iget-object v7, v0, Lcom/htc/calendar/EditEvent$CalendarValueContainer;->sync_account:Ljava/lang/String;

    #calls: Lcom/htc/calendar/EditEvent;->updateCurrentEventCalendarSyncSource(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6, v7}, Lcom/htc/calendar/EditEvent;->access$2800(Lcom/htc/calendar/EditEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 4241
    iget-object v5, p0, Lcom/htc/calendar/EditEvent$13;->this$0:Lcom/htc/calendar/EditEvent;

    iget-object v6, p0, Lcom/htc/calendar/EditEvent$13;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mSyncAccountType:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/calendar/EditEvent;->access$1700(Lcom/htc/calendar/EditEvent;)Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/htc/calendar/EditEvent;->showImportance(Ljava/lang/String;)Z
    invoke-static {v5, v6}, Lcom/htc/calendar/EditEvent;->access$7200(Lcom/htc/calendar/EditEvent;Ljava/lang/String;)Z

    move-result v2

    .line 4242
    .local v2, showImportance:Z
    if-nez v2, :cond_4

    .line 4243
    iget-object v5, p0, Lcom/htc/calendar/EditEvent$13;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mImportanceLayout:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/htc/calendar/EditEvent;->access$7300(Lcom/htc/calendar/EditEvent;)Landroid/widget/LinearLayout;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4244
    iget-object v5, p0, Lcom/htc/calendar/EditEvent$13;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mImportanceSpinner:Lcom/htc/widget/HtcSpinner;
    invoke-static {v5}, Lcom/htc/calendar/EditEvent;->access$7400(Lcom/htc/calendar/EditEvent;)Lcom/htc/widget/HtcSpinner;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 4254
    :goto_1
    iget-object v5, p0, Lcom/htc/calendar/EditEvent$13;->this$0:Lcom/htc/calendar/EditEvent;

    iget-object v6, p0, Lcom/htc/calendar/EditEvent$13;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mSyncAccountType:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/calendar/EditEvent;->access$1700(Lcom/htc/calendar/EditEvent;)Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/htc/calendar/EditEvent;->showInviteGuest(Ljava/lang/String;)Z
    invoke-static {v5, v6}, Lcom/htc/calendar/EditEvent;->access$7500(Lcom/htc/calendar/EditEvent;Ljava/lang/String;)Z

    move-result v3

    .line 4255
    .local v3, showInviteGuest:Z
    const-string v5, "EditEvent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showInviteGuest: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4256
    if-eqz v3, :cond_7

    .line 4257
    iget-object v5, p0, Lcom/htc/calendar/EditEvent$13;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mComposeTitle:Lcom/htc/calendar/widget/ComposeTitle;
    invoke-static {v5}, Lcom/htc/calendar/EditEvent;->access$5400(Lcom/htc/calendar/EditEvent;)Lcom/htc/calendar/widget/ComposeTitle;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/htc/calendar/widget/ComposeTitle;->setVisibility(I)V

    .line 4259
    iget-object v5, p0, Lcom/htc/calendar/EditEvent$13;->this$0:Lcom/htc/calendar/EditEvent;

    iget-object v6, p0, Lcom/htc/calendar/EditEvent$13;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mSyncAccountType:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/calendar/EditEvent;->access$1700(Lcom/htc/calendar/EditEvent;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/htc/calendar/HtcUtils;->isHTCFacebookEvent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 4260
    iget-object v5, p0, Lcom/htc/calendar/EditEvent$13;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mComposeTitle:Lcom/htc/calendar/widget/ComposeTitle;
    invoke-static {v5}, Lcom/htc/calendar/EditEvent;->access$5400(Lcom/htc/calendar/EditEvent;)Lcom/htc/calendar/widget/ComposeTitle;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/htc/calendar/widget/ComposeTitle;->setComposeTitleType(I)V

    .line 4264
    :goto_2
    iget-object v5, p0, Lcom/htc/calendar/EditEvent$13;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mComposeTitle:Lcom/htc/calendar/widget/ComposeTitle;
    invoke-static {v5}, Lcom/htc/calendar/EditEvent;->access$5400(Lcom/htc/calendar/EditEvent;)Lcom/htc/calendar/widget/ComposeTitle;

    move-result-object v5

    iget-object v6, p0, Lcom/htc/calendar/EditEvent$13;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mSyncAccount:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/calendar/EditEvent;->access$2300(Lcom/htc/calendar/EditEvent;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/htc/calendar/EditEvent$13;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mSyncAccountType:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/calendar/EditEvent;->access$1700(Lcom/htc/calendar/EditEvent;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/htc/calendar/widget/ComposeTitle;->setAccountInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 4269
    :goto_3
    iget-object v5, p0, Lcom/htc/calendar/EditEvent$13;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mDummyTitle:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/htc/calendar/EditEvent;->access$7600(Lcom/htc/calendar/EditEvent;)Landroid/widget/LinearLayout;

    move-result-object v6

    if-eqz v3, :cond_8

    const/16 v5, 0x8

    :goto_4
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4271
    iget-object v5, p0, Lcom/htc/calendar/EditEvent$13;->this$0:Lcom/htc/calendar/EditEvent;

    iget-object v6, p0, Lcom/htc/calendar/EditEvent$13;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mSyncAccountType:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/calendar/EditEvent;->access$1700(Lcom/htc/calendar/EditEvent;)Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/htc/calendar/EditEvent;->showCameraButton(Ljava/lang/String;)Z
    invoke-static {v5, v6}, Lcom/htc/calendar/EditEvent;->access$7700(Lcom/htc/calendar/EditEvent;Ljava/lang/String;)Z

    move-result v1

    .line 4272
    .local v1, showCameraButton:Z
    const-string v5, "EditEvent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showCameraButton: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4273
    iget-object v5, p0, Lcom/htc/calendar/EditEvent$13;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mImageCaptureButton:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/htc/calendar/EditEvent;->access$7800(Lcom/htc/calendar/EditEvent;)Landroid/widget/ImageView;

    move-result-object v6

    if-eqz v1, :cond_9

    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4275
    iget-object v5, p0, Lcom/htc/calendar/EditEvent$13;->this$0:Lcom/htc/calendar/EditEvent;

    iget-object v6, p0, Lcom/htc/calendar/EditEvent$13;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mSyncAccountType:Ljava/lang/String;
    invoke-static {v6}, Lcom/htc/calendar/EditEvent;->access$1700(Lcom/htc/calendar/EditEvent;)Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/htc/calendar/EditEvent;->showRepetition(Ljava/lang/String;)Z
    invoke-static {v5, v6}, Lcom/htc/calendar/EditEvent;->access$7900(Lcom/htc/calendar/EditEvent;Ljava/lang/String;)Z

    move-result v4

    .line 4276
    .local v4, showRepetition:Z
    const-string v5, "EditEvent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showRepetition: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4277
    if-nez v4, :cond_0

    .line 4278
    iget-object v5, p0, Lcom/htc/calendar/EditEvent$13;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mRepeatContainer:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/htc/calendar/EditEvent;->access$8000(Lcom/htc/calendar/EditEvent;)Landroid/widget/LinearLayout;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4279
    iget-object v5, p0, Lcom/htc/calendar/EditEvent$13;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mRepeatsSpinner:Lcom/htc/widget/HtcSpinner;
    invoke-static {v5}, Lcom/htc/calendar/EditEvent;->access$200(Lcom/htc/calendar/EditEvent;)Lcom/htc/widget/HtcSpinner;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    goto/16 :goto_0

    .line 4246
    .end local v1           #showCameraButton:Z
    .end local v3           #showInviteGuest:Z
    .end local v4           #showRepetition:Z
    :cond_4
    iget-object v5, p0, Lcom/htc/calendar/EditEvent$13;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mImportanceSpinner:Lcom/htc/widget/HtcSpinner;
    invoke-static {v5}, Lcom/htc/calendar/EditEvent;->access$7400(Lcom/htc/calendar/EditEvent;)Lcom/htc/widget/HtcSpinner;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 4247
    iget-object v5, p0, Lcom/htc/calendar/EditEvent$13;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mImportanceLayout:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/htc/calendar/EditEvent;->access$7300(Lcom/htc/calendar/EditEvent;)Landroid/widget/LinearLayout;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 4249
    :cond_5
    iget-object v5, p0, Lcom/htc/calendar/EditEvent$13;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mImportanceLayout:Landroid/widget/LinearLayout;
    invoke-static {v5}, Lcom/htc/calendar/EditEvent;->access$7300(Lcom/htc/calendar/EditEvent;)Landroid/widget/LinearLayout;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4250
    iget-object v5, p0, Lcom/htc/calendar/EditEvent$13;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mImportanceSpinner:Lcom/htc/widget/HtcSpinner;
    invoke-static {v5}, Lcom/htc/calendar/EditEvent;->access$7400(Lcom/htc/calendar/EditEvent;)Lcom/htc/widget/HtcSpinner;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    goto/16 :goto_1

    .line 4262
    .restart local v3       #showInviteGuest:Z
    :cond_6
    iget-object v5, p0, Lcom/htc/calendar/EditEvent$13;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mComposeTitle:Lcom/htc/calendar/widget/ComposeTitle;
    invoke-static {v5}, Lcom/htc/calendar/EditEvent;->access$5400(Lcom/htc/calendar/EditEvent;)Lcom/htc/calendar/widget/ComposeTitle;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/htc/calendar/widget/ComposeTitle;->setComposeTitleType(I)V

    goto/16 :goto_2

    .line 4266
    :cond_7
    iget-object v5, p0, Lcom/htc/calendar/EditEvent$13;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mComposeTitle:Lcom/htc/calendar/widget/ComposeTitle;
    invoke-static {v5}, Lcom/htc/calendar/EditEvent;->access$5400(Lcom/htc/calendar/EditEvent;)Lcom/htc/calendar/widget/ComposeTitle;

    move-result-object v5

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/htc/calendar/widget/ComposeTitle;->setVisibility(I)V

    goto/16 :goto_3

    .line 4269
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 4273
    .restart local v1       #showCameraButton:Z
    :cond_9
    const/16 v5, 0x8

    goto/16 :goto_5
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
    .line 4285
    .local p1, av:Lcom/htc/widget/HtcAdapterView;,"Lcom/htc/widget/HtcAdapterView<*>;"
    return-void
.end method
