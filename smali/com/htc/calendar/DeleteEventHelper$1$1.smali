.class Lcom/htc/calendar/DeleteEventHelper$1$1;
.super Ljava/lang/Object;
.source "DeleteEventHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/calendar/DeleteEventHelper$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/htc/calendar/DeleteEventHelper$1;


# direct methods
.method constructor <init>(Lcom/htc/calendar/DeleteEventHelper$1;)V
    .locals 0
    .parameter

    .prologue
    .line 154
    iput-object p1, p0, Lcom/htc/calendar/DeleteEventHelper$1$1;->this$1:Lcom/htc/calendar/DeleteEventHelper$1;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 156
    iget-object v4, p0, Lcom/htc/calendar/DeleteEventHelper$1$1;->this$1:Lcom/htc/calendar/DeleteEventHelper$1;

    iget-object v4, v4, Lcom/htc/calendar/DeleteEventHelper$1;->this$0:Lcom/htc/calendar/DeleteEventHelper;

    #getter for: Lcom/htc/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/htc/calendar/DeleteEventHelper;->access$200(Lcom/htc/calendar/DeleteEventHelper;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/htc/calendar/DeleteEventHelper$1$1;->this$1:Lcom/htc/calendar/DeleteEventHelper$1;

    iget-object v4, v4, Lcom/htc/calendar/DeleteEventHelper$1;->this$0:Lcom/htc/calendar/DeleteEventHelper;

    #getter for: Lcom/htc/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/htc/calendar/DeleteEventHelper;->access$200(Lcom/htc/calendar/DeleteEventHelper;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4}, Landroid/database/Cursor;->isFirst()Z

    move-result v4

    if-nez v4, :cond_0

    .line 157
    iget-object v4, p0, Lcom/htc/calendar/DeleteEventHelper$1$1;->this$1:Lcom/htc/calendar/DeleteEventHelper$1;

    iget-object v4, v4, Lcom/htc/calendar/DeleteEventHelper$1;->this$0:Lcom/htc/calendar/DeleteEventHelper;

    #getter for: Lcom/htc/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/htc/calendar/DeleteEventHelper;->access$200(Lcom/htc/calendar/DeleteEventHelper;)Landroid/database/Cursor;

    move-result-object v4

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 158
    const-string v4, "DeleteEventHelper"

    const-string v5, "mCursor move to first"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/htc/calendar/DeleteEventHelper$1$1;->this$1:Lcom/htc/calendar/DeleteEventHelper$1;

    iget-object v4, v4, Lcom/htc/calendar/DeleteEventHelper$1;->this$0:Lcom/htc/calendar/DeleteEventHelper;

    #getter for: Lcom/htc/calendar/DeleteEventHelper;->mCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/htc/calendar/DeleteEventHelper;->access$200(Lcom/htc/calendar/DeleteEventHelper;)Landroid/database/Cursor;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/calendar/DeleteEventHelper$1$1;->this$1:Lcom/htc/calendar/DeleteEventHelper$1;

    iget-object v5, v5, Lcom/htc/calendar/DeleteEventHelper$1;->this$0:Lcom/htc/calendar/DeleteEventHelper;

    #getter for: Lcom/htc/calendar/DeleteEventHelper;->mEventIndexId:I
    invoke-static {v5}, Lcom/htc/calendar/DeleteEventHelper;->access$300(Lcom/htc/calendar/DeleteEventHelper;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v1, v4

    .line 162
    .local v1, id:J
    sget-object v4, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 163
    .local v3, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/htc/calendar/DeleteEventHelper$1$1;->this$1:Lcom/htc/calendar/DeleteEventHelper$1;

    iget-object v4, v4, Lcom/htc/calendar/DeleteEventHelper$1;->this$0:Lcom/htc/calendar/DeleteEventHelper;

    #getter for: Lcom/htc/calendar/DeleteEventHelper;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/htc/calendar/DeleteEventHelper;->access$400(Lcom/htc/calendar/DeleteEventHelper;)Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v1           #id:J
    .end local v3           #uri:Landroid/net/Uri;
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/htc/calendar/DeleteEventHelper$1$1;->this$1:Lcom/htc/calendar/DeleteEventHelper$1;

    iget-object v4, v4, Lcom/htc/calendar/DeleteEventHelper$1;->this$0:Lcom/htc/calendar/DeleteEventHelper;

    #getter for: Lcom/htc/calendar/DeleteEventHelper;->mWhichAccountType:Ljava/lang/String;
    invoke-static {v4}, Lcom/htc/calendar/DeleteEventHelper;->access$500(Lcom/htc/calendar/DeleteEventHelper;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/calendar/HtcUtils;->isHTCExchangeEvent(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 172
    iget-object v4, p0, Lcom/htc/calendar/DeleteEventHelper$1$1;->this$1:Lcom/htc/calendar/DeleteEventHelper$1;

    iget-object v4, v4, Lcom/htc/calendar/DeleteEventHelper$1;->this$0:Lcom/htc/calendar/DeleteEventHelper;

    #getter for: Lcom/htc/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;
    invoke-static {v4}, Lcom/htc/calendar/DeleteEventHelper;->access$100(Lcom/htc/calendar/DeleteEventHelper;)Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/htc/calendar/DeleteEventHelper$1$1;->this$1:Lcom/htc/calendar/DeleteEventHelper$1;

    iget-object v5, v5, Lcom/htc/calendar/DeleteEventHelper$1;->this$0:Lcom/htc/calendar/DeleteEventHelper;

    #getter for: Lcom/htc/calendar/DeleteEventHelper;->mWhichAccount:Ljava/lang/String;
    invoke-static {v5}, Lcom/htc/calendar/DeleteEventHelper;->access$600(Lcom/htc/calendar/DeleteEventHelper;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/htc/calendar/EASMailUtils;->syncEASCalendar(Landroid/content/Context;Ljava/lang/String;)V

    .line 175
    :cond_1
    iget-object v4, p0, Lcom/htc/calendar/DeleteEventHelper$1$1;->this$1:Lcom/htc/calendar/DeleteEventHelper$1;

    iget-object v4, v4, Lcom/htc/calendar/DeleteEventHelper$1;->this$0:Lcom/htc/calendar/DeleteEventHelper;

    #getter for: Lcom/htc/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;
    invoke-static {v4}, Lcom/htc/calendar/DeleteEventHelper;->access$100(Lcom/htc/calendar/DeleteEventHelper;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/calendar/HtcUtils;->cancelNotification(Landroid/content/Context;)V

    .line 176
    iget-object v4, p0, Lcom/htc/calendar/DeleteEventHelper$1$1;->this$1:Lcom/htc/calendar/DeleteEventHelper$1;

    iget-object v4, v4, Lcom/htc/calendar/DeleteEventHelper$1;->this$0:Lcom/htc/calendar/DeleteEventHelper;

    #getter for: Lcom/htc/calendar/DeleteEventHelper;->mParent:Landroid/app/Activity;
    invoke-static {v4}, Lcom/htc/calendar/DeleteEventHelper;->access$100(Lcom/htc/calendar/DeleteEventHelper;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/htc/calendar/AlertService;->updateAlertNotification(Landroid/content/Context;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 183
    :goto_1
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "DeleteEventHelper"

    const-string v5, "Delete event fail"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 177
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 178
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
