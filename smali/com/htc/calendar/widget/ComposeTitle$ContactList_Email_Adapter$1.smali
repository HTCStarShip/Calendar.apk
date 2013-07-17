.class Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter$1;
.super Ljava/lang/Object;
.source "ComposeTitle.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;->changeCursor(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;

.field final synthetic val$tmpCursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;Landroid/database/Cursor;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2002
    iput-object p1, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter$1;->this$1:Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;

    iput-object p2, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter$1;->val$tmpCursor:Landroid/database/Cursor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2004
    iget-object v2, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter$1;->this$1:Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;

    monitor-enter v2

    .line 2006
    :try_start_0
    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter$1;->val$tmpCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter$1;->val$tmpCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2007
    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter$1;->val$tmpCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter$1;->this$1:Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;

    #getter for: Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;
    invoke-static {v3}, Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;->access$2100(Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;)Landroid/widget/CursorAdapter$ChangeObserver;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2008
    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter$1;->val$tmpCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter$1;->this$1:Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;

    #getter for: Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;->mDataSetObserver:Landroid/database/DataSetObserver;
    invoke-static {v3}, Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;->access$2200(Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter;)Landroid/database/DataSetObserver;

    move-result-object v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2009
    iget-object v1, p0, Lcom/htc/calendar/widget/ComposeTitle$ContactList_Email_Adapter$1;->val$tmpCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2014
    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v2

    .line 2015
    return-void

    .line 2011
    :catch_0
    move-exception v0

    .line 2012
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ComposeTitle"

    const-string v3, "catch excepiton"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2014
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
