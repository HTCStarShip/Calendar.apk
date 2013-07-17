.class Lcom/htc/calendar/EditEvent$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "EditEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/EditEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/EditEvent;


# direct methods
.method public constructor <init>(Lcom/htc/calendar/EditEvent;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 907
    iput-object p1, p0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    .line 908
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 909
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 42
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 914
    if-nez p3, :cond_1

    .line 1239
    :cond_0
    :goto_0
    return-void

    .line 920
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    invoke-virtual {v2}, Lcom/htc/calendar/EditEvent;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 922
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 924
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 929
    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 933
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$1800(Lcom/htc/calendar/EditEvent;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 934
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$1800(Lcom/htc/calendar/EditEvent;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    .line 935
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$1800(Lcom/htc/calendar/EditEvent;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 937
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    const/4 v3, 0x0

    #setter for: Lcom/htc/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;
    invoke-static {v2, v3}, Lcom/htc/calendar/EditEvent;->access$1802(Lcom/htc/calendar/EditEvent;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 940
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    move-object/from16 v0, p3

    #setter for: Lcom/htc/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;
    invoke-static {v2, v0}, Lcom/htc/calendar/EditEvent;->access$1802(Lcom/htc/calendar/EditEvent;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 950
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$1800(Lcom/htc/calendar/EditEvent;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_6

    .line 952
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mSaveAfterQueryComplete:Z
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$1900(Lcom/htc/calendar/EditEvent;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 953
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mLoadingCalendarsDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$2000(Lcom/htc/calendar/EditEvent;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->cancel()V

    .line 958
    :cond_5
    new-instance v13, Lcom/htc/widget/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    invoke-direct {v13, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 959
    .local v13, builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    const v2, 0x7f0800a2

    invoke-virtual {v13, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setIcon(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0800a3

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    .line 965
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    invoke-virtual {v13}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v3

    #setter for: Lcom/htc/calendar/EditEvent;->mNoCalendarsDialog:Lcom/htc/widget/HtcAlertDialog;
    invoke-static {v2, v3}, Lcom/htc/calendar/EditEvent;->access$2102(Lcom/htc/calendar/EditEvent;Lcom/htc/widget/HtcAlertDialog;)Lcom/htc/widget/HtcAlertDialog;

    goto/16 :goto_0

    .line 970
    .end local v13           #builder:Lcom/htc/widget/HtcAlertDialog$Builder;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    invoke-static {v2}, Lcom/htc/calendar/Utils;->getDefaultInsertCalendar(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    .line 971
    .local v18, defaultCalendar:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    invoke-static {v2}, Lcom/htc/calendar/Utils;->getDefaultInsertCalendarType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v19

    .line 972
    .local v19, defaultCalendarType:Ljava/lang/String;
    const/16 v37, -0x1

    .line 975
    .local v37, primaryCalendarPosition:I
    new-instance v10, Lcom/htc/calendar/EditEvent$CalendarsAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/htc/calendar/EditEvent;->access$1800(Lcom/htc/calendar/EditEvent;)Landroid/database/Cursor;

    move-result-object v4

    invoke-direct {v10, v2, v3, v4}, Lcom/htc/calendar/EditEvent$CalendarsAdapter;-><init>(Lcom/htc/calendar/EditEvent;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 976
    .local v10, adapter:Lcom/htc/calendar/EditEvent$CalendarsAdapter;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mCalendarsSpinner:Lcom/htc/widget/HtcSpinner;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$2200(Lcom/htc/calendar/EditEvent;)Lcom/htc/widget/HtcSpinner;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/htc/widget/HtcSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 979
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mCalendarsSpinner:Lcom/htc/widget/HtcSpinner;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$2200(Lcom/htc/calendar/EditEvent;)Lcom/htc/widget/HtcSpinner;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcSpinner;->getCount()I

    move-result v30

    .line 980
    .local v30, nCountOfCalendars:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$1500(Lcom/htc/calendar/EditEvent;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mSyncAccount:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$2300(Lcom/htc/calendar/EditEvent;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const/16 v17, 0x1

    .line 981
    .local v17, checkSyncAccount:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$1500(Lcom/htc/calendar/EditEvent;)Landroid/database/Cursor;

    move-result-object v2

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mOwnerAccountFromInt:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$2400(Lcom/htc/calendar/EditEvent;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    const/16 v16, 0x1

    .line 987
    .local v16, checkAccountFromInt:Z
    :goto_2
    const/16 v25, 0x0

    .local v25, idx:I
    :goto_3
    move/from16 v0, v25

    move/from16 v1, v30

    if-ge v0, v1, :cond_b

    .line 989
    move/from16 v37, v25

    .line 991
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mCalendarsSpinner:Lcom/htc/widget/HtcSpinner;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$2200(Lcom/htc/calendar/EditEvent;)Lcom/htc/widget/HtcSpinner;

    move-result-object v2

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcSpinner;->getItemIdAtPosition(I)J

    move-result-wide v23

    .line 993
    .local v23, id:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mCalendarsSpinner:Lcom/htc/widget/HtcSpinner;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$2200(Lcom/htc/calendar/EditEvent;)Lcom/htc/widget/HtcSpinner;

    move-result-object v2

    move/from16 v0, v25

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcSpinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v33

    .local v33, obj:Ljava/lang/Object;
    move-object/from16 v14, v33

    .line 994
    check-cast v14, Landroid/database/Cursor;

    .line 995
    .local v14, c:Landroid/database/Cursor;
    if-nez v14, :cond_a

    .line 987
    :cond_7
    add-int/lit8 v25, v25, 0x1

    goto :goto_3

    .line 980
    .end local v14           #c:Landroid/database/Cursor;
    .end local v16           #checkAccountFromInt:Z
    .end local v17           #checkSyncAccount:Z
    .end local v23           #id:J
    .end local v25           #idx:I
    .end local v33           #obj:Ljava/lang/Object;
    :cond_8
    const/16 v17, 0x0

    goto :goto_1

    .line 981
    .restart local v17       #checkSyncAccount:Z
    :cond_9
    const/16 v16, 0x0

    goto :goto_2

    .line 998
    .restart local v14       #c:Landroid/database/Cursor;
    .restart local v16       #checkAccountFromInt:Z
    .restart local v23       #id:J
    .restart local v25       #idx:I
    .restart local v33       #obj:Ljava/lang/Object;
    :cond_a
    if-eqz v17, :cond_e

    .line 999
    const/4 v2, 0x2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 1000
    .local v35, ownerAccount:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mSyncAccount:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$2300(Lcom/htc/calendar/EditEvent;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v35

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1036
    .end local v14           #c:Landroid/database/Cursor;
    .end local v23           #id:J
    .end local v33           #obj:Ljava/lang/Object;
    .end local v35           #ownerAccount:Ljava/lang/String;
    :cond_b
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mCalendarsSpinner:Lcom/htc/widget/HtcSpinner;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$2200(Lcom/htc/calendar/EditEvent;)Lcom/htc/widget/HtcSpinner;

    move-result-object v2

    move/from16 v0, v37

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 1037
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    const/4 v3, 0x1

    #setter for: Lcom/htc/calendar/EditEvent;->mCalendarsQueryComplete:Z
    invoke-static {v2, v3}, Lcom/htc/calendar/EditEvent;->access$2602(Lcom/htc/calendar/EditEvent;Z)Z

    .line 1038
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mSaveAfterQueryComplete:Z
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$1900(Lcom/htc/calendar/EditEvent;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1039
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mLoadingCalendarsDialog:Lcom/htc/app/HtcProgressDialog;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$2000(Lcom/htc/calendar/EditEvent;)Lcom/htc/app/HtcProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/app/HtcProgressDialog;->cancel()V

    .line 1040
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #calls: Lcom/htc/calendar/EditEvent;->save()Z
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$2700(Lcom/htc/calendar/EditEvent;)Z

    .line 1041
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    invoke-virtual {v2}, Lcom/htc/calendar/EditEvent;->finish()V

    .line 1044
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mCalendarsSpinner:Lcom/htc/widget/HtcSpinner;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$2200(Lcom/htc/calendar/EditEvent;)Lcom/htc/widget/HtcSpinner;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v15

    .line 1045
    .local v15, calendarCursorPosition:I
    invoke-static {}, Landroid/provider/HtcExCalendar;->getGoogleAccountType()Ljava/lang/String;

    move-result-object v40

    .line 1046
    .local v40, strCurrentSelectedAccountType:Ljava/lang/String;
    const-string v39, ""

    .line 1047
    .local v39, strCurrentSelectedAccount:Ljava/lang/String;
    const-wide/16 v26, 0x1

    .line 1048
    .local v26, lCurrentSelectedCalendarId:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$1800(Lcom/htc/calendar/EditEvent;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2, v15}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1049
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$1800(Lcom/htc/calendar/EditEvent;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x7

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v40

    .line 1050
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$1800(Lcom/htc/calendar/EditEvent;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x6

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v39

    .line 1051
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mCalendarsCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$1800(Lcom/htc/calendar/EditEvent;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 1053
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    move-object/from16 v0, v40

    move-object/from16 v1, v39

    #calls: Lcom/htc/calendar/EditEvent;->updateCurrentEventCalendarSyncSource(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v2, v0, v1}, Lcom/htc/calendar/EditEvent;->access$2800(Lcom/htc/calendar/EditEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mHasAttendeeData:Z
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$2900(Lcom/htc/calendar/EditEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p3

    move/from16 v1, v37

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1062
    const/4 v2, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v34

    .line 1063
    .local v34, ownEmail:Ljava/lang/String;
    if-eqz v34, :cond_0

    .line 1064
    #calls: Lcom/htc/calendar/EditEvent;->extractDomain(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v34 .. v34}, Lcom/htc/calendar/EditEvent;->access$3000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1065
    .local v20, domain:Ljava/lang/String;
    if-eqz v20, :cond_0

    .line 1066
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    new-instance v3, Lcom/android/common/Rfc822Validator;

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Lcom/android/common/Rfc822Validator;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/htc/calendar/EditEvent;->mEmailValidator:Lcom/android/common/Rfc822Validator;
    invoke-static {v2, v3}, Lcom/htc/calendar/EditEvent;->access$3102(Lcom/htc/calendar/EditEvent;Lcom/android/common/Rfc822Validator;)Lcom/android/common/Rfc822Validator;

    .line 1067
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$3200(Lcom/htc/calendar/EditEvent;)Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEmailValidator:Lcom/android/common/Rfc822Validator;
    invoke-static {v3}, Lcom/htc/calendar/EditEvent;->access$3100(Lcom/htc/calendar/EditEvent;)Lcom/android/common/Rfc822Validator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/MultiAutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    goto/16 :goto_0

    .line 1004
    .end local v15           #calendarCursorPosition:I
    .end local v20           #domain:Ljava/lang/String;
    .end local v26           #lCurrentSelectedCalendarId:J
    .end local v34           #ownEmail:Ljava/lang/String;
    .end local v39           #strCurrentSelectedAccount:Ljava/lang/String;
    .end local v40           #strCurrentSelectedAccountType:Ljava/lang/String;
    .restart local v14       #c:Landroid/database/Cursor;
    .restart local v23       #id:J
    .restart local v33       #obj:Ljava/lang/Object;
    :cond_e
    if-eqz v16, :cond_f

    .line 1005
    const/4 v2, 0x2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 1006
    .restart local v35       #ownerAccount:Ljava/lang/String;
    const/4 v2, 0x7

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    .line 1011
    .local v41, type:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mOwnerAccountFromInt:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$2400(Lcom/htc/calendar/EditEvent;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v35

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mAccountTypeFromInt:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$2500(Lcom/htc/calendar/EditEvent;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v41

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto/16 :goto_4

    .line 1016
    .end local v35           #ownerAccount:Ljava/lang/String;
    .end local v41           #type:Ljava/lang/String;
    :cond_f
    const/4 v2, 0x2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 1017
    .restart local v35       #ownerAccount:Ljava/lang/String;
    const/4 v2, 0x7

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    .line 1022
    .restart local v41       #type:Ljava/lang/String;
    move-object/from16 v0, v35

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, v41

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto/16 :goto_4

    .line 1075
    .end local v10           #adapter:Lcom/htc/calendar/EditEvent$CalendarsAdapter;
    .end local v14           #c:Landroid/database/Cursor;
    .end local v16           #checkAccountFromInt:Z
    .end local v17           #checkSyncAccount:Z
    .end local v18           #defaultCalendar:Ljava/lang/String;
    .end local v19           #defaultCalendarType:Ljava/lang/String;
    .end local v23           #id:J
    .end local v25           #idx:I
    .end local v30           #nCountOfCalendars:I
    .end local v33           #obj:Ljava/lang/Object;
    .end local v35           #ownerAccount:Ljava/lang/String;
    .end local v37           #primaryCalendarPosition:I
    .end local v41           #type:Ljava/lang/String;
    :pswitch_1
    if-eqz p3, :cond_10

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_11

    .line 1077
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    invoke-virtual {v2}, Lcom/htc/calendar/EditEvent;->finish()V

    goto/16 :goto_0

    .line 1081
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$1500(Lcom/htc/calendar/EditEvent;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 1082
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$1500(Lcom/htc/calendar/EditEvent;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_12

    .line 1083
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$1500(Lcom/htc/calendar/EditEvent;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1085
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    const/4 v3, 0x0

    #setter for: Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;
    invoke-static {v2, v3}, Lcom/htc/calendar/EditEvent;->access$1502(Lcom/htc/calendar/EditEvent;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1088
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    move-object/from16 v0, p3

    #setter for: Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;
    invoke-static {v2, v0}, Lcom/htc/calendar/EditEvent;->access$1502(Lcom/htc/calendar/EditEvent;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 1089
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$1500(Lcom/htc/calendar/EditEvent;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1091
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$1500(Lcom/htc/calendar/EditEvent;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1092
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$1500(Lcom/htc/calendar/EditEvent;)Landroid/database/Cursor;

    move-result-object v2

    const/16 v4, 0xf

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_17

    const/4 v2, 0x1

    :goto_5
    #setter for: Lcom/htc/calendar/EditEvent;->mHasAttendeeData:Z
    invoke-static {v3, v2}, Lcom/htc/calendar/EditEvent;->access$2902(Lcom/htc/calendar/EditEvent;Z)Z

    .line 1093
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$1500(Lcom/htc/calendar/EditEvent;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_18

    const/4 v11, 0x1

    .line 1094
    .local v11, allDay:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$1500(Lcom/htc/calendar/EditEvent;)Landroid/database/Cursor;

    move-result-object v2

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v38

    .line 1096
    .local v38, rrule:Ljava/lang/String;
    if-nez v11, :cond_14

    .line 1099
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/calendar/EditEvent;->access$1500(Lcom/htc/calendar/EditEvent;)Landroid/database/Cursor;

    move-result-object v3

    const/16 v4, 0x9

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/calendar/EditEvent;->mTimezone:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/calendar/EditEvent;->access$3302(Lcom/htc/calendar/EditEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 1102
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/calendar/EditEvent;->access$1500(Lcom/htc/calendar/EditEvent;)Landroid/database/Cursor;

    move-result-object v3

    const/4 v4, 0x6

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    #setter for: Lcom/htc/calendar/EditEvent;->mCalendarId:J
    invoke-static {v2, v3, v4}, Lcom/htc/calendar/EditEvent;->access$3402(Lcom/htc/calendar/EditEvent;J)J

    .line 1103
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/calendar/EditEvent;->access$1500(Lcom/htc/calendar/EditEvent;)Landroid/database/Cursor;

    move-result-object v3

    const/16 v4, 0xe

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/calendar/EditEvent;->mOwnerAccount:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/calendar/EditEvent;->access$3502(Lcom/htc/calendar/EditEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 1104
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mOwnerAccount:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$3500(Lcom/htc/calendar/EditEvent;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 1105
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mOwnerAccount:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$3500(Lcom/htc/calendar/EditEvent;)Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/htc/calendar/EditEvent;->extractDomain(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$3000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 1106
    .local v36, ownerDomain:Ljava/lang/String;
    if-eqz v36, :cond_15

    .line 1107
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    move-object/from16 v0, v36

    #setter for: Lcom/htc/calendar/EditEvent;->mDomain:Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/htc/calendar/EditEvent;->access$3602(Lcom/htc/calendar/EditEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 1112
    .end local v36           #ownerDomain:Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    #setter for: Lcom/htc/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;
    invoke-static {v2, v3}, Lcom/htc/calendar/EditEvent;->access$3702(Lcom/htc/calendar/EditEvent;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    .line 1113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$3700(Lcom/htc/calendar/EditEvent;)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "beginTime"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mBegin:J
    invoke-static {v4}, Lcom/htc/calendar/EditEvent;->access$3800(Lcom/htc/calendar/EditEvent;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$3700(Lcom/htc/calendar/EditEvent;)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "endTime"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEnd:J
    invoke-static {v4}, Lcom/htc/calendar/EditEvent;->access$3900(Lcom/htc/calendar/EditEvent;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1115
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$3700(Lcom/htc/calendar/EditEvent;)Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "allDay"

    if-eqz v11, :cond_19

    const/4 v2, 0x1

    :goto_7
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1116
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$3700(Lcom/htc/calendar/EditEvent;)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "rrule"

    move-object/from16 v0, v38

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$3700(Lcom/htc/calendar/EditEvent;)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "eventTimezone"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mTimezone:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/calendar/EditEvent;->access$3300(Lcom/htc/calendar/EditEvent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mInitialValues:Landroid/content/ContentValues;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$3700(Lcom/htc/calendar/EditEvent;)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "calendar_id"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mCalendarId:J
    invoke-static {v4}, Lcom/htc/calendar/EditEvent;->access$3400(Lcom/htc/calendar/EditEvent;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1121
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/calendar/EditEvent;->access$1500(Lcom/htc/calendar/EditEvent;)Landroid/database/Cursor;

    move-result-object v3

    const/16 v4, 0x15

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/calendar/EditEvent;->mSyncAccountType:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/calendar/EditEvent;->access$1702(Lcom/htc/calendar/EditEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 1122
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/calendar/EditEvent;->access$1500(Lcom/htc/calendar/EditEvent;)Landroid/database/Cursor;

    move-result-object v3

    const/16 v4, 0x16

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/calendar/EditEvent;->mSyncAccount:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/calendar/EditEvent;->access$2302(Lcom/htc/calendar/EditEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 1123
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mSyncAccountType:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/calendar/EditEvent;->access$1700(Lcom/htc/calendar/EditEvent;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/calendar/HtcUtils;->isHTCFacebookEvent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/calendar/EditEvent;->access$1500(Lcom/htc/calendar/EditEvent;)Landroid/database/Cursor;

    move-result-object v3

    const/16 v4, 0x17

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/calendar/EditEvent;->mAvatarLocal:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/calendar/EditEvent;->access$4002(Lcom/htc/calendar/EditEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 1129
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/calendar/EditEvent;->access$1500(Lcom/htc/calendar/EditEvent;)Landroid/database/Cursor;

    move-result-object v3

    const/16 v4, 0x14

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/calendar/EditEvent;->mEvent_Guid:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/calendar/EditEvent;->access$4102(Lcom/htc/calendar/EditEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 1130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/calendar/EditEvent;->access$1500(Lcom/htc/calendar/EditEvent;)Landroid/database/Cursor;

    move-result-object v3

    const/16 v4, 0x12

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/calendar/EditEvent;->mEvent_ExDate:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/calendar/EditEvent;->access$4202(Lcom/htc/calendar/EditEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 1131
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/calendar/EditEvent;->access$1500(Lcom/htc/calendar/EditEvent;)Landroid/database/Cursor;

    move-result-object v3

    const/4 v4, 0x7

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    #setter for: Lcom/htc/calendar/EditEvent;->mEvent_DtStart:J
    invoke-static {v2, v3, v4}, Lcom/htc/calendar/EditEvent;->access$4302(Lcom/htc/calendar/EditEvent;J)J

    .line 1132
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/calendar/EditEvent;->access$1500(Lcom/htc/calendar/EditEvent;)Landroid/database/Cursor;

    move-result-object v3

    const/16 v4, 0x13

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    #setter for: Lcom/htc/calendar/EditEvent;->mEvent_DtEnd:J
    invoke-static {v2, v3, v4}, Lcom/htc/calendar/EditEvent;->access$4402(Lcom/htc/calendar/EditEvent;J)J

    .line 1133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/calendar/EditEvent;->access$1500(Lcom/htc/calendar/EditEvent;)Landroid/database/Cursor;

    move-result-object v3

    const/16 v4, 0xa

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/calendar/EditEvent;->mEvent_RRULE:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/calendar/EditEvent;->access$4502(Lcom/htc/calendar/EditEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 1134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$1500(Lcom/htc/calendar/EditEvent;)Landroid/database/Cursor;

    move-result-object v2

    const/16 v3, 0x11

    invoke-interface {v2, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 1135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/calendar/EditEvent;->access$1500(Lcom/htc/calendar/EditEvent;)Landroid/database/Cursor;

    move-result-object v3

    const/16 v4, 0x11

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    #setter for: Lcom/htc/calendar/EditEvent;->mParentID:J
    invoke-static {v2, v3, v4}, Lcom/htc/calendar/EditEvent;->access$4602(Lcom/htc/calendar/EditEvent;J)J

    .line 1141
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEventCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/htc/calendar/EditEvent;->access$1500(Lcom/htc/calendar/EditEvent;)Landroid/database/Cursor;

    move-result-object v3

    const/16 v4, 0x18

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    #setter for: Lcom/htc/calendar/EditEvent;->mDescMimeType:I
    invoke-static {v2, v3}, Lcom/htc/calendar/EditEvent;->access$4702(Lcom/htc/calendar/EditEvent;I)I

    .line 1146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #calls: Lcom/htc/calendar/EditEvent;->isTextPlain()Z
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$4800(Lcom/htc/calendar/EditEvent;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 1147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #calls: Lcom/htc/calendar/EditEvent;->initBackgroundHandler()V
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$4900(Lcom/htc/calendar/EditEvent;)V

    .line 1150
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    const/4 v3, 0x0

    #calls: Lcom/htc/calendar/EditEvent;->initEditEvent(ZZ)V
    invoke-static {v2, v3, v11}, Lcom/htc/calendar/EditEvent;->access$5000(Lcom/htc/calendar/EditEvent;ZZ)V

    .line 1151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    const/4 v3, 0x1

    #setter for: Lcom/htc/calendar/EditEvent;->mDirtyCheckAlreadyCreadted:Z
    invoke-static {v2, v3}, Lcom/htc/calendar/EditEvent;->access$5102(Lcom/htc/calendar/EditEvent;Z)Z

    .line 1152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #calls: Lcom/htc/calendar/EditEvent;->doResume()V
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$5200(Lcom/htc/calendar/EditEvent;)V

    goto/16 :goto_0

    .line 1092
    .end local v11           #allDay:Z
    .end local v38           #rrule:Ljava/lang/String;
    :cond_17
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 1093
    :cond_18
    const/4 v11, 0x0

    goto/16 :goto_6

    .line 1115
    .restart local v11       #allDay:Z
    .restart local v38       #rrule:Ljava/lang/String;
    :cond_19
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 1126
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    const/4 v3, 0x0

    #setter for: Lcom/htc/calendar/EditEvent;->mAvatarLocal:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/calendar/EditEvent;->access$4002(Lcom/htc/calendar/EditEvent;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_8

    .line 1137
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    const-wide/16 v3, -0x1

    #setter for: Lcom/htc/calendar/EditEvent;->mParentID:J
    invoke-static {v2, v3, v4}, Lcom/htc/calendar/EditEvent;->access$4602(Lcom/htc/calendar/EditEvent;J)J

    goto :goto_9

    .line 1157
    .end local v11           #allDay:Z
    .end local v38           #rrule:Ljava/lang/String;
    :pswitch_2
    if-eqz p3, :cond_23

    .line 1159
    :try_start_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1160
    .local v12, b:Ljava/lang/StringBuilder;
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 1161
    .local v32, nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 1163
    .local v28, mailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1c
    :goto_a
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1164
    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 1165
    .local v31, name:Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1166
    .local v21, email:Ljava/lang/String;
    if-eqz v21, :cond_1c

    .line 1167
    if-eqz v31, :cond_1d

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1d

    move-object/from16 v0, v31

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 1168
    const/16 v2, 0x22

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1170
    :cond_1d
    const/16 v2, 0x3c

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1173
    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1177
    :goto_b
    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_a

    .line 1192
    .end local v12           #b:Ljava/lang/StringBuilder;
    .end local v21           #email:Ljava/lang/String;
    .end local v28           #mailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v31           #name:Ljava/lang/String;
    .end local v32           #nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1e

    .line 1193
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_1e
    throw v2

    .line 1175
    .restart local v12       #b:Ljava/lang/StringBuilder;
    .restart local v21       #email:Ljava/lang/String;
    .restart local v28       #mailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v31       #name:Ljava/lang/String;
    .restart local v32       #nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1f
    :try_start_1
    move-object/from16 v0, v32

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1180
    .end local v21           #email:Ljava/lang/String;
    .end local v31           #name:Ljava/lang/String;
    :cond_20
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_21

    .line 1181
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/calendar/EditEvent;->mOriginalAttendees:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/calendar/EditEvent;->access$5302(Lcom/htc/calendar/EditEvent;Ljava/lang/String;)Ljava/lang/String;

    .line 1182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mAttendeesList:Landroid/widget/MultiAutoCompleteTextView;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$3200(Lcom/htc/calendar/EditEvent;)Landroid/widget/MultiAutoCompleteTextView;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mOriginalAttendees:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/calendar/EditEvent;->access$5300(Lcom/htc/calendar/EditEvent;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/MultiAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1185
    :cond_21
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_22

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_22

    .line 1186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mSyncAccountType:Ljava/lang/String;
    invoke-static {v3}, Lcom/htc/calendar/EditEvent;->access$1700(Lcom/htc/calendar/EditEvent;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/calendar/HtcUtils;->isHTCFacebookEvent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v22

    .line 1187
    .local v22, facebookType:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mComposeTitle:Lcom/htc/calendar/widget/ComposeTitle;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$5400(Lcom/htc/calendar/EditEvent;)Lcom/htc/calendar/widget/ComposeTitle;

    move-result-object v3

    if-eqz v22, :cond_24

    const/4 v2, 0x1

    :goto_c
    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v3, v0, v1, v2}, Lcom/htc/calendar/widget/ComposeTitle;->setInputList(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1192
    .end local v22           #facebookType:Z
    :cond_22
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_23

    .line 1193
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 1198
    .end local v12           #b:Ljava/lang/StringBuilder;
    .end local v28           #mailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v32           #nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEventId:J
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$5500(Lcom/htc/calendar/EditEvent;)J

    move-result-wide v2

    const-wide/16 v6, -0x1

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mSyncAccountType:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$1700(Lcom/htc/calendar/EditEvent;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/htc/calendar/HtcUtils;->isHTCExchangeEvent(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1200
    sget-object v5, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    .line 1201
    .local v5, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mQueryHandler:Lcom/htc/calendar/EditEvent$QueryHandler;
    invoke-static {v2}, Lcom/htc/calendar/EditEvent;->access$5700(Lcom/htc/calendar/EditEvent;)Lcom/htc/calendar/EditEvent$QueryHandler;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-static {}, Lcom/htc/calendar/EditEvent;->access$5600()[Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "event_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    #getter for: Lcom/htc/calendar/EditEvent;->mEventId:J
    invoke-static {v8}, Lcom/htc/calendar/EditEvent;->access$5500(Lcom/htc/calendar/EditEvent;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND attendeeRelationship<>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/htc/calendar/EditEvent$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1202
    const-string v2, "EditEvent"

    const-string v3, "To get Attendees list"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1187
    .end local v5           #uri:Landroid/net/Uri;
    .restart local v12       #b:Ljava/lang/StringBuilder;
    .restart local v22       #facebookType:Z
    .restart local v28       #mailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v32       #nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_24
    const/4 v2, 0x0

    goto :goto_c

    .line 1206
    .end local v12           #b:Ljava/lang/StringBuilder;
    .end local v22           #facebookType:Z
    .end local v28           #mailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v32           #nameList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_3
    const/16 v29, 0x0

    .line 1207
    .local v29, nCnt:I
    if-eqz p3, :cond_25

    .line 1208
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v29

    .line 1210
    :cond_25
    const-string v2, "EditEvent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nCnt:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    if-eqz p3, :cond_0

    if-eqz v29, :cond_0

    .line 1212
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1214
    :try_start_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 1216
    .restart local v12       #b:Ljava/lang/StringBuilder;
    :cond_26
    const/4 v2, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1217
    .restart local v21       #email:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_29

    .line 1218
    const-string v2, "exchange@htc.calendar"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1227
    :cond_27
    :goto_d
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_26

    .line 1228
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_28

    .line 1229
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/htc/calendar/EditEvent$QueryHandler;->this$0:Lcom/htc/calendar/EditEvent;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #setter for: Lcom/htc/calendar/EditEvent;->mOriginalAttendees:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/htc/calendar/EditEvent;->access$5302(Lcom/htc/calendar/EditEvent;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1232
    :cond_28
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1233
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1223
    :cond_29
    :try_start_3
    const-string v2, "EditEvent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attendees: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 1225
    move-object/from16 v0, v21

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_d

    .line 1232
    .end local v12           #b:Ljava/lang/StringBuilder;
    .end local v21           #email:Ljava/lang/String;
    :catchall_1
    move-exception v2

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2a

    .line 1233
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_2a
    throw v2

    .line 929
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
