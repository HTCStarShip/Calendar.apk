.class Lcom/htc/calendar/widget/ComposeTitle$7;
.super Ljava/lang/Object;
.source "ComposeTitle.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/widget/ComposeTitle;
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
    .line 1519
    iput-object p1, p0, Lcom/htc/calendar/widget/ComposeTitle$7;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 12
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v11, 0x1

    .line 1522
    move-object v9, p1

    check-cast v9, Landroid/widget/EditText;

    .line 1524
    .local v9, edit:Landroid/widget/EditText;
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1525
    packed-switch p2, :pswitch_data_0

    :cond_0
    move v0, v1

    .line 1587
    :goto_0
    return v0

    .line 1527
    :pswitch_0
    iget-object v2, p0, Lcom/htc/calendar/widget/ComposeTitle$7;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, v2, Lcom/htc/calendar/widget/ComposeTitle;->mSelectView:Landroid/widget/LinearLayout;

    .line 1528
    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1529
    .local v10, editText:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1530
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$7;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    const-string v2, "edit no>"

    #calls: Lcom/htc/calendar/widget/ComposeTitle;->debug(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/htc/calendar/widget/ComposeTitle;->access$1400(Lcom/htc/calendar/widget/ComposeTitle;Ljava/lang/String;)V

    move v0, v1

    .line 1531
    goto :goto_0

    .line 1533
    :cond_1
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$7;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    #getter for: Lcom/htc/calendar/widget/ComposeTitle;->mEdit_To:Landroid/widget/IMEAutoCompleteTextView;
    invoke-static {v0}, Lcom/htc/calendar/widget/ComposeTitle;->access$1200(Lcom/htc/calendar/widget/ComposeTitle;)Landroid/widget/IMEAutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/IMEAutoCompleteTextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 1534
    goto :goto_0

    .line 1537
    :cond_2
    const-string v0, "add_contact"

    invoke-static {v10, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1539
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/htc/calendar/widget/ComposeTitle$7$1;

    invoke-direct {v0, p0}, Lcom/htc/calendar/widget/ComposeTitle$7$1;-><init>(Lcom/htc/calendar/widget/ComposeTitle$7;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1552
    .local v6, addContactThread:Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    move v0, v11

    .line 1553
    goto :goto_0

    .line 1555
    .end local v6           #addContactThread:Ljava/lang/Thread;
    :cond_3
    const-string v0, "get_contact"

    invoke-static {v10, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1556
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$7;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    #getter for: Lcom/htc/calendar/widget/ComposeTitle;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/htc/calendar/widget/ComposeTitle;->access$1600(Lcom/htc/calendar/widget/ComposeTitle;)Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/htc/calendar/widget/ComposeTitle;->access$1500()[Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1558
    .local v7, c2:Landroid/database/Cursor;
    if-eqz v7, :cond_4

    .line 1559
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_4
    move v0, v11

    .line 1561
    goto :goto_0

    .line 1565
    .end local v7           #c2:Landroid/database/Cursor;
    :cond_5
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$7;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    #calls: Lcom/htc/calendar/widget/ComposeTitle;->CheckEmailAddr(Ljava/lang/String;)Z
    invoke-static {v0, v10}, Lcom/htc/calendar/widget/ComposeTitle;->access$1700(Lcom/htc/calendar/widget/ComposeTitle;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1566
    new-instance v8, Lcom/htc/widget/HtcAlertDialog$Builder;

    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$7;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    #getter for: Lcom/htc/calendar/widget/ComposeTitle;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/htc/calendar/widget/ComposeTitle;->access$1000(Lcom/htc/calendar/widget/ComposeTitle;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1568
    .local v8, dlg:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v0, 0x7f08005f

    invoke-virtual {v8, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1569
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$7;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    #getter for: Lcom/htc/calendar/widget/ComposeTitle;->mResources:Landroid/content/res/Resources;
    invoke-static {v0}, Lcom/htc/calendar/widget/ComposeTitle;->access$1800(Lcom/htc/calendar/widget/ComposeTitle;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1570
    const v0, 0x104000a

    invoke-virtual {v8, v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1571
    invoke-virtual {v8, v11}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 1572
    invoke-virtual {v8}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move v0, v11

    .line 1573
    goto/16 :goto_0

    .line 1575
    .end local v8           #dlg:Lcom/htc/widget/HtcAlertDialog$Builder;
    :cond_6
    iget-object v0, p0, Lcom/htc/calendar/widget/ComposeTitle$7;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/htc/calendar/widget/ComposeTitle;->setMultiMailSapphire(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/htc/calendar/widget/ComposeTitle;->access$1900(Lcom/htc/calendar/widget/ComposeTitle;Ljava/lang/String;)V

    .line 1576
    invoke-virtual {v9, v1}, Landroid/widget/EditText;->setPressed(Z)V

    .line 1577
    const-string v0, ""

    invoke-virtual {v9, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    move v0, v11

    .line 1582
    goto/16 :goto_0

    .line 1525
    :pswitch_data_0
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch
.end method
