.class Lcom/htc/calendar/ManageCalendarsActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ManageCalendarsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/ManageCalendarsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/ManageCalendarsActivity;


# direct methods
.method public constructor <init>(Lcom/htc/calendar/ManageCalendarsActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 222
    iput-object p1, p0, Lcom/htc/calendar/ManageCalendarsActivity$QueryHandler;->this$0:Lcom/htc/calendar/ManageCalendarsActivity;

    .line 223
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 224
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/htc/calendar/ManageCalendarsActivity$QueryHandler;->this$0:Lcom/htc/calendar/ManageCalendarsActivity;

    invoke-virtual {v0}, Lcom/htc/calendar/ManageCalendarsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/htc/calendar/ManageCalendarsActivity$QueryHandler;->this$0:Lcom/htc/calendar/ManageCalendarsActivity;

    invoke-virtual {v0, p3}, Lcom/htc/calendar/ManageCalendarsActivity;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 232
    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 235
    :cond_0
    const/4 p3, 0x0

    .line 254
    :goto_0
    iget-object v0, p0, Lcom/htc/calendar/ManageCalendarsActivity$QueryHandler;->this$0:Lcom/htc/calendar/ManageCalendarsActivity;

    #getter for: Lcom/htc/calendar/ManageCalendarsActivity;->mListView:Lcom/htc/calendar/MultiCalendarsListView;
    invoke-static {v0}, Lcom/htc/calendar/ManageCalendarsActivity;->access$100(Lcom/htc/calendar/ManageCalendarsActivity;)Lcom/htc/calendar/MultiCalendarsListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/calendar/MultiCalendarsListView;->setSelection(I)V

    .line 255
    :cond_1
    return-void

    .line 237
    :cond_2
    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/htc/calendar/ManageCalendarsActivity$QueryHandler;->this$0:Lcom/htc/calendar/ManageCalendarsActivity;

    #getter for: Lcom/htc/calendar/ManageCalendarsActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/htc/calendar/ManageCalendarsActivity;->access$000(Lcom/htc/calendar/ManageCalendarsActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 246
    iget-object v0, p0, Lcom/htc/calendar/ManageCalendarsActivity$QueryHandler;->this$0:Lcom/htc/calendar/ManageCalendarsActivity;

    iget-object v1, p0, Lcom/htc/calendar/ManageCalendarsActivity$QueryHandler;->this$0:Lcom/htc/calendar/ManageCalendarsActivity;

    #getter for: Lcom/htc/calendar/ManageCalendarsActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/calendar/ManageCalendarsActivity;->access$000(Lcom/htc/calendar/ManageCalendarsActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/calendar/ManageCalendarsActivity;->stopManagingCursor(Landroid/database/Cursor;)V

    .line 248
    :cond_3
    iget-object v0, p0, Lcom/htc/calendar/ManageCalendarsActivity$QueryHandler;->this$0:Lcom/htc/calendar/ManageCalendarsActivity;

    #setter for: Lcom/htc/calendar/ManageCalendarsActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v0, p3}, Lcom/htc/calendar/ManageCalendarsActivity;->access$002(Lcom/htc/calendar/ManageCalendarsActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 249
    iget-object v0, p0, Lcom/htc/calendar/ManageCalendarsActivity$QueryHandler;->this$0:Lcom/htc/calendar/ManageCalendarsActivity;

    invoke-virtual {v0, p3}, Lcom/htc/calendar/ManageCalendarsActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 250
    iget-object v0, p0, Lcom/htc/calendar/ManageCalendarsActivity$QueryHandler;->this$0:Lcom/htc/calendar/ManageCalendarsActivity;

    #getter for: Lcom/htc/calendar/ManageCalendarsActivity;->mListView:Lcom/htc/calendar/MultiCalendarsListView;
    invoke-static {v0}, Lcom/htc/calendar/ManageCalendarsActivity;->access$100(Lcom/htc/calendar/ManageCalendarsActivity;)Lcom/htc/calendar/MultiCalendarsListView;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/calendar/ManageCalendarsActivity$QueryHandler;->this$0:Lcom/htc/calendar/ManageCalendarsActivity;

    #getter for: Lcom/htc/calendar/ManageCalendarsActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/htc/calendar/ManageCalendarsActivity;->access$000(Lcom/htc/calendar/ManageCalendarsActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/htc/calendar/MultiCalendarsListView;->setCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method
