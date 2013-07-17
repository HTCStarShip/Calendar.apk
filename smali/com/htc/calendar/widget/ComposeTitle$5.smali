.class Lcom/htc/calendar/widget/ComposeTitle$5;
.super Ljava/lang/Object;
.source "ComposeTitle.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/widget/ComposeTitle;->doShowRecipientMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/widget/ComposeTitle;


# direct methods
.method constructor <init>(Lcom/htc/calendar/widget/ComposeTitle;)V
    .locals 0
    .parameter

    .prologue
    .line 838
    iput-object p1, p0, Lcom/htc/calendar/widget/ComposeTitle$5;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v5, 0x1

    .line 840
    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle$5;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    iget-object v1, v1, Lcom/htc/calendar/widget/ComposeTitle;->mCurrRecipientItem:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;

    iget-wide v1, v1, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->contact_id:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    .line 841
    packed-switch p2, :pswitch_data_0

    .line 902
    :goto_0
    return-void

    .line 843
    :pswitch_0
    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle$5;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    #getter for: Lcom/htc/calendar/widget/ComposeTitle;->mCanRemoveItem:Z
    invoke-static {v1}, Lcom/htc/calendar/widget/ComposeTitle;->access$700(Lcom/htc/calendar/widget/ComposeTitle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 844
    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle$5;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    #calls: Lcom/htc/calendar/widget/ComposeTitle;->removeRecipientEvent()V
    invoke-static {v1}, Lcom/htc/calendar/widget/ComposeTitle;->access$800(Lcom/htc/calendar/widget/ComposeTitle;)V

    goto :goto_0

    .line 846
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle$5;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    iget-object v3, v3, Lcom/htc/calendar/widget/ComposeTitle;->mCurrRecipientItem:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;

    iget-wide v3, v3, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->contact_id:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 849
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle$5;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    #getter for: Lcom/htc/calendar/widget/ComposeTitle;->mHostActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/htc/calendar/widget/ComposeTitle;->access$500(Lcom/htc/calendar/widget/ComposeTitle;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 853
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle$5;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    iget-object v3, v3, Lcom/htc/calendar/widget/ComposeTitle;->mCurrRecipientItem:Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;

    iget-wide v3, v3, Lcom/htc/calendar/widget/ComposeTitle$ReceiverItem;->contact_id:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 856
    .restart local v0       #intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle$5;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    #getter for: Lcom/htc/calendar/widget/ComposeTitle;->mHostActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/htc/calendar/widget/ComposeTitle;->access$500(Lcom/htc/calendar/widget/ComposeTitle;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 859
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/calendar/widget/ComposeTitle$5$1;

    invoke-direct {v2, p0}, Lcom/htc/calendar/widget/ComposeTitle$5$1;-><init>(Lcom/htc/calendar/widget/ComposeTitle$5;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->run()V

    goto :goto_0

    .line 867
    :pswitch_3
    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle$5;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    iget-object v2, p0, Lcom/htc/calendar/widget/ComposeTitle$5;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    #getter for: Lcom/htc/calendar/widget/ComposeTitle;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/calendar/widget/ComposeTitle;->access$1000(Lcom/htc/calendar/widget/ComposeTitle;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle$5;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    iget-object v3, v3, Lcom/htc/calendar/widget/ComposeTitle;->mAddrToAdd:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/htc/calendar/widget/ComposeTitle;->pickExistedContactor(Landroid/content/Context;Ljava/lang/String;)V

    .line 872
    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle$5;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    #setter for: Lcom/htc/calendar/widget/ComposeTitle;->mDoAddcontactToContactList:Z
    invoke-static {v1, v5}, Lcom/htc/calendar/widget/ComposeTitle;->access$1102(Lcom/htc/calendar/widget/ComposeTitle;Z)Z

    goto :goto_0

    .line 878
    :cond_1
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 880
    :pswitch_4
    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle$5;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    #calls: Lcom/htc/calendar/widget/ComposeTitle;->removeRecipientEvent()V
    invoke-static {v1}, Lcom/htc/calendar/widget/ComposeTitle;->access$800(Lcom/htc/calendar/widget/ComposeTitle;)V

    goto :goto_0

    .line 883
    :pswitch_5
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/htc/calendar/widget/ComposeTitle$5$2;

    invoke-direct {v2, p0}, Lcom/htc/calendar/widget/ComposeTitle$5$2;-><init>(Lcom/htc/calendar/widget/ComposeTitle$5;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->run()V

    goto/16 :goto_0

    .line 891
    :pswitch_6
    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle$5;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    iget-object v2, p0, Lcom/htc/calendar/widget/ComposeTitle$5;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    #getter for: Lcom/htc/calendar/widget/ComposeTitle;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/calendar/widget/ComposeTitle;->access$1000(Lcom/htc/calendar/widget/ComposeTitle;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle$5;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    iget-object v3, v3, Lcom/htc/calendar/widget/ComposeTitle;->mAddrToAdd:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/htc/calendar/widget/ComposeTitle;->pickExistedContactor(Landroid/content/Context;Ljava/lang/String;)V

    .line 896
    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle$5;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    #setter for: Lcom/htc/calendar/widget/ComposeTitle;->mDoAddcontactToContactList:Z
    invoke-static {v1, v5}, Lcom/htc/calendar/widget/ComposeTitle;->access$1102(Lcom/htc/calendar/widget/ComposeTitle;Z)Z

    goto/16 :goto_0

    .line 841
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 878
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
