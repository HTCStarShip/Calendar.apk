.class Lcom/htc/calendar/AlertActivity$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AlertActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/AlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/AlertActivity;


# direct methods
.method public constructor <init>(Lcom/htc/calendar/AlertActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/htc/calendar/AlertActivity$QueryHandler;->this$0:Lcom/htc/calendar/AlertActivity;

    .line 151
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 152
    return-void
.end method


# virtual methods
.method protected onInsertComplete(ILjava/lang/Object;Landroid/net/Uri;)V
    .locals 6
    .parameter "token"
    .parameter "cookie"
    .parameter "uri"

    .prologue
    .line 197
    if-eqz p3, :cond_0

    move-object v1, p2

    .line 198
    check-cast v1, Ljava/lang/Long;

    .line 200
    .local v1, alarmTime:Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 202
    iget-object v2, p0, Lcom/htc/calendar/AlertActivity$QueryHandler;->this$0:Lcom/htc/calendar/AlertActivity;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Lcom/htc/calendar/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 204
    .local v0, alarmManager:Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/htc/calendar/AlertActivity$QueryHandler;->this$0:Lcom/htc/calendar/AlertActivity;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v0, v3, v4}, Landroid/provider/CalendarContract$CalendarAlerts;->scheduleAlarm(Landroid/content/Context;Landroid/app/AlarmManager;J)V

    .line 207
    .end local v0           #alarmManager:Landroid/app/AlarmManager;
    .end local v1           #alarmTime:Ljava/lang/Long;
    :cond_0
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 157
    if-nez p3, :cond_1

    .line 158
    const-string v2, "AlertActivity"

    const-string v3, "onQueryComplete cursor == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/htc/calendar/AlertActivity$QueryHandler;->this$0:Lcom/htc/calendar/AlertActivity;

    invoke-virtual {v2}, Lcom/htc/calendar/AlertActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_3

    .line 163
    iget-object v2, p0, Lcom/htc/calendar/AlertActivity$QueryHandler;->this$0:Lcom/htc/calendar/AlertActivity;

    #setter for: Lcom/htc/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v2, p3}, Lcom/htc/calendar/AlertActivity;->access$002(Lcom/htc/calendar/AlertActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 164
    iget-object v2, p0, Lcom/htc/calendar/AlertActivity$QueryHandler;->this$0:Lcom/htc/calendar/AlertActivity;

    #getter for: Lcom/htc/calendar/AlertActivity;->mAdapter:Lcom/htc/calendar/AlertAdapter;
    invoke-static {v2}, Lcom/htc/calendar/AlertActivity;->access$100(Lcom/htc/calendar/AlertActivity;)Lcom/htc/calendar/AlertAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/htc/calendar/AlertAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 167
    iget-object v2, p0, Lcom/htc/calendar/AlertActivity$QueryHandler;->this$0:Lcom/htc/calendar/AlertActivity;

    #getter for: Lcom/htc/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/calendar/AlertActivity;->access$000(Lcom/htc/calendar/AlertActivity;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 168
    .local v1, nCount:I
    const-string v2, "AlertActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCursor.count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v2, p0, Lcom/htc/calendar/AlertActivity$QueryHandler;->this$0:Lcom/htc/calendar/AlertActivity;

    #getter for: Lcom/htc/calendar/AlertActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/htc/calendar/AlertActivity;->access$000(Lcom/htc/calendar/AlertActivity;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_2

    .line 170
    iget-object v2, p0, Lcom/htc/calendar/AlertActivity$QueryHandler;->this$0:Lcom/htc/calendar/AlertActivity;

    #getter for: Lcom/htc/calendar/AlertActivity;->mListView:Lcom/htc/widget/HtcListView;
    invoke-static {v2}, Lcom/htc/calendar/AlertActivity;->access$200(Lcom/htc/calendar/AlertActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 180
    :goto_1
    iget-object v2, p0, Lcom/htc/calendar/AlertActivity$QueryHandler;->this$0:Lcom/htc/calendar/AlertActivity;

    #getter for: Lcom/htc/calendar/AlertActivity;->mSnoozeAllButton:Lcom/htc/widget/HtcFooterButton;
    invoke-static {v2}, Lcom/htc/calendar/AlertActivity;->access$300(Lcom/htc/calendar/AlertActivity;)Lcom/htc/widget/HtcFooterButton;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V

    .line 181
    iget-object v2, p0, Lcom/htc/calendar/AlertActivity$QueryHandler;->this$0:Lcom/htc/calendar/AlertActivity;

    #getter for: Lcom/htc/calendar/AlertActivity;->mDismissAllButton:Lcom/htc/widget/HtcFooterButton;
    invoke-static {v2}, Lcom/htc/calendar/AlertActivity;->access$400(Lcom/htc/calendar/AlertActivity;)Lcom/htc/widget/HtcFooterButton;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcFooterButton;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    .end local v1           #nCount:I
    :catch_0
    move-exception v0

    .line 188
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "AlertActivity"

    const-string v3, "onQueryComplete error : "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 190
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 173
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #nCount:I
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/htc/calendar/AlertActivity$QueryHandler;->this$0:Lcom/htc/calendar/AlertActivity;

    #getter for: Lcom/htc/calendar/AlertActivity;->mListView:Lcom/htc/widget/HtcListView;
    invoke-static {v2}, Lcom/htc/calendar/AlertActivity;->access$200(Lcom/htc/calendar/AlertActivity;)Lcom/htc/widget/HtcListView;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcListView;->setVisibility(I)V

    .line 175
    iget-object v2, p0, Lcom/htc/calendar/AlertActivity$QueryHandler;->this$0:Lcom/htc/calendar/AlertActivity;

    invoke-virtual {v2}, Lcom/htc/calendar/AlertActivity;->finish()V

    goto :goto_1

    .line 183
    .end local v1           #nCount:I
    :cond_3
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 184
    invoke-interface {p3}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 212
    return-void
.end method
